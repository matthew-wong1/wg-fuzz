struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 23> = array<f32, 23>(536f, 633f, 1000f, -1914f, -192f, -815f, -1099f, 153f, -1167f, -352f, 679f, -929f, -1261f, 1254f, -498f, 1086f, -308f, 218f, -1456f, -1435f, 829f, -1736f, 1618f);

var<private> global2: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = ~(~(~(~min(u_input.a, vec3<u32>(25026u, u_input.a.x, u_input.a.x)))));
    var var_1 = vec2<bool>(select(!(_wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(u_input.a.x, u_input.a.x)) <= ~87818u), any(vec3<bool>(333f < global1[_wgslsmith_index_u32(57495u, 23u)], true, false)), true), !(true | any(vec3<bool>(true, false, true))));
    var var_2 = !vec2<bool>(all(!vec4<bool>(var_1.x, false, true, false)), !var_1.x);
    global1 = array<f32, 23>();
    var_1 = !(!select(vec2<bool>(!var_1.x, true), vec2<bool>(false, u_input.b > 2598i), select(select(vec2<bool>(false, true), vec2<bool>(false, var_2.x), vec2<bool>(var_1.x, true)), !vec2<bool>(var_2.x, var_1.x), var_1.x)));
    return arg_0;
}

fn func_2() -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), -func_3(~(-1i))), -59533i, _wgslsmith_mod_i32(global0.a, global0.a));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(global0.b, 785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(163f))) + _wgslsmith_div_f32(211f, -271f)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 911f) - 557f))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(49395u, 23u)], global1[_wgslsmith_index_u32(3657u, 23u)]), vec2<f32>(1000f, 1454f))))), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 23u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -387f))))), vec3<bool>(select(true, false, any(vec3<bool>(true, true, true))) && true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, true)))));
    var var_2 = Struct_2(_wgslsmith_mod_i32(0i, ~1i), global0.b);
    global0 = Struct_2(2147483647i, global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(20517u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) << ((u_input.a.x & u_input.a.x) % 32u), reverseBits(min(u_input.a.x, u_input.a.x))), ~(~u_input.a.x) & 1u), 23u)]);
    let var_3 = var_1.c;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.c.x))));
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(-310f, _wgslsmith_f_op_f32(func_2()), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true))))), _wgslsmith_f_op_f32(f32(-1f) * -141f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(138f, _wgslsmith_f_op_f32(trunc(152f)), _wgslsmith_f_op_f32(f32(-1f) * -822f), var_0.x) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 443f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 1224f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-857f, var_0.x, 945f, global1[_wgslsmith_index_u32(4294967295u, 23u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 348f, var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))))), vec4<f32>(128f, global0.b, -981f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - 475f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)] + var_0.x))), vec4<bool>(all(vec2<bool>(true, true)) && (1000f == var_0.x), true, true, true))), !select(any(vec3<bool>(true, false, true)), true, true) & !(func_3(u_input.c) >= -u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-161f, 873f))))), vec3<bool>(u_input.a.x < u_input.a.x, !any(vec4<bool>(false, false, false, false)), !(!all(vec2<bool>(true, true)))));
    var var_2 = ~1u;
    var var_3 = select(!var_1.d.yy, !select(var_1.d.yz, vec2<bool>(all(vec4<bool>(false, true, var_1.b, var_1.b)), true), var_1.d.x), -324f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1363f, _wgslsmith_f_op_f32(281f + var_0.x))));
    var var_4 = -19820i;
    return select(vec4<bool>(any(!vec4<bool>(false, false, var_3.x, false)), true, _wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) > u_input.a.x, false), !vec4<bool>(true, any(select(var_1.d, var_1.d, false)), false, all(vec3<bool>(var_1.b, true, false))), !vec4<bool>(any(vec3<bool>(true, false, true)), any(select(vec3<bool>(var_1.d.x, true, true), var_1.d, true)), -u_input.b > global0.a, true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_2 {
    global0 = Struct_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1488f, global0.b))))));
    global0 = Struct_2(~_wgslsmith_dot_vec3_i32(~(vec3<i32>(2147483647i, global0.a, u_input.b) ^ vec3<i32>(4023i, 1i, global0.a)), vec3<i32>(abs(8853i), global0.a, _wgslsmith_mult_i32(u_input.b, -25303i))), _wgslsmith_f_op_f32(select(-792f, 1000f, true | (select(false, false, arg_1.x) | arg_1.x))));
    global1 = array<f32, 23>();
    let var_0 = countOneBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(global0.a, -u_input.b), abs(~vec2<i32>(-195i, global0.a))));
    global2 = _wgslsmith_mod_u32(1u, u_input.a.x);
    return Struct_2(_wgslsmith_add_i32(global0.a, -_wgslsmith_add_i32(~u_input.b, -6500i & u_input.c)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~vec4<u32>(1u, u_input.a.x, min(~1u, 1u), 4294967295u), func_1());
    global2 = ~u_input.a.x;
    global1 = array<f32, 23>();
    var var_1 = abs(~u_input.b);
    let var_2 = func_4(~(~vec4<u32>(1u, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), ~81027u)), vec4<bool>(u_input.a.x != ~u_input.a.x, ~var_0.a > 40581i, (_wgslsmith_f_op_f32(sign(-1534f)) <= _wgslsmith_f_op_f32(-718f + -537f)) | ((0u >> (u_input.a.x % 32u)) <= u_input.a.x), true));
    var var_3 = u_input.a.x;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(430f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))))), all(vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), true, select(false, true, select(true, false, false)), false))));
    let var_5 = (var_2.a | var_0.a) << (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(-348f + var_0.b)), -1631f, func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 48313u, 26416u), vec4<u32>(24337u, u_input.a.x, 10148u, 47521u)), vec4<bool>(true, false, true, true)).b)), var_0.a << ((reverseBits(u_input.a.x ^ 31035u) & (~u_input.a.x << (~u_input.a.x % 32u))) % 32u), func_3(select(var_0.a, _wgslsmith_mult_i32(1i, 2147483647i), false)), abs(~u_input.a));
}

