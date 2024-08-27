struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(770f, -1939f, 621f, 405f, 483f, 485f, -1042f, 2354f, 186f, 876f, 1291f, 251f, -401f, -155f, 813f, -314f, -308f, 1004f, 544f, -790f, 864f, -1183f, -253f, 1149f, -858f, 400f, 179f);

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, -736f, -999f, arg_0.a.x) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], arg_0.a.x, 1723f, arg_0.a.x)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.yyw)));
    global0 = array<f32, 27>();
    return global1[_wgslsmith_index_u32(u_input.d, 31u)];
}

fn func_1() -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.d), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(~4294967295u, ~86879u), _wgslsmith_div_u32(u_input.c.x, u_input.d) & ~21352u)), 31u)];
    var_0 = func_2(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.a.yy)))));
    let var_1 = global1[_wgslsmith_index_u32(abs(u_input.d), 31u)];
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2254f, -1703f) - var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)))))), _wgslsmith_f_op_vec2_f32(floor(var_1.a.xz)), 1u >= u_input.c.x));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * -1493f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1475f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-662f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(reverseBits(3748u), 27u)]))))));
    var var_2 = countOneBits(vec4<u32>(select(_wgslsmith_clamp_u32(7726u, ~4294967295u, u_input.d), 1u, all(!vec3<bool>(true, arg_0.x, true))), 7853u, u_input.d, abs(~firstLeadingBit(22412u))));
    var var_3 = func_2(arg_2);
    let var_4 = !any(select(!select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_0.x, false, false, false)), select(select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, false), vec4<bool>(false, false, arg_0.x, arg_0.x))), arg_0.x));
    return all(vec2<bool>(false, var_4));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mod_vec2_i32(u_input.b.zy, -_wgslsmith_sub_vec2_i32(vec2<i32>(44656i, u_input.b.x), _wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(-2147483647i, 0i)))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(2147483647i), -u_input.e), -vec2<i32>(u_input.a, u_input.e), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(20967i, 0i))), countOneBits(~(~vec2<i32>(-37928i, u_input.a)))), func_3(vec2<bool>(!(global0[_wgslsmith_index_u32(u_input.d, 27u)] <= global0[_wgslsmith_index_u32(30809u, 27u)]), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 27u)])), -737f), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(628f, 1181f, 236f, global0[_wgslsmith_index_u32(u_input.c.x, 27u)]) + vec4<f32>(1207f, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 511f, -291f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, global0[_wgslsmith_index_u32(16326u, 27u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])) - _wgslsmith_f_op_vec2_f32(func_1()))), _wgslsmith_f_op_f32(step(-106f, 912f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(552f, global0[_wgslsmith_index_u32(u_input.c.x, 27u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(54267u, 27u)] - -2057f))), -824f, -1487f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(508f + -1177f)) - _wgslsmith_f_op_f32(683f * -1493f))));
    var var_2 = select(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, true))), select(!vec4<bool>(false, any(vec3<bool>(false, false, true)), false, 54431i == u_input.b.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)) && false), true);
    var var_3 = i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b);
    var var_4 = u_input.c.x;
    var_2 = !vec4<bool>(false, var_2.x, true, any(select(select(var_2.xw, vec2<bool>(var_2.x, var_2.x), var_2.x), var_2.yw, var_2.wz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_1.zz)), abs(1i));
}

