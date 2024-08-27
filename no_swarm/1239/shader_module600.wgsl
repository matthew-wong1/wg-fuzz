struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_1(-19005i, true));
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-466f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-831f, _wgslsmith_div_f32(-1000f, 393f)))), _wgslsmith_f_op_f32(floor(1446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(991f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1 * var_1);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1239f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> bool {
    let var_0 = select(_wgslsmith_clamp_vec3_u32(~(~u_input.b), u_input.b, vec3<u32>(41188u, ~1u, abs(0u))), vec3<u32>(96236u & ~(u_input.c << (u_input.b.x % 32u)), ~(~u_input.b.x) << (countOneBits(u_input.b.x) % 32u), 14962u), vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, arg_1.c.x >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x) * _wgslsmith_f_op_f32(select(662f, 266f, arg_0.a.b)))));
    let var_1 = vec4<bool>((-10040i == arg_1.a.a) == true, false, select(any(!(!vec2<bool>(false, arg_1.a.b))), true, any(!vec3<bool>(false, false, arg_0.a.b)) && false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(546f))))) != -236f);
    let var_2 = ~_wgslsmith_sub_u32(select(4294967295u << (var_0.x % 32u), var_0.x, arg_0.a.b), ~var_0.x) << (_wgslsmith_clamp_u32(~var_0.x, ~1u, _wgslsmith_div_u32(var_0.x, var_0.x)) % 32u);
    var var_3 = arg_0;
    return -_wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.a.a, arg_1.a.a, 19867i, arg_1.a.a), -vec4<i32>(70169i, arg_0.a.a, 2147483647i, 35095i)) < -(~16724i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = ~abs(u_input.b.zy);
    global0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_2.a, min(reverseBits(69528i), -6475i))), _wgslsmith_div_vec2_i32(-arg_3 & vec2<i32>(arg_0.a, -2188i), -vec2<i32>(arg_2.a, -2686i)) & vec2<i32>(~(~(-8422i)), max(24874i, arg_2.a & -2147483647i)));
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    return firstLeadingBit(~(~(~(~vec4<u32>(1u, 1u, var_0.x, var_0.x)))));
}

fn func_1() -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f - -1897f) + _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1130f - 409f)))), 460f);
    let var_1 = func_4(Struct_1(countOneBits(firstLeadingBit(1i) | -u_input.a), func_3(Struct_4(Struct_1(18098i, true)), Struct_5(Struct_1(5778i, true), true, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 167f, -1588f, 763f)))))), !select(vec3<bool>(false, false, 71781u != u_input.b.x), vec3<bool>(true, true, any(vec2<bool>(true, true))), true), Struct_1(-37039i, true), select(abs(vec2<i32>(_wgslsmith_div_i32(u_input.d, u_input.a), -u_input.d)), abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.d, 0i))), true));
    let var_2 = abs(-min(-(~vec2<i32>(-1i, -1i)), vec2<i32>(u_input.d, -1i)));
    var var_3 = Struct_2(true);
    var var_4 = Struct_3(global1[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 26u)], 4294967295u, vec2<u32>(var_1.x, ~(~4294967295u)));
    return !(!select(select(!vec3<bool>(true, false, var_4.a.a), vec3<bool>(false, false, true), !vec3<bool>(var_3.a, false, true)), vec3<bool>(false, all(vec2<bool>(var_4.a.a, true)), false), var_4.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), select(vec3<bool>(true, false, true), vec3<bool>(true || func_1().x, true & func_3(Struct_4(Struct_1(u_input.d, true)), Struct_5(Struct_1(-446i, true), true, vec4<f32>(410f, 683f, -160f, -262f))), select(true, 1u != u_input.b.x, any(vec3<bool>(false, true, false)))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), (~(~u_input.a) ^ 0i) <= _wgslsmith_add_i32(u_input.d, u_input.d));
    global1 = array<Struct_2, 26>();
    let var_1 = Struct_1(_wgslsmith_mult_i32(u_input.a, 1i), !(!(92398u == (u_input.b.x << (u_input.b.x % 32u)))));
    global0 = -28285i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(u_input.b.x, 1u, var_1.b), reverseBits(_wgslsmith_div_u32(3092u, u_input.c)), ~85744u, abs(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 17766u, 0u)), vec4<u32>(u_input.c, u_input.c, 61691u, 1u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c >> (func_4(var_1, vec3<bool>(var_0.x, var_1.b, true), Struct_1(var_1.a, false), vec2<i32>(u_input.a, -2147483647i)).x % 32u), select(0u, ~0u, true), min(u_input.c, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(3064u, u_input.c, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), ~abs(vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(29794u, 68819u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c))))), _wgslsmith_f_op_f32(f32(-1f) * -899f));
}

