struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = ~(~_wgslsmith_sub_u32(max(0u, u_input.a), u_input.a << (u_input.a % 32u))) >= (~firstLeadingBit(min(u_input.a, u_input.a)) | _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a | 4294967295u, u_input.a), ~abs(u_input.a)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(351f)), 1629f)), 649f, false)), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(77176u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 48863u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), ~vec4<u32>(30152u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ abs(vec4<u32>(4294967295u, 49330u, 0u, 8141u))));
    global0 = any(select(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))));
    let var_1 = var_0;
    let var_2 = u_input.b.x;
    return u_input.b.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<i32>) -> vec4<bool> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-770f + 501f), -511f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.x, -1000f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2942f)))))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(arg_1.x, 280f)))), _wgslsmith_f_op_f32(arg_1.x * 634f), 17355i != func_3()));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-691f, 2002f))), vec4<u32>(arg_0.x, 23651u, ~(~arg_0.x), max(min(u_input.a | 0u, ~5988u), u_input.a & abs(arg_0.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_1);
    global0 = !any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), true), vec3<bool>(true, true, true)));
    let var_2 = var_0;
    return vec4<bool>(!(any(vec4<bool>(true, true, true, true)) && !any(vec3<bool>(false, true, false))), false, !all(vec2<bool>(true, true)), false);
}

fn func_1() -> u32 {
    let var_0 = any(select(vec4<bool>(true, true, true, true), !func_2(~vec4<u32>(u_input.a, u_input.a, 0u, 77671u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-957f, 2237f, -936f, 366f)), u_input.a, select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(-37769i, u_input.b.x, -1i, 5830i), vec4<bool>(false, false, true, false))), false));
    global0 = all(select(func_2(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, -149f, 1384f, 518f))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(100579u, 26424u), 1u), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 30041i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b.x, 6256i, u_input.b.x), vec4<i32>(21224i, u_input.b.x, -1i, u_input.b.x)))).yzw, select(!(!vec3<bool>(var_0, var_0, false)), !(!vec3<bool>(var_0, true, false)), reverseBits(u_input.b.x) > _wgslsmith_div_i32(-1i, u_input.b.x)), !var_0));
    let var_1 = Struct_1(1060f, ~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(18837u, 0u, u_input.a, 6483u), vec4<u32>(14892u, 0u, u_input.a, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 79926u, u_input.a))));
    let var_2 = firstTrailingBit(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a ^ 8704u, var_1.b.x), max(~var_1.b.x, var_1.b.x)));
    var var_3 = Struct_1(1170f, vec4<u32>(select(var_1.b.x, 0u, var_1.a < _wgslsmith_f_op_f32(trunc(1000f))), var_2, 15604u, _wgslsmith_div_u32(4294967295u, (var_2 & var_1.b.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2), var_1.b.zx))));
    return abs(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !any(vec3<bool>(-1i > firstLeadingBit(u_input.b.x), true, func_1() == _wgslsmith_add_u32(1u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(1i, ~u_input.b.x), _wgslsmith_mod_i32(-u_input.b.x << (~u_input.a % 32u), -1i)), reverseBits(~vec3<u32>(0u ^ u_input.a, u_input.a >> (29758u % 32u), u_input.a)), 1002f);
}

