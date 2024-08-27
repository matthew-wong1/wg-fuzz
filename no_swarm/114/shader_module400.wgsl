struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(645f, -666f, 526f, -372f), vec4<f32>(390f, 658f, -1549f, -978f), vec4<f32>(-473f, -887f, 389f, -1487f));

var<private> global1: f32;

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(false, vec2<f32>(-417f, 756f), Struct_4(-3939i, true, vec2<f32>(-1155f, 196f), Struct_1(-876f, vec2<u32>(1081u, 0u), false, 19816u)), Struct_2(Struct_1(-1069f, vec2<u32>(0u, 61491u), false, 0u), 0u)), Struct_5(false, vec2<f32>(909f, 1259f), Struct_4(5739i, true, vec2<f32>(1298f, -1096f), Struct_1(576f, vec2<u32>(28864u, 0u), true, 4294967295u)), Struct_2(Struct_1(152f, vec2<u32>(9832u, 7144u), false, 1u), 15305u)), Struct_5(false, vec2<f32>(1970f, 197f), Struct_4(-1i, false, vec2<f32>(403f, 1142f), Struct_1(1987f, vec2<u32>(69326u, 96128u), false, 1u)), Struct_2(Struct_1(930f, vec2<u32>(1u, 4294967295u), true, 52807u), 4294967295u)), Struct_5(true, vec2<f32>(-593f, -106f), Struct_4(2147483647i, true, vec2<f32>(-1038f, 1240f), Struct_1(-169f, vec2<u32>(21159u, 1u), false, 0u)), Struct_2(Struct_1(865f, vec2<u32>(0u, 12482u), true, 83667u), 0u)), Struct_5(false, vec2<f32>(-250f, 1348f), Struct_4(-6423i, true, vec2<f32>(227f, -775f), Struct_1(663f, vec2<u32>(2019u, 1u), true, 4294967295u)), Struct_2(Struct_1(-502f, vec2<u32>(6976u, 23641u), true, 48590u), 1u)), Struct_5(true, vec2<f32>(206f, -157f), Struct_4(20501i, false, vec2<f32>(-468f, 1694f), Struct_1(439f, vec2<u32>(1u, 4294967295u), true, 58200u)), Struct_2(Struct_1(-1237f, vec2<u32>(0u, 68697u), false, 12363u), 35354u)), Struct_5(true, vec2<f32>(-912f, -1277f), Struct_4(-13715i, false, vec2<f32>(1005f, -2815f), Struct_1(1085f, vec2<u32>(14442u, 1u), false, 1u)), Struct_2(Struct_1(714f, vec2<u32>(4294967295u, 43065u), false, 4294967295u), 71395u)), Struct_5(false, vec2<f32>(-636f, -750f), Struct_4(-24665i, false, vec2<f32>(-1878f, -126f), Struct_1(-1000f, vec2<u32>(4294967295u, 87983u), true, 0u)), Struct_2(Struct_1(650f, vec2<u32>(0u, 0u), true, 27368u), 66752u)), Struct_5(true, vec2<f32>(-773f, -388f), Struct_4(-23728i, false, vec2<f32>(135f, 474f), Struct_1(-339f, vec2<u32>(74854u, 39448u), true, 1u)), Struct_2(Struct_1(1000f, vec2<u32>(4294967295u, 1u), false, 4294967295u), 1u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.a.a * -304f);
    let var_1 = max(firstLeadingBit(firstLeadingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(-9734i, arg_2.x, -17261i, u_input.b), vec4<i32>(-24264i, -21444i, 0i, u_input.b)))), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-26729i), u_input.b, ~(-15562i), -24007i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_2.x, -1i, u_input.b), firstLeadingBit(vec4<i32>(0i, u_input.b, -48590i, 7954i))) | vec4<i32>(arg_2.x, -arg_2.x, u_input.b, arg_2.x)));
    var var_2 = -(~var_1.zx);
    let var_3 = _wgslsmith_f_op_f32(max(-398f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.a * 421f), -412f))))));
    global3 = array<Struct_5, 9>();
    return 2147483647i;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1685f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(select(arg_1, arg_1, arg_3.x))))), -546f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), arg_1, _wgslsmith_f_op_f32(ceil(2569f))) * vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-201f, 1431f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f))))));
    let var_1 = 8382i;
    let var_2 = false;
    var var_3 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(arg_2 << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1u), countOneBits(arg_0)) % 32u), 21u)], min(~(u_input.a.x | 4294967295u), 71878u)));
    var var_4 = 97510u;
    return any(arg_3.zzw);
}

fn func_1() -> vec3<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, 1i, -7493i) >> (u_input.a % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, u_input.b)) | vec3<i32>(_wgslsmith_mod_i32(~u_input.b, func_2(true, Struct_2(Struct_1(736f, u_input.a.yx, false, u_input.a.x), 35024u), vec2<i32>(2147483647i, -17484i))), -2147483647i, i32(-1i) * -u_input.b));
    let var_1 = Struct_4(_wgslsmith_sub_i32(firstTrailingBit(var_0.x) >> (~u_input.a.x % 32u), -1801i), u_input.a.x == ~(~_wgslsmith_mod_u32(1u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(f32(-1f) * -152f)), vec2<f32>(_wgslsmith_f_op_f32(-497f - 686f), _wgslsmith_f_op_f32(622f + -208f))))), global2[_wgslsmith_index_u32(u_input.a.x, 21u)]);
    var var_2 = Struct_5(var_1.b, var_1.c, Struct_4(-u_input.b >> (~firstLeadingBit(u_input.a.x) % 32u), true, var_1.c, Struct_1(_wgslsmith_f_op_f32(-var_1.d.a), _wgslsmith_add_vec2_u32(u_input.a.yx & var_1.d.b, ~vec2<u32>(0u, u_input.a.x)), true, _wgslsmith_add_u32(var_1.d.d, 4294967295u))), Struct_2(Struct_1(-1421f, ~(~vec2<u32>(28616u, 1u)), !func_3(u_input.a.xz, var_1.c.x, var_1.d.b.x, vec4<bool>(var_1.b, false, var_1.b, var_1.b)), 1u), _wgslsmith_add_u32(var_1.d.d, u_input.a.x)));
    var_2 = global3[_wgslsmith_index_u32(var_1.d.d, 9u)];
    let var_3 = global2[_wgslsmith_index_u32(var_2.d.a.d, 21u)];
    return ~(-(~var_0) >> (u_input.a % vec3<u32>(32u))) ^ (reverseBits(-vec3<i32>(u_input.b, var_1.a, -2147483647i) << ((vec3<u32>(var_3.d, var_3.d, u_input.a.x) & u_input.a) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 105084i, var_1.a), vec4<i32>(var_2.c.a, u_input.b, u_input.b, -1i)) >> (_wgslsmith_mod_u32(42111u, 4294967295u) % 32u), -21843i, 0i | var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_0 = func_1();
    global1 = _wgslsmith_f_op_f32(ceil(-652f));
    var var_1 = select(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(45996u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 42767u, 1u), vec4<bool>(false, true, false, true)), select(~vec4<u32>(u_input.a.x, 59869u, 12081u, 29205u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), all(vec2<bool>(false, true)))) | _wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a.x, 64484u, 4294967295u, u_input.a.x)), ~(~vec4<u32>(4294967295u, 84213u, u_input.a.x, 1u))), vec4<u32>(4294967295u, max(u_input.a.x, u_input.a.x), firstLeadingBit(1u), _wgslsmith_mod_u32(~u_input.a.x, min(~u_input.a.x, countOneBits(0u)))), true);
    let var_2 = false;
    global0 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<i32>(2147483647i, u_input.b | -1i, _wgslsmith_div_i32(2147483647i, -1i), ~1i)), ~var_1.x, -select(-vec3<i32>(var_0.x, u_input.b, -1i), vec3<i32>(var_0.x, u_input.b, 1i) ^ vec3<i32>(u_input.b, var_0.x, -2147483647i), var_2));
}

