struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = select(any(select(!select(vec3<bool>(arg_2.x, arg_0.x, true), arg_0, true), vec3<bool>(false, true, arg_1 != 1133f), any(select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0, vec3<bool>(arg_2.x, arg_0.x, arg_2.x))))), abs(-u_input.a.x) < -43600i, arg_0.x);
    var var_2 = firstLeadingBit(-23085i);
    let var_3 = false;
    var_1 = var_3 & var_3;
    return ~var_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = (~firstLeadingBit(countOneBits(u_input.d)) >> (arg_1.a.x % 32u)) & ~_wgslsmith_sub_u32(reverseBits(76709u ^ arg_1.a.x), ~func_3(arg_3, -1633f, vec2<bool>(arg_3.x, true)));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(min(u_input.b.x & u_input.b.x, 505i), -8033i), -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(arg_0.wyw | vec3<i32>(-1i, u_input.c.x, -94924i)), vec3<i32>(arg_0.x, arg_2.x, u_input.b.x)), abs(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-2147483647i, arg_0.x, arg_2.x)), ~vec3<i32>(arg_0.x, -59287i, 2147483647i)))));
    let var_2 = Struct_4(Struct_3(Struct_2(-106f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-507f, 604f)), arg_1), vec3<bool>(!arg_3.x, false, arg_3.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1684f), _wgslsmith_f_op_f32(-205f * -1367f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f - 811f)), Struct_1(~arg_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(408f, 277f))))) + vec2<f32>(1f, 1f))), u_input.d > 149397u);
    return var_2.a.c;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> Struct_3 {
    let var_0 = arg_0.a.c.d;
    var var_1 = arg_0.b;
    var_1 = any(select(arg_0.a.b, !vec3<bool>(any(vec4<bool>(true, arg_0.a.b.x, arg_0.b, arg_0.b)), any(arg_0.a.b), true), arg_0.a.b));
    var var_2 = arg_0.a.c.d.a.x;
    let var_3 = arg_0.a.c.d.a;
    return Struct_3(arg_0.a.a, arg_0.a.b, arg_0.a.a, _wgslsmith_f_op_vec2_f32(-arg_0.a.d));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    let var_0 = Struct_5(arg_2.a.d, func_4(Struct_4(Struct_3(arg_2.a.a, select(vec3<bool>(arg_2.a.b.x, true, arg_2.b), vec3<bool>(arg_2.b, arg_2.b, false), vec3<bool>(arg_2.a.b.x, false, arg_2.b)), func_2(u_input.b, arg_2.a.a.d, vec2<i32>(-2147483647i, u_input.b.x), arg_2.a.b), vec2<f32>(-691f, arg_1)), arg_2.b), 1u, u_input.b.x), -_wgslsmith_mult_i32(u_input.a.x, 1i));
    var var_1 = arg_2.a.b;
    var var_2 = _wgslsmith_add_vec2_i32(u_input.c.wy, vec2<i32>(select(_wgslsmith_mod_i32(~1i, 1i), countOneBits(-9706i), true), -u_input.c.x));
    let var_3 = _wgslsmith_f_op_f32(arg_2.a.c.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))));
    let var_4 = func_4(arg_2, ~(~(~(~arg_2.a.c.d.a.x))), 37708i).c.d;
    return arg_2.a;
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.d.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + arg_0.a.c);
    let var_1 = any(select(!(!select(vec4<bool>(true, true, arg_0.b.x, true), vec4<bool>(arg_0.b.x, arg_0.b.x, false, true), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x))), !(!(!vec4<bool>(false, arg_0.b.x, true, arg_0.b.x))), all(select(!vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), !vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), arg_0.b.x))));
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.c - arg_0.d.x) - var_2.c.b) + _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(select(func_4(Struct_4(Struct_3(Struct_2(-1384f, 983f, -236f, arg_0.c.d), var_2.b, var_2.c, vec2<f32>(235f, var_2.c.c)), arg_0.b.x), u_input.d, firstTrailingBit(6584i)).c.a, var_2.d.x, true))));
    return !(!arg_0.b.x);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~(~abs(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.d), 25685u, 12354u)));
    return abs(75384u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-273f, -433f))), 1498f), vec4<bool>(true, true, func_5(func_1(1564f, 285f, Struct_4(Struct_3(Struct_2(-1428f, 954f, -1575f, Struct_1(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d))), vec3<bool>(false, false, false), Struct_2(-1321f, -1844f, -370f, Struct_1(vec4<u32>(u_input.d, u_input.d, 65953u, 0u))), vec2<f32>(758f, 500f)), true))), any(vec4<bool>(false, true, false, false)) | true), ~u_input.b), min(u_input.d, ~max(u_input.d, u_input.d) >> (_wgslsmith_div_u32(~u_input.d, 11706u) % 32u)));
    var var_1 = Struct_4(func_4(Struct_4(Struct_3(func_1(1140f, 326f, Struct_4(Struct_3(Struct_2(1012f, 843f, -826f, Struct_1(vec4<u32>(1u, 6957u, var_0.x, var_0.x))), vec3<bool>(true, false, false), Struct_2(-1567f, -426f, 659f, Struct_1(vec4<u32>(u_input.d, 32403u, 4294967295u, 33931u))), vec2<f32>(-656f, 174f)), true)).a, vec3<bool>(true, true, true), Struct_2(754f, -1310f, 260f, Struct_1(vec4<u32>(u_input.d, var_0.x, u_input.d, 6127u))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1531f, 222f)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), select(~min(66658u, 35871u), 1u, false), ~max(_wgslsmith_mult_i32(12026i, u_input.c.x), u_input.b.x & u_input.c.x)), (!func_4(Struct_4(Struct_3(Struct_2(808f, 856f, 104f, Struct_1(vec4<u32>(0u, var_0.x, 4294967295u, 90656u))), vec3<bool>(false, false, false), Struct_2(590f, 1332f, 871f, Struct_1(vec4<u32>(u_input.d, var_0.x, 24657u, var_0.x))), vec2<f32>(-739f, -100f)), false), 1u, 1i).b.x & true) & all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), func_4(Struct_4(Struct_3(Struct_2(195f, 1496f, 1000f, Struct_1(vec4<u32>(var_0.x, 32277u, var_0.x, 1u))), vec3<bool>(true, false, false), Struct_2(-1091f, 607f, -1240f, Struct_1(vec4<u32>(var_0.x, u_input.d, u_input.d, 34852u))), vec2<f32>(-358f, -411f)), false), 1u, 59612i).b.xz, true)));
    var_0 = var_1.a.c.d.a.yw & func_4(Struct_4(var_1.a, var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.d.a.x, var_1.a.c.d.a.x, func_6(vec2<f32>(-171f, var_1.a.d.x), vec4<bool>(var_1.a.b.x, true, var_1.b, var_1.b), u_input.c), ~48203u), ~abs(vec4<u32>(var_0.x, 9395u, 1u, var_1.a.c.d.a.x))), _wgslsmith_div_i32(u_input.c.x, ~(-u_input.c.x))).c.d.a.wz;
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.a.d);
    var_0 = var_1.a.c.d.a.xw;
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_2.x)), 1u, 112030u, vec2<i32>(-1i, max(~u_input.c.x, ~firstTrailingBit(u_input.c.x))), var_3.a.d.a.x << (~(~_wgslsmith_sub_u32(1u, var_1.a.c.d.a.x)) % 32u));
}

