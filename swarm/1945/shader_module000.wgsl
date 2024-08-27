struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<u32>(0u, 4294967295u, 64278u, 0u), vec3<bool>(false, true, false), vec3<bool>(true, true, true)));

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(select(u_input.b, u_input.b, false)) ^ vec4<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(1u, 0u)), _wgslsmith_dot_vec3_u32(u_input.b.wwy, u_input.a), 1u), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, arg_0)), ~229u, ~(~8285u), ~firstLeadingBit(1u))) | ~u_input.a.x;
    let var_1 = reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, min(2147483647i, 37098i)), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-1i, -2147483647i))))));
    var var_2 = Struct_1(vec4<u32>(u_input.a.x << (~1u % 32u), ~_wgslsmith_sub_u32(u_input.a.x, 1u), _wgslsmith_mod_u32(abs(arg_0), u_input.b.x), ~max(4294967295u, 7301u)) & u_input.b, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), vec3<bool>(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, false, true)) != true, false), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), any(vec3<bool>(false, false, true))))), vec3<bool>(true, true, any(vec4<bool>(false, all(vec3<bool>(true, true, true)), false, false))));
    global0 = array<Struct_1, 1>();
    var_0 = max(~(var_2.a.x ^ ~(var_2.a.x << (1u % 32u))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 4294967295u), ~u_input.a), u_input.a & ~var_2.a.wzy));
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(firstTrailingBit(0u), ~u_input.b.x))), global1.x, global1.x));
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 1u)];
    let var_1 = 450f;
    global0 = array<Struct_1, 1>();
    let var_2 = select(var_0.b.yy, var_0.c.zy, true);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~(~firstTrailingBit(0u)), 54711u), ~countOneBits(var_0.a.zyy)), 1u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 1>();
    let var_0 = func_2();
    let var_1 = func_2();
    global0 = array<Struct_1, 1>();
    let var_2 = firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(-2147483647i, 6136i >> (var_0.a.x % 32u)) << (0u % 32u), 2517i));
    return 8486u ^ ~_wgslsmith_div_u32(countOneBits(~u_input.a.x), firstTrailingBit(0u) << (~102123u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, all(vec2<bool>(true, true)), !(true && all(vec2<bool>(false, false)))) | (any(vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, false, true)), true, -209f >= global1.x)) & any(vec4<bool>(true, true, true, true)));
    let var_1 = ~(i32(-1i) * -2147483647i);
    let var_2 = Struct_1(vec4<u32>(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(46287u, 0u, u_input.a.x), u_input.a)), _wgslsmith_div_u32(func_1(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), global1.xx, Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), ~0u) | u_input.a.x, reverseBits(4294967295u), _wgslsmith_mult_u32(select(24325u, _wgslsmith_div_u32(u_input.b.x, 32719u), false), u_input.a.x)), !vec3<bool>(false, (-16998i ^ var_1) < 2147483647i, true), select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), false), vec3<bool>(select(true, all(vec4<bool>(true, true, false, false)), func_2().c.x), true, !select(false, true, false)), vec3<bool>(true, global1.x <= _wgslsmith_f_op_f32(ceil(global1.x)), all(vec3<bool>(true, true, true)))));
    let var_3 = u_input.b;
    var_0 = true && any(select(!func_2().c, var_2.b, true));
    var var_4 = ~17550i;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), 337f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -821f) - global1.x))), _wgslsmith_f_op_f32(-global1.x)));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f + global1.x) * _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 2135f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * 438f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 732f)), true))), global1.x);
    let var_6 = -420f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<i32>(30339i, -1i))) | ~reverseBits(vec2<i32>(59749i, var_1)), var_5.x, max(-_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, var_1, 1i, 66602i), -vec4<i32>(var_1, var_1, 4481i, 64027i)), ~vec4<i32>(_wgslsmith_div_i32(var_1, var_1), var_1, -2147483647i, _wgslsmith_div_i32(21154i, var_1))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(select(select(u_input.b, vec4<u32>(4294967295u, 1u, 40446u, 0u), vec4<bool>(false, var_2.b.x, true, var_2.b.x)), vec4<u32>(var_3.x, u_input.a.x, u_input.b.x, var_3.x), vec4<bool>(true, false, var_2.b.x, var_2.c.x)), var_2.a), _wgslsmith_add_vec4_u32(var_3, _wgslsmith_mult_vec4_u32(~var_3, ~var_2.a))), select(var_2.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x >> (34761u % 32u)), u_input.a.x), var_3.x < var_2.a.x));
}

