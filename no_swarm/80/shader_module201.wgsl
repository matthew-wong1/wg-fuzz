struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.a.x)))) * 411f)))));
    let var_1 = vec4<u32>(~1u, 4294967295u, ~(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 38448u), ~4294967295u) & 19849u), _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.d.x))) ^ ~u_input.d, vec4<u32>(1u, u_input.d.x, select(52530u >> (u_input.a.x % 32u), ~1u, true), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 34928u), u_input.d.yyw))));
    var var_2 = u_input.c;
    let var_3 = abs(-2147483647i);
    var_0 = -165f;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(countOneBits(-44683i), u_input.b, 0i, 53083i), u_input.c), firstLeadingBit(reverseBits(reverseBits(vec4<i32>(30462i, -1i, var_2.x, u_input.b)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = arg_2;
    global0 = !vec2<bool>(any(select(!vec4<bool>(false, true, global0.x, false), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, global0.x, true, true)), !vec4<bool>(global0.x, true, global0.x, false))), global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.yzz - vec3<f32>(-1807f, _wgslsmith_f_op_f32(-2535f * -2198f), _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wzz - _wgslsmith_f_op_vec3_f32(-arg_1.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(-1000f, -200f, arg_0.x)))) - vec3<f32>(248f, _wgslsmith_f_op_f32(-254f + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_3 = func_3(arg_1, var_1, var_2);
    return global0.x;
}

fn func_1(arg_0: vec4<f32>) -> vec3<i32> {
    let var_0 = any(select(vec4<bool>(false, true, !global0.x, true), vec4<bool>(global0.x, func_2(vec4<f32>(520f, 842f, 272f, arg_0.x), Struct_1(vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), vec2<i32>(u_input.c.x, global1.x)), u_input.b != global1.x, all(vec3<bool>(global0.x, true, false))), vec4<bool>(true, true, !global0.x, 323f == arg_0.x))) & (~u_input.d.x == 0u);
    return global1.zww;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_1 {
    global1 = vec4<i32>(1i, -27115i & min(global1.x, -(i32(-1i) * -17157i)), 20591i, global1.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xwy) - _wgslsmith_f_op_vec3_f32(-arg_1.zyz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 641f, 284f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-841f, 688f, -751f) + arg_1.xxz)), select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, false), vec3<bool>(true, true, true)))))));
    var var_1 = true;
    var var_2 = _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.d.x, ~u_input.a.x) << (vec4<u32>(u_input.d.x, 1u << (u_input.d.x % 32u), 22123u, _wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(reverseBits(firstTrailingBit(~vec4<u32>(46667u, 1u, 4294967295u, 4294967295u))), u_input.d));
    var var_3 = _wgslsmith_mod_i32(arg_0.x, i32(-1i) * -23695i);
    return Struct_1(vec3<f32>(arg_1.x, -709f, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~func_1(vec4<f32>(682f, 1f, _wgslsmith_f_op_f32(min(-253f, 1667f)), _wgslsmith_f_op_f32(ceil(429f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, 413f, -1294f, -159f)), vec4<f32>(-1804f, 506f, 133f, -518f))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1216f, -871f, -220f, 987f), vec4<f32>(-209f, -831f, 559f, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1630f, -683f, 1118f, 143f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, 442f, -1450f, 883f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, -310f, 721f, 1511f) * vec4<f32>(-940f, -329f, 667f, -545f))), vec4<bool>(!global0.x, true, any(vec3<bool>(global0.x, false, global0.x)), select(true, global0.x, true))))));
    let var_1 = 1620f <= var_0.a.x;
    var var_2 = vec3<u32>(0u | u_input.a.x, u_input.a.x, reverseBits(~u_input.d.x));
    let var_3 = select(!(!(!select(vec4<bool>(var_1, global0.x, true, false), vec4<bool>(false, true, true, true), false))), vec4<bool>(any(!vec4<bool>(var_1, true, true, var_1)), !global0.x, ~u_input.c.x > (u_input.b << (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -678f) * _wgslsmith_f_op_f32(f32(-1f) * -649f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) - -1542f)), vec4<bool>(var_1, true, false, global0.x));
    var var_4 = func_4(~u_input.c.wyx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1466f * var_0.a.x), 374f))), 1675f, _wgslsmith_div_f32(var_0.a.x, func_4(-vec3<i32>(1i, u_input.c.x, -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1330f, var_0.a.x, 2125f, var_0.a.x))).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-903f * var_0.a.x)))));
    var_4 = func_4(-vec3<i32>(global1.x, ~(-1i), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, -1676f, 1078f, -267f))))))));
    var var_5 = func_4(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i << (0u % 32u), func_1(vec4<f32>(var_4.a.x, var_4.a.x, var_4.a.x, 514f)).x), ~vec3<i32>(global1.x, 1i, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.a.x, 1157f, -137f, -916f))), vec4<f32>(-1275f, var_0.a.x, -1359f, var_4.a.x), var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, 711f, -1000f, 1542f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-2147483647i, -24438i, _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, min(16553i, global1.x)), global1.x)), u_input.d, vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 12526u, u_input.d.x), u_input.d.xwz), vec3<u32>(u_input.a.x, u_input.a.x, var_2.x)), _wgslsmith_div_u32(941u, var_2.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.x, var_2.x) ^ var_2.x, _wgslsmith_mod_u32(35114u << (var_2.x % 32u), 1u)), u_input.d.x));
}

