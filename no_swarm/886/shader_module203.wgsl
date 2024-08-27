struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 20131u) | (~(u_input.c.x ^ 17181u) >> (u_input.a.x % 32u)), 15u)]);
    let var_1 = Struct_2(Struct_1(!var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(150f, -2077f)), -937f)) - -689f)));
    var_0 = Struct_1(var_0.a);
    let var_2 = u_input.d <= 1i;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(678f - _wgslsmith_f_op_f32(select(-927f, var_1.b, false)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(select(638f, 295f, false)))))));
    return -1240f;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = any(arg_0);
    var var_2 = Struct_2(Struct_1(false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(812f, _wgslsmith_f_op_f32(func_3()))), -1772f)));
    global0 = array<bool, 15>();
    var_2 = Struct_2(Struct_1(!any(select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 15u)], arg_0.x), true))), var_2.b);
    return select(arg_0, vec2<bool>(true || arg_0.x, (30793u > ~var_0.x) && true), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(128f, 827f))))), vec2<f32>(1f, 1f)));
    let var_1 = Struct_2(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = vec4<bool>(true, all(!arg_0), true, true);
    var var_3 = Struct_2(arg_1, _wgslsmith_f_op_f32(var_1.b - -1318f));
    var var_4 = Struct_2(arg_1, var_0.x);
    return var_3.a;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(!(!(!global0[_wgslsmith_index_u32(136925u, 15u)])));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-8323i, ~_wgslsmith_mod_i32(u_input.d, firstTrailingBit(-28865i)), _wgslsmith_mod_i32(u_input.d | firstTrailingBit(0i), u_input.d)), vec3<i32>(_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(u_input.d, u_input.d)), 5008i), u_input.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, u_input.d), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 18951i), vec2<i32>(0i, 56679i))), reverseBits(-39372i) << (1u % 32u))));
    var_0 = func_4(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)] && true, !any(vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]))), vec2<bool>(!(var_0.a & var_0.a), var_0.a), select(func_2(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(false, true), vec2<bool>(var_0.a, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]))), select(!vec2<bool>(global0[_wgslsmith_index_u32(3005u, 15u)], var_0.a), vec2<bool>(true, var_0.a), -17287i <= u_input.d), select(vec2<bool>(global0[_wgslsmith_index_u32(39727u, 15u)], true), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], var_0.a), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 15u)])), !vec2<bool>(true, global0[_wgslsmith_index_u32(75963u, 15u)])))), Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, 85258u), 15u)]), -2147483647i, 1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-975f)))))), -193f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1435f, -411f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(175f, -739f), vec2<f32>(632f, -1172f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-196f, 913f), vec2<f32>(710f, 400f))))))));
    global0 = array<bool, 15>();
    return ~min(~abs(min(vec4<u32>(10068u, u_input.a.x, 1u, u_input.c.x), vec4<u32>(u_input.b.x, u_input.a.x, 6511u, u_input.c.x))), min(vec4<u32>(u_input.c.x, u_input.b.x, u_input.a.x, 1u) & vec4<u32>(u_input.a.x, u_input.b.x, u_input.c.x, 0u), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x) ^ (vec4<u32>(1u, 23354u, u_input.a.x, 452u) << (vec4<u32>(u_input.b.x, 74056u, 0u, u_input.b.x) % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) - _wgslsmith_f_op_f32(arg_1.b * 514f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(994f, arg_1.b, arg_2.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(272f, arg_1.b))))), _wgslsmith_f_op_f32(sign(227f))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-u_input.d);
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_1 = func_5(_wgslsmith_sub_vec4_u32(~func_1(), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10554u, 4294967295u, 0u, 9795u), vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 22193u)), ~vec4<u32>(1u, 0u, 1u, u_input.c.x)), firstLeadingBit(select(vec4<u32>(4389u, 5106u, u_input.a.x, 41425u), vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.c.x), global0[_wgslsmith_index_u32(4294967295u, 15u)])))), Struct_2(Struct_1(false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-402f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(954f))))), func_4(func_2(vec2<bool>(global0[_wgslsmith_index_u32(abs(1u), 15u)], true)), Struct_1(select(true, global0[_wgslsmith_index_u32(50907u, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)]) == false), _wgslsmith_clamp_i32(~u_input.d & u_input.d, _wgslsmith_mod_i32(1i, ~0i), 2147483647i), -var_0), _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, 0u)), 0u), ~17609u));
    global0 = array<bool, 15>();
    var var_2 = var_1;
    let var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f)))), func_1().x, max(firstLeadingBit(_wgslsmith_mult_i32(var_0, 1i)), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d, 17673i), u_input.d), -abs(16896i))), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_5(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u), var_1, Struct_1(var_2.a.a), 43639u).b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.b))))), _wgslsmith_add_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.d, var_0, var_0, var_0)), vec4<i32>(u_input.d, 1i, -1i, _wgslsmith_mult_i32(~(-31484i), -var_0))));
}

