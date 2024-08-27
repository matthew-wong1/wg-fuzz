struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-634f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(620f, var_0) * vec2<f32>(var_0, var_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-335f, 509f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-253f, var_0))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -145f), vec2<f32>(var_0, -1397f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1000f, var_0, var_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -1584f, var_0, 2257f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, -162f, var_0, var_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -939f, var_0, 276f), vec4<f32>(var_0, -123f, var_0, 481f), vec4<bool>(arg_0.x, arg_1, arg_1, arg_1))), vec4<f32>(101f, -1159f, 816f, -984f))))));
    let var_2 = var_1;
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_1.b.x, var_0, -123f, 1119f)))))));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 682f, 358f, 970f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = max(u_input.a, u_input.a | ((vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & u_input.a) | (abs(u_input.a) ^ ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_1 = -1i;
    var var_2 = arg_0;
    var var_3 = u_input.b.x;
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(~firstLeadingBit(u_input.b.x), countOneBits(_wgslsmith_add_u32(1u, u_input.b.x)), 36728u, u_input.b.x) << (_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 1u, u_input.b.x >> (u_input.b.x % 32u), 4294967295u)) % vec4<u32>(32u)), u_input.b);
    return Struct_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(any(vec2<bool>(true, false)), !all(vec2<bool>(false, true))), false)), arg_0);
}

fn func_1() -> Struct_2 {
    let var_0 = -1i | u_input.a.x;
    let var_1 = 75203u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-781f, -200f)))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-417f * 449f), _wgslsmith_f_op_f32(f32(-1f) * -538f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1120f, -1799f, 2186f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, -867f, 833f, 423f) * vec4<f32>(-1775f, -1041f, 329f, 501f))))));
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.wz + var_2.a)) - var_2.b.yx), _wgslsmith_f_op_vec4_f32(-var_2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.b.x, var_2.b.x, 1917f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -439f), var_2.b.x, _wgslsmith_div_f32(-1017f, 454f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_2.b)))));
    var var_4 = Struct_2(vec2<bool>(false, var_3.a.x), var_3.c.b, var_2);
    return func_2(Struct_1(vec2<f32>(-722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x - 1000f))), vec4<f32>(492f, _wgslsmith_f_op_f32(-func_2(var_4.c, var_2.b).b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(121f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(var_4.a, false)).x + _wgslsmith_f_op_f32(trunc(var_4.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-556f, var_2.b.x, var_4.b.x, -1099f))))) * var_3.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = func_1();
    var var_1 = func_1();
    let var_2 = Struct_2(!func_1().a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, -1256f, var_1.b.x, -1486f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.c.a.x, var_1.c.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-161f, _wgslsmith_f_op_f32(-arg_0.c.a.x)) + var_1.b.yw), _wgslsmith_f_op_vec4_f32(func_2(func_2(Struct_1(var_0.b.xx, vec4<f32>(-258f, var_1.b.x, arg_0.b.x, 301f)), vec4<f32>(arg_0.b.x, -552f, -173f, var_1.b.x)).c, vec4<f32>(369f, -1000f, arg_0.c.b.x, -285f)).c.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, var_0.c.b.x, arg_1.a.x, -1300f))))));
    var var_3 = func_2(func_2(func_1().c, vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + -1261f), var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f * -780f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-870f)), _wgslsmith_f_op_f32(sign(var_0.c.b.x))))).c, vec4<f32>(_wgslsmith_f_op_f32(114f + arg_0.c.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f + 503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f) - _wgslsmith_f_op_f32(f32(-1f) * -342f)))), _wgslsmith_f_op_f32(var_2.b.x - -1215f), -456f)).c;
    var_3 = Struct_1(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.b.x)))))), var_2.b);
    return u_input.b.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = 2147483647i;
    let var_1 = Struct_2(vec2<bool>(true, any(vec3<bool>(arg_1.a.x > -182f, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f + arg_1.b.x)), arg_1.a.x, _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(arg_1.b.x - -3937f)), 1101f)), arg_1);
    let var_2 = var_1;
    var var_3 = vec4<bool>(false, var_2.a.x, all(!(!select(vec4<bool>(false, var_2.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, var_2.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.b * arg_1.b));
    return _wgslsmith_f_op_f32(-var_1.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(func_1(), func_1().c, _wgslsmith_mod_vec2_i32(reverseBits(u_input.a.xy), u_input.a.yy)), func_1().c));
    var var_1 = _wgslsmith_f_op_f32(func_5(u_input.b.x, func_1().c));
    var_1 = var_0;
    let var_2 = Struct_2(!func_1().a, vec4<f32>(func_1().c.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1839f * var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1237f)))), func_1().b.x, -1119f), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, -325f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1().c.a.x, _wgslsmith_f_op_f32(-396f + 787f), _wgslsmith_f_op_f32(min(var_0, -187f)), _wgslsmith_f_op_f32(406f + var_0)))));
    let var_3 = func_2(var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_2.b)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 615f, -610f, var_2.b.x)) + var_2.c.b))))).c;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - -489f) - var_0);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x - var_2.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.b.x * var_2.b.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.b.x * _wgslsmith_div_f32(1326f, var_3.a.x))))));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2224f), var_4, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2(Struct_1(var_2.c.b.xy, vec4<f32>(var_4, var_0, 1990f, -128f)), var_2.c.b).c.b.x)) - _wgslsmith_f_op_f32(max(278f, var_3.b.x))) - -984f));
    var var_6 = Struct_2(!(!var_2.a), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(!var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(91342u, 4294967295u, u_input.b.x, 69407u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) != _wgslsmith_mod_u32(u_input.b.x, 13619u))).x, var_3.b.x, _wgslsmith_div_f32(-824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(596f)))), var_3.b.x), func_2(var_3, var_2.b).c);
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(~u_input.b.wz), _wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.b.ww), vec2<u32>(31222u, u_input.b.x)) & u_input.b.wx), 1058f, -abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-22253i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -16628i)), u_input.a.x)), var_3.b, ~func_4(Struct_2(vec2<bool>(true, var_2.a.x), vec4<f32>(var_5.x, -1242f, -129f, 434f), Struct_1(var_6.b.zz, var_3.b)), Struct_1(vec2<f32>(-494f, var_5.x), var_3.b), vec2<i32>(55082i, 0i)));
}

