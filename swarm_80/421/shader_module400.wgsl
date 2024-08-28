struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) + _wgslsmith_f_op_f32(trunc(-173f)))))), ~firstTrailingBit(firstLeadingBit(vec2<u32>(42463u, 45600u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_1 = _wgslsmith_div_i32(-u_input.a.x, -2147483647i) | firstTrailingBit(~u_input.a.x >> (_wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, var_0.b.x) % 32u));
    var var_2 = Struct_1(var_0.c.x, vec2<u32>(~var_0.b.x, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(-166f)), _wgslsmith_div_f32(-573f, -1341f), var_0.a))) + _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(3344f, var_0.c.x, 226f)))))));
    let var_3 = vec4<bool>(all(vec3<bool>(arg_0, false, all(vec3<bool>(arg_0, false, false)))), arg_0, false, !arg_0);
    var var_4 = u_input.a.x & -2147483647i;
    return var_0.b.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(func_3(false), _wgslsmith_add_u32(_wgslsmith_mult_u32(reverseBits(34917u), _wgslsmith_sub_u32(1u, 0u)), firstTrailingBit(23630u))) | abs(_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, _wgslsmith_add_u32(81022u, 1u)), ~(~vec2<u32>(5071u, 4294967295u))));
    var_0 = ~_wgslsmith_add_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(31520u, 0u), vec2<u32>(4294967295u, var_0.x))), abs(vec2<u32>(var_0.x, var_0.x)));
    global1 = arg_0.x;
    let var_1 = ~countOneBits(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(var_0.x, var_0.x)), ~(~vec2<u32>(var_0.x, 8678u)), max(vec2<u32>(var_0.x, var_0.x) | vec2<u32>(4294967295u, var_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 10063u)))));
    var var_2 = !(!arg_0.yz);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(208f - 646f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-221f * 317f)))) * 1495f), abs(vec2<u32>(~var_1.x, 67368u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = -1i;
    let var_1 = -3170i;
    global1 = ~var_1 > firstTrailingBit(_wgslsmith_mod_i32(var_1, firstLeadingBit(reverseBits(u_input.a.x))));
    var var_2 = func_2(vec3<bool>(select(_wgslsmith_add_u32(1u, arg_1.b.x), _wgslsmith_add_u32(arg_1.b.x, 21559u), false) >= arg_1.b.x, false, arg_0));
    let var_3 = vec3<bool>(true, arg_0, !(arg_2 && !(!arg_2)));
    return var_2.b << (vec2<u32>(min(arg_1.b.x, 22748u & var_2.b.x) ^ arg_1.b.x, 0u) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1854f * -1071f)))))), firstLeadingBit(func_1(any(vec2<bool>(true, true)), Struct_1(-212f, min(vec2<u32>(4294967295u, 20645u), vec2<u32>(0u, 1u)), vec3<f32>(-420f, 314f, 200f)), false, vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(398f, -1282f, 1052f) - vec3<f32>(1f, 1f, 1f)) - vec3<f32>(_wgslsmith_f_op_f32(select(264f, -1048f, false)), _wgslsmith_f_op_f32(920f + -572f), _wgslsmith_f_op_f32(f32(-1f) * -1585f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2322f, _wgslsmith_f_op_f32(select(2216f, 2084f, true)), _wgslsmith_f_op_f32(select(634f, -1031f, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1231f, -1202f, -309f))))))));
    global0 = array<vec4<u32>, 15>();
    let var_1 = false;
    global1 = _wgslsmith_div_f32(-461f, var_0.a) > _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-718f, 380f)));
    global0 = array<vec4<u32>, 15>();
    let var_2 = func_2(!vec3<bool>(var_1 | true, any(select(vec4<bool>(false, true, true, var_1), vec4<bool>(var_1, true, var_1, false), vec4<bool>(var_1, false, false, var_1))), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 81254u) != var_0.b.x));
    global1 = ~reverseBits(u_input.a.x) == 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x >> (var_2.b.x % 32u), u_input.a.x, -2147483647i, ~26098i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -(30239i | u_input.a.x), 23023i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(select(-33420i, u_input.a.x, false), 0i, abs(2147483647i), u_input.a.x ^ u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(62438i, u_input.a.x, -1i, -1i) >> (global0[_wgslsmith_index_u32(1u, 15u)] % vec4<u32>(32u)), min(vec4<i32>(u_input.a.x, -2147483647i, 58793i, -70350i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c + var_2.c) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1381f) * -801f))), var_2.b.x);
}

