struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 82474u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -394f), arg_0), _wgslsmith_f_op_f32(round(-391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)), -1168f))), select(true, select(false, _wgslsmith_f_op_f32(-arg_0) != arg_0, false), !(!select(false, false, true))), Struct_1(any(vec2<bool>(u_input.c.x != 0i, false)), ~vec4<i32>(1i, -1i, min(0i, -2147483647i), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))), Struct_1(true, (select(vec4<i32>(u_input.c.x, u_input.c.x, 11305i, -11670i), vec4<i32>(-2147483647i, 47274i, u_input.c.x, u_input.c.x), true) ^ max(vec4<i32>(1i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(-5409i, u_input.c.x, u_input.c.x, u_input.c.x))) & select(-vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -2147483647i), max(vec4<i32>(-2147483647i, -1i, -57843i, u_input.c.x), vec4<i32>(u_input.c.x, 1726i, u_input.c.x, u_input.c.x)), vec4<bool>(true, true, true, true))));
    let var_1 = var_0.d;
    var var_2 = -(~(var_0.c.b ^ var_1.b));
    var var_3 = ~(~vec3<i32>(~(~u_input.c.x), _wgslsmith_add_i32(~var_1.b.x, ~var_1.b.x), var_0.c.b.x));
    global0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(min(~u_input.b, 1u), ~4294967295u), 4294967295u) | u_input.b;
    return var_0.a.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), -401f, _wgslsmith_f_op_f32(-706f - _wgslsmith_f_op_f32(abs(-214f))), _wgslsmith_f_op_f32(func_3(-921f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, 1506f, -472f, 1000f))))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), Struct_1(all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, false))), vec4<i32>(i32(-1i) * -5476i, -u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(false, vec4<i32>(u_input.c.x, u_input.c.x & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)), u_input.c.x, -abs(-7629i))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, 102f, var_0.a.x, -703f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 1668f, 3206f)))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, -903f)), var_0.a.x, _wgslsmith_f_op_f32(-978f * var_0.a.x), _wgslsmith_f_op_f32(-278f + 646f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -188f, 1631f, var_0.a.x)))))), !(!var_0.d.a), Struct_1(var_0.d.a, var_0.c.b), Struct_1(!var_0.b, var_0.c.b));
    let var_2 = Struct_2(vec4<f32>(-1147f, -849f, _wgslsmith_f_op_f32(-936f + var_0.a.x), -1790f), var_1.c.a, var_0.c, Struct_1(_wgslsmith_mult_u32(reverseBits(arg_0.x), ~0u) != 1u, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(28193i, u_input.c.x, -32785i, 9179i), ~var_1.d.b, true), select(-vec4<i32>(73515i, -3269i, -6181i, var_1.c.b.x), var_0.c.b, vec4<bool>(false, var_0.c.a, true, true)), reverseBits(var_0.c.b))));
    var_0 = var_2;
    var var_3 = true;
    return var_2.d;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_2(vec4<f32>(1f, 1f, 1f, 1f), false, Struct_1(false, -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c.x, 1i, 69338i), vec4<i32>(-2147483647i, -52834i, -2147483647i, 21441i)), vec4<i32>(0i, 22080i, arg_0, 41465i))), func_2(vec2<u32>(u_input.a.x | u_input.b, ~16156u | firstTrailingBit(1892u))));
    var var_1 = vec4<bool>(false, func_2(countOneBits(select(vec2<u32>(0u, u_input.b), ~vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(true, true)))).a, all(vec3<bool>(func_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, u_input.a.x))).a, all(!vec2<bool>(false, var_0.d.a)), var_0.a.x > _wgslsmith_f_op_f32(floor(var_0.a.x)))), true);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-var_0.a)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1099f, 962f, var_0.a.x, var_0.a.x), _wgslsmith_div_vec4_f32(var_0.a, var_0.a), select(vec4<bool>(true, var_1.x, var_1.x, var_0.b), vec4<bool>(false, false, var_1.x, false), false))))), !var_1.x, var_0.c, var_0.d);
    global0 = u_input.a.x;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, 0i), countOneBits(-20900i));
    return -arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    global0 = u_input.a.x;
    var var_0 = Struct_1((u_input.c.x <= func_1(firstTrailingBit(u_input.c.x))) || func_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), u_input.a.zy)).a, vec4<i32>(abs(~countOneBits(-60429i)), _wgslsmith_sub_i32((i32(-1i) * -10901i) & u_input.c.x, -1i), func_2(_wgslsmith_div_vec2_u32(u_input.a.xz, ~u_input.a.yy)).b.x, _wgslsmith_div_i32(_wgslsmith_div_i32(15019i, -7655i), min(u_input.c.x, _wgslsmith_div_i32(4075i, -2147483647i)))));
    var var_1 = ~countOneBits(abs(~(~1u)));
    var var_2 = 1u << (~u_input.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(vec4<u32>(14811u, u_input.b, 80123u, 82952u), vec4<u32>(_wgslsmith_mod_u32(26237u, u_input.b), u_input.b ^ 7725u, u_input.a.x, 4156u), vec4<u32>(u_input.a.x, 1u, ~u_input.b, 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1561f, -134f, -939f, -505f))), vec4<f32>(299f, 1000f, -1000f, -1594f))))), vec3<u32>(~(u_input.a.x ^ u_input.b) >> (abs(_wgslsmith_sub_u32(u_input.a.x, u_input.b)) % 32u), 27563u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.a.x), vec4<u32>(u_input.b, 1u, 16222u, u_input.b)) ^ ~vec4<u32>(16200u, 18241u, 14825u, 1u), ~(vec4<u32>(1u, 17818u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), _wgslsmith_sub_i32(6886i, _wgslsmith_clamp_i32(~u_input.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(10033u, u_input.a.x), vec2<u32>(u_input.b, u_input.b)) % 32u), _wgslsmith_add_i32(-var_0.b.x, var_0.b.x), 1i)), ~(vec4<u32>(~u_input.b, u_input.b, select(u_input.a.x, u_input.b, true), firstTrailingBit(u_input.a.x)) >> (~(~vec4<u32>(0u, u_input.b, u_input.b, u_input.a.x)) % vec4<u32>(32u))));
}

