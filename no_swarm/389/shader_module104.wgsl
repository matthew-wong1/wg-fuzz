struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(8145i, 2147483647i, i32(-2147483648), 29901i), vec4<i32>(-33661i, 1i, 45480i, -74248i), vec4<i32>(-23979i, -9995i, -20865i, -37136i), vec4<i32>(1i, i32(-2147483648), 977i, -22639i), vec4<i32>(-11424i, 0i, -26162i, 22834i), vec4<i32>(1i, 37271i, 0i, 24950i), vec4<i32>(26493i, -25945i, 2147483647i, i32(-2147483648)), vec4<i32>(-16184i, i32(-2147483648), i32(-2147483648), -7091i), vec4<i32>(20742i, 0i, i32(-2147483648), 8335i), vec4<i32>(40203i, 15967i, i32(-2147483648), 16592i), vec4<i32>(53931i, 2147483647i, -37878i, -1i), vec4<i32>(0i, 0i, 31829i, -3966i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 16661i), vec4<i32>(-53187i, -11954i, -1i, 2147483647i), vec4<i32>(2147483647i, 1i, 0i, -9361i), vec4<i32>(i32(-2147483648), 9920i, i32(-2147483648), 42667i));

var<private> global1: array<Struct_4, 2>;

var<private> global2: vec2<f32> = vec2<f32>(1198f, -1376f);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, vec4<u32>(0u, 1u, 4294967295u, 17270u), vec4<u32>(5612u, 1u, 1u, 1u)), Struct_1(false, vec4<u32>(37239u, 4294967295u, 33370u, 68831u), vec4<u32>(1u, 6848u, 3659u, 17160u)), Struct_1(true, vec4<u32>(28234u, 257u, 4294967295u, 4294967295u), vec4<u32>(19845u, 1u, 82359u, 26162u)), Struct_1(false, vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 75158u, 0u, 3872u)), Struct_1(true, vec4<u32>(0u, 4294967295u, 5151u, 22810u), vec4<u32>(50331u, 0u, 0u, 4294967295u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = u_input.b;
    let var_1 = ~vec4<i32>(1i, _wgslsmith_mult_i32(u_input.e.x, 1i) >> (select(~var_0, 4294967295u, global2.x < -1656f) % 32u), u_input.e.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(8748i, u_input.a, 0i, -24294i)), ~global0[_wgslsmith_index_u32(var_0, 16u)]), abs(~u_input.a), ~_wgslsmith_clamp_i32(u_input.a, -15056i, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2168f, -250f, global2.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, -1601f, global2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1839f)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-1683f, 1180f)), 650f, global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(global2.x, 438f, 1286f))), true)))));
    var var_3 = select(!vec3<bool>(any(!vec2<bool>(arg_0, false)), !arg_0 != false, all(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, true, arg_0), false))), vec3<bool>(arg_0, arg_0, all(vec2<bool>(arg_0, arg_0)) & arg_0), vec3<bool>(false, (false & any(vec2<bool>(true, arg_0))) && (arg_0 || (var_0 < var_0)), arg_0));
    var var_4 = vec4<i32>(_wgslsmith_div_i32(min(~u_input.a, min(var_1.x, 15661i) | _wgslsmith_mult_i32(21140i, u_input.a)), ~(-2147483647i)), 29160i, -(i32(-1i) * -(u_input.c.x << (u_input.b % 32u))), u_input.e.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(982f * 553f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(485f)), 1530f)), global2.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -689f);
    let var_2 = Struct_3(-2147483647i, vec3<bool>(false && (84710i >= _wgslsmith_add_i32(u_input.a, 23258i)), false, true));
    var_1 = _wgslsmith_f_op_f32(func_3(true));
    var var_3 = u_input.a;
    return Struct_2(_wgslsmith_div_vec2_i32(firstTrailingBit(~(~u_input.e.xz)), u_input.e.yy));
}

fn func_1() -> bool {
    global0 = array<vec4<i32>, 16>();
    var var_0 = func_2();
    let var_1 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false));
    var var_2 = _wgslsmith_clamp_i32(-4777i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, 2147483647i), func_2().a.x, var_0.a.x), ((_wgslsmith_div_i32(var_0.a.x, var_0.a.x) & var_0.a.x) << (u_input.b % 32u)) << (~countOneBits(_wgslsmith_clamp_u32(17590u, 24553u, 38626u)) % 32u));
    global0 = array<vec4<i32>, 16>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 5>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1089f, global2.x)) + vec2<f32>(530f, 363f))))));
    let var_0 = func_1();
    global3 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x - 1793f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -493f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2475f, global2.x, global2.x, -179f))), _wgslsmith_div_vec4_f32(vec4<f32>(912f, global2.x, 1107f, -2110f), vec4<f32>(105f, -556f, -2039f, global2.x)), !vec4<bool>(var_0, false, false, var_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1015f, -365f, global2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1000f, 1157f, global2.x) - vec4<f32>(global2.x, 1638f, 1000f, 467f))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1153f, global2.x), _wgslsmith_f_op_vec2_f32(-var_1.xx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.zy))) * _wgslsmith_f_op_vec2_f32(-var_1.yz))));
    var var_2 = Struct_1(any(!(!vec3<bool>(var_0, var_0, false))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, 3723u), vec4<u32>(32030u, 1u, 24344u, u_input.b) ^ vec4<u32>(0u, 4294967295u, 4294967295u, 28917u))), vec4<u32>(0u, 12268u, 1u, 0u) | _wgslsmith_add_vec4_u32(min(~vec4<u32>(1u, 55216u, u_input.b, 39580u), vec4<u32>(u_input.d, 21449u, 30999u, u_input.d)), firstLeadingBit(abs(vec4<u32>(67417u, 37119u, 39380u, 50099u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zw, vec3<i32>(func_2().a.x, u_input.e.x, ~u_input.e.x), _wgslsmith_clamp_vec4_i32(select(countOneBits(vec4<i32>(u_input.e.x, u_input.c.x, -2147483647i, -34581i)), -vec4<i32>(17107i, u_input.a, u_input.c.x, u_input.e.x), var_2.a), _wgslsmith_mult_vec4_i32(abs(global0[_wgslsmith_index_u32(var_2.b.x, 16u)]), _wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, u_input.c.x, 1i, 24585i))), ~(global0[_wgslsmith_index_u32(4294967295u, 16u)] ^ u_input.e)) ^ ~reverseBits(vec4<i32>(u_input.e.x, u_input.c.x, u_input.a, u_input.c.x)), reverseBits(~2147483647i));
}

