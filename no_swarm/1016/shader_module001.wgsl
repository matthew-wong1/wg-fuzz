struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-7960i, 16491i, 2275i, -1i, i32(-2147483648), -1i, i32(-2147483648), 80475i, 1i, -1i, 0i, -38439i, -1i, 1i, 58226i, i32(-2147483648), -7156i, i32(-2147483648), 20264i, 44946i, 2147483647i, 10892i);

var<private> global1: bool = true;

var<private> global2: array<Struct_4, 31>;

var<private> global3: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(783f, Struct_2(vec2<f32>(254f, -965f), -1786f, 41649u, vec4<u32>(9014u, 35664u, 56834u, 0u), Struct_1(vec2<bool>(true, true), vec4<f32>(-1796f, 1869f, 1023f, 2004f), vec3<u32>(0u, 20070u, 39272u), 4294967295u, vec4<bool>(true, true, true, false))), vec4<f32>(1020f, -1000f, 457f, 1702f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> vec4<bool> {
    global2 = array<Struct_4, 31>();
    var var_0 = select(false, false, !all(!select(arg_0, arg_0, vec3<bool>(true, true, true))));
    global0 = array<i32, 22>();
    var var_1 = vec3<u32>(57698u ^ _wgslsmith_mult_u32(~u_input.c.x ^ _wgslsmith_mod_u32(16301u, u_input.c.x), u_input.c.x), max(~u_input.c.x, u_input.c.x & u_input.c.x), select(u_input.c.x, u_input.c.x, arg_0.x));
    global0 = array<i32, 22>();
    return vec4<bool>(!(false & (_wgslsmith_f_op_f32(-arg_1) >= arg_1)), !(!any(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), false, !arg_0.x);
}

fn func_3() -> bool {
    let var_0 = (~u_input.c.x | (1u << (_wgslsmith_add_u32(u_input.c.x, u_input.c.x >> (u_input.c.x % 32u)) % 32u))) ^ ~u_input.c.x;
    let var_1 = select(vec4<bool>(true, false, true, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), func_2(vec3<bool>(false, false, false), 734f, u_input.b.yy, Struct_3(10759i)), vec4<bool>(true, false, false, true)))), func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1615f + 1191f)))), _wgslsmith_mult_vec2_i32(countOneBits(u_input.b.yw) ^ u_input.b.zz, _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.a, -2681i)), ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 1i))), Struct_3(u_input.a)), func_2(!vec3<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false)), true), _wgslsmith_f_op_f32(round(-365f)), select(u_input.b.xx, u_input.b.yz, vec2<bool>(true, all(vec4<bool>(true, true, true, true)))), Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(66523u, var_0), 22u)])));
    global1 = true;
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> Struct_2 {
    let var_0 = arg_1.b.e.d;
    var var_1 = all(select(func_2(!arg_1.b.e.e.zyx, arg_0.c.x, u_input.b.xw, Struct_3(0i)), vec4<bool>(!(-141f < arg_0.a), true, func_3(), any(arg_0.b.e.a)), !func_2(arg_0.b.e.e.xzx, arg_1.a, ~u_input.b.ww, Struct_3(u_input.b.x))));
    let var_2 = firstTrailingBit(32966u);
    global2 = array<Struct_4, 31>();
    global3 = array<Struct_4, 1>();
    return arg_1.b;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global1 = arg_0.b.e.e.x;
    global1 = all(vec2<bool>(all(func_2(!vec3<bool>(false, arg_0.b.e.e.x, false), _wgslsmith_f_op_f32(-arg_0.a), u_input.b.xw, Struct_3(-74662i)).zyw), arg_0.b.e.a.x));
    let var_0 = firstLeadingBit(~vec4<u32>(55922u, reverseBits(u_input.c.x), ~47080u, 0u));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(-16250i, 41343i, global0[_wgslsmith_index_u32(var_0.x, 22u)], u_input.b.x), u_input.b)), 38512i << ((u_input.c.x ^ 4294967295u) % 32u)), abs(vec3<i32>(2147483647i & firstTrailingBit(41847i), -39291i << (1u % 32u), 1i)));
    var var_2 = vec2<i32>(-min(select(-3032i, u_input.b.x, false), i32(-1i) * -57148i), _wgslsmith_add_i32(abs(-u_input.a), -13457i)) >> ((_wgslsmith_add_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(arg_0.b.e.d, u_input.c.x)), vec2<u32>(1u, var_0.x), arg_0.b.e.a), arg_0.b.e.c.yy) | ~(~(vec2<u32>(1u, u_input.c.x) ^ vec2<u32>(58592u, var_0.x)))) % vec2<u32>(32u));
    return func_1(global2[_wgslsmith_index_u32(5654u, 31u)], Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-746f - 481f), _wgslsmith_f_op_f32(arg_0.b.b + 467f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-223f * arg_0.b.a.x), _wgslsmith_f_op_f32(sign(arg_0.c.x)), arg_0.b.e.e.x != arg_0.b.e.e.x))), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(221f, arg_0.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), ~0u, ~vec4<u32>(2283u, u_input.c.x, 4294967295u, 1u), arg_0.b.e), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b.e.b, vec4<f32>(arg_0.a, arg_0.c.x, 846f, -1494f))), _wgslsmith_f_op_vec4_f32(step(arg_0.b.e.b, vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x))), vec4<bool>(true, func_1(arg_0, Struct_4(arg_0.a, Struct_2(arg_0.b.e.b.xz, arg_0.a, u_input.c.x, arg_0.b.d, arg_0.b.e), vec4<f32>(1812f, arg_0.c.x, -672f, arg_0.a))).e.e.x, true, all(arg_0.b.e.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1595f), func_1(Struct_4(_wgslsmith_div_f32(-2858f, -734f), Struct_2(vec2<f32>(643f, -141f), -224f, 4294967295u, vec4<u32>(56968u, u_input.c.x, u_input.c.x, 20158u), Struct_1(vec2<bool>(false, true), vec4<f32>(422f, 360f, -552f, -692f), vec3<u32>(63159u, u_input.c.x, u_input.c.x), u_input.c.x, vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(445f, 128f, 976f, -513f) * vec4<f32>(-231f, 314f, -1395f, 1213f))), Struct_4(_wgslsmith_f_op_f32(min(1783f, 354f)), Struct_2(vec2<f32>(-750f, -856f), 728f, 0u, vec4<u32>(u_input.c.x, u_input.c.x, 50689u, u_input.c.x), Struct_1(vec2<bool>(false, false), vec4<f32>(1000f, -221f, -2358f, -574f), vec3<u32>(u_input.c.x, u_input.c.x, 3647u), 9585u, vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, -715f, -918f, -2041f) + vec4<f32>(-1702f, 1032f, -1502f, -1999f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(518f)), _wgslsmith_f_op_f32(round(-1216f)), 1f, _wgslsmith_f_op_f32(1617f * -262f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, 826f, -806f, -300f))), !func_1(Struct_4(-387f, Struct_2(vec2<f32>(862f, -1029f), -2191f, 19981u, vec4<u32>(30248u, 30121u, 20429u, u_input.c.x), Struct_1(vec2<bool>(true, false), vec4<f32>(110f, -360f, 1026f, 2078f), vec3<u32>(u_input.c.x, 90461u, 0u), 8001u, vec4<bool>(true, true, false, true))), vec4<f32>(-1509f, 1816f, -1000f, 723f)), Struct_4(-523f, Struct_2(vec2<f32>(-1052f, 688f), 560f, u_input.c.x, vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), Struct_1(vec2<bool>(true, false), vec4<f32>(1000f, -1000f, 265f, 1475f), vec3<u32>(1u, 4294967295u, u_input.c.x), 61656u, vec4<bool>(false, true, false, false))), vec4<f32>(-187f, -1119f, -1235f, -376f))).e.e))));
    let var_1 = var_0.e.e;
    global2 = array<Struct_4, 31>();
    var var_2 = var_0.d.yzz;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.b.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(3203u, ~52554u), 14191u), _wgslsmith_mod_vec3_u32(~var_0.d.xzz, var_0.e.c), 29865i, u_input.b.yxy);
}

