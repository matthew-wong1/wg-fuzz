struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = u_input.c.zw;
    let var_1 = arg_1;
    var_0 = _wgslsmith_div_vec2_i32(u_input.c.xy, ~(-firstTrailingBit(vec2<i32>(2147483647i, 7790i) ^ u_input.c.yy)));
    let var_2 = var_1;
    let var_3 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~(u_input.a ^ 7710u), _wgslsmith_mult_u32(~arg_1.a.x, _wgslsmith_add_u32(var_1.a.x, 4294967295u))), 21160u, 1u, _wgslsmith_mod_u32(~0u, firstTrailingBit(1u))), arg_1.b);
    return !vec2<bool>(~(~45948u) != ~(~u_input.a), !(!all(vec4<bool>(true, false, true, false))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_1(~vec4<u32>(abs(u_input.b), u_input.b, ~(arg_1.x ^ arg_1.x), countOneBits(1u << (1u % 32u))), _wgslsmith_div_f32(224f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-294f * 496f)))));
    var var_1 = u_input.c.x;
    let var_2 = (firstLeadingBit(18218u) ^ abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, var_0.a.x, arg_1.x, 40248u), select(var_0.a, arg_1, arg_0)))) >= 1u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -1320f));
    var_1 = firstLeadingBit(abs(2147483647i));
    return 901u;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(Struct_1(vec4<u32>(u_input.b, u_input.a, 0u, 981u), -297f), Struct_1(vec4<u32>(u_input.a, u_input.b, 9659u, 0u), 1671f))));
    var_0 = vec2<bool>(any(select(!vec4<bool>(var_0.x, true, var_0.x, false), !vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, false))) != false, true);
    var var_1 = ~u_input.c.x;
    var var_2 = 1u;
    var_2 = max((~(~u_input.a) << (abs(u_input.a) % 32u)) >> (~func_3(var_0.x, firstLeadingBit(vec4<u32>(20306u, u_input.a, 1u, u_input.a))) % 32u), _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(63949u, 81787u, 44441u, u_input.a), vec4<u32>(u_input.a, 45448u, u_input.a, 58445u)), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))));
    return Struct_1(~(~vec4<u32>(u_input.b, u_input.a, ~5669u, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1011f + 1000f) * 811f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = -980f;
    var var_1 = arg_1.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_1(abs(vec4<u32>(u_input.b, 17951u, 51007u, 22285u) << (~vec4<u32>(u_input.a, 26568u, u_input.b, u_input.b) % vec4<u32>(32u))), -382f), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mult_i32(~u_input.c.x, max(-6932i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x)))), u_input.c.wwx);
    var var_1 = 1u;
    var var_2 = func_1();
    var_1 = var_2.a.x;
    let var_3 = ~abs(~max(var_0.a.yw, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), var_0.a.wy)));
    var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

