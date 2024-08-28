struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(vec3<u32>(u_input.d.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1724u, 10373u), u_input.b.xz), u_input.d.x), ~u_input.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-195f + -379f))) < _wgslsmith_f_op_f32(sign(-198f)), 355f, max(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, 46969u)), vec3<u32>(1644u, u_input.c, 4294967295u))), ~u_input.b.x), u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(exp2(var_0.c)), -1257f, var_0.c))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_sub_vec2_u32(u_input.b.zw, vec2<u32>(var_2.a.x >> (~(~var_0.e.x) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_2.e, vec4<u32>(var_0.d, 1u, 58498u, u_input.b.x) | var_0.e), 1u)));
    var var_4 = select(!vec3<bool>(var_0.b, var_2.b, any(!vec4<bool>(var_2.b, false, var_0.b, var_2.b))), !vec3<bool>(var_0.b, any(select(vec3<bool>(false, true, true), vec3<bool>(var_2.b, false, true), var_0.b)), true), true);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))), _wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), 815f, -128f, -1497f)))));
}

fn func_2() -> vec3<u32> {
    var var_0 = vec3<bool>(false, true, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3())))));
    var_0 = !select(!vec3<bool>(var_0.x, true, false), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, false)), var_0.x), var_0.x);
    var_0 = select(select(!vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, false)), false || var_0.x, var_0.x), vec3<bool>(select(var_0.x, var_0.x, var_0.x) | any(vec3<bool>(false, var_0.x, false)), true, _wgslsmith_f_op_f32(f32(-1f) * -421f) == _wgslsmith_f_op_f32(var_1.x * var_1.x)), all(!(!vec3<bool>(true, var_0.x, var_0.x)))), vec3<bool>(!var_0.x, true, any(vec4<bool>(true, true, var_0.x & var_0.x, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_0.x), vec3<bool>(true, true, true), var_0.x));
    let var_2 = vec4<u32>(abs(9595u), u_input.c, select(4899u, _wgslsmith_mod_u32(~u_input.d.x, abs(13611u)), true), _wgslsmith_mult_u32(countOneBits(u_input.c), ~u_input.b.x));
    return _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(u_input.d.x), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_mult_u32(var_2.x, u_input.c)), max(_wgslsmith_sub_u32(var_2.x, var_2.x), _wgslsmith_sub_u32(var_2.x, 0u))), max(abs(u_input.d.x << (4294967295u % 32u)), firstLeadingBit(~4294967295u))), ~(vec3<u32>(~33491u, abs(var_2.x), countOneBits(var_2.x)) & ~(vec3<u32>(0u, 16420u, 1u) ^ vec3<u32>(u_input.b.x, 20064u, var_2.x))));
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(func_2(), true, -794f, ~27316u, max(~firstLeadingBit(abs(vec4<u32>(17710u, u_input.b.x, u_input.b.x, u_input.d.x))), vec4<u32>(~abs(u_input.c), u_input.b.x, u_input.d.x, u_input.c)));
    let var_1 = 29241u;
    let var_2 = firstLeadingBit(u_input.a.x & 1i);
    let var_3 = u_input.d.xx;
    let var_4 = Struct_1(abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(52421u, 4039u, var_3.x), u_input.b.zyz) ^ select(var_0.a, vec3<u32>(var_1, u_input.b.x, 4294967295u), any(vec3<bool>(true, false, var_0.b)))), !any(!vec3<bool>(false, var_0.b, true)), 1315f, firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, var_0.d)), vec4<u32>(47375u, reverseBits(countOneBits(countOneBits(u_input.b.x))), u_input.d.x, 75790u));
    return _wgslsmith_div_vec4_u32(~min(vec4<u32>(5145u, var_1, 0u, var_1) ^ countOneBits(var_0.e), vec4<u32>(0u, 1u, countOneBits(var_4.e.x), var_4.e.x & var_1)), vec4<u32>(~var_4.d, abs(abs(0u)), _wgslsmith_mod_u32(countOneBits(var_0.a.x), ~1u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d, !(!(any(vec3<bool>(false, true, true)) && any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -985f), 12524u, func_1());
    var var_1 = vec4<bool>(var_0.c == 458f, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.c, false))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), !all(select(!vec2<bool>(true, var_0.b), select(vec2<bool>(var_0.b, true), vec2<bool>(false, false), var_0.b), !var_0.b)));
    var var_2 = vec3<u32>(0u, abs(max(func_2().x, u_input.c)), ~(~(~var_0.e.x)));
    var var_3 = Struct_1(vec3<u32>(~((var_2.x >> (1u % 32u)) << (~var_2.x % 32u)), 34522u, max(min(firstLeadingBit(var_0.e.x), var_2.x), var_2.x)), all(!select(var_1.zzx, vec3<bool>(true, false, var_1.x), var_0.c == var_0.c)), var_0.c, ~func_2().x, vec4<u32>(var_2.x, max(firstTrailingBit(1u), var_2.x ^ 25128u), min(select(var_2.x, u_input.b.x, false), func_2().x), _wgslsmith_div_u32(1u, var_2.x)));
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, firstTrailingBit(27822u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -515f))) - 641f), -255f));
}

