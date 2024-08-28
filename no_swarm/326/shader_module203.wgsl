struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-1290f + _wgslsmith_div_f32(-102f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(765f, -303f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(119f)) + _wgslsmith_f_op_f32(118f * -171f)))));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(70688u, abs(1u)), vec2<u32>(~0u, 1u)), 31128u, _wgslsmith_add_u32(0u, _wgslsmith_div_u32(4294967295u, 1u))), select(arg_0, false, arg_0), ~(-2147483647i), countOneBits(-select(u_input.a.ww, select(vec2<i32>(1i, -28314i), vec2<i32>(u_input.a.x, u_input.a.x), true), !vec2<bool>(false, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1210f, _wgslsmith_f_op_f32(floor(-712f)), _wgslsmith_f_op_f32(sign(-306f)), _wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, 1092f, -299f, 1270f)))))));
    let var_1 = countOneBits(max(u_input.a.zw, ~var_0.d));
    let var_2 = countOneBits(vec3<i32>(var_0.c, 15054i, _wgslsmith_mult_i32(var_1.x, -u_input.a.x | global0[_wgslsmith_index_u32(select(9996u, var_0.a.x, arg_1), 21u)])));
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, var_2.x, -19225i), var_2), -u_input.a.yzx);
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = ~vec2<i32>(select(firstTrailingBit(global0[_wgslsmith_index_u32(~4903u, 21u)]), ~(-2147483647i), _wgslsmith_f_op_f32(arg_0.b.x * 1032f) > arg_0.a.e.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), -63948i, func_3(!arg_0.a.b, true)));
    let var_1 = Struct_1(~(~select(arg_0.a.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec3<u32>(5260u, arg_0.a.a.x, 25650u), arg_0.a.a), select(vec3<bool>(arg_0.a.b, false, arg_0.a.b), vec3<bool>(arg_0.a.b, false, arg_0.a.b), arg_0.a.b))), any(select(!select(vec4<bool>(arg_0.a.b, arg_0.a.b, false, false), vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.a.b), arg_0.a.b), select(vec4<bool>(false, true, arg_0.a.b, false), !vec4<bool>(false, arg_0.a.b, arg_0.a.b, false), !arg_0.a.b), !vec4<bool>(false, arg_0.a.b, arg_0.a.b, false))), _wgslsmith_sub_i32(0i, arg_0.a.c), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(max(u_input.a.zw & u_input.a.zz, _wgslsmith_mult_vec2_i32(arg_0.a.d, arg_0.a.d)), -vec2<i32>(-48215i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), -2234f)), arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1289f) + _wgslsmith_f_op_f32(f32(-1f) * -1172f)))));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(21904u, arg_0.a.a.x)), vec2<u32>(var_1.a.x, ~var_1.a.x)), ~(~_wgslsmith_div_u32(arg_0.a.a.x, 59650u)), ~reverseBits(~34479u)), !var_1.b, ~_wgslsmith_div_i32(2147483647i, -10975i), var_0 | vec2<i32>(39652i, min(-1i << (var_1.a.x % 32u), ~64758i)), var_1.e);
    var var_3 = arg_0.a.d;
    var_3 = _wgslsmith_sub_vec2_i32(~select(~(-vec2<i32>(-1i, arg_0.a.d.x)), reverseBits(var_1.d), true), u_input.a.wx);
    return arg_0.a.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: f32) -> vec2<f32> {
    let var_0 = -725f;
    var var_1 = _wgslsmith_f_op_f32(1340f * var_0);
    let var_2 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(15861u, 14628u, 4294967295u), select(vec3<u32>(4294967295u, 1u, 90474u), vec3<u32>(33104u, 58087u, 4294967295u), arg_1)), 1u, ~_wgslsmith_mult_u32(1u, 0u)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(34884u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 91688u, 41784u), vec3<u32>(1u, 40260u, 1u)), ~vec3<u32>(44078u, 25919u, 0u)), vec3<u32>(1u, 1u, 1u))), true, ((i32(-1i) * -1i) & _wgslsmith_mod_i32(-25949i, -34369i ^ u_input.a.x)) & firstLeadingBit(-_wgslsmith_div_i32(15333i, u_input.a.x)), vec2<i32>(abs(_wgslsmith_clamp_i32(u_input.a.x, ~(-10616i), global0[_wgslsmith_index_u32(26835u, 21u)])), -1i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, arg_0.x, 883f, var_0), vec4<f32>(arg_0.x, arg_2, var_0, -1000f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0)))))));
    var var_3 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_div_u32(var_2.a.x ^ var_2.a.x, reverseBits(25771u)), 0u, var_2.a.x), (_wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(var_2.a.x, var_2.a.x, 4294967295u)) >> (0u % 32u)) != var_2.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, u_input.a.x) << (var_2.a.yx % vec2<u32>(32u))), -global0[_wgslsmith_index_u32(var_2.a.x >> (0u % 32u), 21u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 21u)], ~2147483647i, var_2.c)), firstTrailingBit(~var_2.d) & var_2.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * var_2.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1115f, -364f, arg_2, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(step(392f, arg_0.x)), _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_div_f32(-549f, arg_0.x), 484f)))), var_2.e);
    global1 = true;
    return _wgslsmith_f_op_vec2_f32(-var_3.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(385f))));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(41822u, 94287u, 0u)), vec3<u32>(1u, 1u, 1u)), 6452u, ~103424u), !((true | any(vec2<bool>(true, false))) | any(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(45452u, 21u)], _wgslsmith_sub_vec2_i32(u_input.a.zz, -(vec2<i32>(0i, global0[_wgslsmith_index_u32(11586u, 21u)]) & ~u_input.a.wz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), var_0, _wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(917f, var_0, -857f, var_0) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 475f, var_0, -129f)))))) - vec4<f32>(1f, -244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1i, vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_f32(-var_0)), var_0)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.e.x, -1139f), var_1.e.zz)))) * vec2<f32>(_wgslsmith_f_op_f32(func_1(~36029i, select(vec4<bool>(var_1.b, true, true, var_1.b), vec4<bool>(var_1.b, true, true, var_1.b), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_div_f32(-1603f, -1564f)))), var_1.e.zy);
    global1 = true || (any(!select(vec3<bool>(false, true, var_1.b), vec3<bool>(false, var_1.b, true), var_1.b)) & (false || any(!vec3<bool>(true, var_1.b, var_1.b))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_1.e.zw)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_2.x, 628f, var_2.x), var_1.e, vec4<bool>(false, true, var_1.b, var_1.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, 1475f, var_2.x, 2184f) - var_1.e))), vec3<bool>(!all(vec4<bool>(true, true, false, var_1.b)), all(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), !func_2(Struct_2(Struct_1(var_1.a, var_1.b, u_input.a.x, var_1.d, vec4<f32>(var_1.e.x, var_0, var_1.e.x, var_2.x)), vec4<f32>(var_0, var_1.e.x, 1689f, -723f)))), _wgslsmith_f_op_f32(ceil(716f))))));
    global0 = array<i32, 21>();
    let var_4 = -_wgslsmith_add_i32(-2147483647i, -global0[_wgslsmith_index_u32(abs(var_1.a.x >> (var_1.a.x % 32u)), 21u)]);
    let var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -1i);
}

