struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-1i, -24917i, -2088i, 0i, -34449i, 0i, 20771i, 82836i, 88850i, 1i, 0i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i, 34189i, i32(-2147483648), 32478i, 12916i, -9934i, i32(-2147483648), 1i, -74743i, 14086i, -34710i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> vec2<u32> {
    global0 = array<i32, 25>();
    let var_0 = vec3<f32>(390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(215f * 432f)))) - -498f), _wgslsmith_f_op_f32(f32(-1f) * -643f));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let var_1 = var_0.zz;
    return ~max(vec2<u32>(1u, 1u), abs(vec2<u32>(~4294967295u, 0u)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_2(Struct_1(-1166f), !(true || all(vec4<bool>(false, true, false, false))) || all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1060u, 25u)] == global0[_wgslsmith_index_u32(0u, 25u)])));
    var_0 = Struct_2(var_0.a, true);
    var var_1 = ~(~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31199u, 1u, 56566u), vec3<u32>(0u, 21798u, 4294967295u)), 81916u), min(~8020u, _wgslsmith_sub_u32(2351u, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 36094u, 4294967295u), vec4<u32>(40481u, 30994u, 57544u, 30241u)), vec4<u32>(43227u, 4294967295u, 0u, 1u)), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(3670u, 4294967295u, 36456u), vec3<u32>(4294967295u, 16913u, 1u)))));
    var var_2 = !var_0.b;
    let var_3 = -8237i;
    return _wgslsmith_div_f32(-448f, _wgslsmith_div_f32(var_0.a.a, var_0.a.a));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<u32> {
    var var_0 = vec4<u32>(60097u, _wgslsmith_clamp_u32(countOneBits(~_wgslsmith_mod_u32(14195u, 9525u)), 3008u, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(43329u, 4294967295u), vec2<u32>(51187u, 1u)))), 42047u, _wgslsmith_mod_u32(~(~55724u), ~1u));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - _wgslsmith_div_f32(arg_1, arg_0.a))), 3047f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f - _wgslsmith_f_op_f32(f32(-1f) * -1801f))))));
    var var_2 = arg_0;
    let var_3 = max(~1i, ~(i32(-1i) * -(global0[_wgslsmith_index_u32(var_0.x, 25u)] >> (var_0.x % 32u))));
    var var_4 = vec4<bool>(true, (arg_2 && true) | arg_2, true, arg_2);
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(var_0.x), 8093u & var_0.x, firstLeadingBit(_wgslsmith_sub_u32(var_0.x, var_0.x)), ~(~var_0.x)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(39655u, 35565u, var_0.x, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 4294967295u), vec4<u32>(1u, var_0.x, var_0.x, 0u))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(func_2(Struct_1(2421f), _wgslsmith_f_op_f32(f32(-1f) * -796f), false), vec4<u32>(arg_2 | 4294967295u, reverseBits(arg_2), func_1().x, 1u)), ~arg_2, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2, reverseBits(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 13354u), vec2<u32>(arg_2, 7030u)), vec2<u32>(arg_2, arg_2))));
    var var_1 = Struct_3(arg_2, vec2<i32>(global0[_wgslsmith_index_u32(max(1u, var_0.x >> (~var_0.x % 32u)), 25u)], -global0[_wgslsmith_index_u32(~arg_2 << (~0u % 32u), 25u)]));
    var_1 = Struct_3(~(39974u >> (select(var_1.a, arg_2 << (var_0.x % 32u), arg_0 < arg_0) % 32u)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b.x, arg_3), select(arg_1.xy, vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(62611u, 25u)]), vec2<bool>(true, false)), var_1.b ^ vec2<i32>(u_input.b, arg_3)) >> (_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(arg_2, var_1.a)), (vec2<u32>(var_0.x, var_1.a) >> (var_0.zz % vec2<u32>(32u))) | ~vec2<u32>(var_1.a, var_0.x)) % vec2<u32>(32u)));
    let var_2 = -81443i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1440f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -922f)))), _wgslsmith_f_op_f32(-2054f * _wgslsmith_f_op_f32(func_3(-2147483647i))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0)), (((u_input.c != var_1.b.x) | true) | true) & any(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = abs(countOneBits(vec2<u32>(1u, 1u)) & ~func_1());
    var var_2 = _wgslsmith_add_u32(var_1.x, 0u);
    let var_3 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-311f)), 122f, true)))), -vec4<i32>(u_input.b, 2147483647i, ~(-844i), global0[_wgslsmith_index_u32(var_1.x, 25u)]) | ((~vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(30729u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], var_0) >> (func_2(Struct_1(660f), 2111f, false) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, global0[_wgslsmith_index_u32(var_1.x, 25u)], u_input.b, 12029i), vec4<i32>(u_input.a.x, 31467i, 11644i, 10857i))), 1u, ~abs(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, -var_0)));
    var_1 = vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(4294967295u, var_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 86457u, 56072u, 0u), vec4<u32>(33049u, var_1.x, 38339u, var_1.x))), _wgslsmith_div_u32(~0u, var_1.x)), var_1.x);
    let var_4 = ~(~vec4<u32>(1u, ~_wgslsmith_mult_u32(1u, 55175u), var_1.x, min(var_1.x << (var_1.x % 32u), ~var_1.x)));
    var_1 = ~var_4.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a * var_3.a.a)), _wgslsmith_f_op_f32(trunc(var_3.a.a))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -781f), var_3.a.a)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(var_3.a.a))), -1324f, -2732f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.a, _wgslsmith_f_op_f32(-359f - -881f), _wgslsmith_f_op_f32(-var_3.a.a), _wgslsmith_div_f32(var_3.a.a, var_3.a.a)) - vec4<f32>(_wgslsmith_f_op_f32(-163f * var_3.a.a), _wgslsmith_f_op_f32(436f * var_3.a.a), -1786f, _wgslsmith_f_op_f32(f32(-1f) * -1833f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.a.a)), _wgslsmith_f_op_f32(-314f - 410f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_3.a.a)))));
}

