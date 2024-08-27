struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-254f, -257f, 191f), vec3<f32>(-290f, -1365f, 690f), vec3<f32>(-615f, 344f, 1178f), vec3<f32>(1369f, 408f, -1000f), vec3<f32>(-1206f, 175f, 174f), vec3<f32>(-608f, 923f, 354f), vec3<f32>(2076f, -1342f, 691f), vec3<f32>(-2048f, 1357f, -1000f), vec3<f32>(125f, 907f, -1000f), vec3<f32>(-227f, -463f, 2079f), vec3<f32>(1599f, 1779f, 1000f), vec3<f32>(-164f, -446f, -164f), vec3<f32>(436f, 1386f, 2201f));

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<vec2<bool>, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    global0 = array<f32, 2>();
    global4 = array<vec2<bool>, 32>();
    return 2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    let var_0 = arg_0.a;
    global1 = 785f;
    global4 = array<vec2<bool>, 32>();
    global2 = array<vec3<f32>, 13>();
    global0 = array<f32, 2>();
    return _wgslsmith_clamp_vec4_i32(~countOneBits(_wgslsmith_mult_vec4_i32(arg_2.a.a | vec4<i32>(-20687i, -40482i, var_0.a.x, 1i), vec4<i32>(-14576i, arg_3, var_0.a.x, -56725i))), ~(~vec4<i32>(i32(-1i) * -17811i, arg_0.a.a.x, arg_2.a.a.x, var_0.a.x)), arg_2.a.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global2 = array<vec3<f32>, 13>();
    var var_0 = Struct_2(Struct_1(~func_3(Struct_2(Struct_1(vec4<i32>(arg_0.x, 1i, -32740i, 2147483647i), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -114f)), false, arg_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 41422u, 1u), vec3<u32>(64318u, 0u, u_input.a)), Struct_2(global3[_wgslsmith_index_u32(u_input.a, 11u)], arg_1, arg_0.x), -4557i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-162f, 1011f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, global0[_wgslsmith_index_u32(11892u, 2u)])))), (firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(9326i, -1i, -27027i))) | -2147483647i) > (0i & -func_3(Struct_2(Struct_1(vec4<i32>(42334i, 0i, 2147483647i, arg_2.a), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])), arg_1, arg_0.x), vec3<u32>(u_input.a, u_input.a, 30210u), Struct_2(Struct_1(vec4<i32>(-33594i, arg_2.b.x, arg_0.x, arg_2.a), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 294f)), arg_1, -2179i), arg_2.b.x).x), _wgslsmith_mod_i32(-2147483647i, ~(-15201i)));
    var var_1 = global0[_wgslsmith_index_u32(~1u, 2u)];
    let var_2 = ~_wgslsmith_add_vec2_u32(countOneBits(abs(vec2<u32>(u_input.a, 0u))) >> ((countOneBits(vec2<u32>(u_input.b, u_input.a)) | firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(~1u), 10748u));
    var_0 = Struct_2(Struct_1(var_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.a.b.x, -189f)), 428f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a.b.x, global0[_wgslsmith_index_u32(u_input.b, 2u)])))))), false, arg_2.b.x);
    return Struct_3(-1i, arg_2.b);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<f32, 2>();
    global4 = array<vec2<bool>, 32>();
    global3 = array<Struct_1, 11>();
    var var_0 = func_2(vec3<i32>(-1i) * -vec3<i32>(arg_0.b.x, arg_0.b.x, -arg_0.b.x), !any(select(global4[_wgslsmith_index_u32(0u, 32u)], vec2<bool>(false, true), false)) & true, arg_0);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -305f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(46052u, 2u)], -600f) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(67084u, 2u)])))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(54623u, 2u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 318f) * vec2<f32>(-446f, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-750f, 866f)), vec2<f32>(339f, global0[_wgslsmith_index_u32(1u, 2u)]), select(vec2<bool>(false, true), vec2<bool>(false, false), global4[_wgslsmith_index_u32(u_input.a, 32u)])))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-494f * global0[_wgslsmith_index_u32(92281u, 2u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] + global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-750f, -1000f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], 423f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -1161f), false))), select(global4[_wgslsmith_index_u32(~0u, 32u)], !global4[_wgslsmith_index_u32(1273u, 32u)], select(vec2<bool>(false, true), vec2<bool>(false, true), false))))));
    return Struct_1(abs(countOneBits(-(vec4<i32>(-1i, 39733i, 2147483647i, var_0.b.x) << (vec4<u32>(58526u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961f * global0[_wgslsmith_index_u32(52925u, 2u)]) - var_1.x), var_1.x), vec2<f32>(575f, var_1.x))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = vec2<u32>(17002u, u_input.a);
    let var_1 = arg_2.a.x <= ~(~arg_2.a.x);
    global0 = array<f32, 2>();
    let var_2 = Struct_1(vec4<i32>(func_2(-vec3<i32>(-46857i, 24512i, 2147483647i), true | (global0[_wgslsmith_index_u32(var_0.x, 2u)] == -1021f), Struct_3(34026i, vec3<i32>(-2147483647i, 0i, arg_2.a.x))).b.x, _wgslsmith_add_i32(~1i, arg_2.a.x << (~14700u % 32u)), abs(~(-23381i)), arg_2.a.x), arg_0.xz);
    var var_3 = vec3<bool>(arg_1, !(any(select(vec3<bool>(true, var_1, true), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, var_1))) || false), !any(!vec4<bool>(var_1, true, var_1, false)));
    return func_2(vec3<i32>(firstLeadingBit(select(var_2.a.x, func_3(Struct_2(Struct_1(vec4<i32>(-55095i, arg_2.a.x, 0i, 1i), arg_2.b), arg_1, arg_2.a.x), vec3<u32>(arg_3, var_0.x, arg_3), Struct_2(Struct_1(arg_2.a, arg_2.b), var_1, arg_2.a.x), arg_2.a.x).x, false)), -26549i, max(arg_2.a.x, ~(-1i >> (arg_3 % 32u)))), !all(vec2<bool>(all(vec4<bool>(arg_1, var_1, true, true)), !var_3.x)), Struct_3(-3186i, var_2.a.zyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-770f, -1272f, true)))), global0[_wgslsmith_index_u32(16905u, 2u)]), global0[_wgslsmith_index_u32(52280u, 2u)], -1991f), true, func_4(func_2(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)), func_1(false, true, vec3<i32>(6085i, -1i, -60023i), true) == -1i, Struct_3(-4374i >> (u_input.a % 32u), vec3<i32>(-2147483647i, 1i, 0i)))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(13578u, u_input.b << (~0u % 32u), firstTrailingBit(u_input.b) & _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a)), ~countOneBits(firstTrailingBit(42527u)), ~countOneBits(u_input.a) | select(u_input.a, ~47431u, true)));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    global4 = array<vec2<bool>, 32>();
    var var_1 = Struct_3(-4192i, var_0.b);
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(select(reverseBits(48708u), 1u, false), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.a)), 4294967295u, ~(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.b), u_input.b) & ~(~0u)));
    global4 = array<vec2<bool>, 32>();
    var var_3 = func_2(var_1.b, true, var_0);
    var var_4 = global3[_wgslsmith_index_u32(countOneBits(19297u), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, var_0.a, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x))), ~_wgslsmith_div_u32(~(~u_input.b), 1u));
}

