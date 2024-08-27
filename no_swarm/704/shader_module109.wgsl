struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(55782u, 4294967295u, 49821u, 4294967295u), vec3<f32>(367f, 699f, -420f), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 0i, 0i), false), vec2<u32>(4294967295u, 30243u));

var<private> global1: array<i32, 8>;

var<private> global2: Struct_1;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: array<vec4<bool>, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    var var_0 = global0.b.yx;
    var var_1 = true;
    global4 = array<vec4<bool>, 30>();
    global4 = array<vec4<bool>, 30>();
    var var_2 = countOneBits(reverseBits(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, 58828i, u_input.a.x, global1[_wgslsmith_index_u32(global0.a.x, 8u)])), vec4<i32>(-1i) * -vec4<i32>(global0.c.b.x, -10530i, global2.b.x, u_input.b), max(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.b.x, global1[_wgslsmith_index_u32(global0.d.x, 8u)], 2295i, 3551i), vec4<i32>(global2.b.x, 1i, global0.c.b.x, global2.b.x)), -vec4<i32>(global1[_wgslsmith_index_u32(global0.d.x, 8u)], u_input.a.x, u_input.b, u_input.b)))));
    return global0.d.x >= ~29501u;
}

fn func_2() -> Struct_3 {
    let var_0 = global0.c;
    let var_1 = -vec2<i32>(u_input.b, -2147483647i);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -673f, 2025f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -1359f, global0.b.x, 407f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, 111f, -1017f, -475f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(231f, 1365f, 1000f, -1771f), vec4<f32>(global0.b.x, 1008f, global0.b.x, 1000f), true)), global0.c.c))))));
    var var_3 = func_3();
    global4 = array<vec4<bool>, 30>();
    return Struct_3(_wgslsmith_add_vec4_u32(select(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, 0u, global0.d.x)), global0.a), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.a.wz, vec2<u32>(global0.a.x, global0.a.x)), ~global0.d.x, 9771u & global0.a.x, _wgslsmith_clamp_u32(global0.a.x, 0u, global0.a.x)), select(select(global4[_wgslsmith_index_u32(1u, 30u)], global4[_wgslsmith_index_u32(global0.d.x, 30u)], global4[_wgslsmith_index_u32(global0.d.x, 30u)]), vec4<bool>(true, true, var_0.c, global0.c.a.x), select(vec4<bool>(false, true, var_0.c, global2.a.x), global4[_wgslsmith_index_u32(global0.d.x, 30u)], global4[_wgslsmith_index_u32(global0.d.x, 30u)]))), vec4<u32>(abs(~global0.a.x), global0.d.x, global0.a.x, abs(_wgslsmith_mod_u32(global0.a.x, global0.a.x)))), vec3<f32>(-260f, -467f, global0.b.x), Struct_1(var_0.a, _wgslsmith_clamp_vec3_i32(global0.c.b, _wgslsmith_mult_vec3_i32(~vec3<i32>(45143i, u_input.c.x, -2147483647i), firstLeadingBit(global0.c.b)), min(~var_0.b, ~global2.b)), global0.c.a.x & true), ~(~_wgslsmith_sub_vec2_u32(~global0.a.yx, _wgslsmith_div_vec2_u32(global0.d, vec2<u32>(global0.d.x, global0.a.x)))));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var var_1 = global0.c;
    let var_2 = true;
    var var_3 = func_2().d.x <= var_0.a.x;
    let var_4 = _wgslsmith_f_op_f32(round(-714f));
    return _wgslsmith_dot_vec2_u32((~vec2<u32>(global0.a.x, 4294967295u) | vec2<u32>(global0.d.x, 0u)) >> (vec2<u32>(countOneBits(4294967295u), var_0.a.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_0.d.x, 45985u)), countOneBits(~vec2<u32>(1704u, var_0.d.x)))) ^ 21541u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(~(vec4<u32>(_wgslsmith_sub_u32(global0.a.x, 8592u), ~4294967295u, countOneBits(global0.d.x), func_1()) & select(global0.a, vec4<u32>(global0.a.x, global0.d.x, global0.d.x, 4294967295u) << (global0.a % vec4<u32>(32u)), !global0.c.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-370f + -2042f), -291f, _wgslsmith_div_f32(1526f, 161f)) + vec3<f32>(global0.b.x, global0.b.x, 1f))), global0.c, vec2<u32>(countOneBits(global0.a.x), _wgslsmith_mod_u32(35299u, max(~42385u, global0.d.x))));
    var var_0 = Struct_1(global2.a, select(global0.c.b, ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global2.b, global2.b), global0.c.b), vec3<bool>(global0.c.a.x | all(global2.a), true, global3.x)), any(vec2<bool>(global3.x, global0.c.a.x)));
    global3 = select(select(select(vec3<bool>(!global0.c.a.x, true, true), vec3<bool>(true, true, true), true), vec3<bool>(global3.x, true, global3.x), true), !vec3<bool>(global3.x, global2.c, func_2().c.a.x), vec3<bool>(global2.c, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(53984u, 97281u, global0.d.x, global0.a.x))), 8u)] >= 841i, false | !global2.a.x));
    var var_1 = Struct_1(vec2<bool>(!(global2.c & all(vec3<bool>(true, false, true))), !(global0.c.b.x < -1i)), countOneBits(vec3<i32>(7855i, global0.c.b.x, -u_input.c.x) | vec3<i32>(2147483647i, 1i, _wgslsmith_sub_i32(-2147483647i, u_input.c.x))), all(vec4<bool>(true, any(global4[_wgslsmith_index_u32(~4294967295u, 30u)]), global2.c, false)));
    global4 = array<vec4<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a);
}

