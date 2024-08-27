struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(~(33813u | u_input.a), select(~38020u, _wgslsmith_sub_u32(1u, u_input.a), true), min(0u, u_input.a), 16310u), ~abs(~vec4<u32>(u_input.a, 9231u, 26582u, 0u))), u_input.a, Struct_1(~firstTrailingBit(u_input.a) >> (select(u_input.a, ~53343u, true) % 32u), ~(~(~4294967295u)), true), 4294967295u, _wgslsmith_add_vec3_i32(vec3<i32>(abs(44972i), arg_0 | 1i, arg_0) & ~vec3<i32>(arg_0, arg_0, arg_0), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0) & vec3<i32>(-2147483647i, arg_0, 11817i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 2147483647i, 2147483647i), vec3<i32>(arg_0, arg_0, arg_0))), ~firstLeadingBit(vec3<i32>(arg_0, 11146i, arg_0)))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(-4410i);
    var_0 = Struct_2(vec4<u32>(abs(var_0.a.x) & func_2(-7723i).c.b, ~(~u_input.a), var_0.b, ~u_input.a), countOneBits(_wgslsmith_add_u32(u_input.a, 0u)), func_2(-681i).c, var_0.b, vec3<i32>(firstTrailingBit(~var_0.e.x << (abs(u_input.a) % 32u)), _wgslsmith_sub_i32(-(~var_0.e.x), var_0.e.x), -_wgslsmith_mod_i32(1i, firstTrailingBit(var_0.e.x))));
    var_0 = func_2(var_0.e.x);
    var var_1 = ~u_input.a;
    let var_2 = var_0.c;
    return func_2(~(~var_0.e.x));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~u_input.a ^ _wgslsmith_mult_u32((u_input.a | 4294967295u) ^ select(67675u, _wgslsmith_div_u32(0u, 1u), func_2(56738i).c.c), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, min(arg_0.c.a, 1u), countOneBits(u_input.a)), 1u));
    var_0 = 72061u;
    let var_1 = false;
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(arg_0.a.xxw, vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.a << (arg_0.a % vec4<u32>(32u)), arg_0.a), ~u_input.a, u_input.a)), 1u, true);
    var_0 = _wgslsmith_add_u32(0u, 61565u);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(!any(vec4<bool>(true, false, true, true)), false)) || false;
    var var_1 = func_3(func_1());
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(~2147483647i, 1i), 1625i);
    var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(377f))))));
    var var_3 = Struct_2(vec4<u32>(var_1.a, ~953u, ~(~(~443u)), select(~(~40234u), countOneBits(u_input.a) ^ _wgslsmith_div_u32(var_1.b, 4294967295u), var_1.c)), _wgslsmith_div_u32(~u_input.a, 43103u), func_3(func_1()), 39019u, _wgslsmith_mod_vec3_i32(vec3<i32>(~0i | var_2, 35447i >> (func_3(Struct_2(vec4<u32>(4294967295u, 42562u, 4294967295u, 23055u), 11086u, Struct_1(var_1.a, var_1.a, false), u_input.a, vec3<i32>(-1i, -1i, var_2))).a % 32u), select(2147483647i, 23384i, var_1.c) << (1u % 32u)), min(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_2, 0i, 40852i), vec3<i32>(var_2, var_2, var_2)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, 0i, 69166i), vec3<i32>(var_2, 2147483647i, 2147483647i), vec3<i32>(var_2, var_2, -52155i)), -vec3<i32>(var_2, var_2, 4253i)))));
    let var_4 = func_1();
    var var_5 = var_3.e.yx;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.x, 2133f, -(-(~vec4<i32>(2147483647i, -6128i, var_4.e.x, var_3.e.x)) >> (~func_1().a % vec4<u32>(32u))), _wgslsmith_f_op_f32(-806f + 928f));
}

