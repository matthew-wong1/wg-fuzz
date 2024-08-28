struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = countOneBits(~u_input.a);
    var var_1 = arg_1.yyw;
    global0 = _wgslsmith_sub_i32(-firstTrailingBit(-firstTrailingBit(u_input.a)), 1i);
    let var_2 = ~(~(-vec2<i32>(u_input.a, firstTrailingBit(u_input.a))));
    let var_3 = var_2;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_2(Struct_1(min(~arg_2, ~arg_0.a ^ firstLeadingBit(vec2<u32>(arg_0.a.x, arg_2.x))), select(vec2<bool>(arg_0.e, !arg_0.c.x), arg_0.c.zz, false), vec4<bool>(false, arg_0.e, func_3(global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, -165f, -479f), vec4<f32>(arg_3.x, 679f, arg_3.x, arg_3.x))), arg_0.d), true, !arg_0.b.x));
    var var_1 = false;
    let var_2 = Struct_1(min(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2, arg_0.a), reverseBits(arg_0.a.x))), ~(reverseBits(var_0.a.a) << (vec2<u32>(1u, var_0.a.a.x) % vec2<u32>(32u)))), arg_0.b, var_0.a.c, arg_3.x < -116f, !all(select(select(var_0.a.c, vec4<bool>(false, var_0.a.c.x, arg_0.e, false), arg_0.d), vec4<bool>(true, true, true, var_0.a.c.x), arg_0.d)));
    var var_3 = 1u;
    global1 = array<Struct_1, 22>();
    return ~_wgslsmith_mult_u32(var_0.a.a.x, max(30393u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_2.x, 1u), vec3<u32>(arg_2.x, arg_2.x, arg_2.x))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_1(abs(~(~(~vec2<u32>(27064u, arg_1)))), !select(!vec2<bool>(false, arg_0), vec2<bool>(true, true), true != select(arg_0, arg_0, arg_0)), vec4<bool>(arg_0, arg_0 == !any(vec4<bool>(arg_0, true, false, arg_0)), !any(select(vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(true, arg_0, arg_0, true))), true), false, arg_0);
    let var_1 = ~arg_1;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1491f * -1376f))))), _wgslsmith_f_op_f32(round(-1422f))));
    var var_3 = true;
    global1 = array<Struct_1, 22>();
    return select(select(vec2<bool>(var_0.c.x | arg_0, (arg_0 == false) && (var_0.d && arg_0)), vec2<bool>(true, arg_0), any(var_0.c.ywy)), vec2<bool>(true, all(select(vec2<bool>(true, true), !var_0.b, any(vec2<bool>(true, true))))), !((select(var_0.b.x, true, var_0.e) && any(vec4<bool>(true, false, false, var_0.e))) & (true & !arg_0)));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 22>();
    global0 = _wgslsmith_add_i32(u_input.a, -2147483647i);
    var var_0 = func_4(true, ~func_2(global1[_wgslsmith_index_u32(abs(9493u), 22u)], -u_input.a, vec2<u32>(50049u, 4294967295u), vec3<f32>(1f, 1f, 1f)) | (28165u << ((func_2(Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, false), vec4<bool>(true, false, false, false), false, false), -1i, vec2<u32>(36603u, 1u), vec3<f32>(-187f, -1165f, -233f)) & ~10092u) % 32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -7832i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), countOneBits(reverseBits(vec3<i32>(u_input.a, 0i, 0i)))), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.a >> (16762u % 32u)), reverseBits(2147483647i) | -u_input.a), u_input.a, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.a, 1i), _wgslsmith_sub_i32(u_input.a & 2147483647i, -u_input.a))));
    var_0 = !vec2<bool>(!any(!vec3<bool>(false, var_0.x, false)), var_0.x);
    var var_1 = 28269u;
    return Struct_1(select(~vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 23645u), vec2<u32>(4294967295u, 40821u))), vec2<u32>(1u, 1u), !(!func_3(Struct_1(vec2<u32>(53192u, 4294967295u), vec2<bool>(true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x, var_0.x), vec4<f32>(358f, -509f, -884f, -890f)))), select(vec2<bool>(!func_4(false, 4294967295u, vec4<i32>(-1i, u_input.a, 0i, u_input.a)).x, true), select(vec2<bool>(true, true), func_4(false, _wgslsmith_mod_u32(1u, 64817u), -vec4<i32>(u_input.a, u_input.a, -30943i, 45735i)), func_3(Struct_1(vec2<u32>(24245u, 39997u), vec2<bool>(false, false), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1381f, 378f, 1232f, 548f) + vec4<f32>(351f, 1000f, -1764f, -821f)))), any(select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, true), true), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), var_0.x), var_0.x))), select(!vec4<bool>(func_4(var_0.x, 4294967295u, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)).x, !var_0.x, var_0.x, !var_0.x), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(func_4(all(vec3<bool>(true, var_0.x, true)), 0u, firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))).x, !(!var_0.x), !var_0.x, !any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), false | any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, var_0.x), var_0.x || false)), any(select(vec4<bool>(true, var_0.x, false, func_4(var_0.x, 4294967295u, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)).x), !vec4<bool>(true, true, var_0.x, var_0.x), func_3(global1[_wgslsmith_index_u32(~1421u, 22u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, -514f, -1246f, -177f) + vec4<f32>(-2852f, -1319f, -1036f, 496f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(36249u, 22u)];
    let var_1 = !(!select(!(!vec2<bool>(false, var_0.d)), !vec2<bool>(false, var_0.c.x), select(!vec2<bool>(true, var_0.b.x), var_0.c.wx, true)));
    let var_2 = func_1();
    global1 = array<Struct_1, 22>();
    let var_3 = func_1();
    var var_4 = vec2<bool>(false, !(!func_1().e));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(select(~vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, -2239i, u_input.a) ^ vec3<i32>(-2996i, -2147483647i, 1353i), !var_2.c.x), vec3<i32>(u_input.a, u_input.a, u_input.a)), firstTrailingBit(select(vec3<i32>(u_input.a, 3450i, u_input.a), vec3<i32>(u_input.a, 14008i, u_input.a), false) & vec3<i32>(u_input.a, -35852i, 20189i))), 0i, min(~(-vec3<i32>(u_input.a, u_input.a, -2943i)), countOneBits(_wgslsmith_div_vec3_i32(min(vec3<i32>(-1i, -1i, u_input.a), vec3<i32>(-1i, u_input.a, -1i)), ~vec3<i32>(2147483647i, u_input.a, u_input.a)))));
}

