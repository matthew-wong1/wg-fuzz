struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<bool>, 32>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i);

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(1i, 1i), vec2<i32>(5462i, -1i), vec2<i32>(0i, -32545i), vec2<i32>(7433i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 2942i), vec2<i32>(30353i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -5299i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 9107i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), -11252i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    global1 = array<vec2<bool>, 32>();
    global0 = vec2<bool>(global0.x, true);
    let var_0 = select(select(true, countOneBits(1u) > ~u_input.a.x, true), true, false);
    var var_1 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 62994u), _wgslsmith_clamp_u32(1u, 71343u, u_input.b.x)), ~firstTrailingBit(u_input.a.yz)));
    let var_2 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(731f, arg_1));
    return _wgslsmith_div_f32(var_2, 812f);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = global0.x;
    var var_1 = vec3<bool>(global0.x, false, false);
    var var_2 = -25180i;
    var var_3 = abs(min(u_input.a.x, countOneBits(u_input.a.x))) ^ 18312u;
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(global0.x, var_1.x, global0.x), vec3<bool>(true, true, true), vec3<bool>(true, false, global0.x)), 770f, !global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), -1190f), 188f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_div_f32(-152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(136f, arg_0.x)) + _wgslsmith_div_f32(-298f, -243f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: i32) -> vec4<u32> {
    return u_input.a;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_5(func_2(vec4<f32>(-589f, 664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1239f * 1565f) + _wgslsmith_f_op_f32(f32(-1f) * -524f)), 1290f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, 1000f, 699f)), _wgslsmith_div_vec3_f32(vec3<f32>(-637f, -1391f, -766f), vec3<f32>(-612f, -1748f, -985f))))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1027f, -119f, 1561f, -582f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1340f, -1230f, -1433f, -354f), vec4<f32>(-1000f, 1011f, 1041f, 845f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(486f, 2032f, -329f) - vec3<f32>(-250f, -2068f, -1000f)), vec3<f32>(1039f, -695f, 1147f)), Struct_1(_wgslsmith_f_op_f32(-746f * 1709f), 392f), _wgslsmith_mod_u32(func_4(Struct_1(-238f, 623f), Struct_5(Struct_1(765f, 1254f), global0.x), global2.x).x, 4294967295u)), 50727u), !any(select(global1[_wgslsmith_index_u32(arg_1.x, 32u)], !global1[_wgslsmith_index_u32(arg_1.x, 32u)], select(global1[_wgslsmith_index_u32(74873u, 32u)], vec2<bool>(arg_0, false), global1[_wgslsmith_index_u32(u_input.a.x, 32u)]))));
    global3 = array<vec2<i32>, 17>();
    var var_1 = _wgslsmith_div_i32(2147483647i, -15177i);
    let var_2 = ((vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(global2.xwx, vec3<i32>(global2.x, global2.x, u_input.c)), u_input.c, u_input.c) & vec4<i32>(global2.x, -27706i, _wgslsmith_dot_vec2_i32(vec2<i32>(24318i, 14928i), global2.wy), u_input.c)) | (vec4<i32>(1405i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, 14182i, -1i), vec4<i32>(u_input.c, u_input.c, -1757i, 1i)), _wgslsmith_mult_i32(global2.x, -13001i), _wgslsmith_sub_i32(u_input.c, global2.x)) >> (~u_input.a % vec4<u32>(32u)))) >> (vec4<u32>(4294967295u, 23415u, arg_1.x, u_input.a.x) % vec4<u32>(32u));
    var var_3 = var_2.x;
    return Struct_1(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.b, global0.x, false), 1254f, global1[_wgslsmith_index_u32(0u, 32u)])))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, -1021f, var_0.a.b, var_0.a.b)), vec3<f32>(var_0.a.b, 1815f, var_0.a.b), func_2(vec4<f32>(1905f, -369f, -2262f, var_0.a.b), vec3<f32>(-105f, 2939f, 201f), Struct_1(1701f, 1005f), 1u), u_input.a.x).b))));
}

fn func_1() -> f32 {
    global2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~max(vec4<i32>(-13496i, 2147483647i, -2147483647i, 15247i), vec4<i32>(1i, u_input.c, 1268i, -2147483647i)), vec4<i32>(u_input.c, u_input.c | 2147483647i, -2147483647i, u_input.c)) & ~(-vec4<i32>(global2.x, 41997i, u_input.c, 27708i) & ~vec4<i32>(55151i, u_input.c, u_input.c, -70i)), vec4<i32>(u_input.c, global2.x, u_input.c, firstLeadingBit(u_input.c)));
    global3 = array<vec2<i32>, 17>();
    global1 = array<vec2<bool>, 32>();
    let var_0 = func_5(true, func_4(Struct_1(1643f, -1000f), Struct_5(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(990f, -488f, 999f, -1000f) - vec4<f32>(-1000f, 195f, -775f, -1033f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, -610f, -1381f)), Struct_1(-185f, 1716f), 4294967295u), true), 0i));
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 17u)];
    return -435f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(max(-2147483647i, 1i), 21707i, 1i, 1i) >> (firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), u_input.a)) % vec4<u32>(32u)), vec4<i32>(-firstLeadingBit(-2716i), -global2.x, firstLeadingBit(-41052i) >> (~u_input.b.x % 32u), ~18425i));
    let var_1 = abs(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(16188u, 4294967295u, 4294967295u, 4294967295u), ~vec4<u32>(4294967295u, 0u, 15130u, u_input.b.x), ~u_input.a)));
    var var_2 = abs(-(~var_0.zw));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(951f, -1051f, 118f, 1073f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1960f, -188f, 815f)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(863f + 102f), _wgslsmith_f_op_f32(1083f + 168f), _wgslsmith_f_op_f32(-1536f + 103f))))));
    let var_4 = select(!select(vec3<bool>(global0.x, any(global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), global0.x), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, true), false), vec3<bool>(true, true, true), !vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(all(vec4<bool>(global0.x, false, global0.x, true)), global0.x, select(false, global0.x, global0.x))), !select(vec3<bool>(false, true, global0.x), select(vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(false, true, false), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, false))), !select(vec3<bool>(false, false, global0.x), vec3<bool>(true, true, true), global0.x)), var_3.x != _wgslsmith_f_op_f32(f32(-1f) * -718f));
    global1 = array<vec2<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

