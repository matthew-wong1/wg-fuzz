struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = arg_2.e.xzw;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-420f, -586f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1082f)))), _wgslsmith_f_op_vec3_f32(step(arg_2.e.wxx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, var_0.x, 1330f), _wgslsmith_f_op_vec3_f32(arg_2.e.zwy - arg_2.e.xyz))))), arg_2.b.c.x)));
    let var_1 = u_input.c.x | countOneBits(u_input.c.x);
    return countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, var_1, var_1), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 1u, 1983u), vec3<u32>(var_1, u_input.c.x, u_input.c.x))) & vec3<u32>(select(4294967295u, 0u, false), _wgslsmith_mod_u32(23732u, 4294967295u), u_input.c.x), ~vec3<u32>(var_1, 1u, var_1) << (vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 1u, u_input.c.x) % vec3<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(!arg_1.x, Struct_1(!(!vec4<bool>(arg_1.x, true, false, false)), select(!arg_1.x, _wgslsmith_sub_i32(arg_3, 1i) > u_input.b.x, true | !arg_1.x), !(!arg_1), arg_0), any(!select(!vec3<bool>(arg_1.x, arg_1.x, false), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, false), vec3<bool>(true, true, arg_1.x)), !vec3<bool>(arg_1.x, false, false))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1081f, -102f, arg_0, arg_0)))))) * vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(exp2(arg_0)))));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(func_3(var_0.b, var_0.e.xw, Struct_2(false, var_0.b, arg_1.x, arg_1.x, var_0.e)), arg_2.wwz), 18283u, ~u_input.a) > arg_2.x;
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i >> (min(~34702u, u_input.a) % 32u), _wgslsmith_add_i32(countOneBits(u_input.b.x | u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1982i, -1i, -9134i, 6252i), vec4<i32>(23243i, 8925i, arg_3, -2147483647i)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(13101u, 93582u), u_input.c) % 32u))), vec2<i32>(-reverseBits(min(74639i, 2147483647i)), 1i), u_input.b.xy);
    let var_3 = -abs(1i);
    var var_4 = var_0.e.x;
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    var var_0 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(max(u_input.b.x, 17680i), u_input.b.x, _wgslsmith_mult_i32(6632i, u_input.b.x)), -8989i), countOneBits(u_input.b.x)));
    let var_1 = arg_0;
    var_0 = -u_input.b.x;
    var var_2 = var_1;
    var_0 = ~_wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-22400i, u_input.b.x, 1i, u_input.b.x), arg_0.a), ~(-vec4<i32>(-1834i, 2147483647i, u_input.b.x, u_input.b.x))) << (abs(u_input.c.x) % 32u);
    return min(vec2<u32>(u_input.a, ~27006u), abs(u_input.c & u_input.c));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.c.x), vec4<u32>(50251u, 4294967295u, 57236u, 4294967295u), vec4<bool>(true, true, true, false)), ~vec4<u32>(u_input.c.x, 1u, 56562u, 1u)), u_input.c.x), ~(_wgslsmith_div_vec2_u32(u_input.c, u_input.c) ^ _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 71546u)))), vec2<u32>(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.c.x, u_input.c.x), ~u_input.c, false), ~(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(~u_input.c, func_4(func_2(194f, vec2<bool>(true, false), vec4<u32>(1u, u_input.a, u_input.a, u_input.c.x), u_input.b.x), _wgslsmith_f_op_f32(-1000f + -1139f)))));
    let var_1 = func_4(Struct_1(vec4<bool>(false, true, any(func_2(-795f, vec2<bool>(false, true), vec4<u32>(10358u, 74255u, u_input.c.x, 1u), -1i).c), !(u_input.b.x >= 1i)), true, vec2<bool>(true, true), _wgslsmith_f_op_f32(trunc(-510f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f))).x;
    var var_2 = Struct_2(all(vec3<bool>(!func_2(-1366f, vec2<bool>(true, false), vec4<u32>(66137u, 4294967295u, 4294967295u, u_input.c.x), 1i).b, true, select(true, true, var_1 >= 23452u))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -729f)))), select(vec2<bool>(var_1 > u_input.a, select(true, true, true)), vec2<bool>(true, true), false), select(vec4<u32>(4294967295u, 4294967295u, ~4294967295u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, var_1), ~vec4<u32>(76345u, var_1, u_input.c.x, u_input.a), vec4<u32>(var_1, u_input.a, var_1, 32539u)), false), u_input.b.x), all(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(120f - 516f))), vec2<bool>(select(false, false, true), false), vec4<u32>(u_input.c.x >> (0u % 32u), max(1u, var_0), ~var_1, ~39859u), countOneBits(u_input.b.x)).a.wyx), true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), -701f, _wgslsmith_div_f32(-875f, -923f), 1f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, 1264f, -590f, 159f)))))));
    var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(max(var_2.e.x, _wgslsmith_f_op_f32(-var_2.e.x))), !var_2.b.a.zx, ~(~min(vec4<u32>(0u, var_1, u_input.a, u_input.a), vec4<u32>(5805u, 4294967295u, u_input.a, var_0))), -2147483647i).c.x, Struct_1(select(vec4<bool>(var_2.d, true, true, any(vec3<bool>(var_2.d, var_2.a, var_2.a))), var_2.b.a, var_2.b.c.x), !(reverseBits(var_1) >= ~u_input.c.x), vec2<bool>(true, var_2.b.c.x), var_2.b.d), any(vec3<bool>(false, any(func_2(var_2.b.d, vec2<bool>(var_2.a, true), vec4<u32>(1u, 0u, var_0, var_0), u_input.b.x).a.yzw), select(u_input.b.x == 2147483647i, true, true))), var_2.d, vec4<f32>(333f, -673f, 659f, func_2(var_2.e.x, select(var_2.b.a.yy, !var_2.b.c, func_2(414f, var_2.b.c, vec4<u32>(4294967295u, var_1, u_input.c.x, 8951u), u_input.b.x).a.xy), vec4<u32>(59510u, max(0u, var_1), 66809u, ~var_0), ~u_input.b.x).d));
    var var_3 = ~(u_input.b.x >> ((countOneBits(var_0 ^ 4294967295u) >> (var_1 % 32u)) % 32u));
    return StorageBuffer(~(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(938f * _wgslsmith_f_op_f32(ceil(var_2.b.d)))), firstLeadingBit((1i & -u_input.b.x) & abs(select(2147483647i, u_input.b.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec2<bool>(any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, false)), true)), true);
    let var_2 = 89199u;
    let x = u_input.a;
    s_output = func_1();
}

