struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<Struct_3, 23>;

var<private> global1: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = vec4<u32>(countOneBits(~countOneBits(1u >> (arg_0 % 32u))), ~abs(~arg_0 | _wgslsmith_div_u32(0u, 27895u)), ~(~arg_0), _wgslsmith_dot_vec2_u32(~(countOneBits(vec2<u32>(67302u, 16046u)) ^ (vec2<u32>(0u, 4294967295u) & vec2<u32>(arg_0, arg_0))), countOneBits(~vec2<u32>(0u, arg_0)) >> (~(vec2<u32>(arg_0, arg_0) ^ vec2<u32>(26714u, 0u)) % vec2<u32>(32u))));
    var var_1 = !select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(!any(vec3<bool>(true, true, true)), true), !all(vec3<bool>(true, true, false)));
    var var_2 = Struct_3(Struct_2(~2147483647i, ~var_0.yx, Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, -8446i, arg_1.x, arg_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(46822i, -9714i, arg_1.x, u_input.a.x), vec4<i32>(2147483647i, -42688i, 11676i, -991i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1401f, -138f, -1937f))), 1000f, var_1.x, select(var_0.yx, vec2<u32>(110089u, var_0.x), vec2<bool>(false, false))), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.xyz, vec3<u32>(44185u, var_0.x, 4294967295u)), arg_0, ~var_0.x, ~1u)), vec2<bool>(all(vec2<bool>(true, true)), u_input.a.x >= u_input.a.x), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-169f, 525f), vec2<f32>(-309f, 498f))))))));
    var var_3 = Struct_4(56230u);
    let var_4 = -1000f;
    return vec3<u32>(26971u, ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.b.x, var_2.a.b.x, 4294967295u, arg_0), var_2.a.d))), 0u);
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    global0 = array<Struct_3, 23>();
    global1 = !(4294967295u < _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(39613u, 30317u), arg_1 ^ 55249u), _wgslsmith_mult_u32(reverseBits(arg_1), countOneBits(arg_1))));
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_1, 75743u, 112912u)) >> (~vec3<u32>(arg_1, 0u, arg_1) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(4768u, 37231u, arg_1)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1, arg_1), vec3<u32>(arg_1, arg_1, arg_1)) ^ vec3<u32>(0u, 5887u, 4294967295u))), func_3(~arg_1, u_input.a));
    var var_1 = u_input.a;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(94139u >> (~arg_1 % 32u), 50371u, true), arg_1), 23u)];
    return 7142i;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = arg_0.c.d;
    global0 = array<Struct_3, 23>();
    var var_0 = true;
    let var_1 = func_2(any(!select(!vec2<bool>(true, arg_0.c.d), select(vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(arg_0.c.d, true), true), vec2<bool>(true, arg_0.c.d))), firstTrailingBit(32413u));
    var var_2 = select(select(vec3<bool>(true, false, any(!vec4<bool>(arg_0.c.d, true, arg_0.c.d, true))), !(!(!vec3<bool>(false, arg_0.c.d, false))), !select(select(vec3<bool>(true, true, arg_0.c.d), vec3<bool>(false, false, arg_0.c.d), true), !vec3<bool>(false, arg_0.c.d, arg_0.c.d), 30690i >= var_1)), vec3<bool>(any(select(vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(true, arg_0.c.d), arg_0.c.d)) && select(true, arg_0.c.d & arg_0.c.d, true), arg_0.c.d, true), select(vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(95827u, arg_0.d.x), arg_0.d.xx) <= (arg_0.b.x << (arg_0.d.x % 32u)), true, true), vec3<bool>(!(arg_0.c.d && arg_0.c.d), all(vec3<bool>(arg_0.c.d, false, arg_0.c.d)) != true, 1u <= (arg_0.d.x ^ 4294967295u)), arg_0.c.d));
    return Struct_1(~(vec4<i32>(_wgslsmith_clamp_i32(var_1, 1i, 6802i), -1i, 2147483647i & arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1, 2147483647i), vec3<i32>(7791i, 24878i, var_1))) & vec4<i32>(-arg_0.a, var_1 & 2147483647i, -u_input.a.x, -2147483647i)), arg_0.c.b, -1000f, arg_0.c.d, ~_wgslsmith_mult_vec2_u32(abs(arg_0.c.e), select(vec2<u32>(70747u, arg_0.c.e.x), arg_0.d.zz, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(arg_1.d, max(0u, ~abs(arg_1.e.x)) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.x, 50726u, arg_1.e.x), vec3<u32>(arg_1.e.x, arg_1.e.x, arg_1.e.x)) >> (5119u % 32u), 52432u) % 32u));
    global1 = false;
    let var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(~arg_1.e.x, 23u)];
    let var_3 = var_2.a.c.a.yxx;
    return func_1(Struct_2((_wgslsmith_mod_i32(-12939i, -13907i) >> ((var_2.a.c.e.x ^ var_2.a.b.x) % 32u)) | -_wgslsmith_add_i32(50360i, -2147483647i), var_2.a.b, Struct_1(arg_1.a & (arg_1.a << (var_2.a.d % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, 139f, var_2.d.x)), _wgslsmith_f_op_f32(var_2.a.c.c - _wgslsmith_f_op_f32(-var_2.a.c.b.x)), true, ~select(var_2.a.b, arg_1.e, arg_0)), vec4<u32>(0u, _wgslsmith_sub_u32(53u, 4294967295u | arg_1.e.x), reverseBits(arg_1.e.x) ^ ~25288u, max(~var_2.a.b.x, 22471u))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global1 = !(-727f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(arg_0 * -1537f)));
    global1 = arg_2;
    global1 = 1i == arg_3.a;
    let var_0 = !all(!select(!vec4<bool>(arg_3.c.d, arg_3.c.d, true, arg_3.c.d), select(vec4<bool>(arg_3.c.d, arg_2, true, false), vec4<bool>(arg_3.c.d, false, arg_3.c.d, arg_3.c.d), vec4<bool>(true, arg_3.c.d, false, false)), any(vec3<bool>(arg_3.c.d, true, arg_3.c.d))));
    var var_1 = -(~func_1(arg_3).a.x);
    return Struct_2(func_4(all(!select(vec3<bool>(var_0, true, arg_3.c.d), vec3<bool>(true, false, true), vec3<bool>(true, arg_2, false))), Struct_1(min(min(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 18082i), arg_3.c.a), _wgslsmith_mult_vec4_i32(arg_3.c.a, vec4<i32>(u_input.a.x, arg_3.c.a.x, u_input.a.x, u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(sign(arg_3.c.b.x)), _wgslsmith_f_op_f32(-1401f * arg_3.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1795f + 139f) * arg_3.c.c), var_0, ~(~vec2<u32>(0u, arg_3.d.x)))).a.x, ~vec2<u32>(func_3(~arg_1, _wgslsmith_mod_vec2_i32(arg_3.c.a.wz, vec2<i32>(-1i, arg_3.c.a.x))).x, 68096u), Struct_1(arg_3.c.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1411f, -270f, func_1(Struct_2(2147483647i, vec2<u32>(arg_1, arg_1), Struct_1(vec4<i32>(u_input.a.x, 21591i, 37036i, u_input.a.x), arg_3.c.b, arg_0, var_0, vec2<u32>(30324u, arg_3.b.x)), arg_3.d)).b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), (arg_2 && func_1(Struct_2(1787i, vec2<u32>(14135u, arg_1), Struct_1(vec4<i32>(1i, arg_3.c.a.x, 3224i, arg_3.c.a.x), arg_3.c.b, 443f, arg_3.c.d, arg_3.c.e), arg_3.d)).d) || all(select(vec3<bool>(var_0, true, false), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_3.c.d, false))), select(~(vec2<u32>(arg_1, 31220u) & arg_3.c.e), vec2<u32>(21666u, max(4294967295u, 1u)), arg_2)), vec4<u32>(~min(53856u, 4294967295u), 9018u, arg_1, ~5345u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-458f, -713f))) + -429f), 26611u, false, Struct_2(firstTrailingBit(u_input.a.x), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<bool>(u_input.a.x != 2147483647i, true)), func_4(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), func_1(Struct_2(u_input.a.x, vec2<u32>(35026u, 4294967295u), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -6242i, u_input.a.x), vec3<f32>(-871f, -220f, 1061f), 361f, false, vec2<u32>(4294967295u, 0u)), vec4<u32>(22243u, 95033u, 20846u, 28231u)))), ~(~(~vec4<u32>(14889u, 1u, 4294967295u, 0u)))));
    let var_1 = Struct_4(~(~var_0.b.x));
    var var_2 = !var_0.c.d;
    var var_3 = u_input.a.x;
    let var_4 = select(!vec3<bool>(var_0.c.d, _wgslsmith_f_op_f32(trunc(var_0.c.b.x)) < _wgslsmith_f_op_f32(var_0.c.b.x - -1006f), !(!var_0.c.d)), !select(!select(vec3<bool>(var_0.c.d, false, var_0.c.d), vec3<bool>(false, var_0.c.d, var_0.c.d), vec3<bool>(var_0.c.d, true, false)), !select(vec3<bool>(true, var_0.c.d, var_0.c.d), vec3<bool>(true, true, var_0.c.d), vec3<bool>(true, var_0.c.d, var_0.c.d)), !var_0.c.d | var_0.c.d), !vec3<bool>(true, true, var_0.c.d));
    var var_5 = vec3<f32>(-398f, -1219f, 434f);
    let var_6 = vec4<u32>(17475u, var_0.d.x, _wgslsmith_dot_vec2_u32(~var_0.b, ~select(vec2<u32>(19099u, 79954u), ~var_0.c.e, vec2<bool>(false, true))), _wgslsmith_dot_vec3_u32(~(~var_0.d.wxy), vec3<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, firstTrailingBit(54881u)), ~(~var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.b.zz, _wgslsmith_f_op_vec2_f32(-var_5.zx))) - var_0.c.b.zy));
}

