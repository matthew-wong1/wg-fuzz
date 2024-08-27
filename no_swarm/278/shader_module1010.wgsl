struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, 84498u, 16514u, arg_0.a), max(vec4<u32>(u_input.b.x, arg_0.a, 102391u, arg_0.a), vec4<u32>(u_input.b.x, 64924u, 72775u, arg_0.a))), select(arg_0.a << (0u % 32u), 62167u, arg_0.b.x), 1u), abs(reverseBits(vec4<u32>(arg_0.a, 73387u, 36349u, 5350u) | vec4<u32>(4294967295u, 17406u, 6919u, 4294967295u)))), firstLeadingBit((countOneBits(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 1u)) & ~vec4<u32>(47338u, u_input.a, arg_0.a, u_input.b.x)) | vec4<u32>(0u, 1u ^ u_input.a, _wgslsmith_mult_u32(arg_0.a, arg_0.a), countOneBits(u_input.b.x))));
    let var_1 = arg_1;
    let var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(abs(u_input.b.xz), select(vec2<u32>(18265u, u_input.b.x), u_input.b.zy, true)) ^ _wgslsmith_mult_u32(66911u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.a, 50317u), ~928u, _wgslsmith_sub_u32(arg_0.a, 30493u))), !arg_0.b);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -281f);
    var var_4 = _wgslsmith_sub_u32(35587u, _wgslsmith_clamp_u32(arg_0.a | reverseBits(42070u), 0u, ~(~u_input.b.x)));
    return select(vec2<bool>(any(vec3<bool>(arg_0.b.x, true, false)), !((var_1.d.x != 1381f) || true)), !(!(!select(arg_0.b, var_2.b, vec2<bool>(var_2.b.x, arg_0.b.x)))), !(!(!(!arg_0.b.x))));
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    return vec2<bool>(any(!(!func_3(Struct_2(53615u, vec2<bool>(true, true)), arg_0.a))), true);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(25898u, func_2(Struct_4(Struct_1(arg_0.zy >> (u_input.b.xy % vec2<u32>(32u)), vec2<f32>(-643f, 1950f), _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(854f, -220f, -153f))), arg_0.x), countOneBits(arg_0.xy), 19174u, _wgslsmith_f_op_f32(ceil(-393f)))));
    let var_1 = min(abs(2147483647i), -1i);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-962f, 152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-171f))), var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(318f, _wgslsmith_f_op_f32(1298f + 496f)))), _wgslsmith_f_op_f32(-1516f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1254f, -1170f), -803f, var_0.b.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(318f, 1448f, true))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(793f, var_2)), _wgslsmith_f_op_f32(max(753f, var_2))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(260f, 1094f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, -558f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2) * vec2<f32>(258f, var_2)))), true)))));
    let var_4 = vec4<u32>(~0u >> (~min(30913u, ~u_input.b.x) % 32u), ~1u, min(~u_input.a, u_input.b.x), var_0.a | 0u);
    return Struct_1(-(~arg_0.zy ^ arg_0.yy), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(720f))), -652f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_2))), var_3.x, var_2), -arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(2147483647i, abs(~firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, -1i))));
    let var_1 = func_1(-(~vec3<i32>(-1i, var_0, var_0)) & firstLeadingBit(vec3<i32>(18178i, var_0, var_0)));
    var var_2 = select(vec4<bool>(true, true, true, true), !vec4<bool>(func_3(Struct_2(u_input.a, vec2<bool>(true, false)), Struct_1(vec2<i32>(41319i, var_0), vec2<f32>(var_1.b.x, 405f), var_1.b.x, var_1.d, 22546i)).x, true, true, true), true);
    var_2 = select(!select(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !(!vec4<bool>(false, true, var_2.x, var_2.x)), select(select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(false, var_2.x, var_2.x, false), var_2.x), vec4<bool>(true, true, true, true), true)), vec4<bool>(any(vec2<bool>(!var_2.x, 0u <= u_input.b.x)), all(vec2<bool>(true, var_2.x & true)), all(vec3<bool>(func_2(Struct_4(var_1, vec2<i32>(-25319i, 12445i), 41234u, var_1.c)).x, var_2.x, var_2.x | false)), any(vec4<bool>(all(var_2.zzy), select(true, var_2.x, true), true, true))), !func_2(Struct_4(func_1(vec3<i32>(var_1.a.x, 0i, 0i)), _wgslsmith_sub_vec2_i32(var_1.a, var_1.a), ~0u, var_1.c)).x);
    var var_3 = select(!(!select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, true, var_2.x, false), true), select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x), true), true)), !(!select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(true, true, false, var_2.x))), true);
    var var_4 = vec3<i32>(var_1.a.x, 71781i >> (_wgslsmith_div_u32(u_input.a, 82472u) % 32u), -_wgslsmith_add_i32(1i, var_0)) << (reverseBits(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(17342u, 0u, 1u, u_input.b.x), vec4<u32>(2642u, u_input.b.x, 0u, 15369u)), select(4294967295u, u_input.b.x, var_3.x), max(u_input.a, 0u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 0u);
}

