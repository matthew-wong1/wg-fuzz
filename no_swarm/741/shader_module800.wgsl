struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4686u, 4294967295u), vec2<u32>(90424u, 1u), vec2<u32>(26776u, 1099u), vec2<u32>(1u, 34807u), vec2<u32>(1u, 4294967295u), vec2<u32>(28215u, 1u), vec2<u32>(28153u, 459u), vec2<u32>(20321u, 1816u), vec2<u32>(53149u, 1u), vec2<u32>(1u, 1u), vec2<u32>(33371u, 1u), vec2<u32>(4294967295u, 25497u), vec2<u32>(75130u, 0u), vec2<u32>(0u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = array<vec2<u32>, 14>();
    global1 = array<vec2<u32>, 14>();
    var var_0 = Struct_1(u_input.a.x, false, firstLeadingBit(u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.a, global0.a, true)), _wgslsmith_f_op_f32(f32(-1f) * -202f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -590f))))));
    let var_1 = Struct_2(1164f, vec4<i32>(~(~(-u_input.b.x)), u_input.b.x, -u_input.b.x, _wgslsmith_sub_i32(~0i, 28665i) >> ((66960u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, 31957u, 4294967295u), vec4<u32>(u_input.a.x, 40361u, 1u, 9612u))) % 32u)), !all(!(!vec4<bool>(var_0.b, true, var_0.b, true))), vec3<i32>(max(-max(u_input.b.x, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.b)), u_input.b.x, 0i));
    global1 = array<vec2<u32>, 14>();
    return firstTrailingBit(~17973u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec3<u32>) -> u32 {
    global1 = array<vec2<u32>, 14>();
    let var_0 = arg_1;
    let var_1 = Struct_1(min(arg_3.x, 1u >> (u_input.a.x % 32u)), arg_2.x <= _wgslsmith_mod_i32(i32(-1i) * -75i, u_input.b.x), func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(541f, 1464f)) * vec2<f32>(arg_0.x, 153f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.a))))));
    var var_2 = _wgslsmith_mult_i32(arg_2.x & reverseBits(u_input.b.x >> (43131u % 32u)), arg_1.a.x);
    var var_3 = ~select(vec3<u32>(~53952u, ~67838u, ~0u), vec3<u32>(var_1.a, var_1.a & 0u, 51043u), false) << (arg_3 % vec3<u32>(32u));
    return ~63251u;
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.a))));
    let var_1 = Struct_2(-1445f, ~vec4<i32>(u_input.b.x, 0i, max(u_input.b.x >> (16681u % 32u), _wgslsmith_mod_i32(1i, u_input.b.x)), 1i), true, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-2358i, 0i), u_input.b.x, _wgslsmith_add_i32(-2147483647i, u_input.b.x)), countOneBits(-vec3<i32>(0i, u_input.b.x, u_input.b.x))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.a))));
    return var_2;
}

fn func_1() -> i32 {
    var var_0 = Struct_5(Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(13371u, u_input.a.x), global1[_wgslsmith_index_u32(1u, 14u)]), u_input.a), !(2065i > u_input.b.x) && !(u_input.b.x <= 25851i), min(select(u_input.a.x, u_input.a.x ^ u_input.a.x, true), u_input.a.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-439f, global0.a), vec2<f32>(global0.a, -1698f))), vec2<f32>(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(max(global0.a, 565f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1205f)) * -858f)), u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<u32>(firstLeadingBit(211454u), func_2(vec4<f32>(-1587f, 201f, -2123f, global0.a), Struct_3(vec3<i32>(u_input.b.x, -12803i, u_input.b.x)), vec4<i32>(u_input.b.x, 42729i, u_input.b.x, 1i), vec3<u32>(u_input.a.x, 34595u, 4294967295u)))))));
    var var_1 = ~(~u_input.a.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(1387f)), (_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, var_0.c, u_input.b.x, -36948i), -vec4<i32>(1i, u_input.b.x, 39811i, u_input.b.x)) | ~(vec4<i32>(50031i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(var_0.c, var_0.d, -2147483647i, -1i))) >> (~(~(~vec4<u32>(69471u, 4294967295u, var_0.a.a, 4294967295u))) % vec4<u32>(32u)), !((var_0.a.b | true) && var_0.a.b), vec3<i32>(_wgslsmith_div_i32(~abs(2147483647i), max(_wgslsmith_div_i32(10145i, var_0.d), u_input.b.x >> (9889u % 32u))), -10503i, u_input.b.x));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.e), vec4<i32>(1i, -2147483647i, var_2.b.x, _wgslsmith_add_i32(~(~(-30623i)), min(12631i, var_2.d.x >> (8423u % 32u)))), !all(vec2<bool>(true, true)), ~(~var_2.b.wxx));
    global1 = array<vec2<u32>, 14>();
    return 1i;
}

fn func_5(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a)), global0.a))));
    var var_2 = Struct_5(Struct_1(countOneBits(u_input.a.x) << (88308u % 32u), !all(vec4<bool>(false, true, true, false)) && (true || all(vec3<bool>(true, false, false))), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1295f, var_1.a)))))))), var_1.a, firstTrailingBit(2147483647i), -arg_0.x, -235f);
    var_0 = true;
    global1 = array<vec2<u32>, 14>();
    return Struct_4(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec3<i32>(min(-1i, 0i), u_input.b.x >> (280u % 32u), _wgslsmith_div_i32(-func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(53033i, u_input.b.x, 0i), vec3<i32>(u_input.b.x, 0i, 1i)) >> (4294967295u % 32u))));
    let var_0 = 23985u;
    global0 = Struct_4(-1292f);
    var var_1 = var_0 & ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 4294967295u), ~vec2<u32>(var_0, 1u)));
    var_1 = _wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(70635u, 0u, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(var_0, 4294967295u, 4294967295u), vec3<u32>(110683u, var_0, 0u)))) | var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, _wgslsmith_f_op_f32(-548f + 321f), global0.a) - vec3<f32>(833f, _wgslsmith_f_op_f32(-global0.a), global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, _wgslsmith_f_op_f32(round(825f)), _wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -622f, global0.a) - vec3<f32>(473f, global0.a, global0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1865f, 469f)))), any(vec2<bool>(any(vec2<bool>(false, true)), u_input.a.x > u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-655f, -1365f);
}

