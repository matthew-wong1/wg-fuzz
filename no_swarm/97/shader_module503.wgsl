struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = u_input.c;
    var var_1 = u_input.a;
    var_1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(1i, ~u_input.b.x), 1i, -49672i);
    var var_2 = arg_1.b.x;
    var var_3 = all(vec3<bool>(arg_1.c.x, any(vec3<bool>(true, select(arg_3.a, false, true), false)), !arg_3.c.x));
    return _wgslsmith_sub_u32(arg_1.b.x >> (arg_1.b.x % 32u), _wgslsmith_div_u32(arg_3.b.x, arg_1.b.x));
}

fn func_2() -> bool {
    let var_0 = select(_wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(2411u, 96931u))), _wgslsmith_div_vec2_u32(min(~vec2<u32>(1u, 1u), vec2<u32>(4889u, 5466u)), ~vec2<u32>(1u, 1u))), _wgslsmith_div_u32(1u, func_3(!(u_input.b.x <= u_input.a.x), Struct_1(true, vec4<u32>(21544u, 0u, 39470u, 4294967295u), vec3<bool>(true, false, true)), u_input.b, Struct_1(true, reverseBits(vec4<u32>(4294967295u, 0u, 17981u, 58310u)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)))), u_input.b.x < -15191i);
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38856u, var_0, var_0), vec4<u32>(0u, var_0, 26899u, 10560u))), 1u, 1u, ~(~0u)), vec4<u32>(~var_0 ^ ~57300u, 0u, 22519u, 35207u ^ var_0), select(vec4<u32>(0u, _wgslsmith_mod_u32(var_0, var_0), var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 51990u, var_0, 1u), vec4<u32>(var_0, var_0, var_0, 4294967295u))), select(vec4<u32>(4294967295u, 1u, var_0, 14711u), vec4<u32>(50360u, var_0, var_0, var_0), vec4<bool>(true, false, true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))))) << (firstLeadingBit(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_0, 1686u, 4294967295u, 4294967295u), vec4<u32>(var_0, var_0, 0u, var_0)), vec4<u32>(var_0, var_0, 26717u, var_0))) % vec4<u32>(32u));
    var_1 = _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 30537u, var_0), ~vec4<u32>(1u, var_0, 16492u, 0u))), abs(vec4<u32>(~37741u, abs(1u), _wgslsmith_mult_u32(var_1.x, var_1.x), _wgslsmith_mod_u32(4294967295u, var_0)))) >> (vec4<u32>(~abs(~var_0), 12112u, var_1.x, firstLeadingBit(56898u)) % vec4<u32>(32u));
    var var_2 = var_0;
    var_1 = ~vec4<u32>(0u, _wgslsmith_mod_u32(var_1.x, abs(var_1.x)), abs(var_0), 21072u);
    return true;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(all(vec4<bool>(!(u_input.b.x <= 6614i), false, any(vec4<bool>(true, false, false, true)), func_2())), vec4<u32>(1u, _wgslsmith_div_u32(1u, ~(~23953u)), firstTrailingBit(35912u), 20851u), vec3<bool>(!(true & select(false, true, true)), true, true));
    var var_1 = vec2<u32>(var_0.b.x, _wgslsmith_add_u32(var_0.b.x, 30951u ^ ((var_0.b.x & var_0.b.x) ^ 3620u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.zz);
    var_2 = _wgslsmith_f_op_vec2_f32(arg_0.wx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.x) - _wgslsmith_f_op_vec2_f32(arg_0.yx - vec2<f32>(-135f, arg_0.x))), arg_0.xy)) - _wgslsmith_f_op_vec2_f32(arg_0.zy * _wgslsmith_f_op_vec2_f32(arg_0.yy - arg_0.wz))));
    var_1 = ~(~vec2<u32>(4172u, var_1.x));
    return Struct_1(false, var_0.b, vec3<bool>(!var_0.c.x, false, (u_input.a.x < _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.c), u_input.a)) == true));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, -598f, -188f, 339f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1051f, -1050f, _wgslsmith_f_op_f32(f32(-1f) * -1166f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-937f, -1000f, 292f, 605f), vec4<f32>(1000f, 618f, -1680f, -660f), arg_0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, 1000f, -1524f, -543f))), vec4<bool>(arg_0.a || arg_0.a, !arg_0.a, any(arg_0.c), arg_0.b.x < 4294967295u)))));
    var_0 = Struct_1(_wgslsmith_clamp_i32(u_input.a.x | (i32(-1i) * -2147483647i), -18919i & _wgslsmith_mod_i32(1i, u_input.a.x), _wgslsmith_clamp_i32(u_input.b.x, 7712i, 7375i)) <= abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(14003i, u_input.c), 21732i, select(2147483647i, -8572i, true))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.yx, func_1(vec4<f32>(523f, 282f, -388f, 276f)).b.zx), 4294967295u, ~var_0.b.x, _wgslsmith_add_u32(select(arg_0.b.x, 0u, arg_0.a), _wgslsmith_mult_u32(var_0.b.x, 29433u))), var_0.c);
    var var_1 = vec2<bool>(!(!var_0.a), func_2());
    var var_2 = _wgslsmith_div_u32(countOneBits(~select(var_0.b.x, var_0.b.x, true)) | 0u, ~(~(~var_0.b.x)));
    var var_3 = Struct_1(var_0.c.x, arg_0.b, var_0.c);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(_wgslsmith_dot_vec3_u32(~vec3<u32>(36443u, 0u, 40129u), ~vec3<u32>(28168u, 43242u, 1u)) != ~6830u), (23260i >= u_input.c) || select(true, true, !all(vec4<bool>(false, true, true, false))));
    var_0 = vec2<bool>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(32770u, 50887u, 74494u, 75010u), vec4<u32>(71073u, 4294967295u, 1412u, 4294967295u)) > 0u, true);
    let var_1 = ~reverseBits(func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1612f, 573f, 504f, 1000f) + vec4<f32>(-1376f, 287f, -1335f, 708f)))));
    var_0 = !(!(!select(!vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), any(vec4<bool>(false, true, var_0.x, true)))));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-234f, 183f, 1118f, -1686f), vec4<f32>(-479f, 1408f, 1313f, 587f), var_0.x)) * vec4<f32>(-1103f, 161f, -168f, 970f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2203f, -1442f, -1952f, -173f))))) - vec4<f32>(-625f, 629f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -733f))));
    let var_3 = -1570f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3, -1719f))) * vec2<f32>(var_3, -269f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3, -597f, var_3), vec3<f32>(-2573f, var_3, var_3)))))))), vec2<i32>(firstTrailingBit(1i), ~abs(1811i) | _wgslsmith_dot_vec4_i32(-vec4<i32>(31665i, -38787i, u_input.a.x, u_input.b.x), ~vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.b.x))), var_3);
}

