struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<i32, 19> = array<i32, 19>(3916i, -14297i, -12557i, 1i, 19591i, i32(-2147483648), 1i, i32(-2147483648), 17737i, 1191i, 15859i, 14228i, -30855i, 11999i, -5812i, -44177i, -1i, 33588i, -1i);

var<private> global1: array<f32, 21> = array<f32, 21>(-101f, -845f, -391f, 994f, -196f, 1620f, -780f, 1784f, 308f, 2199f, -2214f, -564f, -594f, 874f, -386f, -318f, 886f, 231f, 569f, -1494f, -1000f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global0 = array<i32, 19>();
    let var_0 = 17002i;
    global0 = array<i32, 19>();
    var var_1 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, 20933i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, global0[_wgslsmith_index_u32(15034u, 19u)], -2147483647i, -5043i), vec4<i32>(-6949i, -2147483647i, var_0, global0[_wgslsmith_index_u32(4294967295u, 19u)]))), vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(0u, 19u)], 4887i, global0[_wgslsmith_index_u32(0u, 19u)], -55625i)) & -u_input.b, all(vec4<bool>(firstTrailingBit(1u) <= 4294967295u, min(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 19u)]) <= -42294i, select(true, true, true), false)));
    global0 = array<i32, 19>();
    return u_input.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = vec2<u32>(4294967295u, select(36396u, ~(~_wgslsmith_add_u32(0u, 26050u)), !any(vec3<bool>(true, true, arg_1.x))));
    let var_1 = Struct_2(select(!vec2<bool>(true, all(vec4<bool>(false, true, arg_1.x, arg_1.x))), vec2<bool>(true, !(global1[_wgslsmith_index_u32(var_0.x, 21u)] < global1[_wgslsmith_index_u32(var_0.x, 21u)])), !(!(!vec2<bool>(arg_1.x, arg_1.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(40406u, 21u)], -304f, global1[_wgslsmith_index_u32(50580u, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)]), vec4<f32>(-352f, global1[_wgslsmith_index_u32(var_0.x, 21u)], -1158f, -563f))) + _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 21u)], 423f, 1000f, 670f), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 21u)], -833f, global1[_wgslsmith_index_u32(var_0.x, 21u)], 255f))))), firstTrailingBit(u_input.a.x));
    var var_2 = var_1.c;
    let var_3 = vec2<u32>(~countOneBits(var_0.x), ~(~(var_0.x ^ 20258u)));
    var var_4 = vec3<bool>(-abs(func_3(vec3<f32>(global1[_wgslsmith_index_u32(0u, 21u)], -383f, global1[_wgslsmith_index_u32(var_3.x, 21u)]))) <= min(-_wgslsmith_div_i32(var_1.c, -12291i), -41171i), -1000f < _wgslsmith_f_op_f32(-var_1.b.a.x), arg_1.x);
    return select(true, !select(var_1.a.x, !arg_1.x, false), arg_1.x);
}

fn func_1() -> f32 {
    let var_0 = Struct_3(48954i, func_2(~vec2<i32>(u_input.a.x, -2147483647i), vec2<bool>(true, true)) && true);
    global0 = array<i32, 19>();
    global1 = array<f32, 21>();
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(var_1.a, u_input.b, 13209i), ~(global0[_wgslsmith_index_u32(1u, 19u)] | var_0.a))), -vec2<i32>(-var_0.a, global0[_wgslsmith_index_u32(~1u, 19u)]));
    return -2046f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = true;
    let var_1 = arg_1;
    var var_2 = u_input.a.x;
    global1 = array<f32, 21>();
    var_2 = 8020i;
    return arg_2.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~28085u, 21u)], 2023f))));
    var var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(func_1()), Struct_3(_wgslsmith_dot_vec2_i32(-u_input.a, firstTrailingBit(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 19u)]))), any(vec3<bool>(true, false, false))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false), vec4<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, false, true, false))))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, -872f, 166f, 411f))))), 1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.a.yzx) * var_1.b.a.xwy), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1007f, var_0, global1[_wgslsmith_index_u32(27800u, 21u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.a.wyw - _wgslsmith_f_op_vec3_f32(var_1.b.a.zwx * var_1.b.a.xwy)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.b.a.xww))), select(vec3<bool>(true, var_1.a.x, var_1.a.x), select(select(!vec3<bool>(true, var_1.a.x, var_1.a.x), select(vec3<bool>(false, true, false), vec3<bool>(var_1.a.x, var_1.a.x, true), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(true, var_1.a.x, var_1.a.x))), select(vec3<bool>(false, var_1.a.x, var_1.a.x), select(vec3<bool>(true, var_1.a.x, true), vec3<bool>(false, false, false), vec3<bool>(false, var_1.a.x, var_1.a.x)), vec3<bool>(var_1.a.x, false, false)), var_1.a.x), vec3<bool>(false != (2147483647i > var_1.c), var_1.a.x, false))));
    var_2 = vec3<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))), global1[_wgslsmith_index_u32(~select(4294967295u, firstLeadingBit(18434u), false), 21u)])));
    var var_3 = Struct_2(!var_1.a, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, var_0, -1000f, var_0) + vec4<f32>(-1397f, 802f, -190f, -1256f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-711f, 148f, var_0, -1638f), vec4<f32>(var_0, 153f, var_0, var_2.x), vec4<bool>(true, true, false, var_1.a.x))), !vec4<bool>(true, var_1.a.x, true, false)))))), (global0[_wgslsmith_index_u32(4294967295u, 19u)] >> (1u % 32u)) & -reverseBits(0i));
    var_3 = Struct_2(var_3.a, var_1.b, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(32819i, abs(2147483647i), firstLeadingBit(0i))), -(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.c, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), vec3<i32>(var_3.c, var_1.c, -40055i)) << (~vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_mult_u32(18618u, 65435u) & _wgslsmith_dot_vec4_u32(vec4<u32>(6577u, 1u, 46759u, 1u), vec4<u32>(1u, 4294967295u, 97192u, 1u)))));
}

