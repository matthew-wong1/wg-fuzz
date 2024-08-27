struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_3,
    d: vec2<u32>,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec3<u32>, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = ~(-2147483647i) << ((_wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(6993u), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.d, arg_2.d.x))), arg_2.c.a.c.b.x) & 4294967295u) % 32u);
    let var_1 = select(!arg_2.c.b.c.xz, vec2<bool>(all(vec4<bool>(arg_2.b.x, !arg_3.x, arg_3.x || true, !arg_3.x)), -1065f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x))))), true);
    global0 = array<Struct_1, 17>();
    var_0 = abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.b.e, arg_2.c.b.e, 3286i, arg_2.c.b.e), vec4<i32>(-7845i, 24231i, arg_2.c.b.e, arg_2.c.b.e))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(arg_0, -2147483647i, arg_0)), vec3<i32>(arg_0, 19180i, -20562i), abs(u_input.a))));
    var_0 = 35330i;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.c.a.d)), _wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_div_f32(arg_2.c.b.d.x, -1141f), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, 1446f, arg_1.x) + arg_2.a), _wgslsmith_f_op_vec4_f32(-arg_2.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(arg_2.a, vec4<f32>(1423f, 1743f, 1000f, arg_2.a.x), true)), _wgslsmith_f_op_vec4_f32(round(arg_2.a)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1919f, 738f, arg_2.e, arg_2.e)) - _wgslsmith_div_vec4_f32(arg_2.a, arg_2.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-458f, -581f, -381f, 1000f))), arg_2.a))))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = ~arg_0.a.c.b;
    global0 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_sub_i32(arg_0.a.c.e, arg_0.a.c.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1840f)), _wgslsmith_f_op_f32(-1426f + arg_0.a.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.d.x, arg_0.a.c.d.x) - arg_0.a.c.d))), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.d.x, arg_0.a.c.d.x, arg_0.a.c.d.x, arg_0.a.c.d.x) + vec4<f32>(arg_0.a.d, -325f, 1924f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, arg_0.a.d, arg_0.a.c.d.x, -1110f))), arg_0.b.c.xy, arg_0, _wgslsmith_sub_vec2_u32(~arg_0.a.c.b, _wgslsmith_clamp_vec2_u32(u_input.b, arg_0.a.c.b, vec2<u32>(u_input.d, 43092u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f * arg_0.b.d.x))), select(!(!vec4<bool>(false, true, arg_1, arg_1)), select(!vec4<bool>(arg_0.a.c.c.x, false, true, false), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x, arg_1)), true))));
    let var_3 = abs(8182u);
    return !arg_1;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = false && ((67794u >= _wgslsmith_mult_u32(u_input.d, 1u)) & ((true && all(vec4<bool>(false, true, true, true))) | all(vec2<bool>(true, true))));
    global1 = array<vec3<u32>, 12>();
    global0 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2277f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1723f, -794f)))))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, 176f, var_1.x) * vec4<f32>(var_1.x, 791f, -403f, -1115f))))))), !select(vec2<bool>(false, func_2(Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec2<i32>(arg_0, 2147483647i), global0[_wgslsmith_index_u32(arg_1, 17u)], -544f), global0[_wgslsmith_index_u32(10119u, 17u)]), false, vec2<i32>(u_input.c.x, arg_0))), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true)), Struct_3(Struct_2(vec4<bool>(true, true, select(false, true, false), var_1.x > -1277f), ~(-vec2<i32>(arg_0, 38270i)), Struct_1(_wgslsmith_sub_u32(arg_1, arg_1), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 137573u), u_input.b), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec2<f32>(var_1.x, var_1.x), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), global0[_wgslsmith_index_u32(0u, 17u)]), u_input.b, 1000f);
    return var_2.c.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = global0[_wgslsmith_index_u32(min(u_input.b.x, func_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x)), ~(-6401i)), u_input.a.x), u_input.b.x)), 17u)];
    var var_1 = func_2(Struct_3(Struct_2(vec4<bool>(false, var_0.c.x, false, false), vec2<i32>(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(var_0.b.x, 17u)], _wgslsmith_f_op_f32(-var_0.d.x)), Struct_1(_wgslsmith_mod_u32(4294967295u, var_0.a), vec2<u32>(var_0.b.x, 49659u), select(vec3<bool>(false, false, var_0.c.x), var_0.c, var_0.c.x), var_0.d, -2597i)), var_0.c.x, countOneBits(vec2<i32>(_wgslsmith_sub_i32(0i, 52376i), -41388i ^ u_input.a.x))) && var_0.c.x;
    var var_2 = u_input.c.x >= 63385i;
    var_2 = var_0.c.x;
    var var_3 = Struct_3(Struct_2(vec4<bool>(var_0.c.x, func_2(Struct_3(Struct_2(vec4<bool>(var_0.c.x, true, false, var_0.c.x), u_input.c, Struct_1(u_input.d, vec2<u32>(0u, 1u), vec3<bool>(var_0.c.x, true, true), vec2<f32>(-1000f, var_0.d.x), var_0.e), -621f), Struct_1(14055u, var_0.b, var_0.c, var_0.d, -1i)), false, u_input.a.zy << (u_input.b % vec2<u32>(32u))), any(!vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x)), !any(vec4<bool>(true, var_0.c.x, false, var_0.c.x))), u_input.a.zx, global0[_wgslsmith_index_u32(reverseBits(var_0.a), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-3881i, var_0.d, Struct_4(vec4<f32>(1669f, var_0.d.x, var_0.d.x, 1305f), vec2<bool>(var_0.c.x, var_0.c.x), Struct_3(Struct_2(vec4<bool>(var_0.c.x, true, true, var_0.c.x), vec2<i32>(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(var_0.a, 17u)], 834f), global0[_wgslsmith_index_u32(1u, 17u)]), var_0.b, var_0.d.x), select(vec4<bool>(true, var_0.c.x, false, false), vec4<bool>(var_0.c.x, var_0.c.x, true, false), true))).x)), global0[_wgslsmith_index_u32(1u | ~u_input.d, 17u)]);
    var_3 = Struct_3(Struct_2(!(!select(var_3.a.a, vec4<bool>(false, true, var_3.b.c.x, true), var_0.c.x)), var_3.a.b, var_3.b, _wgslsmith_f_op_f32(select(var_3.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d.x)) + _wgslsmith_f_op_f32(step(var_3.a.c.d.x, -1389f))), all(vec2<bool>(true, true))))), Struct_1(abs(var_0.b.x), var_3.b.b & ~vec2<u32>(4294967295u, var_3.b.a), vec3<bool>(!var_0.c.x & true, func_2(Struct_3(var_3.a, var_3.a.c), true, ~vec2<i32>(u_input.a.x, u_input.c.x)), !var_3.b.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d)), _wgslsmith_sub_i32(abs(var_0.e), 29183i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(709f, var_0.d.x, 410f, var_0.d.x) + vec4<f32>(1000f, var_3.a.d, 1327f, -1679f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, 629f, -1652f, -873f), vec4<f32>(var_0.d.x, var_3.a.c.d.x, -947f, var_3.a.c.d.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1667f, var_3.b.d.x, -1643f, var_3.b.d.x) * vec4<f32>(247f, -1808f, var_3.a.c.d.x, -497f)) - vec4<f32>(-322f, var_0.d.x, var_0.d.x, var_0.d.x))))), min(~(~global1[_wgslsmith_index_u32(u_input.d, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5739u & ~var_0.a, ~(var_3.a.c.b.x | u_input.d), var_3.a.c.a), 12u)]));
}

