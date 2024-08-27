struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = u_input.c;
    var var_1 = Struct_1(reverseBits(~(~vec2<u32>(3383u, 36748u))), min(min(select(u_input.b, u_input.b, arg_0) >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(u_input.b, u_input.a)), ~reverseBits(vec2<u32>(22981u, u_input.a.x) ^ u_input.a)), !arg_0.x);
    var_1 = Struct_1(vec2<u32>(firstLeadingBit((0u & var_1.a.x) & _wgslsmith_div_u32(11158u, 8715u)), firstLeadingBit(_wgslsmith_mod_u32(var_1.b.x, u_input.b.x))), vec2<u32>(reverseBits(38173u), max(0u, var_1.a.x)), true);
    var_1 = Struct_1(reverseBits(u_input.a & u_input.b), vec2<u32>(var_1.a.x, ~(~(var_1.b.x >> (24538u % 32u)))), countOneBits(4294967295u) >= u_input.a.x);
    var var_2 = ~(~(vec3<u32>(var_1.b.x, 0u, _wgslsmith_clamp_u32(92766u, 30436u, u_input.b.x)) >> ((vec3<u32>(1u, u_input.a.x, u_input.b.x) & (vec3<u32>(35315u, var_1.b.x, var_1.b.x) >> (vec3<u32>(var_1.b.x, 49129u, var_1.a.x) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    return var_0;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-433f - 948f), -132f)) * _wgslsmith_f_op_f32(floor(-734f))))), abs(~abs(~u_input.e)));
    let var_1 = _wgslsmith_add_i32(-u_input.e.x, ~(~func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    let var_2 = Struct_1(u_input.a, ~u_input.b, (-9447i & var_1) < ~(~u_input.e.x));
    var var_3 = 2147483647i;
    var var_4 = 14012u;
    return _wgslsmith_mult_u32(abs(~var_2.b.x), 1u);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    var var_0 = ~firstTrailingBit(vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.a.x), 5268u, countOneBits(~u_input.b.x), arg_2.a.x));
    var_0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 20326u, u_input.b.x, 32945u) ^ vec4<u32>(1u, 113780u, arg_2.a.x, arg_2.b.x), ~vec4<u32>(var_0.x, var_0.x, 58370u, var_0.x))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(25124u, 4294967295u), ~var_0.x), max(~13436u, 0u), _wgslsmith_dot_vec2_u32(arg_2.b, vec2<u32>(var_0.x, arg_2.a.x))), firstTrailingBit(~(~vec4<u32>(arg_2.b.x, u_input.a.x, arg_2.b.x, 1u))), ~select(vec4<u32>(arg_2.b.x, arg_2.b.x, 4294967295u, var_0.x), vec4<u32>(u_input.a.x, 41300u, 17468u, 18381u), vec4<bool>(arg_2.c, arg_2.c, false, arg_0)) ^ vec4<u32>(arg_2.a.x & var_0.x, reverseBits(51160u), func_2(), abs(22200u))) % vec4<u32>(32u));
    let var_1 = countOneBits(firstLeadingBit(~(~0u)));
    var var_2 = !(!vec3<bool>(true, any(vec4<bool>(arg_0, false, arg_0, true)), all(vec3<bool>(true, arg_0, arg_0))));
    var var_3 = _wgslsmith_f_op_f32(floor(arg_1));
    return arg_3.x << (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-760f)), 132f)) * -2319f) + 1549f), vec3<i32>(u_input.d, ~max(u_input.d, abs(1i)), abs(func_1(false, _wgslsmith_f_op_f32(step(487f, -514f)), Struct_1(vec2<u32>(8858u, 38773u), u_input.a, false), select(u_input.e, u_input.e, false)))));
    var var_2 = !(!select(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))));
    var_0 = firstLeadingBit(u_input.b.x) & ~u_input.a.x;
    var var_3 = Struct_1(abs(abs(vec2<u32>(35675u, 4294967295u >> (u_input.b.x % 32u)))), u_input.a, any(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, true, true)), true)));
    var_2 = true;
    var_3 = Struct_1(vec2<u32>(var_3.b.x, u_input.a.x), vec2<u32>(countOneBits(~1u), countOneBits(0u)), any(select(vec3<bool>(var_3.c, any(vec2<bool>(var_3.c, var_3.c)), false), !select(vec3<bool>(var_3.c, var_3.c, false), vec3<bool>(var_3.c, var_3.c, var_3.c), vec3<bool>(var_3.c, false, true)), !all(vec4<bool>(false, var_3.c, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a));
}

