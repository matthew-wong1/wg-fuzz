struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: array<Struct_4, 27>;

var<private> global1: array<i32, 10>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(1u, 50152u, 0u, 79901u), vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(8624u, 1u, 0u, 0u), vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(52423u, 4294967295u, 1u, 68692u), vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(1406u, 62090u, 92958u, 129304u), vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(106567u, 21585u, 4294967295u, 42598u), vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(124644u, 23187u, 9049u, 67898u), vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(1u, 1u, 11028u, 0u), vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(9256u, 3967u, 95876u, 15308u), vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 0u, 104223u, 0u), vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(1u, 15955u, 28473u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(1u, 41009u, 1u, 6371u), vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(42788u, 113535u, 4294967295u, 18862u), vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(18369u, 1u, 31116u, 0u), vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(60190u, 8674u, 39555u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(50760u, 79508u, 0u, 1u), vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(1u, 1u, 46826u, 1u), vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(38963u, 0u, 0u, 20082u), vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(23756u, 0u, 118324u, 0u), vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 24507u, 35552u, 53698u), vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(1u, 15658u, 34996u, 13838u), vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(1u, 14218u, 1u, 1u), vec4<bool>(false, false, false, false)));

var<private> global3: i32 = 1i;

var<private> global4: array<vec3<u32>, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_4, 27>();
    global2 = array<Struct_1, 21>();
    let var_0 = vec3<bool>(false, false, true);
    var var_1 = global0[_wgslsmith_index_u32(u_input.e.x, 27u)];
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + var_1.d))))));
    return Struct_3(vec4<i32>(-26907i, 1i, _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]) << (1u % 32u), ~u_input.c.x) | firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 39847i, u_input.b, u_input.c.x), vec4<i32>(global1[_wgslsmith_index_u32(47840u, 10u)], u_input.c.x, 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)]) & vec4<i32>(1i, 34665i, u_input.b, u_input.c.x))), select(var_1.c.c, vec4<bool>(all(var_1.a.a.zxw), 925f < _wgslsmith_f_op_f32(-412f * var_2), !var_1.b.x, all(var_0.xz)), !(!(!var_1.b.x))));
}

fn func_3() -> vec2<f32> {
    var var_0 = 1u & (u_input.a >> (~95931u % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f))) * _wgslsmith_f_op_f32(999f - _wgslsmith_f_op_f32(max(-1000f, -737f)))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), -819f, var_1.a, -185f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -447f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, 322f) * var_1.a), -645f)));
    let var_3 = ~global4[_wgslsmith_index_u32(u_input.e.x, 18u)] | ~abs(vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.e.x), ~65794u, _wgslsmith_add_u32(u_input.e.x, u_input.a)));
    var var_4 = select(vec3<bool>(any(vec2<bool>(true, true)), false, true), vec3<bool>(true, -_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_3.x, 10u)], -1i) == _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, -10894i), countOneBits(global1[_wgslsmith_index_u32(u_input.a, 10u)])), !all(func_2(vec3<u32>(u_input.d, 4294967295u, var_3.x)).b)), -1i <= reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(-53089i, u_input.b), -u_input.b)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, var_2.x)) + _wgslsmith_f_op_vec2_f32(-var_2.yy)));
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_4, 27>();
    let var_0 = func_2(~vec3<u32>(~u_input.d, abs(29121u << (u_input.a % 32u)), ~countOneBits(81367u)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-449f + _wgslsmith_f_op_f32(round(-1271f))), 437f)))));
    let var_2 = true;
    var var_3 = var_0.b.yxw;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-426f, 450f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1797f, 915f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-668f, 1032f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, 372f))), var_3.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.b;
    let var_0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(986f, 617f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-391f, 941f))), _wgslsmith_f_op_vec2_f32(func_1()))))))));
    global2 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec2_f32(func_1()).x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * _wgslsmith_f_op_f32(1996f + -110f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

