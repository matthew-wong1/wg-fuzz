struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> vec3<f32> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_0.b.zx, _wgslsmith_f_op_vec2_f32(-arg_0.a), !(!arg_1.yx))), arg_0.b, 48155u, u_input.a.yz << (vec2<u32>(firstTrailingBit(~arg_0.c), select(0u, max(1u, 16960u), all(vec3<bool>(false, arg_1.x, false)))) % vec2<u32>(32u)), vec2<bool>(countOneBits(~arg_0.c) <= 1u, arg_1.x));
    var var_2 = ~(min(vec4<u32>(~var_1.c, _wgslsmith_dot_vec2_u32(u_input.c, u_input.d), _wgslsmith_mult_u32(4294967295u, var_1.c), ~4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c, 0u, 45197u, 1u) >> (vec4<u32>(arg_0.c, arg_0.c, var_1.c, var_1.c) % vec4<u32>(32u)), vec4<u32>(var_1.c, arg_0.c, arg_0.c, u_input.c.x))) >> (select(select(countOneBits(vec4<u32>(0u, u_input.e, 50912u, 1u)), vec4<u32>(1u, var_1.c, var_1.c, var_1.c), !vec4<bool>(true, var_1.e.x, var_1.e.x, true)), ~(~vec4<u32>(arg_0.c, var_1.c, 4294967295u, 1u)), vec4<bool>(!arg_1.x, false, arg_0.e.x, any(arg_1))) % vec4<u32>(32u)));
    var var_3 = 0i;
    var_3 = u_input.a.x;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1085f))), _wgslsmith_f_op_f32(floor(1168f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a.x, 545f)), _wgslsmith_f_op_f32(select(-602f, arg_0.a.x, true)), _wgslsmith_div_f32(575f, 191f)), _wgslsmith_div_vec3_f32(vec3<f32>(-413f, arg_0.b.x, 2805f), _wgslsmith_f_op_vec3_f32(arg_0.b - var_1.b))))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1372f, 616f))), vec2<bool>(false, true))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -362f, 1307f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<f32>(-584f, 703f), vec3<f32>(-705f, -1672f, -365f), u_input.e, u_input.b.zy, vec2<bool>(true, false)), vec3<bool>(true, true, true), 39672i)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-571f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-171f, -656f) - -777f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f - -1000f) - 264f))), _wgslsmith_add_u32(~(~u_input.c.x), u_input.c.x) << (reverseBits(firstLeadingBit(~u_input.e)) % 32u), u_input.a.xy, vec2<bool>(u_input.b.x >= _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, 1i, u_input.b.x, 2147483647i)), !select(false, true, false) & true));
    let var_1 = var_0.e.x;
    let var_2 = firstTrailingBit(firstTrailingBit(-var_0.d));
    var var_3 = var_0;
    var var_4 = min(0u, firstLeadingBit(var_3.c) >> (1u % 32u));
    return 186f;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = !arg_2.x;
    let var_0 = max(max(u_input.b.x, select(-_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.yz), -11614i, true)), -(~(-(u_input.b.x >> (61514u % 32u)))));
    global0 = any(!vec4<bool>(arg_2.x, true, _wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(ceil(408f)), all(vec4<bool>(true, false, arg_2.x, arg_2.x)) != false));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * arg_0.zx))), arg_0.xz, select(select(vec2<bool>(arg_2.x, arg_2.x), arg_2, arg_2), !vec2<bool>(true, arg_2.x), true)))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(func_2())), 1000f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0.zy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-109f, var_1.x, 1128f) * vec3<f32>(261f, -846f, arg_1)), 4294967295u, vec2<i32>(2147483647i, 0i), arg_2), vec3<bool>(true, arg_2.x | true, true), 2147483647i)).xz));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1094f), 330f, true)) - arg_1)), arg_0, ~((~61114u << (~u_input.e % 32u)) | ~(~71457u)), -vec2<i32>(u_input.a.x, var_0), arg_2);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<f32> {
    global0 = !(!(!arg_3.e.x)) | arg_3.e.x;
    global0 = arg_3.e.x;
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(arg_1.www, 518f, select(!arg_3.e, !arg_3.e, !vec2<bool>(var_0, true))).b.zz * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.wx, vec2<f32>(-1298f, arg_1.x)))))))));
    var var_2 = Struct_1(arg_0, arg_1.zyw, abs(arg_2.x), -arg_3.d, !arg_3.e);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 500f) + _wgslsmith_f_op_vec2_f32(sign(var_2.a))))), var_1)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1445f + -163f))));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(arg_0.b)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b.x)))), arg_0.e.x)), _wgslsmith_f_op_f32(max(arg_0.b.x, 617f)), vec2<bool>(arg_2.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.x)) * 776f), false));
    let var_2 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, arg_0.a.x))), var_1.b.x))), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_mod_u32(u_input.e, arg_0.c), vec2<i32>(_wgslsmith_clamp_i32(min(1i, _wgslsmith_sub_i32(arg_2.d.x, arg_2.d.x)), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(255f, -974f, arg_2.a.x), vec3<f32>(1179f, var_1.a.x, 1134f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0.b.yz, vec3<f32>(-210f, 168f, 993f), 26093u, vec2<i32>(var_1.d.x, 1i), arg_0.e), vec3<bool>(var_1.e.x, arg_0.e.x, arg_2.e.x), 0i)).x, func_1(vec3<f32>(arg_0.a.x, var_1.b.x, -2562f), 1106f, vec2<bool>(true, arg_0.e.x)).e).d.x, var_1.d.x), -10794i), vec2<bool>(var_1.e.x, arg_0.e.x));
    var var_3 = vec4<bool>(arg_0.e.x, true, arg_1, !any(!vec3<bool>(var_2.e.x, false, false)));
    var var_4 = func_1(var_2.b, _wgslsmith_f_op_vec3_f32(func_3(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_1.b.x, 894f) * vec3<f32>(arg_2.b.x, var_1.b.x, 1000f)), _wgslsmith_f_op_f32(-1480f * -143f), !(!vec2<bool>(arg_1, true))), !(!var_3.yxz), 2147483647i)).x, vec2<bool>(any(func_1(_wgslsmith_f_op_vec3_f32(round(arg_0.b)), arg_0.a.x, func_1(vec3<f32>(-1226f, var_2.a.x, 1000f), var_2.a.x, var_1.e).e).e), false));
    return _wgslsmith_div_vec3_f32(var_4.b, vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -874f), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(func_4(vec2<f32>(2028f, -428f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 855f, -1297f, 919f), vec4<f32>(-1000f, -366f, 1000f, -1000f))), ~vec2<u32>(u_input.d.x, 0u), func_1(vec3<f32>(-1672f, -1962f, -1507f), 1025f, vec2<bool>(false, false)))), vec3<f32>(1f, 1f, 1f), u_input.c.x, u_input.b.yx, vec2<bool>(true, true)), u_input.a.x >= u_input.b.x, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, 645f, -112f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 1505f, -1039f)))), -451f, vec2<bool>(true, true)), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.b.x & 0i, -u_input.b.x >> (u_input.d.x % 32u), 0i))));
    let var_1 = u_input.b;
    global0 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zy * _wgslsmith_f_op_vec2_f32(exp2(var_0.zx))) + var_0.yy) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1611f, 1000f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-742f, 248f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-744f - -728f)) + _wgslsmith_f_op_vec3_f32(abs(var_0)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), _wgslsmith_add_u32(~4294967295u, 6956u)), select(vec2<u32>(4294967295u, 16175u ^ u_input.e), ~(~u_input.d), false)), var_1.yz, vec2<bool>(true, true));
    var var_3 = u_input.c.x;
    let var_4 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-729f, -2017f, -1303f), _wgslsmith_f_op_vec3_f32(floor(var_0))) * vec3<f32>(1000f, _wgslsmith_f_op_f32(step(1000f, var_0.x)), -311f)))), _wgslsmith_f_op_f32(-var_0.x), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))), -1061f, vec2<bool>(var_2.e.x, (var_2.c <= 4294967295u) | true)).e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz << (u_input.c % vec2<u32>(32u)), var_2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_2.a.x)));
}

