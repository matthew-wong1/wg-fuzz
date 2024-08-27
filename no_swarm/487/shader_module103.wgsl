struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = Struct_2(select(global0.d.a.yxx, global0.a, !(!global0.a.x) && true), vec4<f32>(-1000f, 1005f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(781f)) + 374f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(463f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e, global0.e) * global0.b.x))), ~_wgslsmith_mult_i32(u_input.a, arg_0.x), global0.d, _wgslsmith_f_op_f32(max(global0.e, _wgslsmith_f_op_f32(-global0.b.x))));
    var var_0 = _wgslsmith_f_op_f32(sign(1049f));
    global0 = Struct_2(!global0.a, global0.b, -24887i, global0.d, -292f);
    let var_1 = u_input.a;
    global0 = Struct_2(!global0.d.a.yxz, vec4<f32>(global0.b.x, 1453f, _wgslsmith_f_op_f32(abs(223f)), global0.e), -(~(-arg_0.x & -2147483647i)), Struct_1(vec4<bool>(global0.d.a.x, any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), (global0.a.x && false) || global0.d.a.x, false), countOneBits(26877i), global0.d.c, reverseBits(_wgslsmith_sub_i32(u_input.a, 7982i)) & firstTrailingBit(-43874i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1808f)), global0.b.x), global0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)))));
    return _wgslsmith_f_op_f32(trunc(global0.b.x));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> bool {
    global0 = Struct_2(vec3<bool>(!(1u > (0u >> (u_input.b.x % 32u))), (~u_input.b.x < (global0.d.c & 84729u)) | !(!arg_0), any(!vec4<bool>(global0.a.x, arg_0, true, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-400f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, global0.c, global0.d.d, u_input.a))) * _wgslsmith_f_op_f32(-272f + 141f)), global0.e, global0.e), _wgslsmith_mult_i32(u_input.a, select(_wgslsmith_div_i32(global0.d.d, -89589i) & 2147483647i, -abs(25187i), global0.a.x)), global0.d, global0.b.x);
    let var_0 = firstTrailingBit(u_input.b.zw);
    let var_1 = global0.c;
    var var_2 = 417f;
    global1 = array<Struct_2, 11>();
    return !global0.a.x;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<f32>) -> bool {
    let var_0 = func_2(u_input.a > ~global0.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e), 1455f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -1720f)), arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 130f, -1000f)))), arg_1.x | firstTrailingBit(~(u_input.b.x ^ arg_1.x)));
    global1 = array<Struct_2, 11>();
    let var_1 = -((reverseBits(-vec3<i32>(u_input.a, global0.d.b, 2147483647i)) ^ ~vec3<i32>(global0.c, 1i, 2147483647i)) & ~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(20496i, global0.d.d, global0.c), vec3<i32>(u_input.a, u_input.a, u_input.a))));
    let var_2 = abs(1i);
    let var_3 = Struct_1(vec4<bool>(false, false, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_2) - -384f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_2)))), global0.c, 11692u, -1921i);
    return !var_0 && global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 11>();
    let var_0 = global0.a.yx;
    var var_1 = !(!(!(!(!global0.d.a))));
    global0 = Struct_2(vec3<bool>(func_1(var_0.x, ~vec4<u32>(global0.d.c, 1295u, global0.d.c, 12775u), _wgslsmith_f_op_f32(1407f + global0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1637f, 1188f, 1899f))), all(vec3<bool>(true, true, var_1.x)) & (_wgslsmith_f_op_f32(global0.e - 592f) <= _wgslsmith_f_op_f32(-global0.b.x)), var_1.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345f * _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - -650f)), _wgslsmith_f_op_f32(-1000f * 1283f)), -51610i, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.x * 508f), _wgslsmith_f_op_f32(ceil(1885f)), var_0.x)))));
    let var_2 = u_input.b.x;
    var var_3 = 35377i;
    global1 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), abs(vec2<i32>(-40564i, u_input.a))), global0.d.d, _wgslsmith_mod_i32(firstTrailingBit(-1i), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, global0.c, global0.c, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -32716i, global0.c, 35204i), vec4<i32>(37570i, -10062i, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, -283f))) - _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, global0.d.d, -61346i, -50919i))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.e, global0.b.x, 931f), vec3<f32>(344f, global0.b.x, -352f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-921f, global0.e, -829f))))))) + global0.b.yyw), select(vec4<u32>(~(var_2 ^ 55384u), ~var_2 & 51164u, _wgslsmith_clamp_u32(~u_input.b.x, var_2, 4294967295u), 1u), ~firstLeadingBit(u_input.b), vec4<bool>(any(global0.d.a), all(global0.d.a), max(4294967295u, var_2) < (global0.d.c >> (4294967295u % 32u)), any(global0.d.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.e, global0.b.x, global0.e, 588f), vec4<f32>(1585f, global0.e, 1160f, 327f)), global0.b, true))))));
}

