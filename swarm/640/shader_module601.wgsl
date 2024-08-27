struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: Struct_2 = Struct_2(Struct_1(44167u), Struct_1(4370u), 1386f, 39291u);

var<private> global2: array<Struct_3, 14>;

var<private> global3: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-15280i, i32(-2147483648), 29916i), vec3<i32>(66330i, -12347i, 2147483647i), vec3<i32>(i32(-2147483648), -23613i, 27539i), vec3<i32>(0i, 20809i, 23759i), vec3<i32>(33697i, 0i, -33687i), vec3<i32>(0i, i32(-2147483648), -21581i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-11209i, -6596i, 1i), vec3<i32>(-75871i, 1i, 0i), vec3<i32>(-1i, 12209i, -27952i), vec3<i32>(-54200i, 1i, -10068i), vec3<i32>(4811i, 0i, -1i), vec3<i32>(1i, 2147483647i, -64948i), vec3<i32>(i32(-2147483648), 38370i, 2147483647i), vec3<i32>(11805i, -2841i, 25628i), vec3<i32>(-6201i, 0i, 28531i), vec3<i32>(14273i, 0i, i32(-2147483648)), vec3<i32>(3920i, 0i, 2147483647i), vec3<i32>(11111i, i32(-2147483648), -74513i), vec3<i32>(i32(-2147483648), -1i, -40539i), vec3<i32>(12516i, -30276i, 12104i), vec3<i32>(-8632i, 1i, -3255i));

var<private> global4: array<u32, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32) -> bool {
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> u32 {
    global1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(arg_1.yx, arg_1.zw)), Struct_1(1u), -1736f, _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(arg_1)), arg_1));
    let var_0 = _wgslsmith_f_op_f32(-1023f * global1.c);
    var var_1 = _wgslsmith_clamp_u32(83300u, _wgslsmith_dot_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 6289u), vec2<u32>(arg_1.x, global1.a.a)), firstTrailingBit(arg_1.xx)) >> (arg_1.wy % vec2<u32>(32u)), arg_1.yy), _wgslsmith_mult_u32(64008u, _wgslsmith_div_u32(abs(arg_1.x) << (global4[_wgslsmith_index_u32(~53973u, 5u)] % 32u), _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(arg_1.x, 5u)] | global1.b.a, ~1u))));
    global1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d | arg_1.x, _wgslsmith_dot_vec3_u32(arg_1.zyy, vec3<u32>(global4[_wgslsmith_index_u32(26356u, 5u)], 4206u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)]))), vec2<u32>(4294967295u, 0u << (0u % 32u)))), global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(-546f * var_0))) + global1.c))), 1u);
    var_1 = arg_1.x;
    return select(4294967295u, abs(_wgslsmith_div_u32(~abs(global4[_wgslsmith_index_u32(arg_1.x, 5u)]), _wgslsmith_sub_u32(abs(53739u), global4[_wgslsmith_index_u32(~global1.d, 5u)]))), false);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global1.a, Struct_1(func_3(vec3<bool>(func_1(global1.c), any(vec4<bool>(false, false, true, false)), true), _wgslsmith_div_vec4_u32(~vec4<u32>(63613u, global1.b.a, 0u, 48544u), vec4<u32>(4294967295u, global1.d, 72171u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54880u, 5u)], 5u)])), vec3<bool>(true, true, true))), global1.c, _wgslsmith_dot_vec3_u32(countOneBits(global0[_wgslsmith_index_u32(global1.d, 13u)]), ~vec3<u32>(select(global1.d, 0u, false), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global1.d, 5u)], global4[_wgslsmith_index_u32(global1.d, 5u)], global1.b.a), global1.a.a)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.c, -281f, false)), _wgslsmith_f_op_f32(trunc(531f)))), global1.c));
    var var_1 = global1.d;
    var_1 = _wgslsmith_mult_u32(min(~(104002u & global1.a.a), global1.b.a), reverseBits(global1.a.a)) << (~reverseBits(reverseBits(global1.b.a)) % 32u);
    let var_2 = Struct_1(0u);
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a);
}

