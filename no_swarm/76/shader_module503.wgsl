struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 830f;

var<private> global1: array<vec4<i32>, 32>;

var<private> global2: Struct_3;

var<private> global3: vec3<bool>;

var<private> global4: array<bool, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> bool {
    global1 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_mult_i32(-57734i, ~(-_wgslsmith_sub_i32(29412i, u_input.a)) & 1i);
    global1 = array<vec4<i32>, 32>();
    var_0 = select(-5505i, u_input.a, !(!global2.c.b.x));
    let var_1 = vec3<i32>(reverseBits(u_input.a), u_input.a, i32(-1i) * -reverseBits(-2147483647i));
    return any(global3.zz);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), 890f))) - -624f), select(global2.c.b, select(vec4<bool>(true, global2.c.b.x | false, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 47151u, 36326u), 30u)], func_3(Struct_4(global2.b.yw), global3.x)), !select(global2.b, global2.b, global2.c.b), vec4<bool>(!global3.x, !global4[_wgslsmith_index_u32(1u, 30u)], !global4[_wgslsmith_index_u32(47940u, 30u)], !global2.c.b.x)), select(select(vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(arg_0.x, 30u)]), !global2.b, select(global2.c.b, vec4<bool>(false, true, global3.x, false), global3.x)), vec4<bool>(false, false, -1472f != global2.a, global2.c.b.x), !(true || global2.c.b.x))), global2.c, vec3<f32>(_wgslsmith_f_op_f32(1884f * -1469f), _wgslsmith_f_op_f32(-539f + _wgslsmith_f_op_f32(min(global2.c.a.x, _wgslsmith_f_op_f32(global2.c.a.x + global2.d.x)))), _wgslsmith_f_op_f32(-global2.a)));
    global0 = global2.c.c.a.x;
    var var_0 = global2.a;
    let var_1 = Struct_4(global3.xx);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.c.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.c.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2.a)), -977f, var_1.a.x)))) - 1114f);
    return arg_0.x;
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = func_2(~_wgslsmith_mult_vec2_u32(select(~vec2<u32>(45527u, 1u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(30268u, 32453u), vec2<bool>(false, true)), global3.xx), vec2<u32>(1u, 1u)));
    var var_1 = select(-vec4<i32>(-_wgslsmith_div_i32(-2147483647i, -11675i), u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, -16541i), -1i), 1i), select(vec4<i32>(max(u_input.a, -2147483647i), 1i, _wgslsmith_clamp_i32(2147483647i, 64535i, 1i), _wgslsmith_div_i32(u_input.a, -2147483647i)) ^ vec4<i32>(1i, -5355i, -2147483647i, -u_input.a), reverseBits(vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(true, arg_0.x || true, 4294967295u < ~var_0, u_input.a < _wgslsmith_add_i32(u_input.a, u_input.a))), select(select(!vec4<bool>(global3.x, false, global2.b.x, true), global2.c.b, all(!vec4<bool>(global2.b.x, false, global4[_wgslsmith_index_u32(4294967295u, 30u)], true))), !select(vec4<bool>(false, global2.b.x, global3.x, global4[_wgslsmith_index_u32(7468u, 30u)]), vec4<bool>(false, global4[_wgslsmith_index_u32(57923u, 30u)], global3.x, false), true), global2.c.b));
    var var_2 = Struct_1(global2.c.c.a, _wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(step(global2.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, global2.a))))))));
    return _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(var_1.yzw, -var_1.wzw), var_1.xxz) ^ var_1.zzz;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_4(vec2<bool>(arg_0 >= 1i, (global3.x != (arg_0 == -18656i)) && false));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(4560i, ~select(arg_1.x, arg_0, true), -3917i), arg_1);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1864f), global2.c.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(697f, _wgslsmith_div_f32(global2.c.a.x, 1413f)) + global2.c.c.a.xy))), select(!global2.c.b, vec4<bool>(false, func_3(Struct_4(vec2<bool>(true, false)), !global2.c.b.x), global4[_wgslsmith_index_u32(1u, 30u)], any(select(vec4<bool>(true, global2.c.b.x, global4[_wgslsmith_index_u32(0u, 30u)], global3.x), vec4<bool>(global3.x, true, global3.x, false), var_0.a.x))), global2.b), Struct_1(global2.d, 595f));
    let var_3 = arg_1.yz;
    let var_4 = vec4<f32>(var_2.a.x, -525f, var_2.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(503f, 1818f)), -212f));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = _wgslsmith_div_u32(~(~3798u), _wgslsmith_mod_u32(1u, ~(~(~1u))));
    let var_2 = vec3<bool>(!any(select(!vec4<bool>(false, global2.b.x, global2.c.b.x, true), vec4<bool>(global2.b.x, false, true, false), global2.b)), true, any(global2.b));
    let var_3 = u_input.a;
    var var_4 = vec2<u32>(47614u, var_1);
    let var_5 = func_4(-select(_wgslsmith_mult_i32(countOneBits(u_input.a), 1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_3), vec2<i32>(var_3, u_input.a)), false), firstLeadingBit(_wgslsmith_div_vec3_i32(func_1(global2.b.zwz), -_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, var_3), vec3<i32>(u_input.a, -1i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, reverseBits(1u), 1u), min(_wgslsmith_sub_u32(80072u, select(var_4.x, ~7741u, global2.b.x && global4[_wgslsmith_index_u32(var_4.x, 30u)])), 1u), func_1(!vec3<bool>(global2.c.b.x, func_4(var_3, vec3<i32>(u_input.a, -47965i, -2147483647i)).b.x, any(vec2<bool>(true, false)))).xz, var_5.c.a.x, ~(-1i));
}

