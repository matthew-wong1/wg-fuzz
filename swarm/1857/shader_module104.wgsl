struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(48517u, 4294967295u), 838f, true);

var<private> global2: array<vec4<bool>, 7>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(0u, 20285u), -818f, true);

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(67500u, 4294967295u), 835f, false), Struct_1(vec2<u32>(0u, 18233u), 1000f, true), Struct_1(vec2<u32>(1u, 1u), -327f, true), Struct_1(vec2<u32>(1u, 4294967295u), 1117f, true), Struct_1(vec2<u32>(0u, 0u), 196f, false), Struct_1(vec2<u32>(1u, 62610u), -419f, false), Struct_1(vec2<u32>(4294967295u, 14211u), 1000f, true), Struct_1(vec2<u32>(28017u, 4294967295u), -247f, false), Struct_1(vec2<u32>(8920u, 78153u), -1448f, false), Struct_1(vec2<u32>(101552u, 1u), 1143f, false), Struct_1(vec2<u32>(4294967295u, 1u), -294f, false), Struct_1(vec2<u32>(49623u, 52999u), -1770f, true), Struct_1(vec2<u32>(1u, 4294967295u), -592f, true), Struct_1(vec2<u32>(17969u, 1u), 448f, false), Struct_1(vec2<u32>(42353u, 4294967295u), -1215f, false), Struct_1(vec2<u32>(1u, 61680u), 1752f, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<u32> {
    let var_0 = global4[_wgslsmith_index_u32(global0.c, 16u)];
    let var_1 = var_0.a.x;
    var var_2 = global0.d;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(select(-669f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.b, 1446f)), _wgslsmith_f_op_f32(global3.b - -745f))), var_0.c)), ~(~global3.a.x) ^ global1.a.x, global2[_wgslsmith_index_u32(global3.a.x, 7u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_div_f32(-503f, 746f)));
    var_2 = !(!select(vec4<bool>(true, global0.d.x, var_0.c, any(vec2<bool>(global3.c, global0.d.x))), global2[_wgslsmith_index_u32(~var_0.a.x, 7u)], global0.d));
    return ~(~u_input.b);
}

fn func_3() -> i32 {
    global2 = array<vec4<bool>, 7>();
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-38223i >> (0u % 32u), global0.a.x << (global1.a.x % 32u)), _wgslsmith_clamp_i32(1i, 1i, min(global0.a.x, -2147483647i)), ~(-2147483647i)), abs(select(global0.a, ~global0.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), u_input.a, select(select(select(!vec4<bool>(global0.d.x, false, global1.c, global3.c), select(vec4<bool>(global3.c, global3.c, false, false), global0.d, global1.c), !vec4<bool>(global3.c, false, true, global0.d.x)), !select(vec4<bool>(false, true, global3.c, global0.d.x), global2[_wgslsmith_index_u32(global0.c, 7u)], false), any(select(global0.d, vec4<bool>(global0.d.x, true, global1.c, global0.d.x), global2[_wgslsmith_index_u32(0u, 7u)]))), select(!vec4<bool>(global1.c, false, global3.c, false), !global2[_wgslsmith_index_u32(1u >> (global0.c % 32u), 7u)], global3.c), global0.d), global0.e);
    var_0 = Struct_2(_wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(abs(~var_0.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.x, u_input.c, var_0.a.x, 7151i), vec4<i32>(var_0.a.x, 1060i, 5461i, global0.a.x)), 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1701f * _wgslsmith_f_op_f32(var_0.b - -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(383f, 1626f) * global1.b)))), _wgslsmith_mult_u32(~global3.a.x, ~(0u ^ global1.a.x) | ~countOneBits(global3.a.x)), vec4<bool>(1u == (_wgslsmith_div_u32(var_0.c, 4294967295u) | global3.a.x), !any(global0.d.wxy) || (true | all(global2[_wgslsmith_index_u32(global1.a.x, 7u)])), 7434i <= u_input.d, !global0.d.x), -969f);
    var var_1 = Struct_3(true, vec3<u32>(27599u, 4294967295u, ~global0.c), !any(vec3<bool>(global1.c, u_input.d < u_input.c, all(vec2<bool>(global1.c, true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, _wgslsmith_div_f32(987f, 328f), _wgslsmith_f_op_f32(var_0.e - global0.e))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, var_0.b, -427f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(-428f, global3.b, var_0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.e, global0.e, -174f))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(global3.b)), _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(step(886f, 467f))), vec3<f32>(global1.b, _wgslsmith_div_f32(var_0.e, global0.e), _wgslsmith_f_op_f32(f32(-1f) * -2760f))))));
    return global0.a.x;
}

fn func_2() -> bool {
    let var_0 = func_3();
    let var_1 = Struct_1(~(~global1.a | global1.a) >> (global1.a % vec2<u32>(32u)), -1412f, true);
    global2 = array<vec4<bool>, 7>();
    var var_2 = Struct_2(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, u_input.c, var_0), global0.a, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, var_0), vec3<i32>(global0.a.x, -60139i, -1i)))), -459f, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(40546u, global3.a.x, global1.a.x), vec3<u32>(global0.c, u_input.b.x, global0.c), true) & u_input.b, ~(~u_input.b)), select(global2[_wgslsmith_index_u32(~firstLeadingBit(global3.a.x), 7u)], global0.d, select(all(!global0.d), !var_1.c, any(select(vec3<bool>(true, global3.c, global3.c), vec3<bool>(true, global3.c, false), global0.d.xwz)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.b, global1.b)))));
    let var_3 = global0.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global3.c, u_input.b, global0.a.x > (i32(-1i) * -56397i));
    let var_1 = Struct_3(select(false, false, !(global3.a.x == _wgslsmith_sub_u32(var_0.b.x, 60359u))), abs(~_wgslsmith_div_vec3_u32(var_0.b, func_1())), !(any(global2[_wgslsmith_index_u32(42539u, 7u)]) & (global0.a.x >= u_input.c)) & func_2());
    var var_2 = vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(1i, (-1i << (global1.a.x % 32u)) & min(global0.a.x, global0.a.x), -1i)), _wgslsmith_dot_vec3_i32(global0.a, ~global0.a | _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(-14368i, global0.a.x, 638i)), global0.a)), _wgslsmith_add_i32(u_input.c, 33996i));
    let var_3 = _wgslsmith_add_u32(1u >> (0u % 32u), 30630u);
    let var_4 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, firstTrailingBit(_wgslsmith_sub_i32(global0.a.x, 1986i)), abs(_wgslsmith_clamp_i32(3827i, -18885i, 43745i))), min(global0.a, ~(-vec3<i32>(global0.a.x, 27020i, var_2.x)))), global3.b, _wgslsmith_mult_u32(20467u, _wgslsmith_sub_u32(~global3.a.x, u_input.b.x) & 42009u), vec4<bool>(global1.c, true, select(true, true, var_1.c), all(select(!global0.d.xx, vec2<bool>(global3.c, global0.d.x), true))), -1000f);
    let var_5 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(var_4.a.x ^ 1970i, -2147483647i)), global0.a.yz), vec2<i32>(1i, 2147483647i));
    var var_6 = -vec4<i32>(global0.a.x, _wgslsmith_add_i32(countOneBits(u_input.d), global0.a.x), 43117i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_4.c));
}

