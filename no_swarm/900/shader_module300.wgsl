struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(21661u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 0u), vec2<u32>(u_input.a, u_input.c.x))), -2147483647i));
    var var_1 = Struct_2(var_0.a);
    var var_2 = all(select(vec2<bool>(true, !all(vec3<bool>(false, true, true))), vec2<bool>(true, _wgslsmith_f_op_f32(select(arg_0, 244f, true)) == -449f), vec2<bool>(true, true)));
    var_1 = Struct_2(var_1.a);
    let var_3 = countOneBits(~(vec2<i32>(-1i) * -vec2<i32>(2147483647i, var_1.a.b))) << (vec2<u32>(0u, _wgslsmith_add_u32(u_input.c.x, ~var_0.a.a)) % vec2<u32>(32u));
    return var_0.a;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, -660f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1541f, 2027f)), vec2<f32>(284f, 1137f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.x)) - 1f), -426f));
    let var_1 = Struct_2(Struct_1(u_input.c.x, -10690i));
    var var_2 = vec4<u32>(~115653u, 0u, ~4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.a.a, u_input.a), ~(~var_1.a.a), u_input.d));
    var var_3 = 4294967295u;
    return _wgslsmith_clamp_i32(arg_0.a.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(select(~vec2<i32>(var_1.a.b, arg_0.a.b), vec2<i32>(56254i, arg_0.a.b), vec2<bool>(false, true))), firstTrailingBit(-reverseBits(vec2<i32>(-5648i, -39208i)))), u_input.b);
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(sign(908f)));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(var_0.b, 1i, arg_0.b, arg_0.b)), vec4<i32>(func_3(Struct_2(Struct_1(12769u, var_0.b))), 27678i, u_input.b, 45969i), vec4<i32>(~u_input.b, ~reverseBits(0i), ~abs(u_input.b), 2147483647i)) << (~abs(max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, u_input.c.x, 0u), vec4<u32>(arg_0.a, 0u, 56793u, u_input.c.x)), vec4<u32>(1u, 14227u, 4294967295u, arg_0.a))) % vec4<u32>(32u));
    var var_2 = countOneBits(2147483647i);
    var var_3 = Struct_1(u_input.d, ~_wgslsmith_div_i32(~(1i ^ var_0.b), ~(~u_input.b)));
    var_2 = -2147483647i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(264f - _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f - 273f) * _wgslsmith_f_op_f32(select(1458f, 1591f, false))), -2013f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + 343f), 461f, var_0.b < var_0.b))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1718f, _wgslsmith_f_op_f32(floor(878f)), _wgslsmith_f_op_f32(select(1000f, -184f, true)), _wgslsmith_f_op_f32(min(-801f, -540f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, 854f, -541f, 962f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-622f, 981f, -375f, -1000f), vec4<f32>(199f, -256f, 1183f, 716f))), true)), true)) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(835f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f * 572f)), 438f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1794f, -456f, 623f, -212f) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.c.x, 47270i)))), -7302i > (u_input.b >> (u_input.e % 32u)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-273f, -619f, -1475f, -1469f), vec4<f32>(-1092f, 1887f, -801f, -303f), vec4<bool>(false, true, false, false))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(1745f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -778f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(var_0.x + 1264f), -1156f, _wgslsmith_f_op_f32(-960f - 875f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 699f, -1373f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1571f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(select(~13575u, u_input.c.x ^ u_input.e, false), _wgslsmith_add_u32(53187u, abs(1u)), countOneBits(func_2(-1538f).a))), ~(~(~vec4<u32>(1u, 1u, u_input.a, u_input.c.x))), u_input.e, var_0.xw, _wgslsmith_clamp_i32(-min(59917i, ~1i), u_input.b, -countOneBits(1i)));
}

