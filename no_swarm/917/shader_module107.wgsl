struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(max(i32(-1i) * -1025i, u_input.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1326f, 2393f, 1419f, 205f), vec4<f32>(-618f, -870f, 1000f, -1000f), true)) * _wgslsmith_div_vec4_f32(vec4<f32>(-580f, -438f, 374f, 289f), vec4<f32>(853f, -1098f, -1000f, 896f))))), -959f);
    var var_1 = false & any(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_2 = !all(vec3<bool>(true, true, true));
    let var_3 = Struct_2(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(u_input.d)), firstTrailingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 0i, u_input.d.x, var_0.a.a), vec4<i32>(u_input.b.x, -1i, var_0.a.a, 0i)))), Struct_1(~var_0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.b)))), Struct_1(22010i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.a.b)))))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.ywz, vec3<i32>(var_0.a.a, -19369i, 3297i)), -1i) ^ firstLeadingBit(1i), firstTrailingBit(max(var_0.a.a, -2147483647i)) & (i32(-1i) * -18731i), _wgslsmith_mult_i32(countOneBits(u_input.e), u_input.d.x ^ max(var_0.a.a, -1i))));
    var_1 = any(!vec2<bool>(all(vec4<bool>(var_2, true, true, true)), select(all(vec2<bool>(var_2, var_2)), false, var_3.d.a <= 0i)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.b * var_3.d.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(552f)), _wgslsmith_f_op_f32(1000f + -279f), 1103f, _wgslsmith_f_op_f32(var_3.d.b.x + var_3.d.b.x))), var_0.a.b, select(var_2, var_2, var_2))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_0.a.b, _wgslsmith_f_op_vec4_f32(round(var_3.d.b)), false)), vec4<f32>(_wgslsmith_f_op_f32(1076f - var_3.c.b.x), _wgslsmith_f_op_f32(-var_0.b), var_3.d.b.x, 1417f), !select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(true, false, var_2, var_2), vec4<bool>(var_2, true, var_2, true))))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(func_3()))), arg_0);
    let var_1 = arg_1;
    var var_2 = -abs(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.a.a, _wgslsmith_add_i32(34165i, var_0.a.a), ~30045i, max(-1i, 2147483647i))));
    let var_3 = Struct_4(Struct_2(-2410i, 1i, Struct_1(u_input.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, var_0.a.b.x, var_0.b)), _wgslsmith_f_op_vec4_f32(-var_0.a.b), select(arg_2.x, arg_2.x, false)))), Struct_1(i32(-1i) * -41943i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, 1468f, var_0.b, 140f))))), ~(~select(u_input.d.zxy, vec3<i32>(1i, -1i, 4990i), arg_2.x))));
    var var_4 = (-1330f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)) && false;
    return var_0.a.b.xww;
}

fn func_1() -> u32 {
    let var_0 = max(1u, abs(~(~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, -1405f, -680f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, -1000f, -462f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2509f, 666f, -1311f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-307f * -153f), _wgslsmith_f_op_f32(477f - -1125f))), ~(~var_0), vec2<bool>(false, true))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, -1815f, 2602f) - vec3<f32>(433f, 547f, 3753f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1370f, -501f, -1165f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))))));
    let var_2 = Struct_2(u_input.b.x, ~1i, Struct_1(_wgslsmith_mult_i32(2147483647i, select(-u_input.d.x, 1i, any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-792f, 766f, var_1.x, 111f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -505f) + vec4<f32>(-1961f, -1067f, -1419f, 852f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<f32>(var_1.x, var_1.x, 1634f, var_1.x)))))), Struct_1(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(306f, var_1.x, var_1.x, var_1.x)))), vec3<i32>(firstLeadingBit(firstLeadingBit(11947i)) >> (~select(30528u, var_0, false) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(17516i, u_input.b.x, -1i), vec3<i32>(u_input.e, u_input.d.x, u_input.b.x)), max(u_input.b.zzy, vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), 10368i, u_input.b.x), 2147483647i));
    var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.b.x))), -249f), var_2.c.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1341f - 379f), 1267f))), vec3<f32>(1255f, var_2.c.b.x, 1459f), true));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() ^ (u_input.c >> ((_wgslsmith_mod_u32(4294967295u, 6523u) & _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(4294967295u, u_input.c))) % 32u));
    let var_1 = Struct_4(Struct_2(u_input.d.x, ~u_input.e, Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), u_input.b.wx), vec4<f32>(_wgslsmith_f_op_f32(select(295f, 1000f, false)), _wgslsmith_f_op_f32(3044f + -1000f), -601f, _wgslsmith_f_op_vec4_f32(func_3()).x)), Struct_1(u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(555f, -975f, 753f, -251f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, -511f, -302f, 149f)))), vec3<i32>(_wgslsmith_clamp_i32(u_input.e, u_input.d.x, ~u_input.e), u_input.e, -11575i)));
    var var_2 = ~(~(~(-abs(vec4<i32>(u_input.e, -1i, 7281i, -2147483647i)))));
    var var_3 = Struct_2(-22445i, abs(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-18983i, u_input.e, u_input.d.x, var_2.x) >> (vec4<u32>(0u, 0u, 1u, 18988u) % vec4<u32>(32u))), vec4<i32>(-1i, -2643i, _wgslsmith_mod_i32(-59102i, var_1.a.e.x), _wgslsmith_add_i32(var_1.a.a, u_input.d.x)))), var_1.a.d, Struct_1(_wgslsmith_add_i32(-40712i, var_1.a.d.a), var_1.a.c.b), reverseBits(min(vec3<i32>(u_input.e, -1i, ~14201i), u_input.d.xww)));
    var var_4 = 26642u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.a.x)), _wgslsmith_mod_i32(2147483647i, u_input.b.x), min(~u_input.a.x, u_input.c), -(i32(-1i) * -_wgslsmith_mod_i32(6249i, -2147483647i)));
}

