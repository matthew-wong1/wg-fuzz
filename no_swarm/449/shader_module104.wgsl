struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec3<bool>(true, false, false), false, vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, true), true, vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, true, false), false, vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, false, true), true, vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true), true, vec3<bool>(true, true, false)), Struct_4(vec3<bool>(false, false, true), true, vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, true, true), true, vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true), true, vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, true), false, vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, false, true), false, vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, true, false), true, vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, true), true, vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, false), false, vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, false), false, vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, true), true, vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, true), false, vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, true), true, vec3<bool>(true, true, false)), Struct_4(vec3<bool>(false, false, true), false, vec3<bool>(true, false, true)), Struct_4(vec3<bool>(true, true, false), true, vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, true, true), false, vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, false, false), false, vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, true, true), true, vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, false), false, vec3<bool>(true, true, true)), Struct_4(vec3<bool>(true, false, true), false, vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, false, true), true, vec3<bool>(false, true, true)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-454f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f), -1000f)));
    let var_1 = _wgslsmith_f_op_f32(var_0 - var_0);
    let var_2 = select(!arg_0.zx, !(!vec2<bool>(arg_0.x, !arg_0.x)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), arg_0.wy, false), !vec2<bool>(arg_0.x, arg_0.x)), select(!arg_0.yx, arg_0.xz, true), !arg_0.zx), !arg_0.yw, select(arg_0.zz, select(select(vec2<bool>(true, false), vec2<bool>(true, false), arg_0.zw), arg_0.zz, all(arg_0.yy)), arg_0.xw)));
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    return Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(30954u, arg_2.a.x, select(arg_1, arg_1, var_2.x)), vec3<u32>(50655u, 0u, _wgslsmith_div_u32(23907u, 1u))), arg_2.b), arg_2);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    let var_0 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false)), true), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true, true), _wgslsmith_mod_i32(-arg_1.b.x, -1i) < ~firstTrailingBit(u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = min(vec3<i32>(~2147483647i, func_2(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, false, false, false)), select(54521u, 4294967295u, true), func_2(vec4<bool>(true, var_0.x, true, true), 0u, Struct_1(vec3<u32>(arg_3.a.a.x, arg_1.a.x, arg_1.a.x), arg_3.a.b)).a).b.b.x, _wgslsmith_dot_vec2_i32(arg_3.b.b | arg_1.b, arg_1.b)) << (~arg_3.b.a % vec3<u32>(32u)), vec3<i32>(u_input.a, _wgslsmith_add_i32(arg_1.b.x >> (_wgslsmith_mult_u32(6888u, arg_3.a.a.x) % 32u), 1i), ~(-2147483647i)));
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = func_2(!(!vec4<bool>(u_input.a != u_input.a, arg_0.x, all(vec4<bool>(true, arg_0.x, false, true)), !arg_0.x)), ~select(1u, _wgslsmith_clamp_u32(0u, 36192u, arg_1.x) ^ reverseBits(57025u), true), func_2(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, false, arg_0.x, true), vec4<bool>(false, true, true, false))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), true), true), arg_1.x, Struct_1(vec3<u32>(firstLeadingBit(0u), 29978u, select(arg_1.x, arg_2.x, true)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, -1i), vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-57322i, -1i))))).a);
    global0 = array<Struct_4, 25>();
    return 0u;
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_4, 25>();
    let var_0 = 15822i;
    var var_1 = -1004f;
    var var_2 = func_2(vec4<bool>(true, any(vec4<bool>(true, all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true)))), 20812i <= (_wgslsmith_div_i32(u_input.a, 1i) >> (4294967295u % 32u)), any(vec4<bool>(true, true, true, select(true, true, true)))), 4294967295u, Struct_1(vec3<u32>(1u, 1u, 1u), ~(vec2<i32>(2147483647i, u_input.a) >> (vec2<u32>(50807u, 60189u) % vec2<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f - 616f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(761f, -1133f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(605f, 1133f), vec2<f32>(-1011f, -1000f))), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, 275f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1745f, 659f)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.b.a.x, func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, var_3.x, -352f, 1973f)), Struct_1(var_2.a.a, vec2<i32>(var_0, -57355i)), _wgslsmith_f_op_f32(round(-382f)), Struct_2(var_2.a, Struct_1(vec3<u32>(24743u, 0u, var_2.a.a.x), var_2.b.b))), func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_3.x, -205f, 1809f))), Struct_1(vec3<u32>(3476u, var_2.a.a.x, var_2.b.a.x), vec2<i32>(var_2.a.b.x, var_0)), _wgslsmith_f_op_f32(var_3.x + -1108f), func_2(vec4<bool>(true, true, false, true), 25278u, var_2.a))), var_2.a.a.zy, select(var_2.b.a.yx, vec2<u32>(36717u, 29300u) << (vec2<u32>(var_2.a.a.x, var_2.b.a.x) % vec2<u32>(32u)), false))), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 1317f;
    var var_2 = false != func_1().c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1710f, -265f, -1283f, _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, 117f, var_1, var_1))) * _wgslsmith_div_vec4_f32(vec4<f32>(-486f, var_1, 1407f, 305f), vec4<f32>(var_1, 416f, -825f, -311f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 1299f, var_1, var_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(844f, var_1, var_1, 1690f), vec4<f32>(-1236f, 1000f, 1454f, var_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, var_1, 639f, 1708f)))))));
    let var_4 = ~52416u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~_wgslsmith_sub_u32(var_4, var_4), var_4, var_4, 1u)), var_4, -(~min(select(vec3<i32>(u_input.a, 11911i, u_input.a), vec3<i32>(2147483647i, 0i, 0i), var_0.c), -vec3<i32>(1i, -1i, -53951i))));
}

