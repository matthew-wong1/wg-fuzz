struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(0i, 1u, vec3<u32>(1u, 0u, 1u), -613f, vec4<f32>(-1813f, -821f, 1000f, -1870f)), vec2<bool>(false, true)), Struct_2(Struct_1(-1i, 4294967295u, vec3<u32>(84240u, 7514u, 4679u), 536f, vec4<f32>(-343f, 1402f, 380f, -518f)), vec2<bool>(false, false)), Struct_2(Struct_1(0i, 24336u, vec3<u32>(13536u, 0u, 86907u), -493f, vec4<f32>(-672f, -847f, 1951f, -833f)), vec2<bool>(true, false)), Struct_2(Struct_1(21513i, 70244u, vec3<u32>(0u, 0u, 1u), -1054f, vec4<f32>(1075f, -1000f, 650f, 2167f)), vec2<bool>(true, false)), Struct_2(Struct_1(2387i, 1u, vec3<u32>(1u, 39053u, 55498u), -403f, vec4<f32>(107f, -1000f, 848f, -966f)), vec2<bool>(false, true)), Struct_2(Struct_1(1i, 1u, vec3<u32>(1u, 1u, 0u), 713f, vec4<f32>(1272f, -787f, 294f, 417f)), vec2<bool>(false, false)), Struct_2(Struct_1(-1i, 1u, vec3<u32>(42540u, 4294967295u, 4294967295u), -993f, vec4<f32>(-729f, -902f, -627f, -815f)), vec2<bool>(false, true)), Struct_2(Struct_1(29422i, 1u, vec3<u32>(21070u, 0u, 1u), 949f, vec4<f32>(154f, 234f, 635f, -1644f)), vec2<bool>(true, true)), Struct_2(Struct_1(0i, 0u, vec3<u32>(52522u, 1u, 4294967295u), 1770f, vec4<f32>(599f, 213f, 388f, -1825f)), vec2<bool>(true, false)), Struct_2(Struct_1(57645i, 21759u, vec3<u32>(52664u, 1u, 88600u), 673f, vec4<f32>(-1764f, -1111f, -205f, -1000f)), vec2<bool>(true, true)), Struct_2(Struct_1(19130i, 32081u, vec3<u32>(1u, 56646u, 0u), -515f, vec4<f32>(1050f, -107f, 1319f, -1254f)), vec2<bool>(true, true)));

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false));

var<private> global2: i32;

var<private> global3: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    return any(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~arg_0.c.x), u_input.b), 12u)]);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(arg_2.a, vec2<bool>(arg_2.b.x, false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.e.x - global3.a.d)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f - _wgslsmith_div_f32(global3.b.a.d, arg_1.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2222f + 2104f) - _wgslsmith_f_op_f32(select(global3.a.d, arg_2.a.d, false))))));
    var var_2 = arg_1.d;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(516f, arg_1.e.x))))), -267f);
    var var_4 = arg_2.b;
    return Struct_3(Struct_1(var_0.a.a, 30641u, ~global3.a.c & _wgslsmith_sub_vec3_u32(firstTrailingBit(arg_2.a.c), var_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1569f, _wgslsmith_f_op_f32(step(596f, var_0.a.e.x))))), var_0.a.e), Struct_2(var_0.a, select(arg_2.b, select(!arg_2.b, select(vec2<bool>(false, false), vec2<bool>(false, true), true), !var_0.b), func_3(global3.a))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a.c.x, global3.a.c.x, 0u, u_input.b), ~vec4<u32>(4294967295u, 120286u, global3.b.a.b, 18867u)), abs(vec4<u32>(52197u, 4294967295u, 35705u, u_input.b)) & vec4<u32>(global3.b.a.b, 35662u, 1u, 4294967295u)) & vec4<u32>(~(64671u & u_input.b), _wgslsmith_dot_vec3_u32(global3.b.a.c, global3.a.c) >> (firstTrailingBit(global3.a.c.x) % 32u), _wgslsmith_mod_u32(0u, 23322u) & global3.b.a.b, global3.a.c.x), global3.b.a, global3.b);
    global0 = array<Struct_2, 11>();
    let var_1 = Struct_1(-_wgslsmith_mult_i32(abs(18870i), -16398i), var_0.b.a.c.x, ~vec3<u32>(global3.b.a.c.x, ~_wgslsmith_sub_u32(var_0.b.a.b, 14632u), ~global3.b.a.c.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-298f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.a.d))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(arg_0.x * var_0.b.a.e.x)), -778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1000f))), _wgslsmith_f_op_f32(sign(global3.a.d)))));
    global0 = array<Struct_2, 11>();
    let var_2 = countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, -20274i, _wgslsmith_mult_i32(var_0.b.a.a, u_input.d), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.yy))), _wgslsmith_add_vec4_i32(vec4<i32>(-28387i << (var_0.a.b % 32u), i32(-1i) * -64985i, 29220i, -var_0.b.a.a), ~vec4<i32>(-16061i, 20177i, u_input.d, -40214i) >> (vec4<u32>(4294967295u, u_input.b, var_0.b.a.c.x, 4294967295u) % vec4<u32>(32u)))));
    return Struct_3(global3.b.a, Struct_2(var_1, select(vec2<bool>(global3.b.b.x, global3.b.b.x), var_0.b.b, global3.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(round(global3.a.e.zzx)));
    global3 = Struct_3(Struct_1(var_0.a.a, ~(~firstTrailingBit(u_input.b)), ~var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-591f * global3.a.d), _wgslsmith_f_op_f32(round(var_0.a.e.x)))) - 669f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, var_0.b.a.e.x, var_0.b.a.e.x, global3.b.a.d)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(862f, var_0.b.a.d, -1019f, 1000f)))) * global3.a.e)), Struct_2(global3.b.a, vec2<bool>(!func_3(Struct_1(-72130i, var_0.b.a.c.x, global3.a.c, 1000f, vec4<f32>(-1032f, global3.b.a.e.x, -102f, var_0.a.d))), select(var_0.b.b.x, global3.b.b.x, var_0.b.b.x) | true)));
    global1 = array<vec4<bool>, 12>();
    var var_1 = global3.b.b.x;
    let var_2 = u_input.c.xz;
    let var_3 = func_2(_wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.c.x, 67403u, 19658u, global3.b.a.c.x), vec4<u32>(11743u, 4294967295u, u_input.b, 0u), vec4<u32>(41514u, 0u, 0u, 91159u)), vec4<u32>(13841u, var_0.b.a.b, u_input.b, 49311u), vec4<u32>(35680u, global3.a.c.x, var_0.a.c.x, u_input.b))), min(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global3.b.a.b, var_0.a.c.x, var_0.b.a.c.x, 1u)), ~vec4<u32>(18592u, 12133u, 1u, 4294967295u)), ~max(vec4<u32>(u_input.b, var_0.b.a.b, 20820u, 1u), vec4<u32>(u_input.b, u_input.b, var_0.b.a.b, 0u)))), var_0.b.a, var_0.b);
    let var_4 = func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1264f, 260f, 121f), vec3<f32>(var_3.b.a.d, -132f, -470f), vec3<bool>(true, var_0.b.b.x, true)))), _wgslsmith_f_op_vec3_f32(global3.a.e.zwx + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3.b.a.d, var_3.a.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.e.x, var_0.a.d, 1000f) + vec3<f32>(-225f, global3.b.a.d, var_3.a.e.x))))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(17620u, ~(~var_4.c.x), ~60392u), var_3.a.c.x, 629f, _wgslsmith_f_op_vec4_f32(var_3.b.a.e - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.d, -1160f, var_0.b.a.d, 1076f) + global3.b.a.e), vec4<f32>(-537f, _wgslsmith_f_op_f32(-var_0.a.d), var_3.b.a.d, global3.a.d)))));
}

