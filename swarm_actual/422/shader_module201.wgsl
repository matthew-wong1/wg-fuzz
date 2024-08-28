struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-169f, 1845f);

var<private> global1: array<i32, 8>;

var<private> global2: u32;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<f32>(-462f, 379f), false, 0i, 10002u), Struct_2(vec2<f32>(755f, -1000f), false, 53132i, 20175u), Struct_2(vec2<f32>(227f, -507f), false, 2147483647i, 0u), Struct_2(vec2<f32>(-373f, 305f), true, 19135i, 95420u), Struct_2(vec2<f32>(1156f, -1000f), true, 2147483647i, 98624u), Struct_2(vec2<f32>(-418f, 583f), false, 0i, 35011u), Struct_2(vec2<f32>(393f, 1000f), true, -13805i, 39809u), Struct_2(vec2<f32>(-1803f, 136f), true, -1i, 0u), Struct_2(vec2<f32>(1948f, 1000f), false, 55458i, 524u), Struct_2(vec2<f32>(2592f, -118f), true, 0i, 14327u), Struct_2(vec2<f32>(363f, 2133f), false, 37829i, 15948u), Struct_2(vec2<f32>(701f, -912f), true, 1i, 34966u), Struct_2(vec2<f32>(-2300f, -496f), true, -68057i, 1u), Struct_2(vec2<f32>(864f, -269f), true, 0i, 4294967295u), Struct_2(vec2<f32>(317f, -205f), true, -25032i, 1u), Struct_2(vec2<f32>(621f, 1998f), true, -50406i, 4294967295u), Struct_2(vec2<f32>(307f, -797f), true, -1i, 65778u));

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b.x, ~u_input.d, u_input.b.x), ~max(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(39887u, 0u, u_input.b.x))), min(firstTrailingBit(~(vec3<u32>(44917u, u_input.b.x, arg_0) & vec3<u32>(47u, u_input.d, 4294967295u))), max(~select(vec3<u32>(0u, 19173u, u_input.d), vec3<u32>(arg_0, arg_0, u_input.d), arg_2.a), vec3<u32>(_wgslsmith_mult_u32(u_input.d, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(15023u, arg_0, 34916u, 4294967295u), vec4<u32>(1u, 8297u, u_input.d, arg_0)), ~u_input.b.x))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * 659f))))), -1264f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2578f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), global0.x)))));
    global4 = ~(~global1[_wgslsmith_index_u32(0u, 8u)]);
    global3 = array<Struct_2, 17>();
    var var_1 = vec2<i32>(2147483647i, 3941i);
    return abs(1u >> (max(arg_0, 29242u) % 32u));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = global3[_wgslsmith_index_u32(select(func_3(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 36421u), Struct_3(true, vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.a.xyw, all(vec4<bool>(false, true, true, false))), Struct_3(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1772f, global0.x) * vec2<f32>(global0.x, 1662f))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), abs(~vec3<i32>(arg_0, -1i, -1i)), true)), ~u_input.b.x, true), 17u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2591f * global0.x), -1003f));
    let var_2 = ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~1i, var_0.c, _wgslsmith_dot_vec3_i32(~u_input.a.wzx, abs(u_input.c.zzz))), 1i);
    let var_3 = Struct_4(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0.b, false)), !vec2<bool>(true, var_0.b), true), vec2<bool>(false, var_0.b), all(vec3<bool>(true, true, u_input.d == 26498u))), global3[_wgslsmith_index_u32(46657u, 17u)], select(var_0.b, any(vec4<bool>(true, var_0.a.x <= global0.x, var_0.b, var_0.b)), var_0.b));
    var var_4 = var_1;
    return Struct_4(select(var_3.a, !(!(!var_3.a)), select(select(select(vec2<bool>(var_3.a.x, false), vec2<bool>(var_3.c, false), true), var_3.a, select(var_3.a, var_3.a, vec2<bool>(false, var_0.b))), vec2<bool>(var_3.a.x || false, false), select(var_3.a, !var_3.a, var_3.a))), var_3.b, !any(vec2<bool>(true, var_3.a.x)));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec2<u32>(11225u, countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.d)), u_input.d)));
    global3 = array<Struct_2, 17>();
    var var_1 = vec3<i32>((-2147483647i ^ u_input.a.x) >> (_wgslsmith_mod_u32(1u, var_0.x) % 32u), min(~(~(-u_input.a.x)), i32(-1i) * -138i), -42874i);
    var var_2 = -763f;
    let var_3 = func_2(u_input.a.x);
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b.x), vec2<u32>(75516u, u_input.b.x)) << ((u_input.b.x ^ firstLeadingBit(u_input.b.x)) % 32u), 8u)]);
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.d, 13902u << ((15820u >> (select(u_input.d, 32422u, true) % 32u)) % 32u)), true);
    global3 = array<Struct_2, 17>();
    global3 = array<Struct_2, 17>();
    global1 = array<i32, 8>();
    global3 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1());
}

