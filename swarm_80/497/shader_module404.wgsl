struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, 5628i, 1i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 3336i, i32(-2147483648)), vec4<i32>(29711i, 1i, 0i, 46546i), vec4<i32>(1i, 1i, -59384i, 2147483647i), vec4<i32>(-1i, 21251i, -9140i, -1i), vec4<i32>(i32(-2147483648), 57064i, 23061i, 23118i), vec4<i32>(i32(-2147483648), -45413i, 6081i, 57847i), vec4<i32>(452i, 1122i, 35667i, 25360i), vec4<i32>(14614i, 7790i, -1i, 0i), vec4<i32>(-62588i, 1i, 1i, -1i), vec4<i32>(-19555i, 0i, -1i, -1i), vec4<i32>(2147483647i, -613i, i32(-2147483648), 11809i), vec4<i32>(-12653i, -32403i, -10235i, 12694i), vec4<i32>(1i, -1i, 21116i, -1i), vec4<i32>(2147483647i, -13264i, -12733i, -35767i), vec4<i32>(-7918i, 1i, 32078i, i32(-2147483648)), vec4<i32>(-5311i, 2147483647i, 1i, 2147483647i), vec4<i32>(3766i, 2147483647i, 1i, 42932i), vec4<i32>(16750i, 2147483647i, 0i, 26976i), vec4<i32>(i32(-2147483648), 2147483647i, -14750i, 12175i), vec4<i32>(-14140i, 54027i, i32(-2147483648), 2147483647i), vec4<i32>(-50677i, 0i, 28894i, -9702i), vec4<i32>(30033i, 1i, -1i, 19323i));

var<private> global4: array<vec3<i32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-24749i, u_input.a), _wgslsmith_mult_i32(-2147483647i, u_input.a)), i32(-1i) * -arg_0, arg_0) ^ firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, arg_0), firstTrailingBit(vec3<i32>(-21347i, arg_0, arg_0))), firstLeadingBit(u_input.a ^ -5077i), _wgslsmith_div_i32(u_input.a, u_input.a) << (~4294967295u % 32u)));
    var var_1 = global3[_wgslsmith_index_u32(~22950u, 23u)];
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.x | global0[_wgslsmith_index_u32(global1.x, 24u)], global1.x), ~global0[_wgslsmith_index_u32(0u, 24u)], 34884u) << ((_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 1u), vec2<u32>(33696u, 4129u)), max(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33421u, 24u)], 24u)]), vec2<u32>(74317u, global0[_wgslsmith_index_u32(23379u, 24u)]))) ^ ~global1.x) % 32u), 1u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global1 = select(arg_0.d.d, _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(457u, 944u)), arg_0.d.d), arg_0.d.e.a);
    let var_0 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(u_input.a, u_input.a), min(vec2<i32>(-13288i, 0i), vec2<i32>(0i, u_input.a)), arg_0.a.x <= -396f), -(~vec2<i32>(0i, arg_0.c))), -34121i, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.c, 2147483647i), ~arg_0.c, ~(-29783i)));
    return arg_1.b;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = any(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false)))) != true;
    let var_1 = Struct_1(false, ~_wgslsmith_div_u32(arg_0.x, 2299u));
    return Struct_2(Struct_1(var_0, func_4(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 24u)], 24u)], Struct_1(true, func_3(-6132i)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 498f))) * 1000f), 244f), _wgslsmith_f_op_f32(sign(-343f)), ~vec2<u32>(_wgslsmith_add_u32(43526u, var_1.b), ~global1.x | 1u), Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.a, false, false), vec3<bool>(var_1.a, true, var_0), var_1.a), !vec3<bool>(var_0, var_1.a, true))), arg_0.x));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(121965u, 24u)];
    global1 = arg_0.d;
    global4 = array<vec3<i32>, 5>();
    let var_1 = arg_0;
    var_0 = Struct_3(var_0.a, abs(firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(34437u, 0u, 39047u), vec3<u32>(var_0.b.x, global1.x, 0u) << (vec3<u32>(arg_0.e.b, 53192u, var_0.e.x) % vec3<u32>(32u))))), 1i, Struct_2(Struct_1(any(select(vec3<bool>(var_1.e.a, false, arg_0.a.a), vec3<bool>(true, arg_0.a.a, false), vec3<bool>(true, var_1.e.a, true))), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(var_1.d.x, arg_0.d.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1147f, 981f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-965f, 453f)) + _wgslsmith_f_op_vec2_f32(-var_1.b))), 190f, ~arg_0.d, func_2(vec2<u32>(98937u, global1.x)).a), var_0.e);
    return Struct_2(func_2(arg_0.d).e, vec2<f32>(_wgslsmith_f_op_f32(max(222f, 653f)), var_0.d.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) + 1f))), abs(arg_0.d) ^ var_0.e.wx, Struct_1(var_0.a.x != arg_0.b.x, global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(43212u, 24u)], 0u), var_0.b), _wgslsmith_add_u32(50209u, _wgslsmith_dot_vec3_u32(var_0.b, var_0.e.xzw))), 24u)]));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = ~1u;
    global4 = array<vec3<i32>, 5>();
    global2 = array<Struct_3, 24>();
    let var_1 = abs(global0[_wgslsmith_index_u32(1u, 24u)]);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_0 * 120f), arg_0)))), ~_wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 64602u, global0[_wgslsmith_index_u32(4294967295u, 24u)]) & vec3<u32>(var_1, 4294967295u, 25674u)), firstLeadingBit(vec3<u32>(77381u, 945u, global1.x)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 8105u, 1u), vec3<u32>(1u, var_1, global0[_wgslsmith_index_u32(25135u, 24u)]))), ~(~firstLeadingBit(u_input.a)), func_5(func_2(min(~vec2<u32>(var_1, 68097u), ~vec2<u32>(76725u, 30679u)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 0u, global1.x, var_0), ~vec4<u32>(global1.x, var_1, 1u, var_0))));
    return func_5(func_2(_wgslsmith_mod_vec2_u32(min(vec2<u32>(33276u, 28085u), var_2.e.wz), var_2.d.d) & (select(var_2.b.yy, vec2<u32>(global0[_wgslsmith_index_u32(91875u, 24u)], 8975u), false) >> (vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 24u)], var_1) % vec2<u32>(32u)))));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    let var_1 = global4[_wgslsmith_index_u32(0u, 5u)];
    var var_2 = false;
    var var_3 = Struct_2(func_2(arg_2.d).e, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, arg_2.b.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_2.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(380f, 1060f))))) - arg_2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(func_1(-864f, _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.x, -375f), arg_2.b), !vec3<bool>(true, false, var_0)).c)), 314f)), arg_2.d & reverseBits(_wgslsmith_mult_vec2_u32(select(arg_2.d, vec2<u32>(global0[_wgslsmith_index_u32(1u, 24u)], 85972u), var_0), abs(vec2<u32>(1u, 77196u)))), Struct_1(false, 4294967295u));
    global4 = array<vec3<i32>, 5>();
    return Struct_1((4294967295u <= firstTrailingBit(4294967295u)) & var_0, _wgslsmith_mod_u32(13586u, arg_2.d.x));
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(32363i, abs(u_input.a), _wgslsmith_div_i32(-u_input.a << (1u % 32u), -(~_wgslsmith_clamp_i32(u_input.a, u_input.a, 0i))), ~u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f) - -508f), func_2(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(4294967295u, 6634u))).b.x, -1236f, _wgslsmith_f_op_f32(trunc(1f))));
    var var_2 = func_1(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-191f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1359f, var_1.x))), !vec3<bool>(true, false, arg_0.a)).c), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(346f * -1555f), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * _wgslsmith_f_op_f32(-var_1.x)), var_1.wz, vec3<bool>(true, !arg_0.a, true)).b.x), select(select(!select(vec3<bool>(arg_0.a, false, false), vec3<bool>(false, false, false), arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a), any(select(vec2<bool>(false, arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, false)))), vec3<bool>(true, true, arg_0.a), arg_0.a));
    var var_3 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-var_1.xw), _wgslsmith_div_f32(111f, var_1.x), vec2<u32>(29881u, global0[_wgslsmith_index_u32(51994u, 24u)]) >> (vec2<u32>(~16870u, 1u) % vec2<u32>(32u)), func_1(482f, _wgslsmith_f_op_vec2_f32(-var_2.b), vec3<bool>(false, any(vec2<bool>(true, arg_0.a)) | !arg_0.a, func_1(var_1.x, _wgslsmith_f_op_vec2_f32(-var_1.xz), !vec3<bool>(true, var_2.a.a, arg_0.a)).e.a)).a);
    let var_4 = var_2.a;
    return func_2(firstTrailingBit(_wgslsmith_mod_vec2_u32(~var_3.d >> (var_3.d % vec2<u32>(32u)), vec2<u32>(var_4.b, select(arg_0.b, 25942u, var_3.a.a))))).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_7(func_6(!any(vec4<bool>(false, false, true, false)), _wgslsmith_sub_i32(42190i, _wgslsmith_add_i32(u_input.a, u_input.a)), func_1(1726f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1443f))), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-624f, _wgslsmith_f_op_f32(f32(-1f) * -256f)), vec2<f32>(-340f, _wgslsmith_f_op_f32(f32(-1f) * -680f)))), -1085f, vec2<u32>(global1.x, ~0u), func_6(~(global1.x & global0[_wgslsmith_index_u32(1u, 24u)]) >= ~(~4294967295u), _wgslsmith_div_i32(u_input.a, firstTrailingBit(i32(-1i) * -16132i)), Struct_2(Struct_1(u_input.a == 0i, global1.x), vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(-309f, -679f))), _wgslsmith_div_f32(-140f, -691f), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(global1.x, global1.x)), Struct_1(-25772i > u_input.a, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(24621u, 24u)], 27525u)))));
    var var_1 = 1372f;
    var var_2 = vec3<bool>(true, var_0.e.a, func_1(122f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_0.c), var_0.b)) * var_0.b), select(vec3<bool>(func_1(-1000f, var_0.b, vec3<bool>(var_0.e.a, var_0.e.a, var_0.a.a)).a.a, true, any(vec4<bool>(var_0.e.a, true, var_0.a.a, false))), vec3<bool>(true, all(vec3<bool>(var_0.e.a, var_0.e.a, var_0.e.a)), !var_0.a.a), select(select(vec3<bool>(false, var_0.e.a, true), vec3<bool>(false, var_0.e.a, var_0.e.a), vec3<bool>(false, false, false)), !vec3<bool>(false, var_0.a.a, false), !vec3<bool>(true, var_0.e.a, var_0.a.a)))).a.a);
    global3 = array<vec4<i32>, 23>();
    global2 = array<Struct_3, 24>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1402f))))) * 409f);
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1922f * _wgslsmith_f_op_f32(f32(-1f) * -1190f)), var_3, func_2(~vec2<u32>(var_0.e.b, var_0.e.b)).c))), abs(reverseBits(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, global1.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<u32>(4294967295u, global1.x, global0[_wgslsmith_index_u32(35579u, 24u)])), ~vec3<u32>(52790u, var_0.e.b, global1.x), vec3<u32>(global1.x, 71396u, var_0.a.b)))), ~abs(-12577i), Struct_2(var_0.e, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c - var_3), var_3)), var_3), var_0.b.x, _wgslsmith_add_vec2_u32(var_0.d, _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, var_0.d.x) & var_0.d, _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(var_0.e.b, 24u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 11114u)))), func_6(var_2.x, _wgslsmith_div_i32(2147483647i, -66843i >> (0u % 32u)), func_5(func_2(var_0.d)))), (~vec4<u32>(global1.x, var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], 56378u) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.b, var_0.e.b, 46504u), vec3<u32>(var_0.d.x, var_0.a.b, var_0.d.x)), _wgslsmith_sub_u32(global1.x, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, global1.x), vec3<u32>(global1.x, var_0.e.b, global0[_wgslsmith_index_u32(76020u, 24u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 24u)], global1.x, global0[_wgslsmith_index_u32(var_0.a.b, 24u)]), vec3<u32>(var_0.d.x, 68450u, var_0.a.b))) % vec4<u32>(32u))) ^ vec4<u32>((4294967295u & var_0.d.x) ^ global1.x, 53502u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(753u, 24u)], 24u)], 24u)] >> (global1.x % 32u), 9299u));
    var var_5 = var_4.d;
    global4 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(var_4.e, var_4.e), ~abs(func_4(var_4, var_5.e))));
}

