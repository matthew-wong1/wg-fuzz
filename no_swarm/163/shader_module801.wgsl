struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(634f * _wgslsmith_f_op_f32(round(arg_0.x))))), vec2<u32>(u_input.e.x, ~u_input.e.x), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.wx), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), u_input.e.x, u_input.e, 0u << (u_input.e.x % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-544f + _wgslsmith_f_op_f32(-1504f - 1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1437f, var_1.c.a.x)))), all(!vec4<bool>(false, var_1.c.b, true, var_1.c.b)) | false)), var_1.c.b, var_1.c.d.x, u_input.e, _wgslsmith_add_u32(~(~(~var_1.b.x)), ~var_1.c.c));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-var_2.a.x), vec2<u32>(56673u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b.x, 21533u, 1u), vec4<u32>(var_2.e, var_1.c.c, var_1.b.x, 1u)) & countOneBits(6857u))), var_1.c);
    var_1 = Struct_3(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(select(1171f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.a.x, 1102f)), false))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.e, 1u, u_input.e.x, var_1.c.e), vec4<u32>(var_2.d.x, u_input.b.x, 4294967295u, 39610u)), ~(~var_1.c.c)), var_2);
    return var_2.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-686f - -768f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(828f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f + 465f) - _wgslsmith_f_op_f32(func_3(vec4<f32>(1105f, -762f, 1382f, -372f)))))));
    let var_1 = Struct_2(1f, abs(~vec4<u32>(select(u_input.e.x, u_input.e.x, false), _wgslsmith_div_u32(u_input.e.x, 1u), countOneBits(u_input.b.x), 0u ^ u_input.b.x)), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), 4294967295u != u_input.e.x)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, 322f) * vec2<f32>(-1743f, -283f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(339f, 649f), vec2<f32>(534f, 608f)))))), select(any(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, true, true)), true), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), ~vec2<u32>(u_input.e.x, 0u)), firstLeadingBit(u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, 57689u) << (u_input.e % vec3<u32>(32u)), vec3<u32>(0u, 30049u, u_input.e.x) << (u_input.e % vec3<u32>(32u))), u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1392f, -512f, var_1.d.a.x, var_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1363f)), _wgslsmith_f_op_f32(-252f * _wgslsmith_f_op_f32(var_1.a * -468f)), 160f, var_1.d.a.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, 494f, 1201f, 783f) + vec4<f32>(-454f, 510f, var_1.d.a.x, var_1.a)), vec4<f32>(var_1.d.a.x, var_2.x, var_2.x, var_1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(966f, var_2.x, var_1.a, var_1.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -127f, 1000f, var_1.a) + vec4<f32>(210f, var_1.d.a.x, var_1.d.a.x, var_2.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), -375f, 933f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, var_1.a, var_2.x), vec4<f32>(var_2.x, var_1.d.a.x, var_2.x, -1091f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, -929f, var_1.a))), var_1.d.c != 4294967295u))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_div_f32(-1653f, var_1.d.a.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) + _wgslsmith_f_op_f32(1000f + var_1.d.a.x)))), var_1.d.b, u_input.e.x, abs(vec3<u32>(~44574u >> (0u % 32u), var_1.b.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, 0u), _wgslsmith_div_u32(var_1.d.c, u_input.e.x)))), var_1.d.c & 34002u);
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = -(~vec4<i32>(u_input.a.x, 1i, u_input.d, firstLeadingBit(u_input.c)));
    var var_2 = func_2(vec2<i32>(var_1.x, u_input.d), vec3<i32>(~max(var_1.x, -1i), countOneBits(5268i), u_input.c));
    var_2 = func_2(~(~vec2<i32>(firstTrailingBit(-13378i), -1i)), u_input.a.xxw);
    var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(556f, 356f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 582f) + _wgslsmith_f_op_f32(max(-306f, 1104f))))), all(!vec3<bool>(var_2.b, var_2.b, true)), var_2.c, _wgslsmith_mult_vec3_u32(vec3<u32>(46682u, ~(~37426u), ~(~u_input.e.x)), ~var_2.d), ~var_2.c);
    return vec4<u32>(1u, _wgslsmith_div_u32(~10035u, 15401u), ~26677u, select(~16180u, var_2.e, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_2(1000f, arg_3, arg_1.yxy, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, arg_2.a))))), true, u_input.b.x, arg_3.yzy, ~_wgslsmith_div_u32(arg_0.b.x, _wgslsmith_add_u32(11807u, 0u))));
    var var_1 = vec4<u32>(arg_2.c.d.x, 64945u, 4294967295u, ~(var_0.b.x & 1u) >> (_wgslsmith_mult_u32(min(~arg_3.x, firstTrailingBit(arg_3.x)), max(9156u, ~1u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.a.x + _wgslsmith_f_op_f32(-1079f * -526f)), -152f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(835f, 1132f))) + vec2<f32>(var_0.a, -1120f)))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -417f) - _wgslsmith_f_op_f32(min(605f, arg_0.d.a.x))), -131f)))), firstLeadingBit(vec4<u32>(arg_2.c.c << (0u % 32u), u_input.b.x, arg_0.d.e & 51909u, arg_3.x)) | vec4<u32>(var_1.x, ~(~25891u), _wgslsmith_add_u32(0u, 1u), ~1u), arg_0.c, var_0.d);
    var_0 = arg_0;
    return vec4<bool>(any(arg_1), true, var_0.c.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, !any(vec2<bool>(false, true)), true, false));
    var_0 = select(!(!(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x)))), vec4<bool>(true, u_input.b.x != 1u, var_0.x & var_0.x, !any(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, var_0.x, false, false)))), !var_0.x);
    var var_1 = 1i;
    var_0 = select(func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1621f)) * _wgslsmith_f_op_f32(f32(-1f) * -972f)), min(func_1(vec4<f32>(649f, 1182f, 260f, -1516f)), select(vec4<u32>(23855u, 0u, 1u, 1u), vec4<u32>(u_input.b.x, 46548u, 4294967295u, u_input.e.x), false)), !vec3<bool>(true, true, var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1091f, 1114f), vec2<f32>(-1290f, 879f))), all(var_0.yw), u_input.e.x, u_input.e, ~u_input.e.x)), vec4<bool>(!var_0.x, any(!vec4<bool>(var_0.x, false, false, var_0.x)), any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, true, true, var_0.x), true)), !var_0.x), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(537f, -1429f), 822f)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, 121389u, 4294967295u)), u_input.b.x), func_2(vec2<i32>(-1i, u_input.a.x), -vec3<i32>(u_input.a.x, u_input.a.x, 1i))), ~(vec4<u32>(4294967295u, u_input.b.x, 63308u, u_input.e.x) & abs(vec4<u32>(27530u, u_input.e.x, u_input.e.x, 0u)))), func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1344f)) * -1000f), abs(_wgslsmith_add_vec4_u32(vec4<u32>(48361u, 0u, u_input.e.x, u_input.e.x), vec4<u32>(3237u, u_input.e.x, 44617u, 4294967295u))), !vec3<bool>(false, var_0.x, var_0.x), Struct_1(func_2(u_input.a.wy, u_input.a.wxx).a, true, func_2(vec2<i32>(u_input.c, u_input.a.x), u_input.a.yww).e, abs(u_input.e), _wgslsmith_add_u32(0u, 1u))), vec4<bool>(any(func_4(Struct_2(878f, vec4<u32>(1u, 7984u, u_input.b.x, u_input.b.x), vec3<bool>(var_0.x, var_0.x, true), Struct_1(vec2<f32>(-1219f, -1931f), var_0.x, 4294967295u, vec3<u32>(u_input.e.x, 64695u, u_input.b.x), 53054u)), vec4<bool>(true, var_0.x, var_0.x, false), Struct_3(-596f, u_input.e.yx, Struct_1(vec2<f32>(434f, -872f), true, 57791u, u_input.e, u_input.e.x)), vec4<u32>(u_input.e.x, u_input.b.x, u_input.e.x, u_input.b.x))), any(func_4(Struct_2(-131f, vec4<u32>(1283u, u_input.e.x, u_input.e.x, 61139u), var_0.yyy, Struct_1(vec2<f32>(488f, -109f), var_0.x, u_input.b.x, u_input.e, u_input.b.x)), vec4<bool>(false, true, true, true), Struct_3(-458f, u_input.e.zx, Struct_1(vec2<f32>(356f, 460f), false, u_input.b.x, vec3<u32>(u_input.e.x, u_input.e.x, 92513u), 18930u)), vec4<u32>(u_input.b.x, 7361u, 15391u, 3779u)).wxw), var_0.x, _wgslsmith_f_op_f32(ceil(-1506f)) >= 985f), Struct_3(-174f, u_input.e.zx ^ u_input.b, func_2(vec2<i32>(22507i, 48648i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.d, -77875i, 8736i), vec3<i32>(4539i, u_input.a.x, u_input.d)))), ~(~(~vec4<u32>(u_input.e.x, u_input.b.x, 47689u, 12477u)))), vec4<bool>(all(var_0.zx), u_input.a.x >= 1i, any(!(!vec4<bool>(false, true, true, var_0.x))), var_0.x));
    var_1 = firstTrailingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(158f, 320f))))), (u_input.e.yx | ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.e.xx)) & vec2<u32>(u_input.e.x, ~(~u_input.e.x)), vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 35181u), u_input.b.x | u_input.b.x), ~(~(~75634u)), u_input.b.x, u_input.b.x));
}

