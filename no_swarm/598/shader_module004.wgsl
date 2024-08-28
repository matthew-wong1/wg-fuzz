struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global3: array<Struct_1, 22>;

var<private> global4: array<vec3<bool>, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2() -> f32 {
    global2 = array<vec2<bool>, 10>();
    global2 = array<vec2<bool>, 10>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global1 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(142f * _wgslsmith_f_op_f32(f32(-1f) * -2221f)), 160f))) - _wgslsmith_f_op_f32(func_3()));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.b;
    var var_1 = all(global2[_wgslsmith_index_u32(abs(u_input.d), 10u)]);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_3.b.xw + _wgslsmith_f_op_vec2_f32(-arg_3.b.zx)), _wgslsmith_div_vec2_f32(arg_3.b.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_3.b.x) + vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(exp2(var_0.xz)))), any(vec2<bool>(arg_1, !arg_1)))));
    global3 = array<Struct_1, 22>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))));
    return Struct_1(1i, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.x, var_0.x, var_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, arg_3.b.x, arg_3.b.x, var_2.x))) + vec4<f32>(_wgslsmith_f_op_f32(var_3.x * var_2.x), var_2.x, _wgslsmith_f_op_f32(min(860f, -1523f)), _wgslsmith_f_op_f32(-var_2.x)))), abs(select(arg_3.c, arg_3.c, !(u_input.b != u_input.b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global4 = array<vec3<bool>, 7>();
    global1 = array<Struct_1, 28>();
    let var_0 = func_4((1i ^ arg_0.a) >> (u_input.a % 32u), false, -21787i, Struct_1(-arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b.x, arg_1.b.x, _wgslsmith_f_op_f32(func_2())), vec3<i32>(55056i, firstTrailingBit(-32520i), -1i)));
    global2 = array<vec2<bool>, 10>();
    global4 = array<vec3<bool>, 7>();
    return firstLeadingBit(abs(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(119019u << (u_input.b % 32u), u_input.c.x, min(u_input.c.x, 7639u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 4294967295u), u_input.c)), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(13043u, 74717u)), max(u_input.b, 11278u), _wgslsmith_dot_vec3_u32(u_input.c.zyw, u_input.c.xxz)), true), func_1(Struct_1(10658i, vec4<f32>(-848f, 1000f, 693f, 380f), vec3<i32>(-54110i, -22543i, -1i)), global1[_wgslsmith_index_u32(1u, 28u)]) ^ u_input.c);
    let var_1 = min(reverseBits(52604u), 1u);
    global2 = array<vec2<bool>, 10>();
    let var_2 = select(!any(select(global2[_wgslsmith_index_u32(countOneBits(var_1), 10u)], vec2<bool>(true, true), false)), !(all(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.ywy, vec3<u32>(1u, var_1, 1u)), 7u)]) | any(select(vec3<bool>(false, false, false), global4[_wgslsmith_index_u32(u_input.b, 7u)], vec3<bool>(false, false, false)))), any(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), all(global2[_wgslsmith_index_u32(4294967295u, 10u)]))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, -2580f) - vec2<f32>(131f, -257f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1185f, 879f) - vec2<f32>(1053f, 767f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-495f, -683f))))));
    global1 = array<Struct_1, 28>();
    let var_4 = _wgslsmith_div_f32(437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(_wgslsmith_add_i32(~(-1i), ~2312i), _wgslsmith_clamp_i32(-1i, 8837i, ~0i)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, -22458i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(28090i, 1i, 0i, -2627i), vec4<i32>(-1i, 30052i, -1i, 59355i)), 0i) >> (_wgslsmith_mod_vec2_u32(abs(u_input.c.xw), ~u_input.c.yx) % vec2<u32>(32u))), _wgslsmith_div_i32(34460i, 1i | countOneBits(_wgslsmith_clamp_i32(-11501i, -2147483647i, -42261i))), abs(vec4<i32>(-55276i, 1i >> (~var_1 % 32u), 0i, ~func_4(-1i, false, -1i, global3[_wgslsmith_index_u32(4294967295u, 22u)]).a)));
}

