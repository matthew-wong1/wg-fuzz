struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(12088i, true, Struct_1(vec3<i32>(-4906i, 16142i, 62803i), vec3<f32>(-1573f, -1489f, -606f), false)), Struct_2(-12726i, true, Struct_1(vec3<i32>(2147483647i, -19625i, 0i), vec3<f32>(-149f, -774f, 581f), false)), Struct_2(i32(-2147483648), true, Struct_1(vec3<i32>(1i, 76585i, -1i), vec3<f32>(-1450f, 2185f, 647f), true)), Struct_2(i32(-2147483648), false, Struct_1(vec3<i32>(0i, -31232i, -22542i), vec3<f32>(1000f, 951f, -253f), true)), Struct_2(-59713i, false, Struct_1(vec3<i32>(-22642i, i32(-2147483648), i32(-2147483648)), vec3<f32>(613f, -125f, 1747f), true)), Struct_2(-1i, true, Struct_1(vec3<i32>(-4553i, i32(-2147483648), 1i), vec3<f32>(965f, -635f, -955f), false)), Struct_2(1i, true, Struct_1(vec3<i32>(-22475i, 2147483647i, 1i), vec3<f32>(1312f, 339f, 1010f), true)), Struct_2(1i, true, Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<f32>(314f, 319f, -1580f), true)), Struct_2(1i, false, Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<f32>(205f, 1643f, -326f), false)), Struct_2(18180i, false, Struct_1(vec3<i32>(71007i, 2147483647i, -9388i), vec3<f32>(632f, 1287f, 1000f), true)), Struct_2(-8241i, true, Struct_1(vec3<i32>(2147483647i, 0i, 1i), vec3<f32>(516f, -1143f, 632f), true)), Struct_2(-1i, false, Struct_1(vec3<i32>(6854i, -20310i, i32(-2147483648)), vec3<f32>(226f, 509f, 896f), false)), Struct_2(2147483647i, true, Struct_1(vec3<i32>(-11214i, 10532i, -1i), vec3<f32>(-1994f, -909f, 676f), true)), Struct_2(28293i, false, Struct_1(vec3<i32>(-11659i, 1i, 0i), vec3<f32>(269f, 1049f, -284f), false)), Struct_2(2147483647i, false, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 11586i), vec3<f32>(-1485f, 439f, -1485f), true)), Struct_2(0i, false, Struct_1(vec3<i32>(-63104i, i32(-2147483648), 1i), vec3<f32>(-851f, 259f, -1644f), true)), Struct_2(-23057i, false, Struct_1(vec3<i32>(0i, 80805i, 16309i), vec3<f32>(704f, 232f, -1101f), true)), Struct_2(10023i, false, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -28541i), vec3<f32>(320f, -1821f, 1247f), true)), Struct_2(i32(-2147483648), false, Struct_1(vec3<i32>(-20315i, -1i, -1i), vec3<f32>(1174f, 1381f, -1120f), true)), Struct_2(-6305i, true, Struct_1(vec3<i32>(0i, -11448i, -7383i), vec3<f32>(763f, 381f, 614f), true)));

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(13599i, -1i, -10451i), vec3<f32>(-252f, 106f, -1041f), false), Struct_1(vec3<i32>(i32(-2147483648), 15155i, 2147483647i), vec3<f32>(338f, 778f, -266f), false), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<f32>(413f, -782f, 1514f), false), Struct_1(vec3<i32>(-1i, i32(-2147483648), -35967i), vec3<f32>(-394f, -589f, 1000f), false), Struct_1(vec3<i32>(-15562i, 20078i, 2238i), vec3<f32>(-508f, 594f, -669f), true), Struct_1(vec3<i32>(6919i, 26108i, 51096i), vec3<f32>(1000f, 1256f, 169f), false), Struct_1(vec3<i32>(-1i, 37291i, -28457i), vec3<f32>(-328f, 708f, -1809f), false), Struct_1(vec3<i32>(-27760i, 1077i, 1i), vec3<f32>(-1000f, -1000f, 621f), true), Struct_1(vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<f32>(220f, 1506f, -991f), true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1095f));
    let var_1 = 9315i;
    let var_2 = arg_2;
    let var_3 = all(vec4<bool>(true, any(!(!vec3<bool>(false, true, arg_2.c))), var_2.c, false));
    var var_4 = _wgslsmith_mod_vec3_u32(abs(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(82031u, 24200u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))))), vec3<u32>(1u, u_input.b.x, u_input.b.x));
    return select(vec2<u32>(reverseBits(~41359u), u_input.b.x), var_4.yx, vec2<bool>(!arg_3.c, false));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = -29904i >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(select(u_input.b.x, u_input.b.x, true), ~u_input.b.x), ~func_3(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), vec3<f32>(280f, 148f, 130f), false), global2[_wgslsmith_index_u32(103079u, 9u)], Struct_1(u_input.e, vec3<f32>(-1100f, 442f, 398f), true), Struct_1(u_input.e, vec3<f32>(1000f, -1587f, 1074f), true))) | (~(~17156u) | ~_wgslsmith_mod_u32(1u, u_input.b.x))) % 32u);
    let var_1 = true;
    global0 = array<Struct_2, 20>();
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    return Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-866f + _wgslsmith_f_op_f32(1000f - 398f)), -896f, 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -251f, 222f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-276f, 404f, -2517f), vec3<f32>(1463f, -156f, 928f), false))))))), any(vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    global1 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_f32(select(830f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1409f - arg_0.c.b.x), _wgslsmith_f_op_f32(-222f - 1000f)))))), select(!arg_0.c.c, ((arg_0.c.b.x > arg_0.c.b.x) == true) && arg_0.c.c, false)));
    let var_1 = vec3<bool>(!any(!vec3<bool>(arg_0.c.c, true, arg_0.b)), true, any(vec2<bool>(all(select(vec2<bool>(arg_0.c.c, true), vec2<bool>(arg_0.c.c, arg_0.b), arg_0.c.c)), _wgslsmith_f_op_f32(-arg_0.c.b.x) < arg_0.c.b.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) + _wgslsmith_f_op_f32(arg_0.c.b.x + arg_0.c.b.x)))));
    global0 = array<Struct_2, 20>();
    return StorageBuffer(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0i, false, global2[_wgslsmith_index_u32(1u, 9u)]);
    var var_1 = select(vec4<bool>(true, !((var_0.b && true) | true), var_0.b, any(!vec4<bool>(false, true, var_0.b, false)) == (abs(1i) != (u_input.a.x & u_input.a.x))), vec4<bool>(true, false, ~u_input.b.x <= 57153u, func_1()), select(select(select(vec4<bool>(true, false, false, false), !vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(var_0.b, var_0.b, false, var_0.b)), !(!vec4<bool>(var_0.b, var_0.c.c, true, var_0.c.c)), var_0.b), vec4<bool>(var_0.b, var_0.b, true, true || var_0.c.c), select(vec4<bool>(true, !var_0.b, true, u_input.b.x == 45031u), select(vec4<bool>(var_0.b, true, var_0.b, var_0.b), select(vec4<bool>(true, true, false, var_0.c.c), vec4<bool>(var_0.b, var_0.b, var_0.c.c, true), vec4<bool>(var_0.c.c, false, false, false)), true), vec4<bool>(var_0.b, var_0.c.c, true, false))));
    global1 = array<Struct_2, 8>();
    var var_2 = true;
    global2 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = func_4(Struct_2(reverseBits(1i), true, func_2(var_1.xwy)));
}

