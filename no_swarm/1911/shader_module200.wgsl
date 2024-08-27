struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 37323i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    return i32(-1i) * -24984i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(u_input.d.x, -func_3(), _wgslsmith_mod_u32(~(~reverseBits(1u)), ~_wgslsmith_sub_u32(u_input.b, u_input.b)));
    global1 = true;
    let var_1 = ~44336u;
    var var_2 = vec2<u32>(1u, u_input.b);
    let var_3 = arg_0.x;
    return Struct_1(arg_0.xy, ~select(min(~u_input.e.ywz, u_input.e.xww), ~(~u_input.a.xwx), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, _wgslsmith_f_op_f32(f32(-1f) * -2887f), var_3))), 682f, vec4<f32>(var_3, arg_0.x, arg_0.x, 376f));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = -u_input.d.x;
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.e.zz, (u_input.a.yz & _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b.x, u_input.a.x), global2.yx)) | _wgslsmith_div_vec2_i32(func_2(arg_0.e.xyw, Struct_2(arg_0.b.x, -1i, u_input.c.x)).b.xx, -arg_0.b.zz)), _wgslsmith_sub_i32(-8158i, -(u_input.d.x ^ ~(-1i))), min(12208u, ~(~7651u)));
    global1 = all(select(vec4<bool>(true, all(vec4<bool>(true, false, false, arg_1)) & any(vec2<bool>(false, true)), true, arg_1), vec4<bool>(arg_1, (125f <= arg_0.d) | false, arg_1, !arg_1), !arg_1 && (159f >= _wgslsmith_f_op_f32(exp2(arg_0.a.x)))));
    let var_1 = var_0;
    global1 = false;
    return global2.x;
}

fn func_1() -> bool {
    global2 = vec3<i32>(max(global2.x, 1i), -global2.x << (4294967295u % 32u), u_input.e.x);
    var var_0 = Struct_2(global2.x, -58301i, min(35195u, _wgslsmith_div_u32(u_input.b, u_input.b)));
    var var_1 = ~vec4<i32>(1i, global2.x, func_4(func_2(vec3<f32>(-692f, -280f, -2044f), Struct_2(2147483647i, -1287i, 4294967295u)), ~u_input.e.x > -93011i), 15427i);
    global0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(global2.x, u_input.d.x) | _wgslsmith_clamp_vec2_i32(u_input.d.yz, vec2<i32>(global2.x, 1i), var_1.zw), u_input.a.xy), var_1.yy), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-1276f, _wgslsmith_f_op_f32(floor(1807f)), -526f)), Struct_2(abs(var_1.x), -1i, 0u)).b.x);
    global1 = any(!vec3<bool>(false, true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    let var_0 = Struct_2(global2.x >> (12537u % 32u), 2147483647i, _wgslsmith_mult_u32(min(countOneBits(~50508u), u_input.b), 49499u));
    var var_1 = -1336f;
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, -37577i);
    var_2 = ~_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(max(u_input.a.x, -1i), -6821i, var_0.b), -_wgslsmith_add_i32(1i, 1i)), reverseBits(~_wgslsmith_dot_vec3_i32(u_input.d.zzz, vec3<i32>(2147483647i, 1i, -2147483647i))));
    let var_3 = _wgslsmith_mult_u32(u_input.c.x, var_0.c);
    let var_4 = select(vec3<bool>(all(vec3<bool>(true, true, true)), func_1(), select(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), 0i <= _wgslsmith_mult_i32(u_input.e.x, u_input.e.x), true)), vec3<bool>(true || !all(vec2<bool>(false, true)), true, any(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true))), vec3<bool>(select(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), select(global2.x, -2094i, true) <= max(var_0.b, 1i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(145f, -1317f), -567f)) < _wgslsmith_f_op_f32(f32(-1f) * -1162f), 25509u >= _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, var_0.c), vec2<u32>(32563u, var_3)), _wgslsmith_mod_u32(4294967295u, var_3))));
    var var_5 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1235f)), _wgslsmith_f_op_f32(sign(-220f)), all(vec3<bool>(var_4.x, var_4.x, var_4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-288f)) * -263f))), Struct_2(u_input.a.x, var_0.a, var_0.c));
    global0 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.xwy);
}

