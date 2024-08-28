struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(793f, -743f, -717f) + vec3<f32>(arg_0.b, 1000f, 1246f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -143f, 694f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, arg_0.b, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(210f)), _wgslsmith_f_op_f32(max(-1447f, arg_0.b))))), arg_0.b)));
    var var_1 = arg_0.c.x;
    var_1 = arg_0.c.x;
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(var_0, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(ceil(arg_0.b))), -723f, _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(-985f + 150f))))));
    var_1 = true;
    return !(!arg_0.c.x);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(vec2<u32>(1u, 1u)), true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1799f + 134f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1457f * -774f), _wgslsmith_f_op_f32(f32(-1f) * -1942f))))));
    var_0 = Struct_3(Struct_2(var_0.a.a), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c, var_0.c, var_0.b)))))));
    var_0 = Struct_3(Struct_2(_wgslsmith_clamp_vec2_u32(var_0.a.a ^ var_0.a.a, var_0.a.a, vec2<u32>(var_0.a.a.x, 4294967295u)) << (select(vec2<u32>(var_0.a.a.x, var_0.a.a.x), vec2<u32>(124802u, var_0.a.a.x), vec2<bool>(true, true)) % vec2<u32>(32u))), func_3(Struct_4(-(u_input.b ^ u_input.a), var_0.c.x, !(!vec3<bool>(false, var_0.b, false)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-243f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))))));
    var_0 = Struct_3(Struct_2(min(vec2<u32>(_wgslsmith_mod_u32(var_0.a.a.x, var_0.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1274u, var_0.a.a.x, var_0.a.a.x), vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))), _wgslsmith_sub_vec2_u32(var_0.a.a, var_0.a.a) & ~var_0.a.a)), !(~var_0.a.a.x >= var_0.a.a.x), var_0.c);
    var var_1 = reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(-46259i, u_input.b, 0i), select(0i, u_input.a, any(vec2<bool>(true, var_0.b))), min(u_input.a, u_input.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, -2147483647i, -25164i), vec4<i32>(-2147483647i, u_input.a, 0i, u_input.b)), u_input.b, u_input.b) & vec3<i32>(u_input.b, u_input.b & 0i, 1i)));
    return !(!(!select(!vec3<bool>(var_0.b, false, true), select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, false, false)), !var_0.b)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = 1u;
    var var_1 = arg_1;
    var var_2 = 27658i;
    var_2 = _wgslsmith_clamp_i32(-u_input.a ^ _wgslsmith_sub_i32(u_input.b, _wgslsmith_sub_i32(-u_input.a, abs(-10212i))), _wgslsmith_add_i32(min(14801i, -(38466i ^ u_input.a)), -23908i), _wgslsmith_add_i32(9131i, ~u_input.a));
    var var_3 = _wgslsmith_mod_vec2_u32(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.a.x, var_0), vec2<u32>(var_0, var_0)), ~vec2<u32>(3758u, 49884u), arg_3.yz), ~vec2<u32>(38779u, _wgslsmith_div_u32(1u, ~var_0)));
    return select(func_2(), arg_3, vec3<bool>(false, arg_2.x, true));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, 559f, 1133f, 788f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(241f, arg_1, -1516f, arg_0.a.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, -410f, arg_0.a.x, arg_0.a.x)))))));
    let var_1 = Struct_4(~(-2147483647i), _wgslsmith_f_op_f32(round(-513f)), select(select(vec3<bool>(true, true, true), func_4(true, Struct_2(vec2<u32>(4294967295u, 1u)), vec2<bool>(true, true), func_2()), true), vec3<bool>(any(func_2().xx), any(func_4(true, Struct_2(vec2<u32>(38463u, 159795u)), vec2<bool>(true, false), vec3<bool>(true, false, true)).zy), true), vec3<bool>(any(vec3<bool>(true, true, true)), false, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))))));
    let var_2 = ~(~abs(~1u)) & _wgslsmith_div_u32(reverseBits(firstTrailingBit(23105u)) ^ 43124u, 13333u);
    var var_3 = var_1.a;
    var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, u_input.a, ~(-3410i)) ^ select(vec3<i32>(2894i, u_input.b, 11681i), vec3<i32>(var_1.a, var_1.a, var_1.a), func_4(false, Struct_2(vec2<u32>(var_2, 4294967295u)), vec2<bool>(var_1.c.x, var_1.c.x), var_1.c)), (abs(vec3<i32>(var_1.a, 0i, var_1.a)) << (abs(vec3<u32>(14193u, 0u, var_2)) % vec3<u32>(32u))) & min(countOneBits(vec3<i32>(34736i, u_input.a, -1677i)), -vec3<i32>(4560i, 2147483647i, 9070i)));
    return ~var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(select(vec4<u32>(firstLeadingBit(69023u), ~17546u, func_1(Struct_1(vec3<f32>(-1669f, -642f, 1303f)), -805f), _wgslsmith_div_u32(1u, 94997u)), countOneBits(vec4<u32>(1u, 34634u, 71128u, 4294967295u)), any(vec2<bool>(true, true))), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(148f + -341f), vec3<i32>(countOneBits(~(-u_input.a)), -21314i, (i32(-1i) * -2147483647i) >> (_wgslsmith_clamp_u32(1u, abs(323u), 1u) % 32u)));
}

