struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false));

var<private> global2: Struct_1 = Struct_1(0u, vec2<u32>(4294967295u, 84772u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = 18226u;
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_mult_u32(arg_0.a.b.x, countOneBits(~_wgslsmith_add_u32(arg_0.a.b.x, arg_0.a.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(max(4294967295u, arg_0.a.b.x) ^ arg_0.a.b.x, global2.b.x), vec2<u32>(1u, global2.a)));
    global2 = arg_0.a;
    var var_3 = Struct_3(global0.a);
    return vec4<u32>(_wgslsmith_clamp_u32(firstLeadingBit(var_2.b.x), 16176u, ~_wgslsmith_clamp_u32(max(var_2.b.x, arg_0.a.b.x), 4294967295u, select(u_input.a.x, global2.a, true))), ~_wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 1818u, arg_0.a.b.x, 1u) >> (~vec4<u32>(63011u, 4294967295u, 0u, 1808u) % vec4<u32>(32u))), vec4<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x >> (global2.b.x % 32u), 1u) << (vec4<u32>(82720u, _wgslsmith_div_u32(0u, u_input.a.x), global2.a, _wgslsmith_dot_vec2_u32(arg_0.a.b, arg_0.a.b)) % vec4<u32>(32u))), 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    var var_0 = 57050u;
    var var_1 = select(all(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true)), false, select(global0.a != ((global0.a << (48528u % 32u)) << (4294967295u % 32u)), _wgslsmith_add_i32(global0.a, ~u_input.e) >= reverseBits(_wgslsmith_add_i32(global0.a, -1i)), (true && (0u > global2.b.x)) != true));
    let var_2 = min(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a.x), vec3<u32>(arg_0.a.a, u_input.a.x, 0u)) | arg_1.wwx, arg_1.xww), vec3<u32>(abs(0u ^ global2.b.x), _wgslsmith_mult_u32(min(1u, arg_1.x), 33827u >> (u_input.b % 32u)), firstLeadingBit(_wgslsmith_mult_u32(global2.a, 65149u)))), vec3<u32>(67881u, ~u_input.a.x, 31896u >> (_wgslsmith_dot_vec4_u32(~arg_1, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 19057u, 0u, u_input.b), vec4<u32>(arg_1.x, global2.b.x, u_input.a.x, global2.b.x))) % 32u)));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~(_wgslsmith_dot_vec2_u32(global2.b, vec2<u32>(arg_0.a.b.x, arg_1.x)) << (~19380u % 32u)), _wgslsmith_mod_u32(arg_1.x, 34923u)), firstTrailingBit(global2.b.x), 1u >> (0u % 32u), 1u);
    let var_4 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)) || ((firstTrailingBit(_wgslsmith_div_i32(2147483647i, 4922i)) & ~(-19226i << (arg_1.x % 32u))) >= u_input.c.x);
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_3 {
    global2 = Struct_1(~(~22532u), vec2<u32>(1u, 4294967295u >> (1u % 32u)));
    global1 = array<vec4<bool>, 14>();
    global0 = Struct_3(-global0.a);
    var var_0 = Struct_2(arg_1);
    var var_1 = vec3<u32>(firstLeadingBit(1u), 55706u, firstLeadingBit(func_4(Struct_2(Struct_1(arg_1.a, vec2<u32>(global2.b.x, 36738u))), func_3(Struct_2(Struct_1(arg_1.b.x, arg_1.b)))) & 52501u));
    return Struct_3(max(28055i, -74613i));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, 2147483647i, arg_1.a) >> (arg_3.xzw % vec3<u32>(32u)), vec3<i32>(arg_2.a, -37031i, arg_2.a)), max(17830i, u_input.d)), -firstTrailingBit(_wgslsmith_clamp_i32(arg_1.a, -42530i, arg_1.a)), u_input.d);
    let var_1 = abs(_wgslsmith_add_i32(-(~_wgslsmith_mod_i32(-3797i, global0.a)), ~arg_1.a));
    var var_2 = arg_1;
    var var_3 = arg_3.yzx;
    return u_input.b << (u_input.a.x % 32u);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(exp2(arg_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(203f, _wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x));
    var var_1 = Struct_1(~func_5(u_input.a.x, func_2(~u_input.a, Struct_1(u_input.a.x, global2.b), vec3<i32>(4347i, global0.a, global0.a), min(vec3<i32>(-35954i, 0i, global0.a), vec3<i32>(u_input.c.x, global0.a, u_input.c.x))), func_2(u_input.a ^ vec2<u32>(u_input.b, 3839u), Struct_1(u_input.a.x, u_input.a), vec3<i32>(u_input.d, 2147483647i, u_input.e), vec3<i32>(1i, 1i, 1i)), vec4<u32>(~0u, u_input.b << (global2.a % 32u), global2.b.x & 0u, 33049u)), global2.b);
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.e, u_input.e), vec3<i32>(global0.a, global0.a, -33965i)), firstTrailingBit(-1i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(global0.a, u_input.c.x), select(vec2<i32>(u_input.e, global0.a), vec2<i32>(global0.a, global0.a), vec2<bool>(true, false)))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, u_input.d, 30973i, -24507i), vec4<i32>(global0.a, u_input.c.x, 1i, u_input.e)), global0.a >> ((u_input.b ^ 4294967295u) % 32u), ~2147483647i), abs(32695i & global0.a) << (firstLeadingBit(1u) % 32u)));
    let var_3 = arg_1;
    let var_4 = Struct_2(Struct_1(max(4294967295u, max(u_input.b, 0u) >> (global2.b.x % 32u)), firstTrailingBit(global2.b)));
    return Struct_1(~1u, select(~u_input.a, vec2<u32>(~20486u, 4294967295u), select(false, true && all(vec3<bool>(false, false, true)), true)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec2<u32> {
    var var_0 = Struct_3(arg_3);
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(584f)))) >= -436f, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, 414f), vec2<f32>(arg_2, arg_2)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(666f, arg_2)))))));
    return func_3(arg_1).yw;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(~global2.a, vec2<u32>(~u_input.b, global2.a) >> (func_6(func_1(845f, _wgslsmith_f_op_vec3_f32(vec3<f32>(117f, 1705f, 1512f) * vec3<f32>(-391f, -866f, -921f))), Struct_2(func_1(1133f, vec3<f32>(2007f, 576f, -721f))), 227f, 2147483647i) % vec2<u32>(32u)));
    let var_0 = Struct_3(_wgslsmith_add_i32(global0.a, global0.a));
    global2 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) - -570f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(788f, 731f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1731f - -1998f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1259f, -1000f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1060f, _wgslsmith_f_op_f32(1403f * -1872f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-786f, -386f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-597f, -582f)) + _wgslsmith_f_op_f32(select(136f, 587f, false))))), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(13192i, 41870i, -1i)), -vec3<i32>(10454i, global0.a, 0i) ^ vec3<i32>(-2147483647i, 26007i, -2147483647i)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.b.x, global2.a, 0u), vec4<u32>(global2.b.x, global2.b.x, global2.b.x, u_input.b)), ~u_input.b, ~0u, ~global2.a), countOneBits(countOneBits(vec4<u32>(1u, global2.a, global2.b.x, global2.a)))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.b, 63678u, 78208u, u_input.b) | vec4<u32>(global2.a, 42994u, global2.a, 4294967295u)), firstTrailingBit(~vec4<u32>(u_input.a.x, global2.b.x, 0u, u_input.b)))), global2.b, -1i);
}

