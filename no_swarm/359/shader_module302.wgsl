struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(832f)) + _wgslsmith_f_op_f32(select(125f, arg_2.c.a.x, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1528f * arg_2.e) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.b.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - -1085f))))), -1050f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_3(37341i, false, arg_2.c.a), abs(-5094i), arg_2)), 528f, _wgslsmith_mult_i32(-32134i, arg_2.b.e.x) <= arg_2.c.e.x)))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1343f - _wgslsmith_f_op_f32(trunc(-1425f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1107f, -571f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.a, arg_0, vec3<f32>(493f, -120f, 773f)), 0i, Struct_2(vec4<u32>(u_input.c.x, 60169u, 4294967295u, u_input.b.x), Struct_1(vec3<f32>(1905f, -216f, 637f), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), u_input.c.yx, vec2<f32>(-626f, 173f), vec4<i32>(u_input.a, u_input.a, u_input.a, 20357i)), Struct_1(vec3<f32>(970f, -1417f, -364f), vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i), u_input.c.yz, vec2<f32>(-133f, 848f), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.c.x, -469f))) + -1363f)))));
    let var_1 = !(!all(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, true)), vec3<bool>(true, arg_0, arg_0), all(vec2<bool>(false, arg_0)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(~(u_input.b.x ^ 4294967295u), abs(u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1000f)), vec4<i32>(u_input.a, 39731i, u_input.a, u_input.a) ^ select(vec4<i32>(2147483647i, 1i, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 0i), true), u_input.c.yw & firstTrailingBit(u_input.b), vec2<f32>(1453f, -1126f), _wgslsmith_div_vec4_i32(vec4<i32>(411i, 42227i, u_input.a, 7460i), -vec4<i32>(u_input.a, 18179i, u_input.a, -2746i))), Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(289f, -129f, -2026f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -64105i, -2147483647i), vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i)), u_input.c.xw >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec2<f32>(893f, var_0), select(vec4<i32>(44198i, -19732i, 0i, -1i), vec4<i32>(-1i, -1i, 0i, 2147483647i), vec4<bool>(true, arg_0, var_1, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 402f, var_0)), select(vec4<i32>(-4488i, -39134i, -15602i, u_input.a), vec4<i32>(-44790i, u_input.a, -2147483647i, -4392i), arg_0), u_input.c.zx, _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(-750f, -657f)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(1u), 797f))), _wgslsmith_mult_vec4_i32(~vec4<i32>(select(-1i, 572i, true), countOneBits(-3168i), -2147483647i, 0i), firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, 20581i, u_input.a))), _wgslsmith_add_vec2_u32(~(~u_input.b) >> (~firstTrailingBit(vec2<u32>(u_input.c.x, 0u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.b.x), _wgslsmith_sub_vec2_u32(~u_input.b, u_input.b >> (u_input.b % vec2<u32>(32u))))), vec2<f32>(229f, _wgslsmith_f_op_f32(max(-721f, var_0))), vec4<i32>(-37119i, reverseBits(1i), -27939i, -2147483647i ^ (firstTrailingBit(0i) ^ 0i)));
    let var_3 = select(var_2.c.x, var_2.c.x, _wgslsmith_clamp_u32(104012u, max(var_2.c.x, firstLeadingBit(22088u)), ~0u) > 4294967295u);
    var var_4 = abs(select(vec4<u32>(1u, 4294967295u, abs(~0u), firstTrailingBit(min(4294967295u, u_input.b.x))), u_input.c, !vec4<bool>(var_1, true, true, all(vec3<bool>(true, arg_0, true)))));
    return _wgslsmith_add_u32(_wgslsmith_add_u32((4294967295u ^ var_2.c.x) ^ ~abs(24818u), var_2.c.x << (_wgslsmith_add_u32(firstLeadingBit(51566u), ~u_input.b.x) % 32u)), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, 0u), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<u32>(u_input.b.x, u_input.b.x, 24524u, 69046u), abs(vec4<u32>(~(~u_input.c.x), 1u, u_input.b.x, func_1(false))));
    var var_1 = vec3<i32>(abs((_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -15249i, 1i, -1i), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, u_input.a)) >> (min(u_input.b.x, 0u) % 32u)) << (~func_1(false) % 32u)), ~1i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(28626i, ~21560i), vec2<i32>(select(u_input.a, -63255i, false), reverseBits(-95465i)))));
    var var_2 = select(max(~(~vec2<u32>(17027u, u_input.b.x)), ~abs(vec2<u32>(var_0.x, u_input.c.x) & var_0.xx)), vec2<u32>(~_wgslsmith_mult_u32(~48410u, _wgslsmith_mult_u32(var_0.x, var_0.x)), 4294967295u & var_0.x), select(!all(vec4<bool>(true, false, false, true)), 160f == _wgslsmith_f_op_f32(round(150f)), true) | true);
    var var_3 = reverseBits(abs(countOneBits(min(firstTrailingBit(vec4<i32>(u_input.a, -59632i, var_1.x, u_input.a)), firstLeadingBit(vec4<i32>(1i, -1874i, -1i, var_1.x))))));
    var_0 = u_input.c;
    let var_4 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(var_3.x, false, vec3<f32>(1000f, 367f, 426f)), var_3.x, Struct_2(vec4<u32>(54121u, 4294967295u, 69675u, 0u), Struct_1(vec3<f32>(1413f, -1213f, -215f), vec4<i32>(0i, u_input.a, -1i, 1678i), vec2<u32>(var_2.x, 2389u), vec2<f32>(-721f, 470f), vec4<i32>(1i, 1i, u_input.a, 2147483647i)), Struct_1(vec3<f32>(861f, 665f, 494f), vec4<i32>(-12200i, u_input.a, 10448i, 2147483647i), u_input.b, vec2<f32>(615f, -837f), vec4<i32>(2147483647i, u_input.a, var_1.x, var_1.x)), var_2.x, 1531f))) * -490f) >= _wgslsmith_f_op_vec3_f32(func_3(~vec2<u32>(1u, 35997u), Struct_1(vec3<f32>(-1000f, -449f, -678f), vec4<i32>(0i, -2147483647i, var_3.x, -1552i), u_input.c.xy, vec2<f32>(-1000f, 480f), vec4<i32>(u_input.a, u_input.a, -45912i, -32123i)), Struct_2(u_input.c, Struct_1(vec3<f32>(648f, 1263f, 457f), vec4<i32>(var_1.x, u_input.a, -84041i, var_1.x), var_0.yy, vec2<f32>(-672f, -154f), vec4<i32>(8073i, 10068i, var_3.x, 25761i)), Struct_1(vec3<f32>(878f, 851f, 1537f), vec4<i32>(0i, 70469i, u_input.a, u_input.a), var_0.yz, vec2<f32>(1227f, 179f), vec4<i32>(4796i, var_3.x, 0i, var_1.x)), var_0.x, -1748f))).x, false, true, !((var_2.x > 1u) && select(true, true, false)));
    let var_5 = vec2<i32>(_wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, var_1.x), -vec4<i32>(var_1.x, var_3.x, 6751i, u_input.a))), var_3.x) << (vec2<u32>(~abs(4294967295u), u_input.b.x) % vec2<u32>(32u));
    var var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-622f, _wgslsmith_div_f32(1673f, -1058f), any(var_4))))))));
    var_2 = ~vec2<u32>(var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.zx));
}

