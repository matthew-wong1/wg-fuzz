struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true));

var<private> global2: Struct_3 = Struct_3(true, vec3<i32>(28273i, 0i, 22306i), 1i, Struct_1(vec2<f32>(446f, 1350f), vec4<i32>(14403i, 0i, 27941i, 52813i), true, vec3<bool>(true, false, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = arg_2;
    var var_1 = arg_0.d.a.x;
    var var_2 = Struct_4(firstTrailingBit(_wgslsmith_sub_i32(firstLeadingBit(1i), 21620i)));
    var var_3 = vec2<i32>(abs((-47330i << (firstTrailingBit(u_input.c) % 32u)) << (arg_1 % 32u)), _wgslsmith_mult_i32(global2.b.x, _wgslsmith_mod_i32(36963i, ~(global2.c & arg_0.c))));
    let var_4 = ~0i;
    return true;
}

fn func_2() -> vec2<f32> {
    let var_0 = u_input.a.x;
    global1 = array<vec4<bool>, 30>();
    var var_1 = Struct_3(!(any(vec4<bool>(true, global2.a, global2.a, false)) | !global2.d.d.x) || func_3(Struct_3(var_0 <= 4294967295u, global2.b & vec3<i32>(33327i, -2147483647i, 26474i), -u_input.d, Struct_1(global2.d.a, vec4<i32>(global2.b.x, -1i, u_input.d, 21509i), true, global2.d.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(44233u, var_0, var_0), vec3<u32>(var_0, 4294967295u, u_input.b.x)) ^ 4294967295u, Struct_2(vec4<f32>(global2.d.a.x, global2.d.a.x, 496f, global2.d.a.x))), vec3<i32>(u_input.d, global2.d.b.x, u_input.d), u_input.d, global2.d);
    var var_2 = Struct_4(-min(countOneBits(0i), countOneBits(firstTrailingBit(-2147483647i))));
    global1 = array<vec4<bool>, 30>();
    return var_1.d.a;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = Struct_4(arg_0);
    var var_1 = 1u;
    var var_2 = Struct_3(true, global2.b, -1i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_3.a.yy * vec2<f32>(-1039f, global2.d.a.x)), _wgslsmith_f_op_vec2_f32(func_2()))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2())))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0, var_0.a, u_input.d, arg_0), ~vec4<i32>(-31923i, var_0.a, 2147483647i, u_input.d)), !(!arg_1.x), select(arg_1, global2.d.d, arg_1.x)));
    var var_3 = -var_2.c ^ var_2.b.x;
    var var_4 = Struct_4(-(abs(_wgslsmith_div_i32(41262i, 1i)) ^ _wgslsmith_sub_i32(-global2.d.b.x, var_0.a & global2.b.x)));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_2(arg_1);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1123f, global2.d.a.x, -1989f, 1694f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -793f, var_0.a.x, global2.d.a.x))))), _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec2_f32(func_2()).x, global2.d.a.x, _wgslsmith_f_op_f32(864f * var_0.a.x))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * -969f), _wgslsmith_div_f32(global2.d.a.x, _wgslsmith_f_op_f32(-global2.d.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * 342f), _wgslsmith_f_op_f32(-arg_1.x)), 505f) - _wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + arg_1))))));
    global0 = array<vec2<u32>, 30>();
    var var_2 = global2.d;
    return Struct_3(any(!(!vec4<bool>(arg_2, global2.d.c, var_2.c, true))), firstTrailingBit(-(~global2.d.b.yyx)), (u_input.d >> (~4294967295u % 32u)) | -(~_wgslsmith_sub_i32(-6247i, global2.d.b.x)), global2.d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = arg_1.d.d.yz;
    global2 = func_4(global2.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(981f, global2.d.a.x, arg_1.d.a.x, -949f))), vec4<f32>(-343f, _wgslsmith_f_op_f32(trunc(global2.d.a.x)), 846f, arg_1.d.a.x), vec4<bool>(false, var_0.x, true, true)))), ((_wgslsmith_mod_u32(49767u, u_input.a.x) != _wgslsmith_mult_u32(u_input.a.x, u_input.b.x)) & true) | !var_0.x);
    var var_1 = vec3<bool>(false, (arg_1.d.a.x > arg_3) & func_4(!func_4(arg_1.d.d, vec4<f32>(arg_3, -647f, arg_3, arg_3), false).d.d, vec4<f32>(2435f, global2.d.a.x, -788f, global2.d.a.x), arg_1.d.d.x).d.d.x, any(global1[_wgslsmith_index_u32(abs(4294967295u), 30u)]));
    global0 = array<vec2<u32>, 30>();
    var var_2 = ((arg_2 == abs(select(1i, global2.d.b.x, arg_1.a))) == true) == any(arg_1.d.d.xz);
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(u_input.c << (~(~47865u) % 32u));
    let var_1 = func_5(Struct_4(u_input.d), func_4(vec3<bool>(all(select(global1[_wgslsmith_index_u32(1u, 30u)], vec4<bool>(true, global2.d.c, true, true), false)), !all(vec4<bool>(false, false, false, global2.a)), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.d.a.x, -1768f, 692f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.a.x, -169f, global2.d.a.x, -490f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.d.a.x, global2.d.a.x, -1705f, -212f), vec4<f32>(-331f, global2.d.a.x, 140f, global2.d.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.a.x, 1000f, global2.d.a.x, global2.d.a.x))), global1[_wgslsmith_index_u32(u_input.c & 13320u, 30u)])), func_1(firstLeadingBit(_wgslsmith_mod_i32(global2.d.b.x, u_input.d)), !(!global2.d.d), 0u, Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.d.a.x, global2.d.a.x, -1000f, global2.d.a.x)))))), abs(u_input.d), 625f);
    global1 = array<vec4<bool>, 30>();
    global0 = array<vec2<u32>, 30>();
    let var_2 = vec4<bool>(true | !all(var_1.d), any(!vec3<bool>(true, global2.a, func_1(var_1.b.x, vec3<bool>(false, false, global2.d.c), u_input.c, Struct_2(vec4<f32>(-921f, global2.d.a.x, 1000f, -535f))))), !(!(!global2.a) | false), -1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.a.x)), 1908f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(~u_input.c, 48236u, ~4294967295u, abs(4294967295u))), max(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(40644u, u_input.b.x, 34527u) << (u_input.b % vec3<u32>(32u))) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x) & vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.c), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.c)), u_input.b.x));
}

