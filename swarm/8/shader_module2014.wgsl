struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> i32 {
    var var_0 = !vec4<bool>((any(vec4<bool>(false, true, false, true)) | false) || !(arg_1.c > 780f), true, true, max(-arg_1.d.a.x, _wgslsmith_mod_i32(arg_1.d.a.x, u_input.b.x)) < (u_input.b.x | arg_1.d.a.x));
    var_0 = vec4<bool>(var_0.x, var_0.x, false, true);
    let var_1 = ~28004u;
    let var_2 = firstLeadingBit(max(u_input.a, -_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(arg_1.a.a.x, u_input.b.x, -67591i)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(39784u, 71426u, 21378u), vec3<u32>(var_1, arg_1.b, u_input.d)) % vec3<u32>(32u))));
    let var_3 = var_0.yyy;
    return -arg_1.d.a.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_4(Struct_1(vec2<i32>(u_input.a.x, func_3(select(u_input.d, u_input.d, false), Struct_4(Struct_1(vec2<i32>(2147483647i, -3394i)), 88665u, 1754f, Struct_1(vec2<i32>(4265i, u_input.b.x)))))), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-200f, 760f)), Struct_1(u_input.b));
    var var_1 = -vec2<i32>(i32(-1i) * -1i, 1i);
    var var_2 = Struct_4(Struct_1(var_0.d.a), u_input.c, var_0.c, Struct_1(u_input.a.yy));
    var var_3 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(min(1u, var_2.b), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, var_2.b, 0u), ~vec4<u32>(u_input.d, 15746u, var_0.b, var_2.b))), ~vec3<u32>(41801u, var_0.b, ~1u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, var_2.b, var_2.b)), vec3<u32>(_wgslsmith_clamp_u32(1u, 59262u, 1u), abs(0u), select(var_0.b, u_input.d, false))), abs(~vec3<u32>(24185u, 79553u, 11988u)), vec3<u32>(4294967295u, var_2.b << (4294967295u % 32u), 29590u) | select(vec3<u32>(var_2.b, var_0.b, 4294967295u), ~vec3<u32>(48595u, 38818u, u_input.d), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), vec3<bool>(true, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), false));
    let var_4 = var_0.c;
    return ~(~0u);
}

fn func_1() -> i32 {
    var var_0 = ~(-36174i);
    let var_1 = select(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, any(vec2<bool>(false, false)), select(false, true, true), true), vec4<bool>(true, true, true, all(vec3<bool>(true, false, false)))), vec4<bool>(false, func_2() > 68090u, (false && any(vec4<bool>(true, true, true, false))) == all(vec3<bool>(true, true, true)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false))), !all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), true)));
    var var_2 = -63512i;
    let var_3 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~(u_input.d >> (0u % 32u)), _wgslsmith_mult_u32(u_input.d | u_input.c, _wgslsmith_mult_u32(8963u, u_input.d))), ~u_input.d), countOneBits(u_input.c), u_input.d, ~abs(~(u_input.d | 60832u)));
    let var_4 = Struct_1(~u_input.a.xz);
    return firstTrailingBit(-14272i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -29394i | u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(789f)))), 469f));
    let var_2 = vec3<i32>(i32(-1i) * -(i32(-1i) * -14535i), func_1(), -min(u_input.b.x, 1i));
    var_1 = _wgslsmith_f_op_f32(2058f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(2283f)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-195f + -862f), _wgslsmith_f_op_f32(f32(-1f) * -494f), any(vec3<bool>(false, false, false)))))) + -1040f));
    var var_3 = _wgslsmith_f_op_f32(-1944f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2150f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(-1180f)), 137f, -212f, -1358f), vec4<f32>(_wgslsmith_f_op_f32(floor(226f)), -758f, -629f, _wgslsmith_div_f32(298f, -635f)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(779f * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-782f, 2204f, 1259f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(214f, -1049f, -1357f), vec3<f32>(235f, 529f, -557f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-685f, -341f, 617f))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), _wgslsmith_sub_u32(_wgslsmith_add_u32(min(u_input.c, 29232u) >> (reverseBits(u_input.d) % 32u), ~_wgslsmith_sub_u32(u_input.d, 88272u)), 39765u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1231f)), _wgslsmith_div_f32(-152f, 1510f))))), 42679i);
}

