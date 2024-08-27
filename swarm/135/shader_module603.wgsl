struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    var var_0 = vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(46827u, u_input.a) << (vec2<u32>(33620u, arg_2.x) % vec2<u32>(32u)), reverseBits(vec2<u32>(81520u, arg_1)))), firstTrailingBit(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(u_input.a, u_input.a))) ^ _wgslsmith_div_u32(u_input.b, 0u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, -1000f, 1000f, -733f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1477f, -2880f, -1075f, -708f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, _wgslsmith_div_f32(-1750f, -1698f), _wgslsmith_f_op_f32(select(1000f, 577f, false)), _wgslsmith_div_f32(1201f, 869f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(156f, _wgslsmith_f_op_f32(-var_1.x)), -656f)), var_1.x, _wgslsmith_f_op_f32(var_1.x - -639f));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, -152f), _wgslsmith_div_f32(-895f, var_1.x), var_1.x, _wgslsmith_f_op_f32(trunc(-598f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1009f))))))), vec2<bool>(true, true), !select(!vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(any(vec2<bool>(false, arg_0)), true, arg_0, arg_0), !arg_0), arg_1);
    return firstLeadingBit(~(-2147483647i));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_2(!(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1119f, _wgslsmith_f_op_f32(-1245f * -206f)))), vec2<bool>(true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), all(vec3<bool>(false, false, false))), ~u_input.c.x), _wgslsmith_f_op_f32(abs(707f)));
    var var_1 = firstTrailingBit(func_3(select(all(var_0.c.b), true, var_0.c.d <= var_0.b) | true, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_u32(u_input.c.xyx, u_input.c.yzx), 1643u), ~reverseBits(u_input.c.xzy)), vec4<u32>(var_0.c.d, _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.c.d, 4294967295u), _wgslsmith_div_u32(4294967295u, 1u)), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(33033u, u_input.a, 89407u), ~u_input.c.yxy))));
    var_1 = u_input.e;
    var var_2 = ~reverseBits(_wgslsmith_div_u32(var_0.b, ~4294967295u));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, var_0.c.a))), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.d, 851f, var_0.c.c.x)), _wgslsmith_f_op_f32(823f * var_0.c.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, var_0.c.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d, -564f), vec2<f32>(353f, var_0.d)))))))));
    return vec3<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_add_i32(-u_input.e, u_input.e & 1i)), u_input.d.x), _wgslsmith_add_i32(u_input.d.x, u_input.d.x), 1i);
}

fn func_4(arg_0: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(774f, _wgslsmith_f_op_f32(min(-1175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(252f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(861f)), _wgslsmith_f_op_f32(f32(-1f) * -462f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1618f, _wgslsmith_f_op_f32(960f + -101f)), 1351f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1058f, -1000f, 643f, 684f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, -339f, 613f, 653f)))))));
    var var_1 = true;
    var_1 = (~abs(~u_input.c.x) <= u_input.c.x) && any(vec3<bool>(true, true, -arg_0.x == ~0i));
    var var_2 = vec3<i32>(arg_0.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.c.x, 7718u), ~u_input.c.wwz), max(u_input.a << (1u % 32u), ~u_input.c.x)) % 32u), u_input.d.x, -29752i);
    var var_3 = _wgslsmith_f_op_f32(round(var_0.x));
    return true;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = false;
    var_0 = !arg_0.x;
    var_0 = arg_0.x && func_4(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -1i, u_input.e) << (u_input.c.wxx % vec3<u32>(32u)), func_2()));
    let var_1 = ~50806u >= u_input.a;
    let var_2 = select(!(!arg_0.zx), !(!vec2<bool>(true, any(arg_0.zz))), select(vec2<bool>(true, arg_0.x), !arg_0.xw, !arg_0.ww));
    return Struct_1(872f, vec2<bool>(arg_0.x, arg_0.x), arg_0, _wgslsmith_div_u32(u_input.c.x & (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a, 88548u, 1u, u_input.a)) >> (u_input.c.x % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.ywz, u_input.c.yxw), vec3<u32>(u_input.a, u_input.c.x, 4294967295u) << (u_input.c.zyw % vec3<u32>(32u))) >> (min(reverseBits(u_input.b), 21828u) % 32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = vec3<bool>(any(arg_2), arg_2.x, false);
    let var_1 = arg_1;
    var var_2 = Struct_1(var_1.a, func_1(select(var_1.c, !vec4<bool>(var_0.x, arg_1.c.x, arg_2.x, false), !select(var_1.c, arg_1.c, var_0.x))).b, vec4<bool>(all(!(!var_1.b)), var_1.c.x, true, true), ~arg_1.d);
    let var_3 = arg_1;
    var var_4 = _wgslsmith_sub_vec3_u32(~vec3<u32>((arg_1.d << (var_1.d % 32u)) | ~1u, u_input.b, 14886u), min(vec3<u32>(var_3.d, 0u, ~_wgslsmith_div_u32(4294967295u, var_1.d)), ~vec3<u32>(countOneBits(10377u), ~var_3.d, ~292u)));
    return 467f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(1i, func_1(vec4<bool>(true, false, false, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))) + _wgslsmith_f_op_f32(-149f * -1592f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1776f))))), 202f);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1012f + func_1(vec4<bool>(false, false, true, false)).a) * _wgslsmith_f_op_f32(round(-323f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1038f * -1356f) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_5(u_input.e, Struct_1(var_0.x, vec2<bool>(false, false), vec4<bool>(true, true, false, false), u_input.c.x), vec3<bool>(false, false, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 0i, _wgslsmith_dot_vec2_u32(~u_input.c.wy, u_input.c.zx));
}

