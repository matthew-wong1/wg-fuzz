struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<u32, 32>;

var<private> global3: vec2<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = -396f;
    let var_1 = false;
    global0 = array<Struct_1, 28>();
    let var_2 = u_input.b;
    global3 = vec2<bool>(true, all(vec3<bool>(!(!var_1), all(!vec3<bool>(false, var_1, false)), true)));
    return _wgslsmith_f_op_f32(-1335f * 727f);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-355f)) - _wgslsmith_f_op_f32(abs(-201f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) * _wgslsmith_f_op_f32(step(-1572f, -1288f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1519f, 1580f)) + _wgslsmith_f_op_f32(trunc(428f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -217f))), _wgslsmith_div_f32(-1610f, -733f)));
    global3 = select(vec2<bool>(global3.x, true), vec2<bool>(any(!select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x))), !global3.x), vec2<bool>(false, global3.x));
    global1 = array<Struct_1, 10>();
    var var_1 = vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2499f, 1070f)), 622f, true || select(global3.x, false, true)))), -1034f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-26530i, 2147483647i), vec2<i32>(-1i, 7810i)), global2[_wgslsmith_index_u32(53655u, 32u)]), global0[_wgslsmith_index_u32(u_input.a, 28u)])) * var_0));
    let var_2 = var_1.zyz;
    return 50088u;
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 28>();
    global2 = array<u32, 32>();
    global2 = array<u32, 32>();
    var var_0 = Struct_1(arg_0.a | arg_0.a, ~4294967295u);
    global0 = array<Struct_1, 28>();
    return any(select(!vec2<bool>(all(vec2<bool>(false, false)), true), !vec2<bool>(global3.x == global3.x, true), vec2<bool>(!all(vec3<bool>(global3.x, false, global3.x)), !select(global3.x, global3.x, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(10475u, 0u, global2[_wgslsmith_index_u32(69931u, 32u)]), firstLeadingBit(100266u)) & 73736u, func_1());
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~67432u, 32u)], _wgslsmith_clamp_u32(4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 32u)]) >> ((u_input.b.x >> (global2[_wgslsmith_index_u32(4294967295u, 32u)] % 32u)) % 32u)), 121992u), 28u)];
    let var_2 = func_3(global0[_wgslsmith_index_u32(var_1.b << (var_1.b % 32u), 28u)]) & (-337f < _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(174f, 525f, global3.x))))));
    let var_3 = !select(!select(!vec2<bool>(false, var_2), vec2<bool>(false, var_2), vec2<bool>(false, false)), select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true), vec2<bool>(var_2, false)), !select(vec2<bool>(false, true), vec2<bool>(global3.x, false), vec2<bool>(false, global3.x)), vec2<bool>(select(global3.x, true, false), true)), !select(select(vec2<bool>(var_2, false), vec2<bool>(false, false), vec2<bool>(global3.x, var_2)), select(vec2<bool>(var_2, false), vec2<bool>(false, var_2), global3.x), true));
    var_0 = _wgslsmith_mod_u32(~(~var_1.b), _wgslsmith_mult_u32(~(~_wgslsmith_add_u32(var_1.b, u_input.b.x)), 1u));
    global0 = array<Struct_1, 28>();
    var var_4 = Struct_1(~42131i, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(var_4.a, 14533i, 927i), ~1943i, var_4.a), _wgslsmith_mult_vec3_i32(vec3<i32>(~1i, ~1i, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(var_4.a, 56601i, var_4.a), -vec3<i32>(1i, 2147483647i, 0i)))));
}

