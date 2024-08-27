struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1116f - _wgslsmith_f_op_f32(659f * 142f)), 891f)));
    var var_1 = select(8601u, 0u, !(!select(false, true, false)));
    let var_2 = ~(u_input.a.x & _wgslsmith_add_i32(arg_0.a, 2147483647i)) >> (arg_0.b % 32u);
    var_1 = abs(arg_2);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1, arg_1))));
    return ~select(~arg_0.c << (arg_0.c % vec2<u32>(32u)), arg_0.c, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), arg_0.b >= min(arg_2, 118655u)));
}

fn func_2() -> f32 {
    let var_0 = vec4<u32>(~(~1u), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 9808u), 1u, 1u), ~reverseBits(reverseBits(0u)), 4059u) & select(~(~vec4<u32>(1u, 31861u, 37850u, 76983u)), _wgslsmith_div_vec4_u32(vec4<u32>(~61325u, ~22274u, 4294967295u, _wgslsmith_sub_u32(22715u, 1913u)), ~countOneBits(vec4<u32>(1u, 67817u, 1u, 0u))), false);
    var var_1 = !any(vec2<bool>(true, reverseBits(var_0.x) < 4142u));
    var var_2 = true;
    var var_3 = Struct_4(u_input.b, ~1u, select(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, var_0.x), var_0.yy), func_3(Struct_4(u_input.a.x, 4294967295u, vec2<u32>(40270u, var_0.x)), _wgslsmith_f_op_f32(sign(1396f)), ~var_0.x)), vec2<u32>(var_0.x, _wgslsmith_mod_u32(41717u, var_0.x)), vec2<bool>(true, true)));
    let var_4 = Struct_4(var_3.a, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(abs(var_3.c.x), _wgslsmith_div_u32(40980u, 1u), ~1u), ~1u), var_0.yw);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1039f + -1087f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-750f, 1f), _wgslsmith_f_op_f32(355f - 595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1735f + -1334f))))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = -2555f;
    var var_1 = arg_0 >= _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    var_1 = false;
    let var_2 = ~vec4<u32>(~select(~25608u, 1u, arg_1.x), _wgslsmith_clamp_u32(max(16504u, 12102u), 1u, 1u) ^ (_wgslsmith_clamp_u32(6407u, 70392u, 87907u) & _wgslsmith_add_u32(49014u, 1u)), ~0u, func_3(Struct_4(2147483647i, _wgslsmith_add_u32(1u, 0u), countOneBits(vec2<u32>(0u, 1u))), 1f, 1u).x);
    let var_3 = Struct_4(~0i, _wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(~var_2.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 42210u, 1u))), 58859u), abs(~_wgslsmith_sub_vec2_u32(var_2.zz >> (vec2<u32>(var_2.x, 39111u) % vec2<u32>(32u)), select(vec2<u32>(var_2.x, var_2.x), vec2<u32>(1u, var_2.x), arg_1))));
    return Struct_3(_wgslsmith_mult_vec2_u32(select(~_wgslsmith_add_vec2_u32(var_3.c, var_2.wx), ~(~var_3.c), arg_1.x), var_3.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> StorageBuffer {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1170f * -1209f))), !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), _wgslsmith_mod_vec2_i32(select(~vec2<i32>(-1i, 0i), vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.a.x), _wgslsmith_div_i32(2147483647i, u_input.a.x) < select(13580i, -19897i, false)), abs(u_input.a.xy)));
    var var_1 = Struct_1(select(2147483647i, _wgslsmith_sub_i32(select(u_input.b, -20418i ^ u_input.a.x, true), countOneBits(u_input.b)), true), select(u_input.a.x, abs(~(-19388i)), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_add_i32(-1i, u_input.a.x)) > _wgslsmith_mult_i32(firstTrailingBit(u_input.b), max(2147483647i, -22203i))), abs(arg_0.a.x), var_0.a.x);
    let var_2 = var_0;
    var_1 = Struct_1(~(-2147483647i), var_1.a, _wgslsmith_div_u32(var_2.a.x >> (_wgslsmith_add_u32(4294967295u | arg_0.a.x, abs(var_0.a.x)) % 32u), ~(~(~1u))), select(43466u, ~(~0u), select(20000i, -1i, 1035i >= var_1.b) > _wgslsmith_mod_i32(u_input.b, u_input.a.x)));
    var_1 = Struct_1(u_input.a.x, ~select(u_input.b, 27130i, true), var_2.a.x, 17110u);
    return StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -465f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1478f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-872f, _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(f32(-1f) * -2031f))), ~(~vec2<u32>(var_1.c, 9894u)) >> (arg_0.a % vec2<u32>(32u)), ((0u & ~var_0.a.x) << (var_0.a.x % 32u)) ^ max(35812u, 4294967295u), ~(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -9054i, 40570i, u_input.a.x), vec4<i32>(var_1.a, var_1.a, 67206i, var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(1163f, vec2<bool>(true, true), vec2<i32>(-978i, _wgslsmith_sub_i32(u_input.a.x, -1i))), max(~(~vec2<u32>(1u, 1u)), vec2<u32>(firstLeadingBit(37755u), ~_wgslsmith_add_u32(1192u, 0u))));
}

