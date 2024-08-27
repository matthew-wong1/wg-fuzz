struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1861f, -569f), vec2<f32>(1654f, -661f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, -1634f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1011f, 1594f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(3074f, 1303f) + vec2<f32>(564f, 899f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), 1419f), !(abs(u_input.b) < _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -22403i, u_input.b, 2646i), vec4<i32>(-19828i, u_input.b, -30166i, 40971i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1512f))))), u_input.c.x, u_input.c.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1833f, -753f, 576f) + vec3<f32>(-1637f, 1806f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1892f, 132f))), all(vec4<bool>(true, true, true, true)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -353f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(max(1390f, -1127f))), vec3<f32>(1f, 1f, 1f))));
    var_0 = Struct_1(var_0.e.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-177f))), 0u, select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4993u, u_input.a.x), ~vec2<u32>(var_0.c, 4294967295u)), ~max(vec2<u32>(12025u, var_0.c), u_input.c.yx)), vec2<u32>(u_input.c.x, var_0.c), false), var_0.e);
    var var_1 = true;
    var_0 = Struct_1(var_0.e.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))), 3908u, _wgslsmith_sub_vec2_u32(var_0.d, var_0.d), vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(var_0.a.x * 392f), -2318f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) - var_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(545f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, var_0.b))) * 2430f)));
}

fn func_2() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-284f))), _wgslsmith_f_op_f32(f32(-1f) * -1246f)))), -783f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))), u_input.a.x, ~u_input.c.zx >> (u_input.c.zz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, var_0.x, -1254f) - vec3<f32>(var_0.x, 1199f, var_0.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, -352f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, 1740f))))))));
    let var_2 = u_input.a.x;
    var_1 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(var_1.a.x - -555f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(955f * var_0.x), _wgslsmith_div_f32(var_0.x, var_1.e.x), any(vec2<bool>(true, false)))) * _wgslsmith_f_op_f32(-626f + _wgslsmith_f_op_f32(-var_1.a.x))))), ~u_input.a.x, vec2<u32>(u_input.c.x, var_1.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 193f, var_0.x) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -1027f)))))) * _wgslsmith_f_op_vec3_f32(sign(var_1.e))));
    return max(_wgslsmith_add_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 0u, var_1.d.x, var_2), vec4<u32>(var_1.d.x, 41646u, var_2, var_1.d.x)), u_input.a.x), min(u_input.a.x, ~(u_input.a.x << (0u % 32u)))), var_1.c);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1.a, Struct_1(arg_1.b.a, -1080f, u_input.c.x, u_input.c.zy, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, -1590f, _wgslsmith_f_op_f32(abs(arg_3.x))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.b.e))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(1787f * _wgslsmith_f_op_f32(trunc(672f)))) + vec2<f32>(arg_1.b.a.x, arg_3.x)), vec3<bool>(true, arg_1.d.x, !arg_1.d.x));
    var var_1 = arg_1;
    var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_3 = arg_1.a.x;
    return arg_1;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = -860f;
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_f_op_f32(min(741f, -461f));
    let var_2 = func_4(1u, Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 29622i), vec2<i32>(1i, -1i) & vec2<i32>(-37805i, u_input.b)), Struct_1(arg_0.wy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(56003u, 0u, u_input.a.x, u_input.a.x)), func_2()), u_input.a, _wgslsmith_f_op_vec3_f32(arg_0.xwz * vec3<f32>(arg_0.x, 1296f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, -1282f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), all(vec2<bool>(false, true)) | true, false)), firstLeadingBit(select(abs(min(vec2<i32>(14300i, 23637i), vec2<i32>(u_input.b, u_input.b))), vec2<i32>(-1i, u_input.b), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0)) + vec4<f32>(111f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-994f - arg_0.x))), arg_0.x, arg_0.x)));
    var_1 = -702f;
    return func_4(2411u, var_2, var_2.a, vec4<f32>(var_2.b.b, -1842f, _wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = arg_1.b;
    var var_1 = Struct_2(vec2<i32>(1i, -1i), var_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1750f, -780f)), _wgslsmith_f_op_vec2_f32(floor(arg_1.b.e.yy))), arg_1.d);
    let var_2 = _wgslsmith_f_op_f32(-3323f - arg_1.b.a.x);
    let var_3 = firstLeadingBit(abs(max(~vec4<u32>(u_input.c.x, 43274u, var_0.c, 4294967295u), vec4<u32>(func_1(vec4<f32>(var_0.b, -749f, var_1.b.a.x, -1317f)).b.d.x, ~28855u, select(var_0.c, 4294967295u, false), 47224u))));
    var var_4 = var_3;
    return var_4.yxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = ~func_5(true, func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2675f, 1204f, -533f, -514f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(985f, -1316f, 917f, 1289f))))));
    var_0 = all(!select(vec4<bool>(false, select(true, false, false), false, u_input.b >= u_input.b), vec4<bool>(u_input.b == -28779i, any(vec2<bool>(false, true)), false, true), true));
    var var_2 = vec4<i32>(2147483647i, -1i, abs(-u_input.b) >> (func_4(u_input.a.x ^ 55650u, Struct_2(vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<f32>(1000f, -1163f), 634f, u_input.a.x, vec2<u32>(u_input.c.x, 1u), vec3<f32>(248f, 1678f, 1053f)), vec2<f32>(-191f, -1077f), vec3<bool>(false, false, false)), reverseBits(vec2<i32>(u_input.b, 0i)), vec4<f32>(-690f, -1000f, -1067f, -982f)).b.d.x % 32u), 1i) >> (abs(vec4<u32>(~36081u, u_input.c.x, 3000u, u_input.a.x)) % vec4<u32>(32u));
    var var_3 = vec4<bool>(reverseBits(_wgslsmith_clamp_i32(18110i, u_input.b, 70164i)) < 0i, true, true, true);
    let var_4 = ~(func_5(any(var_3.xxz), Struct_2(var_2.ww, func_4(65120u, Struct_2(vec2<i32>(-21824i, 41534i), Struct_1(vec2<f32>(-455f, -1191f), -559f, var_1.x, var_1.yz, vec3<f32>(-1861f, 329f, 529f)), vec2<f32>(-1086f, -1153f), vec3<bool>(true, var_3.x, var_3.x)), vec2<i32>(3264i, -19867i), vec4<f32>(2338f, -830f, -267f, -1269f)).b, _wgslsmith_div_vec2_f32(vec2<f32>(-370f, -2065f), vec2<f32>(-244f, 452f)), !vec3<bool>(true, var_3.x, true))).x << (_wgslsmith_div_u32(~4294967295u, max(1u, u_input.a.x) & func_5(var_3.x, Struct_2(vec2<i32>(u_input.b, var_2.x), Struct_1(vec2<f32>(963f, -572f), 146f, 21850u, vec2<u32>(var_1.x, 1u), vec3<f32>(-1933f, -667f, -1219f)), vec2<f32>(700f, -1858f), vec3<bool>(var_3.x, false, var_3.x))).x) % 32u));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -787f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, -1000f))))), 0i, _wgslsmith_mod_u32(~_wgslsmith_add_u32(var_1.x, ~29263u), reverseBits(func_4(u_input.c.x, Struct_2(vec2<i32>(u_input.b, 0i), Struct_1(vec2<f32>(947f, -1000f), -1097f, u_input.a.x, vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1860f, 1000f, -180f)), vec2<f32>(-727f, -122f), var_3.yzw), vec2<i32>(0i, -1i), vec4<f32>(806f, -1591f, -1051f, -442f)).b.c) >> (4294967295u % 32u)));
}

