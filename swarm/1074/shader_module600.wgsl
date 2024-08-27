struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(25878u, 0i, vec4<i32>(21810i, 5395i, i32(-2147483648), 1i), vec3<bool>(true, false, true));

var<private> global3: array<bool, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(min(max(~1u, ~u_input.a), 4294967295u), _wgslsmith_dot_vec3_i32(-(~global2.c.ywx), vec3<i32>(~global2.c.x, -global2.c.x, global2.c.x << (u_input.a % 32u))), firstLeadingBit(vec4<i32>(-2147483647i, -global2.c.x, 1i, _wgslsmith_div_i32(2147483647i, global2.c.x))), select(global2.d, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global2.a, u_input.a, u_input.a), vec3<u32>(global2.a, 0u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.a, 55034u, global2.a), vec3<u32>(18081u, u_input.a, global2.a))), 23u)], !(global3[_wgslsmith_index_u32(u_input.a, 22u)] && true))));
    global0 = array<vec3<bool>, 23>();
    let var_1 = Struct_2(~(~50580u), ~_wgslsmith_mult_u32(~33588u, var_0.a.a) == ~(~18040u));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -491f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1739f)) - 1000f))))));
    var var_3 = select(all(!select(!global2.d.yy, global2.d.xy, true || global3[_wgslsmith_index_u32(7823u, 22u)])), !(var_0.a.d.x | true) && false, select(true, false, false));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f - -120f) + 2675f), _wgslsmith_f_op_f32(-167f + -1097f))) * _wgslsmith_f_op_f32(f32(-1f) * -1034f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))))));
}

fn func_2() -> Struct_1 {
    global1 = true;
    let var_0 = Struct_1(_wgslsmith_clamp_u32(u_input.a, ~17193u, global2.a), _wgslsmith_dot_vec4_i32(-global2.c, vec4<i32>(~(global2.b ^ global2.c.x), -global2.c.x, global2.b, firstLeadingBit(abs(10307i)))), ~_wgslsmith_mod_vec4_i32(global2.c, -firstLeadingBit(global2.c)), select(vec3<bool>(true, all(vec2<bool>(true, global3[_wgslsmith_index_u32(37839u, 22u)])), false), vec3<bool>(-1000f <= _wgslsmith_f_op_f32(func_3()), all(!vec2<bool>(global2.d.x, global2.d.x)), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 22u)]), !(!(!vec3<bool>(true, global2.d.x, true)))));
    return var_0;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_2());
    var var_1 = global2.c.x;
    let var_2 = vec3<i32>(-(i32(-1i) * -10006i), global2.b, _wgslsmith_mult_i32(select(_wgslsmith_sub_i32(abs(0i), var_0.a.b), _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(-16374i, var_0.a.c.x)), all(vec3<bool>(global3[_wgslsmith_index_u32(global2.a, 22u)], false, var_0.a.d.x))), i32(-1i) * -var_0.a.c.x));
    let var_3 = -1i;
    var var_4 = ~countOneBits(var_0.a.c);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-530f - 1f), -279f));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    global1 = true;
    return Struct_2(abs(_wgslsmith_add_u32(firstLeadingBit(~59137u), _wgslsmith_mod_u32(_wgslsmith_add_u32(23659u, 0u), _wgslsmith_add_u32(u_input.a, u_input.a)))), select(false, global3[_wgslsmith_index_u32(37184u, 22u)], true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(773f - -686f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(-1000f, 405f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1468f, -603f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(433f, 1169f, 1045f))))), _wgslsmith_f_op_f32(func_3()), firstTrailingBit(vec3<i32>(44365i, ~2147483647i, _wgslsmith_mult_i32(global2.c.x, 11097i))), true, 3865u), global3[_wgslsmith_index_u32(min(_wgslsmith_div_u32(global2.a, global2.a ^ _wgslsmith_mod_u32(29184u, global2.a)), firstLeadingBit(_wgslsmith_mult_u32(17403u, ~global2.a))), 22u)]);
    var var_1 = ~(~(~vec4<i32>(0i, -2147483647i, global2.c.x, global2.c.x))) ^ vec4<i32>(global2.b, _wgslsmith_mult_i32(firstTrailingBit(-45213i), ~(-38368i)), global2.b, _wgslsmith_dot_vec4_i32(abs(global2.c >> (vec4<u32>(var_0.a, 16336u, 4294967295u, 11675u) % vec4<u32>(32u))), vec4<i32>(min(global2.b, global2.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 73007i, global2.b), global2.c.zzz), global2.c.x, _wgslsmith_mult_i32(global2.c.x, global2.b))));
    var var_2 = all(vec4<bool>(select(true, any(vec4<bool>(var_0.b, global3[_wgslsmith_index_u32(var_0.a, 22u)], var_0.b, global2.d.x)), var_0.b), !global3[_wgslsmith_index_u32(0u | _wgslsmith_mod_u32(34812u, u_input.a), 22u)], (!global3[_wgslsmith_index_u32(var_0.a, 22u)] || (true & global3[_wgslsmith_index_u32(var_0.a, 22u)])) != (select(false, var_0.b, var_0.b) || true), func_4(Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(-579f, 446f, -2046f), vec3<f32>(-298f, -1000f, -223f)), -461f, vec3<i32>(45463i, global2.b, -25389i), false, 0u), false).b));
    let var_3 = 225f;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

