struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = arg_1;
    let var_1 = arg_1.c;
    var var_2 = 301f;
    let var_3 = arg_1.c.wz;
    var var_4 = vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(893f * 484f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f + _wgslsmith_f_op_f32(1000f * -707f)) - _wgslsmith_f_op_f32(550f * _wgslsmith_f_op_f32(select(-1000f, -500f, arg_1.c.x)))), any(select(vec2<bool>(true, var_3.x), select(select(vec2<bool>(true, arg_1.b.x), arg_2.b.xz, vec2<bool>(var_1.x, var_3.x)), vec2<bool>(arg_2.b.x, true), vec2<bool>(arg_2.b.x, true)), !(arg_1.a.x <= 0u))), false & !(!var_0.c.x));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1249f, -439f, -1165f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1215f, -572f, -387f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(220f, 1263f, -547f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(965f, -344f, -323f), vec3<f32>(-156f, 358f, 934f)))))) * vec3<f32>(230f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1008f)), 612f), -1398f))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = !vec2<bool>(any(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))), false);
    let var_1 = u_input.d;
    let var_2 = Struct_4(u_input.b, u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(0u, Struct_1(vec2<u32>(36534u, arg_0.x), vec3<bool>(false, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)), Struct_1(arg_0.yy, vec3<bool>(var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)))))))), false);
    return Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_vec3_f32(func_3(var_2.b.x, Struct_1(arg_0.xx, vec3<bool>(false, true, var_0.x), vec4<bool>(true, false, false, var_2.d)), Struct_1(vec2<u32>(var_1.x, arg_0.x), vec3<bool>(false, var_2.d, var_0.x), vec4<bool>(true, var_0.x, var_2.d, false)))).x), 618f, var_2.c.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec3<i32>(~u_input.c, ~(-2147483647i), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b.yz), 1i));
    var_0 = vec3<i32>(arg_1.e.x, -(~var_0.x), u_input.b.x);
    var_0 = -arg_1.d.zwx;
    let var_1 = Struct_2(arg_0);
    let var_2 = ~firstLeadingBit(u_input.a);
    return func_2(~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.b, 0u), vec3<u32>(u_input.d.x, u_input.d.x, 19847u)), vec3<u32>(0u, 4294967295u, 4294967295u))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_4(u_input.b, u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -358f, -146f)), vec3<f32>(arg_1, -1048f, -886f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a.x, 393f, 491f)))), vec3<bool>(true, true, true))) - vec3<f32>(-613f, 1101f, 395f)), true);
    var_0 = Struct_4(reverseBits(~var_0.a), ~vec3<u32>((u_input.e.x | 36601u) & (1u & u_input.e.x), 0u, ~_wgslsmith_add_u32(u_input.e.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(max(var_0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1013f, var_0.c.x, arg_0.a.x) * vec3<f32>(-162f, 1301f, 660f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 1000f, var_0.c.x)))))))), select(!(var_0.d || true), true, true));
    var var_1 = Struct_3(Struct_1(vec2<u32>(countOneBits(48925u), var_0.b.x), !vec3<bool>(var_0.d, 1448u > u_input.d.x, var_0.d), vec4<bool>(true | var_0.d, select(var_0.d != true, var_0.d, true), min(-1i, u_input.a.x) <= 1i, var_0.d)), ~(4294967295u << ((~u_input.d.x ^ ~u_input.d.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(217f, 1540f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) * arg_1)), -_wgslsmith_sub_vec4_i32(select(-vec4<i32>(var_0.a.x, 32445i, u_input.a.x, 2147483647i), ~u_input.b, var_0.d && true), ~u_input.b), -vec3<i32>(_wgslsmith_sub_i32(var_0.a.x, 351i), u_input.b.x, _wgslsmith_mult_i32(u_input.c, u_input.b.x ^ var_0.a.x)));
    let var_2 = Struct_4(vec4<i32>(_wgslsmith_add_i32(select(var_1.d.x, u_input.b.x, var_0.d), _wgslsmith_div_i32(u_input.c, 2147483647i)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, var_1.b, 4294967295u, var_1.a.a.x), vec4<u32>(var_0.b.x, var_0.b.x, var_1.b, 18040u)), vec4<u32>(u_input.e.x, var_0.b.x, 0u, var_1.b)) % 32u), -61127i, 0i, min(u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, var_0.a) & (-11984i & var_1.e.x))), ~vec3<u32>(1u, 31624u, 1u) >> (max(vec3<u32>(_wgslsmith_add_u32(u_input.e.x, 0u), u_input.e.x, 20152u), vec3<u32>(~var_1.b, ~33778u, u_input.e.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(312f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))), 1000f)), all(!vec2<bool>(var_1.a.b.x, false)) && true);
    var var_3 = -(firstTrailingBit(var_2.a.x) >> (min(var_0.b.x, _wgslsmith_dot_vec2_u32(~var_2.b.yz, select(var_1.a.a, vec2<u32>(59325u, 20113u), var_1.a.b.yz))) % 32u));
    return Struct_3(Struct_1(~(vec2<u32>(var_0.b.x, var_0.b.x) ^ ~vec2<u32>(var_2.b.x, var_1.a.a.x)), vec3<bool>(select(true, all(vec4<bool>(false, var_1.a.b.x, false, var_1.a.c.x)), var_2.d), -1819f > _wgslsmith_f_op_f32(ceil(var_2.c.x)), all(!vec4<bool>(var_1.a.c.x, false, var_1.a.c.x, false))), select(select(vec4<bool>(var_1.a.b.x, false, var_2.d, true), !vec4<bool>(true, true, var_1.a.b.x, var_1.a.c.x), !vec4<bool>(false, var_2.d, var_0.d, var_1.a.b.x)), var_1.a.c, false)), var_2.b.x | ~select(abs(71231u), _wgslsmith_mult_u32(var_1.a.a.x, 1u), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, 419f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - 699f) * -173f) - -1137f)), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mod_i32(var_2.a.x, -1i), _wgslsmith_clamp_i32(-1i, -26861i, var_2.a.x), var_2.a.x | -64597i, reverseBits(-1i)), ~var_2.a.ywy);
}

fn func_5(arg_0: Struct_3) -> bool {
    return u_input.e.x <= 21732u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.e.zy, vec3<bool>(!(~u_input.d.x < u_input.d.x), true, func_5(func_4(func_1(vec3<f32>(319f, -981f, 1550f), Struct_3(Struct_1(u_input.d.zz, vec3<bool>(true, false, true), vec4<bool>(true, true, true, true)), u_input.d.x, 1045f, u_input.b, u_input.b.zwy)), -221f))), vec4<bool>((any(vec3<bool>(false, false, false)) && false) & true, any(vec3<bool>(true, true, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -43079i), u_input.a) != -(~u_input.a.x), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1377f, 390f, -559f))))));
    var var_2 = func_4(func_2(vec3<u32>(var_0.a.x, u_input.e.x, abs(48667u)) & (vec3<u32>(4294967295u, 0u, 10691u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(36485u, 78872u, 4294967295u), u_input.e) % vec3<u32>(32u)))), -263f).a;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - 754f), _wgslsmith_f_op_f32(1411f - var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f + -332f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(min(501f, var_1.a.x))) + var_1.a)), Struct_3(Struct_1(u_input.e.xy, var_2.c.yyx, vec4<bool>(!var_0.c.x, any(vec2<bool>(var_2.b.x, var_2.b.x)), all(var_0.b.yy), var_0.c.x)), 1u, var_1.a.x, u_input.b, ~(-(~vec3<i32>(86389i, -1i, u_input.c)))));
    var_0 = func_4(func_2(vec3<u32>(0u, 1u, ~25014u)), func_2(abs(~(~vec3<u32>(1117u, 2546u, 0u)))).a.x).a;
    let var_4 = func_4(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -464f, _wgslsmith_f_op_f32(abs(-257f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(abs(-647f)), func_1(var_3.a, Struct_3(Struct_1(var_2.a, vec3<bool>(false, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.c.x, var_0.c.x, true)), 4294967295u, 455f, vec4<i32>(u_input.b.x, u_input.c, -1i, u_input.a.x), vec3<i32>(12461i, -1i, u_input.b.x))).a.x)), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1201f, var_3.a.x, -811f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-790f)))))), var_3.a.x).a;
    var var_5 = !var_4.b.x || true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - -407f) * var_1.a.x), var_3.a.x)));
}

