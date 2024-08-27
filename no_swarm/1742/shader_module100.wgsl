struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-603f);

var<private> global1: array<Struct_2, 5>;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: bool) -> vec4<f32> {
    let var_0 = vec3<i32>(min(~(-1i), -_wgslsmith_add_i32(-49760i, ~arg_0.x)), ~(~0i), abs(_wgslsmith_add_i32(_wgslsmith_add_i32(19081i, global3.b.x), -1i)));
    let var_1 = max(vec2<u32>(~111861u, min(abs(abs(25822u)), ~global3.d)), vec2<u32>(~global3.a, 33349u));
    global2 = false;
    let var_2 = select(vec2<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(26983i, -u_input.b)), -_wgslsmith_add_i32(-1i, 2147483647i << (u_input.a % 32u))), firstLeadingBit(var_0.xz), vec2<bool>(arg_2, false));
    let var_3 = -(vec3<i32>(u_input.b, -2147483647i, ~(-1i)) ^ -arg_0.zxw);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], 838f, global0[_wgslsmith_index_u32(0u, 1u)], -525f)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> vec2<u32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-710f, -917f, any(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)))))) != _wgslsmith_f_op_f32(exp2(1f));
    let var_0 = Struct_1(1u, _wgslsmith_sub_vec2_i32(min(vec2<i32>(2147483647i, ~46517i), max(global3.b, ~global3.b)), vec2<i32>(firstLeadingBit(~(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.b.x, -14979i), ~global3.b.x))), ~(~abs(u_input.a)), min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3.d, u_input.a, 4294967295u)), ~select(vec3<u32>(54968u, global3.d, global3.c), vec3<u32>(global3.a, global3.c, u_input.a), vec3<bool>(false, true, false))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 0u) | vec4<u32>(global3.a, u_input.a, global3.a, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(97838u, global3.d, u_input.a, 4294967295u), vec4<u32>(75909u, global3.d, 0u, global3.a)))));
    var var_1 = ~(i32(-1i) * -1i);
    global1 = array<Struct_2, 5>();
    global4 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(select(global3.b.x, u_input.b, arg_1), _wgslsmith_mult_i32(u_input.b, -1i)), _wgslsmith_mod_vec2_i32(var_0.b << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<i32>(25603i, var_0.b.x))), u_input.b, ~(-61036i));
    return vec2<u32>(var_0.d, 0u);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~select(select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 1u), vec2<bool>(false, false)), select(vec2<u32>(0u, 80052u), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, false)), vec2<bool>(true, true)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-2147483647i, u_input.b, u_input.b, global3.b.x), vec4<bool>(true, false, true, true), true))), false)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.b, -2147483647i), -vec2<i32>(global3.b.x, 56587i), vec2<bool>(false, true)), vec2<i32>(-1i, -6113i)), ~(~vec2<i32>(-50319i, global3.b.x) >> (~vec2<u32>(global3.a, 4294967295u) % vec2<u32>(32u)))), ~87286u, _wgslsmith_clamp_u32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-604f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], 740f), vec4<f32>(2147f, -576f, 629f, global0[_wgslsmith_index_u32(global3.a, 1u)]), vec4<bool>(false, true, false, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], -182f, global0[_wgslsmith_index_u32(37921u, 1u)], -184f))), true).x, global3.a, u_input.a));
    let var_1 = countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, -1i, -1i, var_0.b.x), ~vec4<i32>(global3.b.x, u_input.b, -2147483647i, 37533i)) & vec4<i32>(u_input.b, countOneBits(u_input.b), abs(-25094i), firstLeadingBit(u_input.b))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(-279f, global0[_wgslsmith_index_u32(reverseBits(u_input.a), 1u)])), -194f))), vec2<f32>(1722f, global0[_wgslsmith_index_u32(~func_4(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(var_0.c, 1u)], 680f, global0[_wgslsmith_index_u32(var_0.c, 1u)]), vec4<f32>(3039f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), any(vec3<bool>(false, true, false))).x, 1u)]), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), var_1.x > u_input.b), vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), true))));
    let var_3 = ~(~vec3<u32>(var_0.a, ~var_0.c, ~97407u) >> (vec3<u32>(~4294967295u, global3.d, 23604u) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-907f, -483f, global0[_wgslsmith_index_u32(1u, 1u)]) - vec3<f32>(global0[_wgslsmith_index_u32(var_0.c, 1u)], 1024f, global0[_wgslsmith_index_u32(u_input.a, 1u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1383f, var_2.x), vec3<f32>(1765f, 922f, 1172f), vec3<bool>(false, false, true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(908f, 625f, 483f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 1u)], var_2.x, var_2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-589f, 122f, var_2.x))))));
    return global1[_wgslsmith_index_u32(1u, 5u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_0.c;
    let var_1 = ~(-2147483647i);
    var var_2 = _wgslsmith_mod_i32(arg_1.b.b.x, 1i);
    let var_3 = select(select(vec2<bool>(!arg_2.x || true, true | !arg_2.x), select(vec2<bool>(1025f < arg_0.a, true), !arg_2.xz, arg_2.yz), arg_2.xy), !vec2<bool>(true, any(vec3<bool>(true, false, arg_2.x))), vec2<bool>(any(vec3<bool>(true, any(arg_2.zz), var_0.c <= 46003u)), arg_2.x));
    global3 = func_2().b;
    return func_2().b;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<f32, 1>();
    var var_0 = func_5(func_2(), global1[_wgslsmith_index_u32(79983u, 5u)], select(vec3<bool>(false, true, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(arg_0.x <= 0i, select(true, true, false), true), vec3<bool>(true, false, true))), func_2());
    global2 = var_0.b.x <= -firstTrailingBit(~(-13685i >> (var_0.c % 32u)));
    let var_1 = !vec4<bool>(true, true, true || !all(vec2<bool>(false, true)), any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    var var_2 = ~(~_wgslsmith_clamp_u32(global3.d, ~firstLeadingBit(1220u), 1u));
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1017f, global0[_wgslsmith_index_u32(global3.a, 1u)], global0[_wgslsmith_index_u32(421u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 1u)], -466f, -1394f, global0[_wgslsmith_index_u32(u_input.a, 1u)])))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global3.c, 1u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 1u)]), -2206f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, var_0.c), 1u)]))), var_1.x).x;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> StorageBuffer {
    let var_0 = ~arg_1.b.x >= -3891i;
    var var_1 = arg_1;
    var var_2 = 1i;
    global0 = array<f32, 1>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 2284f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(427f, arg_2.x, global0[_wgslsmith_index_u32(global3.d, 1u)], arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1644f, global0[_wgslsmith_index_u32(23798u, 1u)], global0[_wgslsmith_index_u32(arg_1.a, 1u)], -1851f)), arg_0)), vec4<f32>(-511f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c, 1u)]), -1744f, 196f)), true)));
    return StorageBuffer(~(-_wgslsmith_mult_vec2_i32(firstLeadingBit(arg_1.b), vec2<i32>(43586i, global3.b.x))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(vec4<bool>(!((u_input.a <= 0u) || true), true, u_input.b < -9397i, true), Struct_1(0u, abs(vec2<i32>(global3.b.x, u_input.b) & ~global3.b), 52941u, func_1(vec4<i32>(1i, global3.b.x, 0i, -1i) ^ max(vec4<i32>(1i, u_input.b, 1i, global3.b.x), vec4<i32>(u_input.b, u_input.b, 34069i, 8433i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1155f, -1439f, global0[_wgslsmith_index_u32(global3.d, 1u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], 246f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-936f, -1244f, global0[_wgslsmith_index_u32(60484u, 1u)])))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 1u)], 134f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], 948f, global0[_wgslsmith_index_u32(u_input.a, 1u)]) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1023f, 1000f), vec3<f32>(-273f, -118f, global0[_wgslsmith_index_u32(global3.d, 1u)]))))), true)));
}

