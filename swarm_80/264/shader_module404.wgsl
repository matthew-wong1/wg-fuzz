struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(vec2<u32>(u_input.d, 43454u) >> (u_input.b.xy % vec2<u32>(32u)), 8569i);
    var var_1 = var_0.b;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(975f, 756f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-845f, 150f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)))), _wgslsmith_f_op_f32(f32(-1f) * -1551f), _wgslsmith_f_op_f32(-1974f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-733f, 739f))) * -319f)));
    return -31374i << (u_input.b.x % 32u);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_add_vec4_u32(firstTrailingBit(arg_2.b.b), arg_2.b.b), ~75323u, select(~max(vec2<i32>(u_input.a, u_input.c), vec2<i32>(146i, -2147483647i)), -arg_0.d.xy, arg_1.x) & vec2<i32>(-1i, func_3() >> (_wgslsmith_add_u32(u_input.d, arg_2.b.b.x) % 32u)));
    var_0 = Struct_1(true, var_0.b, var_0.c | max(firstTrailingBit(0u << (1u % 32u)), ~65028u), var_0.d);
    return !all(vec4<bool>(all(!arg_1), var_0.a, var_0.a & (false || arg_2.b.a), arg_2.b.a));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-865f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1092f - 500f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f - 1000f) - 1f), _wgslsmith_div_f32(1769f, -1000f), true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 429f, -1489f), vec3<f32>(-419f, var_0, -1000f), vec3<bool>(true, true, true)))) + vec3<f32>(var_0, 111f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 * 439f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * var_0), _wgslsmith_f_op_f32(103f * var_0))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 2203f, 908f), vec3<f32>(884f, -625f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, var_0, 209f)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, 1231f, var_0))) + _wgslsmith_div_vec3_f32(vec3<f32>(-771f, -732f, 272f), vec3<f32>(var_0, var_0, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, 555f, 1724f) - vec3<f32>(var_1.x, -647f, -996f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -784f), vec3<f32>(var_0, -327f, -2590f))))));
    let var_2 = ~1u;
    let var_3 = !vec4<bool>(true, func_2(Struct_4(var_1.x, vec3<u32>(8707u, 1u, 0u), vec2<i32>(-29299i, -1i), vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a)), vec3<bool>(true, true, false), Struct_2(vec2<f32>(-682f, var_1.x), Struct_1(false, vec4<u32>(u_input.d, 4294967295u, 88793u, u_input.b.x), 20452u, vec2<i32>(-2147483647i, u_input.a)))) != false, !func_2(Struct_4(var_0, u_input.b, vec2<i32>(25223i, 2147483647i), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), Struct_2(vec2<f32>(var_1.x, var_0), Struct_1(false, vec4<u32>(0u, var_2, 132305u, u_input.d), u_input.b.x, vec2<i32>(u_input.a, u_input.a)))), true);
    return !(!(~u_input.d == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(abs(reverseBits(~u_input.d)), 4294967295u, !select(true, true, func_1()));
    var_0 = ~_wgslsmith_div_u32(0u, ~(~87734u ^ (u_input.b.x | 1579u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, 368f, -1000f, 533f) * vec4<f32>(-1000f, 354f, -984f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1247f, 634f, 1249f, -305f)), false))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1870f) - _wgslsmith_f_op_f32(min(764f, -700f))), 710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1211f)) * _wgslsmith_f_op_f32(2173f * 625f)), _wgslsmith_f_op_f32(f32(-1f) * -1751f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(616f, -1000f, 1153f, -865f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(308f, 455f, -252f, -621f) + vec4<f32>(1143f, -728f, 1335f, -2057f))))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -288f);
    var_0 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, abs(4294967295u), u_input.d | u_input.d, abs(45369u)), select(vec4<u32>(1u, u_input.b.x, 1u, 83553u), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 3112u, 44649u, 15071u), vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.d, 41532u, 4294967295u)), vec4<bool>(true, true, true, true))), u_input.b.x);
}

