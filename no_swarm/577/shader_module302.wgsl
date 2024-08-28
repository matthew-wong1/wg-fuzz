struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(i32(-2147483648), -36827i), vec2<i32>(16863i, 38153i), vec2<i32>(-7272i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-29954i, -16622i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-28797i, 8813i), vec2<i32>(27124i, 18899i), vec2<i32>(-28371i, -17735i), vec2<i32>(3126i, 0i), vec2<i32>(3549i, -3730i), vec2<i32>(-1i, -78018i), vec2<i32>(-26160i, -2760i), vec2<i32>(2147483647i, -60738i), vec2<i32>(0i, -38256i), vec2<i32>(55755i, 26594i), vec2<i32>(1i, 11554i));

var<private> global1: vec2<i32> = vec2<i32>(5480i, 2147483647i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, _wgslsmith_div_f32(-1000f, arg_0.c), _wgslsmith_f_op_f32(1000f + arg_0.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-954f, -721f, -135f, 1533f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1528f, arg_0.c, arg_0.c, 1000f) - vec4<f32>(arg_0.c, 1000f, 537f, 1025f)), !arg_0.a)) + vec4<f32>(_wgslsmith_f_op_f32(sign(323f)), -1127f, _wgslsmith_f_op_f32(193f - arg_0.c), arg_0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c * -421f), -345f, _wgslsmith_div_f32(arg_0.c, arg_0.c), 730f))));
    var var_1 = any(!select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.a, true), false), !vec2<bool>(arg_0.a, arg_0.a), all(vec4<bool>(false, true, true, arg_0.a)))) & false;
    let var_2 = _wgslsmith_f_op_f32(595f * -639f);
    global0 = array<vec2<i32>, 17>();
    return ~vec2<i32>(reverseBits(-1i), arg_0.d);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    global1 = min(abs(_wgslsmith_mod_vec2_i32(abs(global0[_wgslsmith_index_u32(97767u, 17u)]) << (~u_input.c.yx % vec2<u32>(32u)), func_3(Struct_1(false, arg_1.a, -1701f, -34877i, -13152i)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.d, ~(-44489i)), vec2<i32>(reverseBits(2147483647i), -arg_0.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.c, arg_1.c, arg_2.c))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.c, arg_1.c, -244f), vec3<f32>(1157f, 850f, arg_3))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 741f, arg_1.c) + vec3<f32>(arg_2.c, 818f, arg_3)), vec3<f32>(arg_3, -339f, -2237f), select(vec3<bool>(true, true, arg_1.b), vec3<bool>(arg_1.a, true, arg_1.a), true))))));
    global1 = vec2<i32>(arg_1.e, _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(arg_1.d, arg_2.e) ^ firstLeadingBit(arg_0.x << (u_input.c.x % 32u))));
    var var_1 = Struct_1(true, select(!any(vec2<bool>(false, true)), true, (arg_2.b | arg_1.a) & true) && all(select(select(vec3<bool>(true, false, arg_1.b), vec3<bool>(false, false, arg_1.b), vec3<bool>(true, arg_1.a, false)), select(vec3<bool>(arg_1.b, arg_2.b, arg_1.a), vec3<bool>(false, arg_1.b, arg_2.a), vec3<bool>(arg_1.b, true, true)), arg_1.a | arg_2.b)), arg_2.c, _wgslsmith_clamp_i32(-1i >> (~(4294967295u | u_input.c.x) % 32u), 49443i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_0, vec4<i32>(arg_0.x, u_input.a.x, -2147483647i, 2147483647i)), -arg_0)), -34886i);
    var_1 = arg_2;
    return firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 19647u, 64187u))), u_input.c.x << (1u % 32u), 40854u, _wgslsmith_add_u32(abs(1u), u_input.c.x))) & vec4<u32>(~countOneBits(abs(u_input.c.x)), 64588u, ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x);
}

fn func_4(arg_0: vec4<u32>) -> vec2<f32> {
    global1 = ~u_input.d.xx;
    global1 = abs(u_input.d.yx);
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(2016f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-642f - 1368f) * 1f)), 1f)));
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1763f), _wgslsmith_div_f32(-2478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - -954f))));
    global1 = ~(-_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.d.x, global1.x)), abs(~u_input.a), global0[_wgslsmith_index_u32(44653u, 17u)]));
    return var_1.xy;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    global0 = array<vec2<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), func_2(vec4<i32>(arg_1, -55639i, 18340i, -1i), arg_0, Struct_1(true, false, arg_0.c, 2147483647i, -2147483647i), -125f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec4<u32>(54680u, u_input.c.x, 43808u, 4294967295u))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c))))), -247f));
    let var_2 = Struct_1(arg_0.a, -2147483647i < -arg_1, var_0.x, arg_0.d, -_wgslsmith_mult_i32(-1i, global1.x));
    var var_3 = vec2<u32>(func_2((~vec4<i32>(u_input.a.x, var_2.e, -6151i, -2147483647i) & select(vec4<i32>(-90959i, 1i, 1i, var_2.e), vec4<i32>(2147483647i, arg_0.e, var_2.d, arg_0.e), vec4<bool>(false, arg_0.b, var_2.b, false))) ^ -vec4<i32>(-9223i, 47732i, arg_1, 8827i), var_2, Struct_1(arg_0.b, false, 109f, arg_1, arg_0.d), var_2.c).x, 4294967295u << (_wgslsmith_mod_u32(min(1u, ~4482u), ~u_input.b.x) % 32u));
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1 ^ 34061i, var_2.e, _wgslsmith_div_i32(-11465i, -333i), 15072i), vec4<i32>(arg_0.e, abs(-1i), arg_1, -u_input.d.x)), firstLeadingBit(max(vec4<i32>(-4222i, 2147483647i, 35976i, -1i), vec4<i32>(u_input.a.x, arg_0.e, u_input.d.x, 21766i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, 2147483647i), vec4<i32>(1979i, 32941i, arg_1, var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.d, ~_wgslsmith_sub_vec3_i32(u_input.d, u_input.d), true);
    var var_1 = vec2<i32>(~(i32(-1i) * -2147483647i) ^ func_1(Struct_1(all(vec4<bool>(true, false, false, false)), select(true, false, false), _wgslsmith_f_op_f32(ceil(166f)), max(u_input.a.x, -17641i), _wgslsmith_mult_i32(-1i, 5678i)), _wgslsmith_add_i32(~1i, global1.x)), 5463i);
    var var_2 = min((((2147483647i ^ global1.x) | var_1.x) | var_0.x) ^ 0i, -(~(global1.x >> (u_input.c.x % 32u))));
    let var_3 = select(select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), vec3<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false))), false), vec3<bool>(true, true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), all(vec4<bool>(true, true, true, false))))), vec3<bool>(any(vec2<bool>(true, true)), !select(all(vec3<bool>(true, false, true)), true, true), true), true);
    var_2 = min(firstTrailingBit(-_wgslsmith_mult_i32(u_input.d.x, ~1i)), reverseBits(global1.x));
    var var_4 = any(vec4<bool>(any(var_3.yx), true, !(var_3.x != var_3.x) && true, false));
    let var_5 = 1i;
    var var_6 = vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(56048u, 17u)], func_3(Struct_1(var_3.x, var_3.x, -391f, -1i, -1i))), global1.x, var_1.x), func_3(Struct_1(true, true, _wgslsmith_f_op_f32(f32(-1f) * -2191f), -var_5, 1i ^ var_5)).x);
    let var_7 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_u32(u_input.c.x, var_7) | var_7), select(_wgslsmith_mult_vec4_u32(vec4<u32>(53264u, u_input.c.x, var_7, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_7, u_input.b.x, 17772u, 4294967295u), abs(vec4<u32>(45745u, u_input.c.x, 4294967295u, var_7)))), ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 30810u, u_input.b.x, 0u)), vec4<u32>(var_7, 1u, var_7, 4294967295u) ^ vec4<u32>(4294967295u, 6929u, 94089u, var_7), max(vec4<u32>(36766u, u_input.c.x, var_7, 31082u), vec4<u32>(u_input.b.x, u_input.c.x, 16474u, var_7))), true), 1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 870f) - _wgslsmith_f_op_f32(975f * -480f)))))));
}

