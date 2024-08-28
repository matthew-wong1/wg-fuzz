struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = select(_wgslsmith_clamp_u32(~firstLeadingBit(_wgslsmith_clamp_u32(30600u, 6426u, 1u)), max(~_wgslsmith_mult_u32(1u, 0u), reverseBits(4294967295u) << (~4294967295u % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(73983u, 10813u), vec2<u32>(4294967295u, 1797u)))), 46213u, any(select(!vec4<bool>(arg_0.a.x, true, true, true), vec4<bool>(false, true, false, arg_0.a.x), any(arg_0.a.xy))) & all(select(arg_0.a, vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))));
    var var_1 = 903f;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-193f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(642f, -671f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -155f), _wgslsmith_f_op_f32(f32(-1f) * -1148f)))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1685f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(250f)))) + 1210f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) - 2015f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(628f)), _wgslsmith_f_op_f32(449f + -193f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(ceil(304f)), !arg_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-486f, -2026f, -492f))))), false || (!arg_0.a.x & select(arg_0.a.x, arg_0.a.x, false)))));
    return select(!arg_0.a.zz, arg_0.a.yx, !arg_0.a.x);
}

fn func_2() -> vec4<u32> {
    let var_0 = vec3<bool>(any(func_3(Struct_2(vec3<bool>(true, false, true)))), select(any(vec3<bool>(true, true, false)), true, true), true | (any(vec4<bool>(true, true, true, true)) & any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-800f - -357f), -227f, _wgslsmith_f_op_f32(f32(-1f) * -519f), -248f) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-987f)), -1504f, -1702f, _wgslsmith_f_op_f32(f32(-1f) * -2337f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(903f, 134f, 303f, -1661f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, 1598f, 1282f, 1000f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1483f), -367f, -2545f, -1316f)))))));
    let var_2 = Struct_1(vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27663u, 0u), vec2<u32>(0u, 1u)), 1u), 48911u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(11389u, 0u), ~vec2<u32>(0u, 46271u), var_0.yy))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(max(var_1.x, -1092f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_div_f32(1705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(174f))) - _wgslsmith_f_op_f32(-387f - _wgslsmith_div_f32(-1000f, var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1387f));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1236f, 658f, -1000f, 375f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 583f, var_1.x, -617f))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), -1000f, 786f, -401f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 834f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -500f, var_1.x, var_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -540f), -359f, -991f, -1759f))));
    return var_2.a;
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    return Struct_3(((arg_0 >> (arg_0 % vec4<u32>(32u))) << (arg_0 % vec4<u32>(32u))) | ~func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(122f, 1602f)) * -572f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1941f)) - _wgslsmith_f_op_f32(2664f - -1194f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(vec4<u32>(27883u, _wgslsmith_clamp_u32(~0u, firstLeadingBit(1365u), min(1004u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), abs(vec2<u32>(1u, 4294967295u))), ~0u)));
    var var_1 = !(!(!vec4<bool>(func_3(Struct_2(vec3<bool>(false, false, false))).x, false, all(vec4<bool>(true, true, false, false)), 0i >= u_input.a.x)));
    var_0 = Struct_3(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 31150u, 30900u), func_2()), max(vec4<u32>(countOneBits(var_0.a.x), _wgslsmith_add_u32(26195u, var_0.a.x), _wgslsmith_mod_u32(29022u, 68471u), 8367u), vec4<u32>(var_0.a.x, _wgslsmith_add_u32(var_0.a.x, var_0.a.x), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 19312u, 748u, var_0.a.x), vec4<u32>(10799u, var_0.a.x, 4294967295u, 4294967295u)))), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    let var_2 = vec4<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1361f + _wgslsmith_f_op_f32(trunc(var_0.b))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b * -416f), _wgslsmith_f_op_f32(-var_0.b))))), 1f, var_0.b);
    let var_3 = Struct_2(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, !var_1.x, true), vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, false)), any(var_1.zw), false)));
    var_0 = Struct_3(~vec4<u32>(abs(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a, var_0.a), vec4<u32>(1u, 34866u, var_0.a.x, var_0.a.x)), ~max(var_0.a.x, var_0.a.x), abs(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.b));
    var_0 = Struct_3(countOneBits(~vec4<u32>(var_0.a.x, ~var_0.a.x, _wgslsmith_div_u32(var_0.a.x, 1u), 1u)), var_2.x);
    var_0 = Struct_3(~(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.a.zy, var_0.a.wx), countOneBits(var_0.a.x), abs(39303u), var_0.a.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(u_input.a.x), abs(_wgslsmith_mult_i32(-22829i, countOneBits(u_input.a.x)))), (_wgslsmith_add_u32(min(73521u, var_0.a.x), _wgslsmith_dot_vec3_u32(var_0.a.wzw, var_0.a.xwy)) & var_0.a.x) ^ max(_wgslsmith_clamp_u32(~var_0.a.x, ~1u, var_0.a.x), 1143u), ~(firstLeadingBit(vec4<u32>(var_0.a.x, 5884u, var_0.a.x, 4294967295u) >> (vec4<u32>(var_0.a.x, 6426u, var_0.a.x, var_0.a.x) % vec4<u32>(32u))) & select(~vec4<u32>(54708u, var_0.a.x, 105683u, 90565u), ~var_0.a, !vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x))));
}

