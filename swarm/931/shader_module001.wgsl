struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<Struct_4, 7>;

var<private> global2: i32 = 47407i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    global1 = array<Struct_4, 7>();
    let var_0 = vec2<f32>(-1379f, _wgslsmith_f_op_f32(select(1146f, _wgslsmith_f_op_f32(abs(585f)), -35155i > _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.x, arg_1.x), arg_1))));
    global0 = array<vec3<f32>, 12>();
    let var_1 = arg_1.x;
    global0 = array<vec3<f32>, 12>();
    return 1i;
}

fn func_2() -> Struct_3 {
    var var_0 = firstLeadingBit(func_3(true, vec2<i32>(2147483647i, 2147483647i)));
    global1 = array<Struct_4, 7>();
    global1 = array<Struct_4, 7>();
    return Struct_3(!all(vec2<bool>(false, true)), Struct_1(reverseBits(vec2<i32>(1i, 1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f + 1658f) * _wgslsmith_f_op_f32(-634f + 352f)), 1000f, _wgslsmith_div_f32(667f, 2724f)), true), Struct_2(Struct_1(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(20219i, -8179i), vec2<i32>(-11691i, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -285f, _wgslsmith_f_op_f32(step(1000f, -284f)), _wgslsmith_f_op_f32(-634f + -1000f)), !(u_input.a < u_input.a))), ~countOneBits(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -1i), firstTrailingBit(20082i), _wgslsmith_clamp_i32(2147483647i, 1i, 1i))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    global0 = array<vec3<f32>, 12>();
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(13093i, arg_0.b.a.x), arg_0.c.a.a);
    global2 = -(~_wgslsmith_sub_i32(-(i32(-1i) * -2422i), -10124i));
    global0 = array<vec3<f32>, 12>();
    global1 = array<Struct_4, 7>();
    return arg_0.c.a.c;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>) -> bool {
    global1 = array<Struct_4, 7>();
    let var_0 = select((func_4(func_2(), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))) | (_wgslsmith_f_op_f32(-arg_2.x) < arg_2.x)) | true, ~(u_input.a ^ arg_1) >= ~2207u, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))));
    var var_2 = Struct_5(func_2().c);
    global1 = array<Struct_4, 7>();
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = vec2<bool>(false, false);
    let var_1 = ~(~arg_2.x);
    let var_2 = Struct_2(Struct_1(-vec2<i32>(select(arg_2.x, arg_1.x, false), _wgslsmith_sub_i32(1i, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1149f, -295f, -1055f, -597f))))), select(any(vec2<bool>(true, var_0.x)), true, !var_0.x & true)));
    global1 = array<Struct_4, 7>();
    global1 = array<Struct_4, 7>();
    return ~30482i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-2147483647i, (func_5(func_1(vec3<f32>(717f, 2023f, -1544f), u_input.a, vec2<f32>(904f, 854f)), -vec3<i32>(0i, 0i, -48811i), vec4<i32>(1i, 1i, 1i, 1i)) | abs(1i)) & -26671i);
    var var_1 = ~(~(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 0i), vec2<i32>(1i, var_0.x) | vec2<i32>(var_0.x, var_0.x)) | _wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.x, 0i), vec2<i32>(var_0.x, -8809i), vec2<bool>(false, false)), min(vec2<i32>(-2147483647i, 18519i), vec2<i32>(var_0.x, var_0.x)))));
    let var_2 = Struct_4(!func_4(func_2(), vec4<bool>(true, false, true, true)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u), vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x)) ^ vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1660u), 52476u, ~u_input.a, abs(u_input.a))), Struct_2(func_2().b));
    var var_3 = -3267i;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(-402f)), var_2.c.a.b.x, var_2.c.a.b.x, -627f);
    var_1 = -abs(~var_2.c.a.a);
    let var_5 = _wgslsmith_f_op_f32(ceil(var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-454f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5 - var_5) * var_5) * _wgslsmith_f_op_f32(min(var_5, var_4.x))), var_5), firstTrailingBit(vec3<i32>(func_2().c.a.a.x, var_1.x, -1i)), var_2.b);
}

