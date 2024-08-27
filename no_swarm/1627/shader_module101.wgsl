struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, vec4<u32>(4294967295u, 0u, 46270u, 15195u), vec3<i32>(-54622i, i32(-2147483648), 0i)), Struct_1(26512i, vec4<u32>(0u, 0u, 1u, 0u), vec3<i32>(1i, -18308i, i32(-2147483648))), Struct_1(-12734i, vec4<u32>(21620u, 18552u, 30227u, 3518u), vec3<i32>(1i, i32(-2147483648), -1i)), Struct_1(1i, vec4<u32>(1u, 1u, 1u, 3830u), vec3<i32>(i32(-2147483648), 26940i, 1i)));

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~arg_0, 4u)];
    global0 = array<Struct_1, 4>();
    var var_1 = -2147483647i;
    var_0 = Struct_1(abs(-16715i), var_0.b, reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(2147483647i), var_0.c.x, u_input.b), var_0.c)));
    return vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 5301u, 0u), _wgslsmith_mod_u32(4650u, ~31268u ^ ~var_0.b.x)) ^ arg_1.b.yz;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = -(~vec2<i32>(u_input.b, _wgslsmith_clamp_i32(6745i, -41158i, 6168i)) << (((~vec2<u32>(u_input.d, u_input.c) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 38949u), vec2<u32>(5014u, 63008u))) ^ ~vec2<u32>(4294967295u, u_input.c)) % vec2<u32>(32u)));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(func_3(1u, Struct_1(var_0.x, vec4<u32>(u_input.a, 0u, 7217u, u_input.c), vec3<i32>(var_0.x, var_0.x, -28238i))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(46292u, u_input.c), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))), countOneBits(vec2<u32>(min(0u, u_input.a), countOneBits(1u)))), min(~1u, u_input.c));
    let var_2 = u_input.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 263f, arg_0)))))))));
    let var_3 = select(~vec2<u32>(abs(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.d)), _wgslsmith_add_u32(u_input.a, 33460u) & _wgslsmith_mod_u32(4294967295u, var_1.x)), max(firstTrailingBit(countOneBits(~vec2<u32>(u_input.a, 4294967295u))), vec2<u32>(61743u, u_input.c)), true);
    return Struct_1(u_input.b, abs(~(~(vec4<u32>(var_3.x, u_input.d, u_input.a, u_input.c) ^ vec4<u32>(u_input.a, 1u, 1u, 0u)))), vec3<i32>(-1i, ~(~(-2147483647i)), 0i));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(global1.x));
    global0 = array<Struct_1, 4>();
    var var_1 = !(!vec3<bool>((arg_2 && arg_2) && !arg_1, false, !any(vec4<bool>(false, true, true, arg_1))));
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(917f)), _wgslsmith_f_op_f32(global1.x - -321f), global1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1615f, 484f, 484f) + vec3<f32>(global1.x, global1.x, 361f)))) - vec3<f32>(1545f, _wgslsmith_f_op_f32(-global1.x), -395f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global1.x, global1.x)))) + -1401f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-699f + 1144f)))), _wgslsmith_f_op_f32(-global1.x))));
    var var_2 = func_2(-551f);
    return _wgslsmith_f_op_f32(max(957f, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(25519u, u_input.c), vec2<u32>(14483u, 38583u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))), u_input.a), 4u)];
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * global1.x), global1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -377f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(1i, var_0.b, var_0.c), true, false))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, 349f, true)), _wgslsmith_f_op_f32(sign(1025f))))));
    var var_1 = 28465u;
    let var_2 = _wgslsmith_add_u32(0u, var_0.b.x);
    var_1 = reverseBits(_wgslsmith_mod_u32(0u, 21171u));
    var_1 = 1u;
    let var_3 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f * -950f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1103f + global1.x), _wgslsmith_f_op_f32(-global1.x)))) == global1.x);
    let var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32((~var_4.x << (firstTrailingBit(4294967295u) % 32u)) & 4294967295u, ~12790u), var_0.b, abs(~var_0.c.x), _wgslsmith_f_op_f32(trunc(397f)));
}

