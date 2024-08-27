struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    let var_0 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -abs(vec2<i32>(arg_1.a.b, arg_1.b.b)), vec2<i32>(arg_1.a.e.x, -2147483647i)));
    var var_1 = arg_1.a;
    let var_2 = arg_1.c;
    var var_3 = Struct_5(_wgslsmith_f_op_f32(1151f + -439f));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-arg_1.b.d.x));
    return !(!(!(!select(vec3<bool>(var_1.a, false, false), vec3<bool>(var_2.a, false, var_1.a), vec3<bool>(false, arg_1.b.a, true)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), (select(arg_0.x, arg_0.x, false) != _wgslsmith_mult_u32(u_input.a.x, 1u)) | true), vec4<bool>(!(!(65724u > u_input.a.x)), false, false, false), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(all(vec3<bool>(false, false, false)), true, all(vec4<bool>(true, false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, all(vec2<bool>(true, true)), true), vec4<bool>(true, true, all(vec2<bool>(true, false)), true), vec4<bool>(false, true, any(vec4<bool>(true, false, false, false)), true)), vec4<bool>(true, true, true, true)));
    var var_1 = vec2<i32>(~(-23026i << (u_input.a.x % 32u)), 0i);
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - 397f), 490f))))));
    let var_3 = Struct_2(Struct_1(any(func_3(-2147483647i, Struct_2(Struct_1(var_0.x, -1i, u_input.a.x, vec4<f32>(240f, -1589f, var_2.a, 171f), vec3<i32>(var_1.x, var_1.x, var_1.x)), Struct_1(var_0.x, 1i, 4294967295u, vec4<f32>(661f, 257f, var_2.a, 1142f), vec3<i32>(15068i, -31899i, -2147483647i)), Struct_1(false, 23482i, 0u, vec4<f32>(var_2.a, -954f, -933f, var_2.a), vec3<i32>(var_1.x, 1577i, -2147483647i)), u_input.a.x, var_1.x), true)), 2147483647i, 7674u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(744f, var_2.a, var_2.a, var_2.a)))), ~vec3<i32>(13431i, var_1.x, var_1.x)), Struct_1(true, abs(-2147483647i), ~0u, vec4<f32>(-966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), 981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * -205f)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_1.x, -1i, 1i) & vec3<i32>(2147483647i, 2147483647i, 0i), select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, var_1.x, 2147483647i)), countOneBits(vec3<i32>(var_1.x, var_1.x, 11560i)), var_0.wyy), -(~vec3<i32>(17092i, 41091i, var_1.x)))), Struct_1(false, var_1.x, (~arg_0.x << (~u_input.a.x % 32u)) ^ ~(u_input.a.x << (0u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(340f, var_2.a, var_2.a, var_2.a) + vec4<f32>(var_2.a, var_2.a, var_2.a, var_2.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(916f, -888f, var_2.a, var_2.a))))), select(vec3<i32>(-1i, var_1.x, abs(var_1.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.x, 1i), vec3<i32>(0i, -1i, -1i)), ~var_1.x == var_1.x)), 1u, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), ~(~vec2<i32>(1i, var_1.x))));
    var_1 = vec2<i32>(1i, var_3.b.e.x);
    return var_3.b;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(1u, ~1u, u_input.a.x, 20684u);
    var var_1 = _wgslsmith_f_op_f32(abs(-1089f));
    var var_2 = countOneBits(firstTrailingBit(~(vec4<u32>(41933u, 4294967295u, u_input.a.x, 21171u) & ~vec4<u32>(4294967295u, var_0.x, var_0.x, 24053u))));
    var var_3 = ~_wgslsmith_sub_u32(~(~(~u_input.a.x)), 69960u);
    let var_4 = 1260f;
    return func_2(vec4<u32>(_wgslsmith_add_u32(~0u, countOneBits(u_input.a.x)), ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(var_0.x, var_0.x)) & ~4294967295u, reverseBits(_wgslsmith_sub_u32(var_0.x, 14203u))) & _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, 4294967295u, u_input.a.x), vec4<u32>(var_0.x, var_2.x, var_2.x, u_input.a.x)) | abs(vec4<u32>(190u, u_input.a.x, 57189u, 87171u)), firstTrailingBit(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 95719u))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.e;
    var var_1 = !vec4<bool>(false, arg_1, func_1().a, !(arg_0.b.d.x != arg_0.b.d.x) && true);
    let var_2 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f), arg_0.c.d.x));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.c.d.x)), _wgslsmith_div_f32(-1300f, 866f))), _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(trunc(arg_2.d.x))))))))));
    var_3 = _wgslsmith_f_op_f32(-var_2.a);
    return Struct_1(select(_wgslsmith_add_u32(4294967295u, arg_2.c) >= 64764u, !(!all(vec2<bool>(false, arg_0.b.a))), arg_0.b.a), arg_2.b, _wgslsmith_mult_u32(~firstLeadingBit(u_input.a.x | 101882u), _wgslsmith_add_u32(arg_2.c, arg_0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, _wgslsmith_f_op_f32(-arg_0.c.d.x), var_2.a, _wgslsmith_f_op_f32(arg_0.b.d.x - arg_0.a.d.x)))), select(vec3<i32>(i32(-1i) * -3799i, -40610i ^ arg_2.b, arg_2.e.x), vec3<i32>(1i, ~(-2147483647i), arg_2.b) & (~arg_2.e & vec3<i32>(2147483647i, arg_0.e, var_0.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(true, ~(-6080i), 32538u, vec4<f32>(_wgslsmith_f_op_f32(-677f * _wgslsmith_f_op_f32(min(-1000f, -221f))), -1643f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<i32>(-_wgslsmith_mod_i32(2147483647i, 2147483647i), -2147483647i, 1i)), func_4(Struct_2(func_1(), func_2(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u)), func_2(~vec4<u32>(36804u, u_input.a.x, 6466u, u_input.a.x)), _wgslsmith_mult_u32(0u, 0u), 61026i), true, func_1()), Struct_1(false, abs(max(-2147483647i, 2147483647i)) & func_4(Struct_2(Struct_1(false, 0i, u_input.a.x, vec4<f32>(584f, -441f, 1374f, 1284f), vec3<i32>(1i, 0i, 58500i)), Struct_1(false, 0i, 3869u, vec4<f32>(253f, 793f, 1000f, -525f), vec3<i32>(4178i, -2147483647i, -59058i)), Struct_1(false, -19952i, u_input.a.x, vec4<f32>(-599f, -179f, 830f, 1000f), vec3<i32>(-61936i, 10288i, 1i)), u_input.a.x, 1i), true, func_2(vec4<u32>(u_input.a.x, u_input.a.x, 20684u, 1u))).e.x, ~20017u, vec4<f32>(_wgslsmith_div_f32(-1000f, 1f), _wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(1253f - -622f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-337f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-986f))))), -(~vec3<i32>(42641i, 0i, -24955i))), u_input.a.x, -5943i);
    let var_1 = ~(-2147483647i);
    let var_2 = !(!select(func_3(13745i, Struct_2(Struct_1(false, var_0.c.e.x, u_input.a.x, vec4<f32>(-498f, -1031f, var_0.a.d.x, -277f), var_0.c.e), var_0.b, Struct_1(var_0.b.a, -37027i, 0u, var_0.a.d, var_0.a.e), 8568u, var_0.c.e.x), any(vec3<bool>(var_0.a.a, var_0.b.a, var_0.b.a))), vec3<bool>(var_0.c.a, true, var_0.b.a), !func_3(var_1, Struct_2(Struct_1(false, var_0.e, u_input.a.x, vec4<f32>(-580f, 424f, var_0.b.d.x, -1920f), var_0.b.e), var_0.b, var_0.b, var_0.b.c, -9600i), var_0.c.a)));
    var_0 = Struct_2(Struct_1(-firstLeadingBit(6508i) < ~_wgslsmith_mult_i32(6884i, var_1), firstTrailingBit(-(-28351i << (u_input.a.x % 32u))), u_input.a.x, vec4<f32>(1000f, _wgslsmith_div_f32(1000f, 280f), -925f, 395f), _wgslsmith_sub_vec3_i32(-(~var_0.a.e), -_wgslsmith_div_vec3_i32(var_0.a.e, vec3<i32>(var_0.e, var_0.b.e.x, var_0.a.e.x)))), var_0.b, Struct_1((var_1 | -var_1) <= -1i, -1i, var_0.d, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a.d.x, -719f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.d.x)) * 194f), -1703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) - _wgslsmith_f_op_f32(min(1247f, 203f)))), ~firstLeadingBit(-vec3<i32>(-2147483647i, 2147483647i, var_1))), max(u_input.a.x, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a.x, 809u, var_0.c.c)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 40847u, u_input.a.x), vec3<u32>(var_0.a.c, u_input.a.x, var_0.b.c), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.d, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 4294967295u))))), reverseBits(1i) << ((16894u << (_wgslsmith_clamp_u32(var_0.a.c, func_2(vec4<u32>(0u, 1u, 42668u, u_input.a.x)).c, 1u) % 32u)) % 32u));
    let var_3 = Struct_5(1201f);
    var_0 = Struct_2(var_0.c, func_1(), Struct_1(var_2.x, firstTrailingBit(var_0.c.b << (4294967295u % 32u)) ^ _wgslsmith_clamp_i32(16783i, i32(-1i) * -32556i, var_0.c.b | 2147483647i), 43026u, _wgslsmith_f_op_vec4_f32(max(var_0.a.d, var_0.b.d)), _wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, 0i, var_0.c.e.x), vec3<i32>(var_0.e, var_0.a.b, -2147483647i)) ^ ~(vec3<i32>(-2147483647i, 0i, var_1) & vec3<i32>(var_0.b.e.x, 14204i, var_1))), var_0.a.c, ~var_1);
    let var_4 = vec2<bool>(func_3(~var_0.c.e.x, Struct_2(func_4(Struct_2(Struct_1(false, 2147483647i, u_input.a.x, var_0.a.d, vec3<i32>(var_0.b.b, var_1, var_0.a.b)), var_0.b, var_0.a, u_input.a.x, 65334i), !var_2.x, Struct_1(true, -38193i, 59833u, vec4<f32>(var_3.a, 278f, -782f, var_0.c.d.x), var_0.c.e)), func_4(Struct_2(var_0.c, var_0.c, var_0.c, 59918u, var_1), func_1().a, Struct_1(true, var_0.e, 9198u, vec4<f32>(var_0.a.d.x, var_0.b.d.x, var_0.a.d.x, 573f), var_0.b.e)), func_1(), abs(1u), firstLeadingBit(-2147483647i | var_1)), _wgslsmith_f_op_f32(max(var_3.a, var_0.b.d.x)) < 908f).x, all(vec3<bool>(all(!var_2), true, func_2(vec4<u32>(var_0.d, 2138u, 0u, 12696u)).a & any(vec4<bool>(true, var_2.x, true, var_0.c.a)))));
    let var_5 = ~(-var_1 & var_0.a.b) >> (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a.c, 0u | var_0.d, 4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(77978u, 4294967295u, 22288u), vec3<u32>(var_0.a.c, 11194u, 6004u))));
}

