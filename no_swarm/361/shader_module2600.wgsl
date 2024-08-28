struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31>;

var<private> global1: bool;

var<private> global2: vec2<u32> = vec2<u32>(23051u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(_wgslsmith_clamp_u32(66972u, _wgslsmith_mod_u32(u_input.a.x, 51284u), u_input.a.x), global2.x), vec2<u32>(global2.x, global2.x));
    var var_0 = global2.x;
    var_0 = ~(~u_input.a.x << (select(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), u_input.a), firstTrailingBit(0u), false) % 32u));
    global2 = _wgslsmith_mult_vec2_u32(abs(min(u_input.a, firstLeadingBit(u_input.a)) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, 93396u), u_input.a) % vec2<u32>(32u))), vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, global2.x), vec3<u32>(6444u, 115093u, 4294967295u)), 0u)), global2.x));
    var var_1 = !(_wgslsmith_add_i32(~countOneBits(2147483647i), ~(-2147483647i)) < -_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, 2147483647i, 74200i), vec3<i32>(11397i, 0i, 0i)), vec3<i32>(-1i, -2147483647i, 32003i)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 2527u, 4523u, 23278u), min(vec4<u32>(global2.x, 1u, global2.x, u_input.a.x), vec4<u32>(21852u, 0u, 45235u, global2.x))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(global2.x, 89756u, 32046u, 54064u)), vec4<u32>(4294967295u, 4623u, 1u, 0u))) | ~(~vec4<u32>(0u, global2.x, u_input.a.x, 4294967295u) & ~vec4<u32>(1u, 106362u, global2.x, 15783u)), vec4<u32>(56272u, 4294967295u, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x) | ~41921u, _wgslsmith_mod_u32(~10244u, 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 12867u)) % 32u))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-303f);
    var var_1 = ~((~min(vec4<u32>(global2.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(60026u, u_input.a.x, u_input.a.x, 0u)) << ((~vec4<u32>(u_input.a.x, u_input.a.x, global2.x, u_input.a.x) | func_3(Struct_1(1288f), true)) % vec4<u32>(32u))) ^ vec4<u32>(select(u_input.a.x & 1u, ~1u, false), abs(~global2.x), firstLeadingBit(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global2.x), vec2<u32>(global2.x, 4294967295u)), abs(u_input.a))));
    var var_2 = _wgslsmith_div_f32(-1000f, -1199f);
    var var_3 = ~(~countOneBits(max(~1779i, countOneBits(-1i))));
    let var_4 = Struct_1(-268f);
    return Struct_1(_wgslsmith_f_op_f32(round(var_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(select(39026i, i32(-1i) * -15288i, true), _wgslsmith_clamp_i32(reverseBits(1i), 1i, -15005i), 1i, abs(select(-8384i, -15513i, any(vec2<bool>(true, true)))));
    let var_1 = func_2();
    let var_2 = vec2<bool>(any(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), true)), true);
    global1 = true;
    let var_3 = any(!vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_2.x, true, var_2.x), var_2.x)), any(!vec3<bool>(var_2.x, true, false))));
    return func_2();
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = func_4(Struct_1(2009f), 1709f, func_2());
    var var_1 = !vec4<bool>(true, ~countOneBits(u_input.a.x) == u_input.a.x, all(select(!vec2<bool>(arg_0.x, arg_0.x), arg_0, all(vec3<bool>(false, arg_0.x, true)))), false);
    let var_2 = _wgslsmith_f_op_f32(-var_0.a);
    var var_3 = ~_wgslsmith_sub_vec2_u32(u_input.a, reverseBits(firstLeadingBit(u_input.a)) & u_input.a);
    var var_4 = (-1i | (select(-2147483647i, 1i >> (u_input.a.x % 32u), var_3.x == 3508u) & -1i)) << (var_3.x % 32u);
    return 210f;
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = false;
    global2 = ~_wgslsmith_mod_vec2_u32(u_input.a, countOneBits(firstTrailingBit(firstTrailingBit(u_input.a))));
    let var_1 = vec2<bool>(!(true || any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))), !(any(vec4<bool>(false, true, true, true)) || true) | true);
    global0 = array<vec3<f32>, 31>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1))));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -435f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 31>();
    global1 = true;
    var var_0 = func_5(u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(652f, -2033f)))))));
    var var_1 = 1491f;
    var_1 = var_0.a;
    var_0 = func_5(4294967295u, var_0.a);
    global0 = array<vec3<f32>, 31>();
    global1 = !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))) && false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))) - -1189f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-789f)) - _wgslsmith_f_op_f32(sign(var_0.a)))), u_input.a.x >> ((_wgslsmith_div_u32(1u, firstTrailingBit(u_input.a.x)) ^ global2.x) % 32u), var_0.a);
}

