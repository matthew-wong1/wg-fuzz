struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1658f, 1429f, 295f, -377f), 16311u, vec2<u32>(0u, 0u), vec2<i32>(2147483647i, -5667i));

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, false, true, false, false, true, true, false, true, false, false, true, false, true);

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = -1i;
    let var_1 = 1i;
    global2 = i32(-1i) * -firstTrailingBit(49078i);
    global2 = -global0.d.x;
    let var_2 = global0.c.x;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(2060f)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(abs(-1318f)), _wgslsmith_f_op_f32(-global0.a.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(global0.a))))));
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = global0.b;
    global2 = 10349i;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -175f, arg_1, -363f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + 1648f), _wgslsmith_f_op_f32(-global0.a.x), -1018f))))));
    let var_2 = ~(~global0.d.x);
    var var_3 = vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), ~u_input.b.yzy), 1u >> (u_input.b.x % 32u), global1[_wgslsmith_index_u32(19144u, 15u)]), 15u)], global0.a.x != -906f, false);
    return _wgslsmith_f_op_f32(-global0.a.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = (vec4<i32>(max(683i, global0.d.x), -20700i, -_wgslsmith_div_i32(47006i, global0.d.x), global0.d.x << (~u_input.c % 32u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(71724u, 5469u, u_input.c, abs(global0.c.x)), _wgslsmith_add_vec4_u32(u_input.a, u_input.a) >> (~vec4<u32>(0u, 73619u, u_input.b.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<i32>(2147483647i, -global0.d.x | -min(17952i, 2147483647i), 2147483647i, abs(20245i & global0.d.x));
    let var_1 = Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))), -300f), global0.c.x, vec2<u32>(_wgslsmith_clamp_u32(u_input.c >> (u_input.b.x % 32u), 1u, 0u) ^ ~select(1u, u_input.a.x, global1[_wgslsmith_index_u32(83466u, 15u)]), 53962u), abs(abs(vec2<i32>(global0.d.x, _wgslsmith_sub_i32(1i, global0.d.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-arg_0)) * -305f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - var_1.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1943f)) * 319f), var_1.a.x)));
    var var_3 = var_0;
    global0 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(-118f * _wgslsmith_div_f32(global0.a.x, global0.a.x))));
    var var_1 = _wgslsmith_mod_i32(~reverseBits(global0.d.x), -2147483647i);
    global1 = array<bool, 15>();
    global2 = ~global0.d.x;
    global1 = array<bool, 15>();
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a.x, global0.a.x, var_0.a.a.x, -241f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, global0.a.x, var_0.a.a.x, 1404f) + vec4<f32>(var_0.a.a.x, -192f, global0.a.x, 333f)))))), (!global1[_wgslsmith_index_u32(0u, 15u)] | (true & all(vec2<bool>(global1[_wgslsmith_index_u32(87713u, 15u)], true)))) | any(select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), !vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 15u)], true), true)));
    global2 = 4779i;
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_2.a), false);
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(~vec3<u32>(global0.c.x, 0u, global0.c.x)) & ~vec3<u32>(53685u, 1u, u_input.a.x), vec3<u32>(~4294967295u, 36549u, ~abs(1u)), !vec3<bool>(true, !global1[_wgslsmith_index_u32(u_input.c, 15u)], false)), _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), _wgslsmith_mult_u32(abs(1u), 4294967295u)) >> (0u % 32u), select(global0.d.x, ~2147483647i, false), vec3<u32>(~4294967295u, firstTrailingBit(_wgslsmith_sub_u32(19583u, u_input.b.x) & global0.b), var_0.a.b));
}

