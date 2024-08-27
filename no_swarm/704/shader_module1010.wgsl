struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    let var_0 = Struct_4(Struct_1(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.b + arg_1.d.b) + 1580f) * 1000f), max(37342i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, arg_1.d.c), u_input.d.yz), _wgslsmith_add_i32(firstTrailingBit(48895i), ~2147483647i))), Struct_1(false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(f32(-1f) * -796f)))), u_input.c.x >> (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_1.b.x, u_input.b.x)), vec2<u32>(10553u, arg_1.b.x)) % 32u)));
    let var_1 = ~vec3<u32>(_wgslsmith_div_u32(arg_3.x, arg_1.b.x), reverseBits(0u), 1u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f)), arg_1.c);
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), -1072f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.e.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) - -217f)))));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, u_input.e) | vec2<u32>(0u, 32998u), select(abs(vec2<u32>(arg_3.x, ~u_input.b.x)), abs(vec2<u32>(var_1.x, 51687u) >> (select(u_input.b.yx, arg_3.xx, true) % vec2<u32>(32u))), !select(!vec2<bool>(var_0.a.a, false), vec2<bool>(var_0.b.a, arg_2), 66068u <= var_1.x)));
    return ~(-18326i);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = -(~vec2<i32>(8832i, _wgslsmith_clamp_i32(max(arg_0, 12372i), _wgslsmith_clamp_i32(5163i, 2147483647i, -2147483647i), _wgslsmith_sub_i32(u_input.d.x, 30912i))));
    var_0 = firstLeadingBit(vec2<i32>(1i, 29445i));
    var var_1 = -999f;
    var_0 = -vec2<i32>(11019i, countOneBits(func_3(var_0.x, Struct_2(true, vec4<u32>(0u, 4506u, u_input.e, u_input.e), 1158f, Struct_1(false, 324f, arg_0), Struct_1(true, 411f, var_0.x)), true, reverseBits(u_input.b))));
    var var_2 = countOneBits(select(_wgslsmith_dot_vec2_i32(countOneBits(u_input.c.xz), vec2<i32>(var_0.x, u_input.d.x)), _wgslsmith_mod_i32(25550i, u_input.a.x), false)) <= (max(-20646i, 16562i) & reverseBits(u_input.d.x));
    return Struct_2(false, _wgslsmith_add_vec4_u32(min(~(~vec4<u32>(u_input.e, 67680u, u_input.e, u_input.b.x)), vec4<u32>(1945u >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(50417u, u_input.e), vec2<u32>(u_input.b.x, u_input.b.x)), firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(u_input.e, 1u)))), _wgslsmith_add_vec4_u32(~select(u_input.b, vec4<u32>(u_input.e, u_input.e, 1u, 1u), false), u_input.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1613f) * _wgslsmith_f_op_f32(-1666f - -487f)) != _wgslsmith_f_op_f32(step(-665f, _wgslsmith_f_op_f32(f32(-1f) * -1079f))), _wgslsmith_f_op_f32(f32(-1f) * -462f), u_input.d.x), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-247f, _wgslsmith_f_op_f32(-1036f - 783f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-8085i), 1i), u_input.d.zx)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, 955f), vec3<f32>(830f, arg_1, 646f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, arg_1, 390f))) + vec3<f32>(_wgslsmith_f_op_f32(arg_2.e.b - -745f), _wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(arg_1 - -650f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.b, -209f, arg_1) - vec3<f32>(arg_1, -1246f, arg_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.b, -572f, arg_2.e.b))))));
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c + -983f) - arg_1)), 763f, _wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.d.b - 1344f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.x, -381f))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 223f, arg_2.c), vec3<f32>(611f, 1250f, var_0.x), vec3<bool>(arg_2.e.a, false, arg_2.a)))))))));
    var var_2 = arg_0;
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_5(u_input.a.x), _wgslsmith_f_op_f32(-arg_2), func_2(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(-2147483647i, -5470i, ~u_input.c.x, -1i)))));
    var_0 = 199f;
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    return !(!(arg_0.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) - -1570f)), Struct_1(func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-481f, 1000f, -423f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f - 635f)), 657f), -612f, u_input.c.x | u_input.c.x), (abs(u_input.d.x) & countOneBits(~u_input.c.x)) & ~(-42675i), u_input.b, !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(floor(var_0.b.b))))), var_0.a)), var_0.b, ~firstTrailingBit(2147483647i), _wgslsmith_mod_vec4_u32(var_0.d, abs(~var_0.d)), vec2<bool>(var_0.e.x, var_0.e.x));
    var var_1 = !select(var_0.e, var_0.e, var_0.e);
    var var_2 = Struct_2(true, ~u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f * func_2(u_input.d.x).d.b))), Struct_1(true, _wgslsmith_f_op_f32(var_0.a + var_0.a), u_input.a.x), var_0.b);
    let var_3 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.xxw), _wgslsmith_f_op_f32(-var_3.b));
}

