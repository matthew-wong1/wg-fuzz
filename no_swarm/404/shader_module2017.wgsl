struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1457f * 647f))))), u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-149f, _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_div_f32(-541f, 190f), _wgslsmith_f_op_f32(round(-2603f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1744f, 571f, 1388f, 1131f))) - vec4<f32>(_wgslsmith_f_op_f32(max(-376f, -681f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1240f)), _wgslsmith_div_f32(184f, -1000f)), _wgslsmith_f_op_f32(-555f - 1025f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-599f, 1599f)) * _wgslsmith_f_op_f32(342f + 1000f)))), vec2<i32>(2147483647i, u_input.b.x), all(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true))));
    var var_1 = ~u_input.b;
    let var_2 = _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_0.d.x, -2147483647i, 0i), max(u_input.b.x, var_1.x)), (u_input.b.xx >> (vec2<u32>(8161u, 0u) % vec2<u32>(32u))) ^ (vec2<i32>(var_1.x, u_input.b.x) | vec2<i32>(var_0.d.x, -2147483647i)), vec2<i32>(0i, var_1.x >> (686u % 32u)))), reverseBits(var_1.zx));
    let var_3 = !var_0.e;
    let var_4 = false;
    return u_input.b;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.b;
    var_0 = func_3();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-489f - arg_0), arg_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))) + _wgslsmith_div_vec2_f32(vec2<f32>(1829f, arg_0), vec2<f32>(-2915f, arg_0)))))))));
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1083f))), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(1144f, 1853f), _wgslsmith_f_op_f32(-var_1.x), 1579f))), vec2<i32>(~abs(var_0.x), var_0.x), all(vec2<bool>(false, false)));
    return Struct_1(var_3.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), abs(_wgslsmith_mod_vec2_u32(u_input.c.xy, vec2<u32>(u_input.a, var_3.b)) << (vec2<u32>(u_input.a, var_3.b) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(arg_0, arg_0)), -979f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1854f), var_3.a.x)), abs(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zx, var_0.yy), u_input.b.zx)), all(vec4<bool>(!var_3.e, var_3.e, all(vec3<bool>(var_3.e, false, true)), var_3.e)) && true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>((i32(-1i) * -arg_0.d.x) > ~arg_0.d.x, arg_0.e));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), 70524u, arg_1.c, u_input.b.xx, true);
    let var_2 = vec3<u32>(firstTrailingBit(max(arg_0.b, var_1.b)) | ~(~65815u), ~(~1u), 59488u) ^ ~(min(u_input.c.yzw, ~u_input.c.zzx) << (u_input.c.wzx % vec3<u32>(32u)));
    let var_3 = vec3<bool>(true, any(!select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, arg_1.e), vec2<bool>(arg_1.e, arg_0.e)), select(vec2<bool>(var_1.e, arg_1.e), vec2<bool>(var_1.e, var_0), vec2<bool>(false, false)), vec2<bool>(arg_1.e, var_1.e))), ~(53773u & _wgslsmith_mod_u32(var_2.x, var_2.x)) == ~_wgslsmith_div_u32(~u_input.a, 49712u));
    let var_4 = 0u;
    return Struct_1(var_1.a, _wgslsmith_div_u32(var_2.x, _wgslsmith_sub_u32(reverseBits(abs(var_1.b)), abs(~u_input.a))), vec4<f32>(661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f + 1143f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, 1028f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f) - _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1627f))), vec2<i32>(arg_1.d.x, arg_1.d.x), false);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, arg_0.e), vec2<bool>(arg_3.e, true), vec2<bool>(arg_0.e, true)), vec2<bool>(arg_0.e, arg_0.e), select(vec2<bool>(arg_0.e, arg_3.e), vec2<bool>(true, arg_0.e), vec2<bool>(false, false))), select(!vec2<bool>(arg_0.e, false), select(vec2<bool>(arg_0.e, arg_3.e), vec2<bool>(true, true), arg_3.e), false & arg_3.e)), select(vec2<bool>(arg_0.e, true), vec2<bool>(!arg_3.e, true), any(select(vec2<bool>(true, arg_3.e), vec2<bool>(true, true), vec2<bool>(arg_3.e, arg_0.e)))), true), !vec2<bool>(false, arg_0.e), 24392i >= arg_0.d.x);
    var var_1 = 1512f;
    var var_2 = arg_3;
    return !vec4<bool>((true && !var_0.x) && (arg_1 == _wgslsmith_div_i32(arg_3.d.x, -1i)), var_2.b > ~min(4294967295u, arg_3.b), ((arg_0.e | arg_3.e) & arg_0.e) | !(-295f >= var_2.a.x), true);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-182f)))), _wgslsmith_f_op_f32(-1000f * -162f)), abs(firstLeadingBit(u_input.a & (4294967295u >> (u_input.a % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 759f, 409f, -435f) * vec4<f32>(-539f, 1775f, -321f, -1098f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(686f, 276f, 505f, 492f) - vec4<f32>(1000f, -1476f, -266f, 576f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-990f, -574f, 418f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1204f, -1167f, -545f, -1000f))))), vec2<i32>(u_input.b.x, -_wgslsmith_sub_i32(-54099i, -9747i)), any(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(720f, 194f), vec2<f32>(940f, -675f), vec2<bool>(true, true))), u_input.a, vec4<f32>(1482f, -520f, -1365f, 968f), u_input.b.yz, true), _wgslsmith_div_i32(u_input.b.x, u_input.b.x) | (u_input.b.x | u_input.b.x), ~vec2<u32>(u_input.c.x, 43904u), func_4(func_2(1623f), func_2(683f)))));
    var var_1 = ~135823u;
    var var_2 = -15505i;
    let var_3 = func_5(func_4(Struct_1(var_0.c.wx, 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.c.x, var_0.a.x, var_0.c.x))), var_0.d, var_0.e), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.c.xz), ~(~var_0.b), var_0.c, -firstLeadingBit(u_input.b.yy), 1u < _wgslsmith_clamp_u32(7990u, 79407u, u_input.a))), -var_0.d.x, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.b, 0u, u_input.a), _wgslsmith_mod_vec3_u32(select(u_input.c.xzz, vec3<u32>(4294967295u, var_0.b, 0u), false), vec3<u32>(var_0.b, 93660u, 2474u) >> (u_input.c.xyw % vec3<u32>(32u)))), _wgslsmith_add_u32(firstLeadingBit(var_0.b), ~select(34937u, u_input.a, var_0.e))), func_2(var_0.c.x)).x;
    let var_4 = Struct_1(var_0.a, ~firstTrailingBit(1u), _wgslsmith_f_op_vec4_f32(abs(var_0.c)), ~reverseBits(var_0.d), any(!func_5(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), 1u, var_0.c, vec2<i32>(-6711i, 12399i), var_0.e), func_3().x, u_input.c.yz, func_4(Struct_1(var_0.c.yx, var_0.b, vec4<f32>(var_0.a.x, 495f, var_0.c.x, var_0.a.x), vec2<i32>(u_input.b.x, var_0.d.x), var_3), var_0))));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.yyy, firstLeadingBit(abs(vec3<u32>(var_0.b, u_input.c.x, 79563u)))), ~var_0.b, 5004u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(1u, reverseBits(~func_1()) ^ u_input.a);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), 2338f), u_input.c.x, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-179f, 755f))) + vec2<f32>(1f, 1f)), ~max(u_input.c.x, u_input.c.x), vec4<f32>(1f, 1f, 1f, 1f), abs(vec2<i32>(1i, u_input.b.x) | u_input.b.xx), true), Struct_1(vec2<f32>(-1417f, _wgslsmith_f_op_f32(-651f + 155f)), u_input.c.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-249f, 1071f, 2713f, 1000f), vec4<f32>(972f, 2059f, 1357f, 1297f))))), u_input.b.xz, false)).c, abs(vec2<i32>(713i >> (_wgslsmith_mult_u32(u_input.a, u_input.c.x) % 32u), u_input.b.x)), false);
    let var_2 = -176f;
    var var_3 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(sign(133f)))))).c.wz, ~u_input.c.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, var_1.a.x)), 698f, func_4(Struct_1(vec2<f32>(-1802f, var_2), u_input.c.x, var_1.c, vec2<i32>(-1i, u_input.b.x), var_1.e), func_2(var_2)).a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-481f * 272f), _wgslsmith_f_op_f32(945f * var_2), all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.c)))))), -_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(0i, -54342i)), func_2(400f).d), false);
    let var_4 = vec3<bool>(func_4(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.x - var_3.a.x)))), func_4(func_4(func_2(var_3.a.x), func_4(Struct_1(vec2<f32>(644f, -1235f), u_input.c.x, vec4<f32>(var_3.a.x, var_3.a.x, var_2, var_2), var_3.d, false), var_1)), var_1)).e, func_4(func_4(func_4(Struct_1(vec2<f32>(var_2, 206f), u_input.a, vec4<f32>(var_1.a.x, 325f, var_1.a.x, 838f), var_3.d, var_1.e), Struct_1(var_1.a, var_1.b, var_1.c, var_3.d, false)), Struct_1(_wgslsmith_f_op_vec2_f32(round(var_3.c.yx)), 0u | var_3.b, vec4<f32>(var_1.c.x, 1339f, -2401f, 1399f), vec2<i32>(u_input.b.x, 0i), any(vec4<bool>(true, true, var_3.e, var_3.e)))), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1587f, var_1.a.x)), 45227u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 1000f, var_2, var_2)), vec2<i32>(23454i, var_3.d.x), 1i >= var_3.d.x), func_4(Struct_1(vec2<f32>(-1629f, var_2), var_3.b, vec4<f32>(var_3.a.x, 572f, var_3.a.x, var_2), var_1.d, var_3.e), func_2(var_3.a.x)))).e, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - var_1.a.x) - var_2) * _wgslsmith_div_f32(947f, var_2))).e);
    var var_5 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(31480u, 1u), 20047u), ~var_1.b, min(u_input.c.x, ~var_3.b));
    var_5 = ~min(vec3<u32>(var_5.x, var_3.b, 1u), reverseBits(select(~vec3<u32>(110547u, 68689u, var_1.b), u_input.c.yzy, true)));
    let var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.xw) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2032f))))), _wgslsmith_mod_u32(~(~45634u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, 50333u | u_input.a, abs(9831u), 35678u), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_3.b, u_input.c.x, var_1.b, var_1.b), ~u_input.c))), vec4<f32>(_wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(-126f + var_2)), var_3.a.x, var_3.a.x, -563f), var_3.d, func_2(var_1.c.x).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_6.a.x))))), u_input.b, var_6.d);
}

