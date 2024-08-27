struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(1u, 1133f, vec2<i32>(-60219i, 1i)), Struct_1(4294967295u, 492f, vec2<i32>(i32(-2147483648), -23042i)), -888f, -6982i), Struct_1(0u, -1091f, vec2<i32>(-1i, 25606i)), 9213u, vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(62349u, -1023f, vec2<i32>(i32(-2147483648), 5358i)), Struct_1(4294967295u, -2230f, vec2<i32>(i32(-2147483648), 2147483647i)), -1492f, 1i), Struct_1(51355u, 114f, vec2<i32>(8927i, -1i)), 4294967295u, vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(69525u, 1527f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(1u, 471f, vec2<i32>(i32(-2147483648), 27430i)), 1244f, i32(-2147483648)), Struct_1(61784u, -392f, vec2<i32>(7574i, -6211i)), 1u, vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(0u, 1417f, vec2<i32>(-1i, 2147483647i)), Struct_1(74557u, 134f, vec2<i32>(2147483647i, 34927i)), 1000f, 1i), Struct_1(0u, 1045f, vec2<i32>(1i, 1i)), 4294967295u, vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(1u, 1212f, vec2<i32>(i32(-2147483648), -1i)), Struct_1(47595u, -386f, vec2<i32>(1i, 2147483647i)), 624f, 5297i), Struct_1(25494u, -1516f, vec2<i32>(i32(-2147483648), 32741i)), 4294967295u, vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(78901u, -246f, vec2<i32>(59470i, -28952i)), Struct_1(1u, -285f, vec2<i32>(1i, -10016i)), 438f, 14629i), Struct_1(4294967295u, 1506f, vec2<i32>(i32(-2147483648), -13968i)), 9464u, vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(0u, -513f, vec2<i32>(-38740i, 2147483647i)), Struct_1(0u, -1004f, vec2<i32>(-1i, -14836i)), -557f, 31188i), Struct_1(1u, -119f, vec2<i32>(0i, -35067i)), 26322u, vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(4294967295u, 633f, vec2<i32>(1i, -28769i)), Struct_1(21561u, 1506f, vec2<i32>(-15822i, -1i)), 331f, 2147483647i), Struct_1(76474u, -1000f, vec2<i32>(1i, -1i)), 1u, vec3<bool>(true, true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<i32> {
    return ~(vec3<i32>(1i, -15821i << (0u % 32u), ~_wgslsmith_sub_i32(-3916i, 15789i)) & select(vec3<i32>(~1i, ~(-1i), _wgslsmith_sub_i32(-21628i, 1i)), -select(vec3<i32>(28764i, 7950i, -607i), vec3<i32>(2147483647i, -57615i, -5068i), true), !any(vec4<bool>(false, false, true, true))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = ~(i32(-1i) * -50897i);
    global0 = array<f32, 18>();
    let var_1 = vec4<u32>(1u, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.a, 4294967295u, arg_1.x), vec4<u32>(45685u, arg_1.x, 284u, u_input.a)), max(4294967295u, u_input.a), true) << (~1u % 32u), firstLeadingBit(_wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(79233u, arg_1.x)), 0u)), u_input.a);
    let var_2 = !select(vec4<bool>(any(vec4<bool>(false, false, false, false)) | true, true, true, true), vec4<bool>(arg_1.x < abs(22725u), global0[_wgslsmith_index_u32(4294967295u, 18u)] < _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_1.x, 18u)])), true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), false);
    global0 = array<f32, 18>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_1.x, 18u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 18u)] - global0[_wgslsmith_index_u32(1u, 18u)]), var_2.x)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 18u)] * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_1.x, 18u)])))) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 18u)], 1134f)), -1000f);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(func_3(), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), reverseBits(abs(vec2<u32>(u_input.a, u_input.a)))), firstLeadingBit(_wgslsmith_clamp_u32(4997u, u_input.a, u_input.a)))));
    global1 = true;
    global0 = array<f32, 18>();
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 18u)] + 366f)), _wgslsmith_f_op_f32(step(-1374f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 18u)] + global0[_wgslsmith_index_u32(76016u, 18u)]))))));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 56342u, 4294967295u), ~_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(4294967295u, u_input.a, 11313u)));
    return Struct_2(Struct_1(var_2.x, _wgslsmith_f_op_f32(1000f * var_0.x), ~(-(~vec2<i32>(15510i, 42818i)))), Struct_1(0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1084f, var_0.x)), 601f)), func_3().yz), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(~u_input.a, firstTrailingBit(u_input.a), 95052u)), 18u)], -2231f)), -43608i << (max(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(u_input.a), ~81332u)) % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(vec3<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)), true), Struct_2(func_2().b, arg_2, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 18u)], 1i), func_2().a, 4294967295u, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    global0 = array<f32, 18>();
    var var_1 = var_0.e;
    var_1 = vec3<bool>(var_1.x, any(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_0.e.x, false), vec4<bool>(false, var_1.x, false, false)), !vec4<bool>(false, true, false, var_1.x), select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, true, false, var_0.a.x), var_0.a.x)), select(!vec4<bool>(var_1.x, var_0.a.x, var_1.x, true), vec4<bool>(false, var_0.e.x, false, false), var_1.x), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(2111f)))) > arg_1);
    global1 = var_0.e.x;
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = func_5(func_2(), -1657f, func_2().a);
    global2 = array<Struct_3, 8>();
    let var_1 = var_0.a;
    global2 = array<Struct_3, 8>();
    let var_2 = vec4<i32>(_wgslsmith_div_i32(~0i, max(var_1.c.x, var_1.c.x)), func_3().x, var_1.c.x, 52357i);
    return !select(_wgslsmith_mod_i32(-30616i, -var_1.c.x) <= var_0.b.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.a.b)), _wgslsmith_div_f32(175f, 425f), true)) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0.b.a, 18u)] - _wgslsmith_f_op_f32(ceil(var_1.b))), any(vec3<bool>(true, true, true)) | true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_i32(8867i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~(-2147483647i), ~(-1i), 2147483647i, i32(-1i) * -1888i)), ~0i);
    var var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_2 = !select(vec2<bool>(var_1.x, func_1()), vec2<bool>(_wgslsmith_div_f32(-2159f, global0[_wgslsmith_index_u32(u_input.a, 18u)]) != _wgslsmith_f_op_f32(round(600f)), false), select(vec2<bool>(true, true), vec2<bool>(false, all(vec3<bool>(var_1.x, var_1.x, false))), vec2<bool>(var_1.x, func_1())));
    let var_3 = vec3<i32>(14726i, -72003i, -1i);
    var var_4 = (!(!var_1.x) | false) && !(!(var_1.x & (var_2.x & var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(abs(~0u))), func_5(Struct_2(func_2().a, Struct_1(20881u & u_input.a, global0[_wgslsmith_index_u32(u_input.a, 18u)], firstTrailingBit(vec2<i32>(var_3.x, 0i))), _wgslsmith_f_op_f32(select(586f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 18u)] + -1052f), var_2.x & var_2.x)), select(_wgslsmith_mult_i32(-1i, 477i), var_3.x, false & var_1.x)), global0[_wgslsmith_index_u32(29767u, 18u)], func_5(func_2(), 586f, Struct_1(~48875u, _wgslsmith_f_op_f32(-1027f - 345f), vec2<i32>(-1i, 0i))).b).b.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-784f, 1571f), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 29706u)), 18u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21265u, 18u)]), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(733f, -468f)), -188f))), var_3.x, ~var_3.x);
}

