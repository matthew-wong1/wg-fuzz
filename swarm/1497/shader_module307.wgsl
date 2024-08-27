struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = -min(arg_2.c.b | _wgslsmith_mult_i32(arg_2.d.d, arg_0.d), _wgslsmith_mod_i32(reverseBits(0i), -2147483647i >> (0u % 32u))) << (~41454u % 32u);
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.c.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 656f, 2475f)))), -1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.c, -1i), vec3<i32>(arg_0.c, 6680i, 0i)), u_input.a, _wgslsmith_sub_i32(-25492i, arg_2.d.d), _wgslsmith_sub_i32(0i, u_input.b.x))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.d, 1i, _wgslsmith_add_i32(arg_2.d.d, -20810i)), arg_0.c)), Struct_3(arg_0.a.x), Struct_2(arg_2.a, arg_2.c, arg_0, arg_2.c), u_input.c);
    let var_2 = false;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(1519f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 264f) + _wgslsmith_f_op_f32(select(arg_2.c.a.x, 1780f, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1672f - -1289f) + _wgslsmith_f_op_f32(min(-1263f, arg_0.a.x))))))), -1310f);
    var_0 = _wgslsmith_mult_i32(arg_0.b, max(u_input.b.x, -32386i));
    return var_1.b.a;
}

fn func_3() -> vec3<f32> {
    var var_0 = ~u_input.d >> (43826u % 32u);
    let var_1 = -vec4<i32>(_wgslsmith_mod_i32(81114i, u_input.a), ~_wgslsmith_sub_i32(-u_input.b.x, 2147483647i), -1i, select(-2147483647i | u_input.a, ~(i32(-1i) * -1i), true));
    var_0 = 52339u;
    let var_2 = var_1.x | _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(0i, -2147483647i)), vec2<i32>(-5979i, u_input.a) & (u_input.b.zy << (u_input.c.yy % vec2<u32>(32u)))), -5594i);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-177f, -556f, 2576f)) + vec3<f32>(-616f, 106f, -2191f))), ~0i, -1i, _wgslsmith_dot_vec3_i32(-var_1.yxw, select(vec3<i32>(0i, -1i, var_1.x), var_1.xyx, vec3<bool>(true, false, true))) >> (_wgslsmith_sub_u32(abs(1u), ~u_input.c.x) % 32u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1599f * 2184f), -1225f, false)) * _wgslsmith_f_op_f32(-698f + _wgslsmith_f_op_f32(max(-503f, 134f))))), Struct_2(vec3<bool>(!any(vec3<bool>(false, true, false)), true, true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1195f, -163f, -1207f)), _wgslsmith_sub_i32(11008i, u_input.b.x) << (~4294967295u % 32u), _wgslsmith_mult_i32(var_1.x, u_input.b.x), _wgslsmith_mod_i32(25723i, -2147483647i) << (u_input.d % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(514f, -1000f, 1630f))))), countOneBits(var_1.x << (u_input.d % 32u)), var_2, var_2), Struct_1(vec3<f32>(1f, 1f, 1f), var_2, firstLeadingBit(1i), -reverseBits(var_1.x))), (_wgslsmith_sub_vec3_u32(min(u_input.c, u_input.c), u_input.c) ^ u_input.c) | _wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, u_input.c.x, 4294967295u), select(u_input.c, vec3<u32>(u_input.d, 1u, u_input.c.x), vec3<bool>(true, false, false))), u_input.c));
    return var_3.c.b.a;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-364f, 1541f, -376f), u_input.a, -18840i, -7500i), vec2<u32>(43455u, u_input.c.x), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-382f, 2099f, 1227f), u_input.a, u_input.a, u_input.a), Struct_1(vec3<f32>(-658f, -136f, -689f), -2147483647i, -81178i, u_input.a), Struct_1(vec3<f32>(181f, 1044f, -630f), 1i, u_input.b.x, u_input.a)), false)), _wgslsmith_f_op_f32(f32(-1f) * -3114f), 1367f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-928f, 1474f, 188f) - vec3<f32>(685f, 2118f, -229f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-370f, 123f, -844f), vec3<f32>(1516f, 229f, 1069f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -665f, -1855f)), _wgslsmith_f_op_vec3_f32(func_3()))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1406f, 233f, -805f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1828f, -1453f) * vec3<f32>(1049f, -586f, -1032f)))))));
    var var_1 = !select(!vec3<bool>(false, any(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    let var_2 = Struct_2(!vec3<bool>(true, true, true || all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(-42182i, u_input.b.x, u_input.b.x), 11150i, ~1i), max(0i, _wgslsmith_clamp_i32(u_input.a, 0i, -1724i)), _wgslsmith_sub_i32(~0i, u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1215f, var_0.x, -342f) + var_0) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 181f, 2263f)))), -(~8349i), select(u_input.a | u_input.a, firstTrailingBit(-29453i), true) & (-13296i & u_input.a), ~(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), Struct_1(var_0, -1i, u_input.a, u_input.b.x));
    let var_3 = Struct_2(vec3<bool>(-118f >= _wgslsmith_f_op_f32(-var_0.x), any(!select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_2.a.x), vec2<bool>(var_1.x, var_1.x))), true), var_2.b, var_2.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -472f, var_2.c.a.x)), var_0))), i32(-1i) * -2147483647i, 1i, u_input.b.x));
    var_1 = select(vec3<bool>(false, _wgslsmith_sub_i32(firstLeadingBit(var_2.b.b), ~var_2.c.d) > _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, 0i), -vec2<i32>(var_2.d.b, var_3.b.c)), var_3.a.x), !vec3<bool>(any(vec4<bool>(var_3.a.x, true, true, false)), var_3.a.x || (true || var_3.a.x), all(var_2.a.yz)), var_3.a);
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_2.b.a.x, -109f))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.d, u_input.b.x, var_3.b.b), vec3<i32>(1i, u_input.a, -20222i)), ~var_3.b.b), select(_wgslsmith_dot_vec3_i32(u_input.b.zww, vec3<i32>(u_input.a, 1i, 12344i)), u_input.a ^ 1i, true)), _wgslsmith_mult_i32(0i, -1i), _wgslsmith_add_i32(var_2.d.b, var_2.d.c)), Struct_3(-452f), var_3, ~abs(vec3<u32>(~0u, 1u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2666f + 2218f) - _wgslsmith_f_op_f32(418f - -366f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-251f))))));
    var var_1 = true;
    var var_2 = Struct_3(var_0);
    var var_3 = func_1(abs(1u), abs(u_input.c.x));
    let var_4 = func_1(select(5253u | ((var_3.d.x & 1u) << (10081u % 32u)), u_input.d, all(!select(var_3.c.a, var_3.c.a, vec3<bool>(var_3.c.a.x, var_3.c.a.x, var_3.c.a.x)))), var_3.d.x << (var_3.d.x % 32u));
    var_1 = true;
    let var_5 = ~var_4.c.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_u32(select(~var_4.d.x, 1u, var_4.c.a.x), min(firstTrailingBit(1u), _wgslsmith_mod_u32(4294967295u, 62954u)))), var_4.a.a);
}

