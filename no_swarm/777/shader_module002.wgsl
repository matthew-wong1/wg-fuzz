struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 28>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(1442f, -618f, 2221f), 1i, vec2<bool>(true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return u_input.d.x;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(func_2(false, Struct_1(global3.a, global3.b, global1.xx), Struct_1(vec3<f32>(global3.a.x, global3.a.x, 1484f), -18605i, global3.c)) >> (0u % 32u)), reverseBits(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(u_input.d.x, 1u))), ~u_input.d.x), vec3<u32>(u_input.d.x | 1u, 0u, ~(~firstTrailingBit(62326u))));
    let var_1 = vec2<i32>(global3.b | 67924i, u_input.b);
    let var_2 = Struct_1(vec3<f32>(-1449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.a.x)) + 696f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + -1010f) + _wgslsmith_f_op_f32(-449f + global3.a.x)))), ~u_input.a, select(select(!vec2<bool>(global3.c.x, global3.c.x), global1.yz, vec2<bool>(all(vec4<bool>(global1.x, global1.x, global3.c.x, global3.c.x)), true)), global3.c, false));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, var_2.a.x, -345f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, global3.a.x, 126f)))))), reverseBits(u_input.e), !select(select(vec2<bool>(true, false), global3.c, all(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 28u)]))), global1.zy, vec2<bool>(false, u_input.a <= 14926i)));
    global1 = !(!select(!(!vec4<bool>(global3.c.x, false, global0.x, global3.c.x)), select(!vec4<bool>(var_2.c.x, global0.x, false, true), select(vec4<bool>(false, true, global3.c.x, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], var_2.c.x, true, true), true), true), true));
    return global1.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -972f))))), arg_1.b, global1.xw);
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global3.a.x, global3.a.x)), _wgslsmith_f_op_f32(global3.a.x * arg_1.a.x), _wgslsmith_f_op_f32(step(arg_1.a.x, -621f))), arg_1.a)), ~(i32(-1i) * -_wgslsmith_clamp_i32(global3.b, var_0.b, u_input.c)), !(!(!select(vec2<bool>(arg_0, true), global1.xy, global3.c.x))));
    global2 = array<bool, 28>();
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), select(~(~vec2<i32>(u_input.b, 2147483647i) & _wgslsmith_sub_vec2_i32(vec2<i32>(-15819i, u_input.e), vec2<i32>(-1i, -2147483647i))), abs(firstTrailingBit(vec2<i32>(global3.b, 11055i)) << (min(u_input.d.zz, vec2<u32>(4294967295u, 14861u)) % vec2<u32>(32u))), select(select(func_3(), !global3.c.x, true), abs(u_input.d.x) > abs(0u), any(vec2<bool>(false, false)))));
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~u_input.d.x, u_input.d.x), _wgslsmith_clamp_u32(17150u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), ~u_input.d.zy), max(~u_input.d.x, u_input.d.x)), 45157u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.xw, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.xz)), select(_wgslsmith_sub_vec2_u32(u_input.d.yx, u_input.d.zy), abs(vec2<u32>(u_input.d.x, 0u)), arg_1.c))), select(u_input.d, ~select(u_input.d, u_input.d, false), true) ^ _wgslsmith_div_vec4_u32(vec4<u32>(abs(22799u), ~65599u, _wgslsmith_add_u32(1u, u_input.d.x), 148u), u_input.d));
    return !(!vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(23148u ^ u_input.d.x, 1u), 28u)], !(var_1.c.x || true), true, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_mult_vec4_u32(u_input.d, u_input.d);
    global3 = arg_1;
    var var_2 = arg_1;
    var var_3 = select(u_input.c, ~arg_1.b, func_3());
    return !func_3();
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    global0 = !vec2<bool>(func_3(), !any(global1.xzy));
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), arg_2.a.x, 540f), global3.b, select(!global3.c, func_4(true, Struct_1(_wgslsmith_f_op_vec3_f32(-global3.a), 1i, vec2<bool>(global0.x, global0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1121f, 1017f, arg_2.a.x))), i32(-1i) * -19455i, vec2<bool>(false, true))).wy, func_3()));
    var var_1 = Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, 1068f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(584f * -847f)))), min(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(-43628i, var_0.b, arg_2.b, arg_2.b), vec4<i32>(-1i, u_input.b, arg_2.b, 0i)), vec4<i32>(-1i) * -vec4<i32>(-12119i, -2147483647i, 0i, 0i)), ~_wgslsmith_div_i32(~(-1i), var_0.b)), arg_2.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a)), -max(6676i, reverseBits(~(-16929i))), select(select(!(!var_1.c), vec2<bool>(global1.x, global3.c.x), false), !(!var_1.c), var_0.c.x));
    let var_2 = true;
    return select(func_4(false, arg_2, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-263f, -236f, -788f) - vec3<f32>(arg_2.a.x, 536f, var_0.a.x)), 0i, arg_2.c)), !vec4<bool>(_wgslsmith_div_i32(40579i, global3.b) >= -6525i, any(global1.xwz), ~u_input.a < 1i, false), true);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) + global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f + global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global3.a.x)), global3.a.x)) * _wgslsmith_f_op_f32(363f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-147f, global3.a.x))))));
    let var_1 = firstTrailingBit(~(~123570u | ~func_2(global0.x, Struct_1(vec3<f32>(1293f, var_0.x, arg_0.a.x), -65482i, global1.zw), Struct_1(vec3<f32>(-193f, arg_0.a.x, arg_0.a.x), 2147483647i, global1.zz))));
    var var_2 = func_6(vec3<u32>(1u, ~(~_wgslsmith_mult_u32(0u, 59866u)), 53892u), func_5(func_4(func_3(), Struct_1(global3.a, reverseBits(u_input.b), vec2<bool>(global2[_wgslsmith_index_u32(var_1, 28u)], global3.c.x)), arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(293f, 124f, arg_0.a.x) * vec3<f32>(var_0.x, arg_0.a.x, arg_0.a.x)), max(_wgslsmith_mult_i32(u_input.b, 2147483647i), arg_0.b), global3.c), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4154u, var_1), max(vec2<u32>(37976u, u_input.d.x), u_input.d.zz)), u_input.d.xx)), arg_0, global1.wz);
    let var_3 = 59398u;
    let var_4 = _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - arg_0.a.x)))))));
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(871f)), 696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2766f))), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), 2676f))), _wgslsmith_f_op_f32(round(-513f)), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-426f, global3.a.x)) * global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - -2528f) - _wgslsmith_f_op_f32(-1252f * 1395f))), _wgslsmith_f_op_f32(global3.a.x * global3.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec3<f32>(global3.a.x, -389f, 1200f), global3.b, vec2<bool>(true, false)), 0i)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-625f + 1340f), -536f, _wgslsmith_f_op_f32(round(global3.a.x)), global3.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, global3.a.x, global3.a.x, global3.a.x))))), vec2<u32>(u_input.d.x, reverseBits(1u)), global3.a.x, vec4<u32>(_wgslsmith_add_u32(58208u, reverseBits(min(u_input.d.x, u_input.d.x))), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 13814u), vec2<u32>(u_input.d.x, 43564u)), u_input.d.wy)), min(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, ~4294967295u), u_input.d.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), ~vec2<u32>(u_input.d.x, 0u))));
}

