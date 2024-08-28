struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 27> = array<f32, 27>(695f, 1279f, -503f, -1048f, -955f, 1552f, -118f, -459f, -1851f, -954f, 627f, -2053f, 170f, -902f, -1818f, 399f, 1000f, 765f, 817f, -2996f, 586f, -400f, -1586f, -2266f, 298f, 689f, -1301f);

var<private> global2: array<i32, 20> = array<i32, 20>(-14045i, 1i, i32(-2147483648), 43268i, 12371i, 0i, 55072i, -1i, -32872i, 0i, 40047i, 3899i, 1i, -456i, i32(-2147483648), i32(-2147483648), 2147483647i, i32(-2147483648), i32(-2147483648), 1i);

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec4<bool> {
    global1 = array<f32, 27>();
    global3 = array<Struct_1, 5>();
    var var_0 = Struct_1(-1070f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(711f, -744f, global1[_wgslsmith_index_u32(6169u, 27u)], -1000f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -1711f, -593f, -1000f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], 566f, global1[_wgslsmith_index_u32(47380u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-302f, -1107f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]) * vec4<f32>(global1[_wgslsmith_index_u32(44813u, 27u)], global1[_wgslsmith_index_u32(10670u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], 1109f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], 2919f, 2137f, 1525f) - vec4<f32>(-1495f, 785f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1000f)))))), countOneBits(_wgslsmith_add_vec3_i32(~(vec3<i32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) & vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1i)), abs(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(0u, 20u)], 27218i, 42659i))))), 143f);
    global0 = var_0.a;
    global3 = array<Struct_1, 5>();
    return vec4<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, false))), all(vec2<bool>(true, true)));
}

fn func_2() -> u32 {
    let var_0 = -16929i;
    var var_1 = _wgslsmith_mult_u32(~(u_input.a.x | 19152u), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xzw, u_input.a.wwz), _wgslsmith_mult_vec3_u32(u_input.a.zwy, u_input.a.yzy))), u_input.a.x));
    return ~_wgslsmith_add_u32(0u, u_input.a.x);
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(1u ^ (u_input.a.x << (u_input.a.x % 32u))), func_2()), 5u)];
    global0 = _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(sign(var_0.a))));
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(~(~select(u_input.a.x, 49500u, arg_0)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), u_input.a.x))), 5u)];
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 5u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1193f)), _wgslsmith_f_op_f32(var_2.b.x * -693f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(754f, _wgslsmith_div_f32(var_2.a, -394f)))))) * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(30113u, 27u)])));
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_0.c.x, i32(-1i) * -var_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, -1i), vec2<i32>(0i, var_1.c.x))), -_wgslsmith_clamp_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, 0i, var_0.c.x, global2[_wgslsmith_index_u32(1u, 20u)]), vec4<i32>(44114i, -2147483647i, global2[_wgslsmith_index_u32(0u, 20u)], var_1.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.c.x, var_1.c.x, var_2.c.x, var_0.c.x), vec4<i32>(var_2.c.x, -47967i, var_1.c.x, 2147483647i)), false), vec4<i32>(-global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -var_2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(26238u, 20u)], var_2.c.x, var_0.c.x), vec4<i32>(22068i, 1i, var_2.c.x, 2147483647i)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 20u)]), ~(~vec4<i32>(1i, -46968i, 1i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 27u)]), vec4<f32>(global1[_wgslsmith_index_u32(29982u & _wgslsmith_mod_u32(u_input.a.x | u_input.a.x, _wgslsmith_mult_u32(4521u, 0u)), 27u)], -175f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 27u)]), 2039f), vec3<i32>(-11963i, -1i, global2[_wgslsmith_index_u32(~0u, 20u)]), global1[_wgslsmith_index_u32(1u, 27u)]);
    let var_1 = var_0;
    var var_2 = func_1();
    var var_3 = vec2<bool>(!var_2.x, global2[_wgslsmith_index_u32(func_2(), 20u)] >= 2147483647i);
    let var_4 = ~vec2<i32>(-(~0i), _wgslsmith_add_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 20u)], 0i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_0.c.x, var_0.c.x, global2[_wgslsmith_index_u32(1u, 20u)]), vec4<i32>(var_1.c.x, 1i, -15845i, -1i)))));
    var var_5 = var_0.c.x;
    let var_6 = var_0;
    global0 = _wgslsmith_f_op_f32(sign(var_6.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, vec3<i32>(func_3(!var_3.x) & _wgslsmith_add_i32(var_6.c.x, ~var_0.c.x), min(var_6.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_6.c.x, var_6.c.x, -2147483647i), _wgslsmith_clamp_i32(-3847i, var_6.c.x, var_1.c.x))), -(~global2[_wgslsmith_index_u32(47002u, 20u)] >> (~u_input.a.x % 32u))), _wgslsmith_add_i32(~_wgslsmith_div_i32(-1i, ~var_1.c.x), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.c.zz, var_4), var_1.c.x, var_4.x))), u_input.a.x, 1u);
}

