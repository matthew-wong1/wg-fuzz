struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> vec4<i32> {
    global0 = Struct_2(arg_3, select(any(select(global0.c.d, vec2<bool>(true, false), any(vec3<bool>(true, arg_3, true)))), any(!vec2<bool>(true, arg_3)) && any(!vec4<bool>(false, arg_3, false, false)), !global0.a), Struct_1(arg_3, global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2011f)) + -364f)), select(global0.c.d, select(vec2<bool>(arg_3, true), global0.c.d, vec2<bool>(false, true)), true)));
    var var_0 = !(!vec3<bool>(false, any(!vec4<bool>(true, false, true, global0.b)), false));
    global0 = Struct_2((_wgslsmith_mod_i32(max(global0.c.b.x, 3164i), 1i) | abs(reverseBits(-8866i))) <= ~_wgslsmith_clamp_i32(-u_input.d, ~19794i, u_input.c), !(!any(vec4<bool>(var_0.x, global0.c.a, global0.a, false))), global0.c);
    var_0 = !vec3<bool>(any(!vec3<bool>(var_0.x, var_0.x, false)), arg_3, !all(vec3<bool>(global0.c.a, arg_3, arg_3)));
    var_0 = !vec3<bool>(true, 1u >= (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 52125u, 60451u), vec3<u32>(4294967295u, 14495u, 4294967295u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(26424u, 4294967295u), vec2<u32>(568u, 14837u)) % 32u)), arg_3);
    return firstLeadingBit(vec4<i32>(30855i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-17336i, u_input.d, 5277i)), vec3<i32>(2147483647i, global0.c.b.x, 0i) ^ vec3<i32>(37614i, global0.c.b.x, u_input.b)), global0.c.b.zxw), _wgslsmith_clamp_i32(-41363i, global0.c.b.x, u_input.b), _wgslsmith_add_i32(~abs(2455i), _wgslsmith_add_i32(~global0.c.b.x, ~global0.c.b.x))));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = countOneBits(-2147483647i) >> (((~_wgslsmith_clamp_u32(arg_0.x, 6112u, arg_0.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(arg_0.x, arg_0.x))) | (abs(abs(arg_0.x)) | arg_0.x)) % 32u);
    let var_1 = Struct_4(219f, Struct_1(true, func_3(vec3<f32>(global0.c.c, 670f, 1960f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.c, global0.c.c, global0.c.c, 103f) * vec4<f32>(global0.c.c, -725f, global0.c.c, -534f)), _wgslsmith_f_op_f32(sign(global0.c.c)), true) & min(firstLeadingBit(global0.c.b), ~vec4<i32>(global0.c.b.x, 0i, global0.c.b.x, 2147483647i)), 1779f, select(vec2<bool>(true, true), global0.c.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 34961u), vec2<u32>(4294967295u, 1u)) <= ~4294967295u)), _wgslsmith_add_u32(arg_0.x, firstTrailingBit(22486u)));
    var var_2 = Struct_3(Struct_2(true, global0.a, Struct_1(true, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.b.x, global0.c.b.x), vec2<i32>(u_input.c, 0i)), global0.c.b.x << (arg_0.x % 32u), -2147483647i, u_input.c >> (27407u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)), !select(vec2<bool>(global0.b, var_1.b.a), vec2<bool>(var_1.b.d.x, global0.a), var_1.b.d))), select(arg_0.zxz & min(max(arg_0.wyy, vec3<u32>(arg_0.x, 0u, 18726u)), vec3<u32>(arg_0.x, 1u, 0u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, 24403u), vec3<u32>(1u, var_1.c, ~50479u)), false), !(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.c, 0u), reverseBits(var_1.c)) >= ~_wgslsmith_sub_u32(var_1.c, 63661u)), countOneBits(global0.c.b.yxw));
    var var_3 = Struct_3(Struct_2(any(select(!vec3<bool>(false, var_2.a.a, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), var_1.b.d.x, var_2.a.c), firstLeadingBit(~vec3<u32>(0u, ~34101u, ~arg_0.x)), false, global0.c.b.yzy);
    var var_4 = global0.c;
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_4 {
    global0 = Struct_2(true, arg_0.a, Struct_1(arg_0.d.x && (_wgslsmith_mult_i32(-73225i, arg_0.b.x) != arg_0.b.x), global0.c.b >> (~(~vec4<u32>(1u, 1u, 1u, 34104u)) % vec4<u32>(32u)), global0.c.c, global0.c.d));
    global0 = Struct_2(true, !(true & (_wgslsmith_f_op_f32(global0.c.c - 128f) == -702f)), Struct_1(true, global0.c.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1493f, _wgslsmith_f_op_f32(floor(global0.c.c))) + 131f), !arg_0.d));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -803f), arg_0, abs(_wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(1u, 82534u))));
}

fn func_1() -> Struct_4 {
    var var_0 = true;
    var var_1 = global0.c.a && global0.a;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global0.c.c - global0.c.c), _wgslsmith_f_op_f32(ceil(global0.c.c)));
    var var_3 = global0.c.b.yzx;
    let var_4 = Struct_4(global0.c.c, global0.c, _wgslsmith_mult_u32(~(~(~4294967295u)), 67538u));
    return func_4(Struct_1(~func_2(vec4<u32>(var_4.c, 1u, 0u, 0u)) >= abs(-var_4.b.b.x), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.b.x, var_3.x, var_3.x, var_4.b.b.x), global0.c.b), max(vec4<i32>(35652i, var_4.b.b.x, -2147483647i, var_3.x), global0.c.b)), firstLeadingBit(var_4.b.b)), _wgslsmith_f_op_f32(694f * global0.c.c), select(select(var_4.b.d, global0.c.d, true), var_4.b.d, vec2<bool>(var_4.b.a, !var_4.b.a))), select(vec4<bool>(true, !global0.c.a, var_4.b.d.x, all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(global0.b, true, var_4.b.d.x, global0.a), vec4<bool>(global0.c.a, false, false, var_4.b.a), true), vec4<bool>(!var_4.b.d.x, var_4.b.a, true, true), vec4<bool>(false, true, any(vec4<bool>(false, true, var_4.b.d.x, global0.c.d.x)), false)), any(vec3<bool>(true, all(vec2<bool>(false, false)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2400i;
    let var_1 = func_1();
    var var_2 = _wgslsmith_div_f32(1818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.a, 674f)))))));
    var var_3 = global0.c.c;
    var var_4 = var_1.c;
    var var_5 = Struct_3(Struct_2(!(var_1.b.a & true), all(!vec3<bool>(true, var_1.b.d.x, global0.a)), global0.c), max(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 15710u, var_1.c), vec3<u32>(var_1.c, var_1.c, 31230u))), vec3<u32>(var_1.c, select(func_4(Struct_1(true, var_1.b.b, var_1.a, vec2<bool>(var_1.b.a, global0.b)), vec4<bool>(false, true, true, global0.c.a)).c, 13138u, true), countOneBits(var_1.c) | var_1.c)), var_1.b.a, vec3<i32>(2147483647i, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.c, global0.c.c, global0.c.c)), vec4<f32>(-859f, _wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_div_f32(var_1.a, -1421f), _wgslsmith_f_op_f32(max(global0.c.c, -1000f))), var_1.b.c, any(select(vec4<bool>(global0.a, global0.c.a, false, global0.c.a), vec4<bool>(true, var_1.b.a, false, false), vec4<bool>(false, global0.c.a, true, var_1.b.a)))).x, _wgslsmith_div_i32(-21755i, -11724i ^ -var_0)));
    let var_6 = func_4(func_1().b, vec4<bool>(!(!var_1.b.d.x), false, true, true)).b.b.x;
    var var_7 = global0.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c - var_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -258f), -1566f, global0.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1955f), -1000f))) * 321f), vec4<i32>(-1i, ~(~var_5.a.c.b.x), countOneBits(-_wgslsmith_add_i32(u_input.b, u_input.a.x)), 11522i), select(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c, 9322u, var_1.c, 110369u), vec4<u32>(var_5.b.x, 4294967295u, 45788u, 4294967295u)) | ~(~vec4<u32>(42639u, 29590u, var_1.c, 0u)), ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.b.x, 65485u, 3555u, 59790u), vec4<u32>(20636u, 0u, var_1.c, var_5.b.x))), vec4<bool>(!any(vec4<bool>(false, true, false, var_5.a.c.d.x)), var_5.c, !var_1.b.d.x, all(vec2<bool>(var_1.b.d.x, var_5.a.c.a)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, 610f, -204f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_5.a.c.c, -1617f, -2191f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c) + global0.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(966f + -1588f) * _wgslsmith_f_op_f32(step(global0.c.c, global0.c.c))), _wgslsmith_f_op_f32(-467f + 1000f)))));
}

