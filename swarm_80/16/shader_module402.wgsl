struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, -57000i), vec2<i32>(-33508i, 0i), vec2<i32>(0i, -15175i), vec2<i32>(-26656i, -9878i), vec2<i32>(1i, 25665i));

var<private> global1: array<vec4<u32>, 12>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(2147483647i, 2147483647i, 0i), -1914f, vec2<f32>(116f, 658f), vec3<u32>(4294967295u, 54727u, 39200u), true), Struct_1(vec3<i32>(2147483647i, 1i, -42440i), -980f, vec2<f32>(240f, -741f), vec3<u32>(1142u, 14765u, 43520u), true), Struct_1(vec3<i32>(44702i, 0i, 0i), 1423f, vec2<f32>(359f, -1177f), vec3<u32>(4294967295u, 0u, 4294967295u), false), Struct_1(vec3<i32>(0i, 23236i, -28329i), 1511f, vec2<f32>(-179f, -382f), vec3<u32>(39950u, 30256u, 37578u), true), Struct_1(vec3<i32>(2147483647i, -32752i, 92728i), 383f, vec2<f32>(-1138f, -1281f), vec3<u32>(54631u, 0u, 39028u), false), Struct_1(vec3<i32>(2147483647i, -1i, 53738i), -1067f, vec2<f32>(-2238f, 935f), vec3<u32>(1u, 46912u, 65795u), false), Struct_1(vec3<i32>(-1747i, 24988i, 27461i), 186f, vec2<f32>(-654f, -209f), vec3<u32>(1u, 38031u, 0u), false), Struct_1(vec3<i32>(22440i, i32(-2147483648), 16185i), -1193f, vec2<f32>(-2668f, 691f), vec3<u32>(21024u, 0u, 64164u), false), Struct_1(vec3<i32>(544i, 88137i, -2095i), -570f, vec2<f32>(-2456f, -1310f), vec3<u32>(36287u, 21386u, 36318u), true));

var<private> global3: f32;

var<private> global4: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = Struct_4(Struct_3(Struct_1(firstTrailingBit(arg_0.a.a.a), arg_1.a.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.b, arg_1.a.c.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, arg_3.c.x))))), select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 38902u, 89214u), vec3<u32>(4294967295u, arg_1.a.d.x, 4294967295u)), vec3<u32>(1u, arg_1.a.d.x, arg_3.d.x), !arg_3.e), !arg_0.a.a.e)), Struct_3(Struct_1(~arg_3.a, -473f, _wgslsmith_f_op_vec2_f32(abs(arg_1.a.c)), ~(~u_input.e), select(arg_3.e, arg_3.e, arg_1.a.e) || false)));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)]);
    let var_2 = Struct_2(arg_3, max(vec4<i32>(-31910i, 26811i, firstTrailingBit(_wgslsmith_sub_i32(2147483647i, var_1.a.a.x)), arg_0.a.a.a.x), min((vec4<i32>(u_input.d, arg_1.a.a.x, arg_0.b.a.a.x, -2147483647i) ^ vec4<i32>(-32475i, arg_0.a.a.a.x, arg_1.a.a.x, 0i)) | firstLeadingBit(vec4<i32>(-19937i, 43647i, 0i, var_0.a.a.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a.x, u_input.b, arg_0.b.a.a.x, arg_1.a.a.x), vec4<i32>(2147483647i, 0i, 1i, arg_3.a.x)) << (~global1[_wgslsmith_index_u32(var_1.a.d.x, 12u)] % vec4<u32>(32u)))), arg_1.a, 1f);
    var var_3 = -(~(arg_0.a.a.a.x | -arg_1.a.a.x));
    return global1[_wgslsmith_index_u32(43564u, 12u)] | reverseBits(vec4<u32>(_wgslsmith_add_u32(arg_2.x << (0u % 32u), 80561u), arg_0.b.a.d.x, 1u, 37956u));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> vec3<bool> {
    global2 = array<Struct_1, 9>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 9u)], select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, 13695i, -11951i, -1i), vec4<i32>(arg_1, arg_1, arg_1, 0i), vec4<i32>(-2147483647i, u_input.b, -1i, 4607i)) & ~vec4<i32>(-1i, -2147483647i, -20852i, 1i), ~(~vec4<i32>(u_input.b, 3146i, 23300i, -6633i)), all(!vec2<bool>(arg_2, arg_2))) >> (func_3(Struct_4(Struct_3(global2[_wgslsmith_index_u32(arg_0.x, 9u)]), Struct_3(Struct_1(u_input.a, 688f, vec2<f32>(1468f, 338f), arg_0.ywy, arg_2))), Struct_3(global2[_wgslsmith_index_u32(176u, 9u)]), vec2<u32>(_wgslsmith_mult_u32(u_input.e.x, 0u), ~4294967295u), Struct_1(u_input.a, -1118f, vec2<f32>(-1000f, 272f), vec3<u32>(u_input.c.x, 5878u, u_input.c.x), arg_2)) % vec4<u32>(32u)), Struct_1(u_input.a, 1464f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1116f, 686f), -1887f)), arg_0.zxw >> (~(u_input.e & vec3<u32>(4294967295u, u_input.c.x, 1u)) % vec3<u32>(32u)), true), _wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f));
    global4 = array<vec4<bool>, 11>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f));
    return select(!(!(!vec3<bool>(arg_2, var_0.c.e, true))), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(arg_2, arg_2, true), true), select(vec3<bool>(false, false, var_0.a.e), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2)), true), select(!vec3<bool>(var_0.a.e, true, false), !vec3<bool>(arg_2, true, false), any(vec3<bool>(arg_2, arg_2, arg_2))), true), vec3<bool>(false, true, arg_2), vec3<bool>(select(arg_2, any(vec2<bool>(true, var_0.c.e)), var_0.a.e), any(select(global4[_wgslsmith_index_u32(4294967295u, 11u)], vec4<bool>(arg_2, true, arg_2, false), global4[_wgslsmith_index_u32(var_0.c.d.x, 11u)])), all(select(vec2<bool>(true, true), vec2<bool>(var_0.a.e, true), vec2<bool>(var_0.a.e, var_0.c.e))))), vec3<bool>(var_0.c.e, var_0.a.e, arg_2));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(min(~vec3<i32>(-25030i, u_input.d, -1i), firstTrailingBit(min(u_input.a, u_input.a))), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1192f, _wgslsmith_f_op_f32(f32(-1f) * -660f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1077f, 1000f)), vec2<f32>(-1717f, arg_0), vec2<bool>(false, true)))), vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x, ~u_input.e.x), ~(~u_input.c.x), 11366u), any(func_2(vec4<u32>(0u, 8752u, u_input.c.x, u_input.c.x), -37991i, true))));
    let var_1 = var_0.a.a.x << (0u % 32u);
    global1 = array<vec4<u32>, 12>();
    global2 = array<Struct_1, 9>();
    global4 = array<vec4<bool>, 11>();
    return Struct_2(var_0.a, firstLeadingBit(~countOneBits(vec4<i32>(1i, var_1, var_1, 2147483647i)) ^ vec4<i32>(_wgslsmith_div_i32(8317i, u_input.d), _wgslsmith_dot_vec3_i32(u_input.a, var_0.a.a), var_0.a.a.x, 0i)), var_0.a, arg_0);
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 6>();
    global2 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, 272f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-888f, 1182f) - vec2<f32>(-251f, 1000f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(222f)), _wgslsmith_f_op_f32(-591f * -1414f)))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 1u), 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(func_4(func_1(-1507f)), vec3<i32>(-1751i, _wgslsmith_sub_i32(reverseBits(-40254i), -55373i), min(firstTrailingBit(var_1.a.a.x), u_input.d))), firstTrailingBit(~_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(33641u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])) | _wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(~(~u_input.c.x), 12u)], vec4<u32>(u_input.e.x, var_1.a.d.x, var_1.a.d.x, u_input.c.x) | select(vec4<u32>(var_1.a.d.x, 4294967295u, u_input.c.x, var_1.a.d.x), global1[_wgslsmith_index_u32(u_input.c.x, 12u)], var_1.a.e), vec4<u32>(~0u, func_1(585f).c.d.x, u_input.c.x, 1u)), -1003f, vec4<u32>(u_input.c.x, _wgslsmith_div_u32(1u, var_1.a.d.x), u_input.e.x, 1u), 23300u ^ var_1.a.d.x);
}

