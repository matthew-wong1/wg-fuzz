struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(0u, 51906u, 32236u, 0u), false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~global0.a;
    var var_1 = -908f;
    let var_2 = !(!vec2<bool>(any(!vec3<bool>(global0.b, global0.b, global0.b)), any(select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, false, false)))));
    var var_3 = abs(i32(-1i) * -23199i);
    var var_4 = Struct_2(_wgslsmith_mult_i32(reverseBits(-1i), 1i), var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(493f * 384f) - _wgslsmith_f_op_f32(f32(-1f) * -294f))), -197f, all(!vec3<bool>(global0.b, false, var_2.x)))), firstTrailingBit(~1u));
    return !(!vec2<bool>(!global0.b, true == (var_4.b != global0.b)));
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    global0 = Struct_3(vec4<u32>(~_wgslsmith_mod_u32(arg_0.a.x, 15990u) & u_input.a, 23315u, _wgslsmith_clamp_u32(u_input.a, abs(1u), ~(~arg_0.a.x)), global0.a.x), global0.b);
    let var_0 = -45741i;
    global0 = arg_0;
    global0 = Struct_3(~_wgslsmith_div_vec4_u32(global0.a, global0.a), true);
    var var_1 = ~vec4<i32>(-var_0, -var_0, var_0, -1i);
    return !(!vec2<bool>(true, all(vec4<bool>(global0.b, arg_0.b, false, true))));
}

fn func_3() -> vec2<bool> {
    var var_0 = 1u;
    var var_1 = 844f;
    var var_2 = Struct_2(select(-28500i, 1i, false) ^ (abs(_wgslsmith_add_i32(-41279i, -1i)) ^ reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-37307i, 39473i, -36512i, -2147483647i), vec4<i32>(0i, -39404i, -2147483647i, -2147483647i)))), func_1().x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-522f + _wgslsmith_f_op_f32(303f * 1000f)))))), firstLeadingBit(~(~(u_input.a | global0.a.x))));
    let var_3 = true;
    var_2 = Struct_2(var_2.a, all(func_2(Struct_3(global0.a >> (global0.a % vec4<u32>(32u)), any(vec3<bool>(false, false, true))))), var_2.c, global0.a.x);
    return select(select(!select(!vec2<bool>(false, var_2.b), func_2(Struct_3(vec4<u32>(var_2.d, 1u, 4787u, u_input.a), global0.b)), vec2<bool>(var_2.b, true)), vec2<bool>(any(select(vec4<bool>(global0.b, false, false, true), vec4<bool>(var_3, global0.b, var_3, false), vec4<bool>(global0.b, var_3, true, var_3))), _wgslsmith_sub_i32(var_2.a, var_2.a) > -46231i), func_2(Struct_3(vec4<u32>(60214u, global0.a.x, var_2.d, 1387u), var_2.b))), !(!vec2<bool>(all(vec3<bool>(var_2.b, false, global0.b)), global0.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(select(vec2<bool>(true, true), func_1(), !vec2<bool>(false, global0.b)), select(func_2(Struct_3(global0.a, false)), func_3(), false), vec2<bool>(global0.b, !global0.b)), select(vec4<bool>(false, all(select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(global0.b, false, false, false), vec4<bool>(false, false, false, true))), true, global0.b || any(vec4<bool>(global0.b, global0.b, true, true))), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, global0.b, global0.b == global0.b), select(vec4<bool>(true, global0.b, true, false), !vec4<bool>(false, true, global0.b, true), true), true), true), vec4<bool>(!global0.b, func_3().x, select(any(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(global0.b, global0.b, global0.b), global0.b)), false, any(vec4<bool>(global0.b, false, true, global0.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, -1i, 2147483647i)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 45590i), ~vec3<i32>(-39861i, 28522i, -1i))));
    global0 = Struct_3(global0.a, global0.b);
    var var_1 = global0.a;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(187f, -892f, 1000f) - vec3<f32>(775f, -691f, 410f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1558f, 1000f, -913f))), select(var_0.b.wxw, vec3<bool>(var_0.c.x, true, var_0.a.x), !var_0.c.x))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-559f, 266f))), _wgslsmith_f_op_f32(sign(908f)), _wgslsmith_f_op_f32(floor(667f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1207f, 189f)) + _wgslsmith_f_op_f32(111f * 1034f))), -293f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1344f), _wgslsmith_f_op_f32(select(-237f, 1000f, global0.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(382f + 1403f))))));
    global0 = Struct_3(global0.a, ~(~0u) != global0.a.x);
    let var_3 = false;
    global0 = Struct_3(firstLeadingBit(global0.a), var_0.b.x);
    let var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(abs(-29102i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-25007i, 1i), vec2<i32>(-1i, 21790i)))) | firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-17723i, 18600i, 0i), ~vec3<i32>(-2147483647i, 29326i, 22037i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2147483647i, 1i, 2147483647i, 1i)), _wgslsmith_mod_i32(1i, -1i) >> (_wgslsmith_div_u32(var_1.x, global0.a.x) % 32u), -2147483647i) | vec3<i32>(1i, 1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.x, var_4.x, -2147483647i, var_4.x), vec4<i32>(var_4.x, var_4.x, var_4.x, 2147483647i)), vec4<i32>(-24174i, var_4.x, -1i, -2147483647i)), _wgslsmith_div_i32(1i, var_4.x) >> (~u_input.a % 32u), _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(var_4.x, var_4.x, var_4.x)), _wgslsmith_sub_i32(~var_4.x, var_4.x | var_4.x))), _wgslsmith_f_op_vec2_f32(var_2.xy + vec2<f32>(_wgslsmith_f_op_f32(select(-416f, _wgslsmith_f_op_f32(min(1000f, var_2.x)), !var_3)), _wgslsmith_f_op_f32(f32(-1f) * -113f))), min(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(0u, 5182u, u_input.a, 3768u)), global0.a ^ global0.a), max(~(~vec4<u32>(u_input.a, 4294967295u, 121554u, u_input.a)), _wgslsmith_sub_vec4_u32(global0.a | global0.a, global0.a))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f - -1643f) + var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + 427f), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(511f, var_2.x)))));
}

