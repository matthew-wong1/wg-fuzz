struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = select(~(~((vec3<u32>(arg_1, arg_0, arg_0) << (vec3<u32>(u_input.c, arg_1, arg_1) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(arg_1, 0u, arg_0), vec3<u32>(4294967295u, arg_1, 15975u)) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, u_input.c), _wgslsmith_add_vec3_u32(~select(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 20226u, 4294967295u), vec3<bool>(true, true, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(1526u, arg_1, 16173u), ~vec3<u32>(44219u, 1672u, arg_1)))), vec3<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.a.x > u_input.a.x)), true));
    var_0 = vec3<u32>(abs(~0u), var_0.x, 1u);
    global0 = array<Struct_3, 1>();
    var var_1 = u_input.a.x <= max(_wgslsmith_mod_i32(_wgslsmith_mod_i32(30370i, u_input.a.x), abs(u_input.b)) | -89110i, u_input.b);
    let var_2 = select(select(select(vec2<bool>(true, 53010u != arg_0), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))), select(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(any(vec3<bool>(true, false, false)), true), select(vec2<bool>(false, all(vec3<bool>(true, false, true))), vec2<bool>(true, true), true)), any(vec3<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 4872i, 38837i), vec4<i32>(23028i, u_input.a.x, u_input.a.x, u_input.a.x)) < firstTrailingBit(-18342i), true)));
    return ~arg_0;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    let var_0 = ~firstLeadingBit(~vec3<u32>(func_3(1u, u_input.c), _wgslsmith_clamp_u32(19365u, 1u, u_input.c), 64533u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1106f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-463f + -309f), _wgslsmith_f_op_f32(-798f + 1942f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -592f) * _wgslsmith_f_op_f32(abs(-1875f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 367f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-423f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f) - -807f)), 876f);
    var var_2 = ~firstTrailingBit(40361i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, var_1.c, any(vec4<bool>(true, true, true, true))))), 659f);
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = true;
    var var_1 = !(!vec3<bool>(var_0, all(vec4<bool>(true, var_0, var_0, var_0)), var_0));
    var var_2 = Struct_1(vec4<f32>(240f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1049f, _wgslsmith_f_op_f32(step(-1097f, arg_0.c)))))), func_2().c, _wgslsmith_f_op_f32(ceil(arg_0.a.x))), arg_0.c, _wgslsmith_f_op_f32(arg_0.c * arg_0.b));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, firstLeadingBit(u_input.c)), 1u)];
    var var_4 = 1930u;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, var_2.b, _wgslsmith_f_op_f32(-var_3.a.d.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-774f))))));
}

fn func_1() -> i32 {
    let var_0 = vec2<bool>(true, all(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(760f, 415f, 477f, 1186f), vec4<f32>(544f, -553f, -515f, 217f))))), _wgslsmith_f_op_vec4_f32(func_4(func_2()))))));
    var var_2 = 76777u;
    global0 = array<Struct_3, 1>();
    var var_3 = _wgslsmith_sub_vec2_i32(~(~u_input.a | u_input.a), -((vec2<i32>(u_input.a.x, u_input.b) ^ (vec2<i32>(-1i, -2147483647i) << (vec2<u32>(33181u, u_input.c) % vec2<u32>(32u)))) & countOneBits(vec2<i32>(33896i, -5377i))));
    return -abs(6045i) << (u_input.c % 32u);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_3, 1>();
    let var_0 = vec4<u32>(func_3(_wgslsmith_mod_u32(0u, ~31563u), _wgslsmith_clamp_u32((u_input.c ^ u_input.c) & max(1u, 1u), u_input.c, _wgslsmith_add_u32(20249u, 0u))), ~(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c, 0u), 61971u)), 0u, u_input.c & abs(_wgslsmith_add_u32(abs(0u), 0u)));
    let var_1 = firstTrailingBit(~((-2147483647i & arg_0) & abs(1i)));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(-select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -51731i, -2147483647i), vec3<i32>(-6000i, 1i, u_input.a.x)), vec3<i32>(u_input.b, u_input.a.x, arg_0), select(arg_2.yzz, vec3<bool>(true, arg_2.x, true), vec3<bool>(false, true, arg_2.x))), min(-vec3<i32>(u_input.b, 0i, var_1), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(4037i, 89743i, u_input.b), vec3<i32>(arg_0, 2147483647i, -47440i))))), u_input.a.x ^ arg_0);
    global0 = array<Struct_3, 1>();
    return Struct_2(_wgslsmith_f_op_f32(arg_1.a.b.c - _wgslsmith_div_f32(arg_1.a.d.b, -620f)), func_2(), arg_1.a.d, Struct_1(_wgslsmith_f_op_vec4_f32(step(func_2().a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_4(arg_1.a.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.a.x, arg_1.a.b.a.x, arg_1.a.d.c, 773f) + vec4<f32>(arg_1.a.c.a.x, 2480f, 263f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.d.b), _wgslsmith_f_op_f32(-arg_1.a.c.b)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.b.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1129f * -101f) + _wgslsmith_f_op_f32(floor(arg_1.a.b.b)))))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_3, 1>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(func_5(-2147483647i, Struct_3(arg_0.a), select(!vec4<bool>(false, true, true, arg_2.x), !vec4<bool>(false, arg_2.x, false, true), vec4<bool>(true, true, true, true))).d.a.xz)));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(arg_0.a.c.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(select(var_2.a.x, -1000f, arg_2.x))))));
    return func_5(select(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(48594i, u_input.b), u_input.a)), select(u_input.a.x, u_input.a.x, true), true), arg_0, select(vec4<bool>(!all(vec4<bool>(true, false, true, arg_2.x)), var_0, any(select(vec3<bool>(false, true, arg_2.x), vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_2.x, false, var_0))), all(!vec3<bool>(arg_2.x, var_0, false))), vec4<bool>(arg_2.x, !arg_2.x, false, true), arg_2.x));
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var_0 = arg_0;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(_wgslsmith_sub_i32(0i, 2147483647i), _wgslsmith_mult_i32(7163i, arg_0), max(u_input.b, arg_0))), vec3<i32>(-21779i, arg_0, u_input.b ^ ~u_input.b)));
    var var_1 = vec4<bool>(!(!(!all(vec4<bool>(false, true, true, false)))), false, true, all(vec4<bool>(arg_2.b <= 523f, true, false, true)) || true);
    return 114794u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 1>();
    var var_0 = select(select(vec4<bool>(select(true, true, 1u == u_input.c), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), true, true), select(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, false), vec4<bool>(true, false, true, select(false, true, true)), vec4<bool>(true, all(vec2<bool>(true, false)), true, any(vec4<bool>(false, false, true, true)))), true), !select(vec4<bool>(all(vec2<bool>(true, false)), true, true, u_input.c > u_input.c), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), true)), false);
    let var_1 = func_7(~u_input.b, func_6(Struct_3(func_5(func_1(), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 0u), 1u)], select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, true, var_0.x)))), reverseBits(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)) | ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec2<bool>(any(!vec3<bool>(var_0.x, false, var_0.x)), 1i < ~u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, 3025f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1196f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1164f, -108f, 460f, 377f) * vec4<f32>(453f, -1213f, 1226f, -813f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)), func_2().c), _wgslsmith_f_op_f32(f32(-1f) * -487f)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(u_input.c >> (13728u % 32u)), ~(~0u)), 55817u));
    var var_2 = u_input.a.x;
    global0 = array<Struct_3, 1>();
    var var_3 = u_input.b;
    global0 = array<Struct_3, 1>();
    let var_4 = ~u_input.c;
    var_3 = firstLeadingBit(-67259i | u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, 917f, -1408f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, -1000f, -636f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2481f), _wgslsmith_f_op_f32(step(-375f, -874f)), _wgslsmith_div_f32(-1595f, -1034f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-840f, 394f, -700f), vec3<f32>(-1473f, -1797f, -131f)), func_6(global0[_wgslsmith_index_u32(var_1, 1u)], vec4<u32>(32016u, 1u, var_4, var_4), vec2<bool>(false, false), vec2<f32>(596f, -684f)).c.a.yxz))))), -1842f, firstLeadingBit(1i), u_input.c, vec2<u32>(select(var_1, _wgslsmith_div_u32(1u, 62918u), true), max(18450u, _wgslsmith_sub_u32(4294967295u, 46174u))) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)));
}

