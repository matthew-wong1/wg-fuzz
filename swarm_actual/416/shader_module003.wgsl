struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 792f;

var<private> global1: array<i32, 32>;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(1u, 65484u), Struct_2(137f, vec2<i32>(i32(-2147483648), 17978i), 14998i, Struct_1(vec2<u32>(25790u, 0u), true, 59913u, true)), vec3<i32>(-1i, 32076i, -41494i), vec3<u32>(21778u, 0u, 0u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(max(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~global2.a, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 6666u), vec2<u32>(1u, 38777u))), max(u_input.c, u_input.c) & (vec2<u32>(1u, 0u) << (global2.d.zy % vec2<u32>(32u)))), u_input.e.xz), (_wgslsmith_f_op_f32(global2.b.a + _wgslsmith_f_op_f32(-1317f + -200f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1639f)))) && select(global2.b.d.b, !global2.b.d.d, global2.b.d.d), global2.b.d.a.x, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-826f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1313f + _wgslsmith_f_op_f32(global2.b.a - global2.b.a))))));
    let var_2 = vec3<bool>(true, true, select(false, !(42083u >= ~global2.d.x), global2.b.d.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(round(var_1)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 319f, 1000f, 888f)))))));
    return true;
}

fn func_2() -> bool {
    global2 = Struct_3(u_input.b.zz, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1026f)), global2.b.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1402f)))), ~global2.b.b, firstLeadingBit(34176i), global2.b.d), -vec3<i32>(_wgslsmith_mult_i32(-1i, ~u_input.a), ~(-9211i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(9597u, 32u)], global1[_wgslsmith_index_u32(global2.d.x, 32u)], u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(8069u, 32u)], -1i, -2147483647i, global2.b.b.x)) ^ 1i), reverseBits(select(~(~vec3<u32>(global2.b.d.c, u_input.d, u_input.e.x)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.d, 1u, u_input.c.x)), _wgslsmith_div_vec3_u32(u_input.b.yzx, global2.d)), func_3(Struct_1(u_input.b.wz, false, 32640u, true)) || func_3(Struct_1(global2.a, true, 74455u, global2.b.d.b)))));
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(104410u, min(u_input.e.x, 1u), u_input.e.x << (_wgslsmith_sub_u32(global2.a.x, _wgslsmith_sub_u32(u_input.b.x, 1u)) % 32u), reverseBits(_wgslsmith_add_u32(1u >> (u_input.e.x % 32u), global2.a.x))), u_input.b);
    global2 = Struct_3(global2.d.xy, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1217f)))), vec2<i32>(global1[_wgslsmith_index_u32(~72230u, 32u)], -1i) & ~countOneBits(global2.b.b), min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(16144u >> (var_0.x % 32u), global2.d.x), 32u)], global1[_wgslsmith_index_u32(~u_input.e.x, 32u)]), Struct_1(vec2<u32>(abs(3521u), u_input.e.x), reverseBits(u_input.a) < 2147483647i, 1u, all(!vec3<bool>(global2.b.d.d, global2.b.d.d, global2.b.d.b)))), global2.c, max(abs(~min(vec3<u32>(u_input.e.x, global2.d.x, 45988u), var_0.wwz)), var_0.zwy));
    global0 = -650f;
    let var_1 = select(vec4<bool>(!global2.b.d.d, !any(vec2<bool>(true, global2.b.d.b)), all(vec4<bool>(true, true, func_3(global2.b.d), func_3(global2.b.d))), true), vec4<bool>(true, true, func_3(global2.b.d), global2.b.d.d), vec4<bool>(true, !global2.b.d.d, true, true));
    return select(!any(select(vec4<bool>(global2.b.d.d, var_1.x, false, var_1.x), vec4<bool>(false, global2.b.d.b, global2.b.d.b, true), !var_1.x)), false, false);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = Struct_3(u_input.c, global2.b, ~vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 31171i)), countOneBits(vec2<i32>(-2147483647i, u_input.a))), abs(_wgslsmith_clamp_i32(global2.c.x, global2.c.x, global1[_wgslsmith_index_u32(arg_0.x, 32u)]))), global2.d);
    return global2.b.d.d;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(global2.b.a * _wgslsmith_f_op_f32(global2.b.a + global2.b.a));
    let var_0 = i32(-1i) * -27392i;
    global2 = Struct_3(arg_1, global2.b, ~(~firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(20921i, global2.b.b.x, 832i), vec3<i32>(3646i, global2.b.c, var_0)))), abs(~_wgslsmith_mod_vec3_u32(~vec3<u32>(8853u, u_input.c.x, arg_1.x), ~vec3<u32>(8597u, global2.d.x, arg_1.x))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(145f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.a))))));
    var var_1 = global2.b.a;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(882f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a)))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32) -> vec3<bool> {
    let var_0 = min(vec3<u32>(_wgslsmith_div_u32(~1u, ~global2.b.d.c), global2.d.x, 1u), ~vec3<u32>(_wgslsmith_add_u32(global2.b.d.c, global2.d.x), _wgslsmith_sub_u32(4294967295u, 4294967295u), arg_1.d.x));
    global1 = array<i32, 32>();
    global0 = _wgslsmith_f_op_f32(func_5(func_4(~abs(vec2<u32>(4294967295u, 126693u)), vec3<bool>(!global2.b.d.d, !func_2(), true), -(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.a.x, 32u)], 36097i, arg_1.c.x, -17124i), vec4<i32>(u_input.a, global2.c.x, 1i, 16205i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.d.c, global2.a.x, u_input.e.x, 4294967295u), u_input.b) % vec4<u32>(32u))), false), u_input.b.zy & reverseBits(vec2<u32>(_wgslsmith_mod_u32(50798u, arg_1.b.d.c), arg_1.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.yx);
    let var_2 = global2.b.d;
    return select(select(vec3<bool>(!select(arg_1.b.d.d, false, global2.b.d.b), select(!global2.b.d.b, global2.b.d.d || var_2.b, var_2.b), select(all(vec4<bool>(var_2.d, global2.b.d.d, true, true)), global2.b.d.d && arg_1.b.d.b, true)), !(!(!vec3<bool>(true, arg_1.b.d.b, false))), !(!(!vec3<bool>(true, global2.b.d.b, arg_1.b.d.d)))), vec3<bool>(global2.b.d.b, _wgslsmith_f_op_f32(ceil(arg_0.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), true && (global2.a.x < var_0.x)), !vec3<bool>(!all(vec2<bool>(global2.b.d.b, global2.b.d.b)), global2.b.d.d, !all(vec4<bool>(global2.b.d.b, true, true, var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.a > global2.b.a;
    let var_1 = Struct_1(vec2<u32>(21973u, 1u), any(select(select(!vec3<bool>(global2.b.d.b, global2.b.d.d, global2.b.d.b), !vec3<bool>(true, global2.b.d.d, global2.b.d.b), vec3<bool>(true, true, true)), !func_1(vec3<f32>(global2.b.a, global2.b.a, global2.b.a), Struct_3(vec2<u32>(global2.d.x, global2.b.d.c), global2.b, vec3<i32>(0i, u_input.a, 60183i), vec3<u32>(8027u, 9196u, 4294967295u)), global2.b.a), vec3<bool>(true, all(vec3<bool>(true, false, global2.b.d.b)), global2.b.d.b))), _wgslsmith_div_u32(global2.d.x, _wgslsmith_div_u32(4294967295u, 4294967295u)), all(select(func_1(vec3<f32>(-611f, global2.b.a, global2.b.a), Struct_3(vec2<u32>(u_input.c.x, 24549u), global2.b, global2.c, global2.d), global2.b.a).yx, vec2<bool>(true, true), global2.b.d.d)) & true);
    let var_2 = vec2<bool>(var_1.d, global2.b.d.b);
    var var_3 = !(!vec2<bool>(global2.b.d.b, var_1.c < ~u_input.d));
    var var_4 = select(vec2<bool>(global2.b.d.b, var_1.d), vec2<bool>(!(!func_3(Struct_1(u_input.e.ww, var_1.b, 0u, var_1.b))), true), var_3.x);
    var var_5 = global2.b.a;
    let var_6 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1798f)), global2.b.a, _wgslsmith_f_op_f32(select(global2.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-152f - -1804f), global2.b.a), any(!vec4<bool>(false, false, var_2.x, var_3.x)))), global2.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_6.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(-global2.b.a))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_6.a.x))) * global2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.a)))), var_6.a.x), _wgslsmith_mult_vec4_i32(~(~select(vec4<i32>(16538i, 4962i, global1[_wgslsmith_index_u32(8984u, 32u)], 43662i), vec4<i32>(-44063i, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(global2.b.d.a.x, 32u)], -14250i), true)), countOneBits(vec4<i32>(-2147483647i ^ global2.b.b.x, 10988i, u_input.a >> (global2.d.x % 32u), -2147483647i))), var_6.a.yxw);
}

