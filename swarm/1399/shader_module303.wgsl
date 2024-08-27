struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(0i);

var<private> global1: array<u32, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = ~(~vec3<u32>(firstTrailingBit(arg_1.c), 4294967295u, ~_wgslsmith_dot_vec2_u32(arg_2.b.xw, arg_2.d.zy)));
    global1 = array<u32, 11>();
    let var_1 = select(select(select(!(!vec4<bool>(arg_1.a.x, true, true, false)), vec4<bool>(729f <= arg_0, false, false, true), (false && arg_1.a.x) & any(vec3<bool>(arg_2.a.x, true, false))), select(select(!vec4<bool>(arg_1.a.x, arg_2.a.x, false, arg_1.a.x), !vec4<bool>(true, true, arg_2.a.x, arg_1.a.x), all(vec3<bool>(true, true, false))), vec4<bool>(arg_1.a.x, true, arg_2.c || false, any(vec4<bool>(arg_1.a.x, true, true, true))), !vec4<bool>(arg_2.a.x, arg_1.a.x, arg_1.a.x, arg_2.c)), vec4<bool>(arg_1.a.x, ~28249u == min(arg_2.b.x, u_input.a), all(!vec3<bool>(false, arg_1.a.x, false)), ~20075i <= global0[_wgslsmith_index_u32(~27547u, 1u)])), select(select(!select(vec4<bool>(arg_1.a.x, true, arg_2.a.x, false), vec4<bool>(arg_2.c, true, arg_1.a.x, true), vec4<bool>(false, arg_2.c, false, false)), vec4<bool>(any(vec3<bool>(arg_2.a.x, arg_2.c, arg_1.a.x)), true, false, -1660f < arg_0), select(select(vec4<bool>(arg_2.c, true, true, arg_1.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_1.a.x, arg_2.c), vec4<bool>(false, arg_2.c, arg_1.a.x, true)), !vec4<bool>(arg_2.c, false, true, arg_1.a.x), arg_2.a.x)), select(select(vec4<bool>(false, arg_1.a.x, false, false), select(vec4<bool>(arg_1.a.x, arg_2.a.x, false, true), vec4<bool>(true, arg_1.a.x, true, arg_1.a.x), vec4<bool>(arg_2.c, arg_1.a.x, arg_1.a.x, arg_2.a.x)), !arg_1.a.x), select(vec4<bool>(false, false, true, arg_2.c), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_2.a.x), true), !(!vec4<bool>(true, arg_1.a.x, arg_1.a.x, false))), vec4<bool>(!any(vec4<bool>(arg_1.a.x, arg_2.c, false, false)), true, arg_1.a.x, true)), arg_2.a.x || arg_1.a.x);
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(~abs(~arg_1.c), min(global1[_wgslsmith_index_u32((var_0.x & var_0.x) & select(1u, arg_2.b.x, arg_1.a.x), 11u)], ~0u)), _wgslsmith_mod_u32(~1u, arg_2.b.x), _wgslsmith_mult_u32(44050u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(0u), _wgslsmith_div_u32(u_input.a, 1u)), 11u)]));
    var var_3 = !var_1.ywz;
    return arg_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    global0 = array<i32, 1>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1088f)), 399f))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x, Struct_2(vec2<bool>(true, true), firstTrailingBit(vec3<i32>(-15564i, 1i, 5364i)), u_input.a | arg_1), Struct_1(vec2<bool>(false, true), firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(arg_1, 11u)], 4294967295u, 28627u)), true, vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 11u)], 0u)), abs(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1790f, -241f))), 1502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(208f, 884f)) + var_0.x))), vec3<f32>(2419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, var_0.x)), _wgslsmith_f_op_f32(-arg_0.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, var_0.x)))))));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_4 {
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global1 = array<u32, 11>();
    global0 = array<i32, 1>();
    return Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(674f, 1082f, 1000f, -364f), vec4<f32>(257f, -1000f, -405f, -210f), vec4<bool>(arg_0, false, false, arg_0))))))), _wgslsmith_add_u32(~(~global1[_wgslsmith_index_u32(0u, 11u)]), reverseBits(func_2(vec2<f32>(-805f, -322f), 4294967295u))) >= global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 11u)], 11u)], reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(2340u, 11u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 7609u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24830u, 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90073u, 11u)], 11u)]), vec2<u32>(u_input.a, 23793u))), 11u)], _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 29423u), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(41494u, 11u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, -(firstLeadingBit(u_input.c.zxw) ^ vec3<i32>(17946i, 8770i ^ global0[_wgslsmith_index_u32(5665u, 1u)], _wgslsmith_add_i32(33766i, -40126i))));
    global1 = array<u32, 11>();
    let var_1 = func_1(false && var_0.b, reverseBits(vec3<i32>(-67807i, -1i, _wgslsmith_div_i32(-1i, global0[_wgslsmith_index_u32(1u, 1u)]) >> (abs(u_input.a) % 32u))));
    let var_2 = func_1(!(~u_input.a < global1[_wgslsmith_index_u32(36496u >> (u_input.a % 32u), 11u)]) || any(vec2<bool>(!var_1.b, var_0.b)), vec3<i32>(u_input.d, i32(-1i) * -62905i, u_input.d >> (~(var_0.c.x >> (var_1.c.x % 32u)) % 32u)));
    var var_3 = func_1(!any(!(!vec2<bool>(true, var_2.b))), vec3<i32>(-min(-2147483647i & u_input.d, 18045i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c.xxx, -vec3<i32>(u_input.c.x, 0i, global0[_wgslsmith_index_u32(49903u, 1u)])), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 1u)]), u_input.c.zz)), _wgslsmith_dot_vec4_i32(u_input.c, -vec4<i32>(-1i, 3389i, -4554i, u_input.b))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1759f, -1113f) * var_3.a.a.x)))));
}

