struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(70719u, 39882u), vec2<u32>(64538u, 10690u), vec2<u32>(32645u, 0u), vec2<u32>(11800u, 81881u), vec2<u32>(78688u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 55658u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 5300u), vec2<u32>(0u, 4294967295u), vec2<u32>(37548u, 44252u), vec2<u32>(0u, 16059u), vec2<u32>(23119u, 71009u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 20594u), vec2<u32>(0u, 4294967295u), vec2<u32>(3701u, 0u), vec2<u32>(40591u, 85109u), vec2<u32>(590u, 1u), vec2<u32>(1u, 23757u), vec2<u32>(30869u, 0u), vec2<u32>(64112u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(3085u, 0u), vec2<u32>(0u, 1u), vec2<u32>(5011u, 4294967295u), vec2<u32>(19520u, 5591u));

var<private> global1: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(false, Struct_3(vec4<i32>(2147483647i, -19533i, 0i, -51607i), 1i), vec4<f32>(499f, 1743f, 1000f, -549f), -24423i), Struct_5(true, Struct_3(vec4<i32>(0i, -35026i, 2147483647i, 0i), -1i), vec4<f32>(-811f, 1000f, -1889f, 1000f), -1i));

var<private> global2: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(false, Struct_2(vec4<i32>(-15065i, 26276i, -7796i, 0i), vec2<bool>(true, false)), false, Struct_2(vec4<i32>(1i, -69585i, -54543i, -45035i), vec2<bool>(false, false)), Struct_1(vec2<f32>(-765f, 1064f), i32(-2147483648))), Struct_4(true, Struct_2(vec4<i32>(-81516i, -1i, i32(-2147483648), -12006i), vec2<bool>(false, false)), false, Struct_2(vec4<i32>(1i, -3859i, -1i, -54409i), vec2<bool>(false, false)), Struct_1(vec2<f32>(330f, -917f), -9605i)), Struct_4(true, Struct_2(vec4<i32>(0i, -1i, 10670i, -19779i), vec2<bool>(false, true)), true, Struct_2(vec4<i32>(37899i, -34363i, 0i, -26800i), vec2<bool>(true, false)), Struct_1(vec2<f32>(1167f, 626f), -18032i)), Struct_4(true, Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648)), vec2<bool>(true, false)), false, Struct_2(vec4<i32>(-3057i, 1298i, -51337i, 7990i), vec2<bool>(false, true)), Struct_1(vec2<f32>(592f, 335f), -1i)), Struct_4(false, Struct_2(vec4<i32>(66922i, 1i, i32(-2147483648), 35324i), vec2<bool>(true, true)), false, Struct_2(vec4<i32>(-14885i, -1i, 16247i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec2<f32>(-1893f, 1294f), 44868i)), Struct_4(false, Struct_2(vec4<i32>(-7260i, i32(-2147483648), 1i, 2147483647i), vec2<bool>(false, true)), false, Struct_2(vec4<i32>(19596i, 1i, i32(-2147483648), 10583i), vec2<bool>(true, false)), Struct_1(vec2<f32>(-853f, 1069f), -1i)), Struct_4(true, Struct_2(vec4<i32>(2147483647i, -33315i, -28646i, 0i), vec2<bool>(true, false)), true, Struct_2(vec4<i32>(44261i, 18722i, -1i, -1i), vec2<bool>(false, true)), Struct_1(vec2<f32>(-471f, -486f), -1i)), Struct_4(true, Struct_2(vec4<i32>(-1i, 43322i, 36310i, i32(-2147483648)), vec2<bool>(false, false)), false, Struct_2(vec4<i32>(-72425i, 453i, 0i, 2147483647i), vec2<bool>(true, true)), Struct_1(vec2<f32>(357f, -816f), 5875i)), Struct_4(false, Struct_2(vec4<i32>(2147483647i, 8765i, -1i, 2950i), vec2<bool>(true, false)), true, Struct_2(vec4<i32>(-20309i, -901i, 43780i, 48431i), vec2<bool>(false, true)), Struct_1(vec2<f32>(486f, -1000f), -16022i)), Struct_4(false, Struct_2(vec4<i32>(-6691i, 33048i, i32(-2147483648), 29359i), vec2<bool>(true, false)), false, Struct_2(vec4<i32>(39362i, 1i, 26901i, 0i), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1000f, 416f), 75411i)), Struct_4(true, Struct_2(vec4<i32>(35557i, 6657i, -4867i, 2147483647i), vec2<bool>(false, false)), false, Struct_2(vec4<i32>(0i, -1i, 8855i, -1i), vec2<bool>(false, false)), Struct_1(vec2<f32>(665f, 645f), 2147483647i)), Struct_4(true, Struct_2(vec4<i32>(1i, 1i, -63982i, 2147483647i), vec2<bool>(false, false)), true, Struct_2(vec4<i32>(-37968i, 1i, -1i, 0i), vec2<bool>(true, false)), Struct_1(vec2<f32>(265f, -146f), 686i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = ~0i;
    let var_1 = any(vec4<bool>(all(select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(true, true, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), any(!select(vec2<bool>(false, arg_0), vec2<bool>(false, false), arg_0)), all(select(vec3<bool>(arg_0, true, true), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, arg_0)), false)), !arg_0));
    let var_2 = Struct_5(arg_0, Struct_3(vec4<i32>(1i, -1i, -2147483647i, -var_0), _wgslsmith_sub_i32(u_input.d.x, countOneBits(var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, -1896f, 1369f, -1332f)))), var_0);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.c.wx - _wgslsmith_f_op_vec2_f32(step(var_2.c.wz, _wgslsmith_f_op_vec2_f32(abs(var_2.c.wz))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(ceil(1127f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, -817f)))))), ~(~_wgslsmith_mod_i32(u_input.c, u_input.c) ^ 1i));
    return !select(vec2<bool>(true, arg_0), select(vec2<bool>(!var_1, !arg_0), vec2<bool>(true, any(vec3<bool>(false, false, true))), false), true);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> u32 {
    global2 = array<Struct_4, 12>();
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(56724u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, u_input.a, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0.x, 23703u, u_input.b.x), vec4<u32>(36856u, 1u, u_input.a, u_input.b.x))), _wgslsmith_div_u32(u_input.b.x, ~u_input.a), firstLeadingBit(u_input.b.x)) ^ select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, arg_0.x, 5733u), vec4<u32>(arg_0.x, 53464u, arg_0.x, u_input.b.x)) << (min(vec4<u32>(17039u, 15385u, 0u, 0u), vec4<u32>(12398u, 764u, arg_0.x, u_input.b.x)) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 37216u, u_input.b.x, u_input.b.x), select(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), !vec4<bool>(true, arg_1.b.x, false, arg_1.b.x), vec4<bool>(true, true, true, arg_1.b.x))), vec4<u32>(u_input.a, 1u, ~(~arg_0.x << (min(u_input.a, 58917u) % 32u)), select(firstTrailingBit(~0u), ~52929u, arg_1.b.x)));
    global2 = array<Struct_4, 12>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f))), 460f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f * 1404f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -505f) * _wgslsmith_f_op_f32(962f - -2828f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(668f, 840f) - 946f)), true)));
    let var_2 = vec3<bool>(false, arg_1.b.x, false);
    return _wgslsmith_clamp_u32(max(min(var_0.x, 4294967295u) >> (abs(3597u) % 32u), var_0.x), 36695u, 31320u) & _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(39733u, 0u), _wgslsmith_add_u32(var_0.x, var_0.x)) >> (abs(vec2<u32>(1u, 14414u)) % vec2<u32>(32u)), firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(var_0.x, 29u)], u_input.b))));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(reverseBits(~u_input.b.x)), func_4(max(vec3<u32>(24210u, 18627u, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, u_input.a)) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 1u), vec3<u32>(1u, 96801u, 1u), vec3<u32>(u_input.b.x, 19473u, u_input.b.x)) | vec3<u32>(u_input.b.x, 4294967295u, 33035u)) % vec3<u32>(32u)), Struct_2(vec4<i32>(28786i, u_input.e, u_input.d.x, 1i), !func_3(true)), Struct_3(vec4<i32>(~1i, 1i, 38065i, u_input.d.x), i32(-1i) * -56972i), u_input.e)), 2u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), _wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(1543f - var_0.c.x), -919f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -971f, 1000f), _wgslsmith_f_op_vec4_f32(-var_0.c))))));
    let var_2 = Struct_2(var_0.b.a ^ var_0.b.a, select(select(vec2<bool>(true, !var_0.a), vec2<bool>(true, true), vec2<bool>(arg_0, true)), vec2<bool>(arg_0 || true, !var_0.a), select(false, !(arg_0 || arg_0), arg_0)));
    global1 = array<Struct_5, 2>();
    let var_3 = Struct_1(var_0.c.zz, select(-1i & ~var_2.a.x, -2147483647i << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), var_0.c.x != _wgslsmith_f_op_f32(-var_1.x)) << (_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.a, u_input.b.x), u_input.a) % 32u));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.b.b, 0i), var_3.b), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, var_2.a.x, u_input.d.x, var_0.d), -var_0.b.a), 13619i << (u_input.a % 32u)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32) -> Struct_5 {
    var var_0 = -vec2<i32>(min(-973i, ~1i) >> (select(_wgslsmith_dot_vec3_u32(vec3<u32>(1153u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a, 0u, 46684u)), arg_2, 2147483647i > arg_1.a.x) % 32u), 1i);
    let var_1 = ~abs(~(vec4<u32>(0u, arg_2, 85681u, 0u) | firstTrailingBit(vec4<u32>(u_input.b.x, 10332u, 4294967295u, u_input.a))));
    global1 = array<Struct_5, 2>();
    global2 = array<Struct_4, 12>();
    var_0 = u_input.d;
    return Struct_5(all(vec2<bool>(func_3(true).x, all(vec2<bool>(true, false)) || true)), arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_mult_i32(-19634i, _wgslsmith_mod_i32(max(~2147483647i, 2147483647i >> (1u % 32u)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c, -4643i, -37690i), var_0.x))));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3) -> vec3<f32> {
    global0 = array<vec2<u32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1347f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))))))), -1000f, all(vec3<bool>(func_3(arg_0.a).x == (4294967295u >= u_input.a), true, false))));
    let var_1 = -firstLeadingBit(arg_1.a.x);
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)) - 708f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(510f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-997f, -138f, arg_0.c.x) * arg_0.c.wyy)))) - _wgslsmith_f_op_vec3_f32(arg_0.c.zwx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.c.zxx))))));
}

fn func_1() -> Struct_3 {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f * _wgslsmith_div_f32(-1710f, -1217f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) * _wgslsmith_f_op_f32(select(-184f, -504f, false))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -431f))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(550f, -362f, true)))), 177f))));
    global2 = array<Struct_4, 12>();
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(653f, 154f, var_1.x) * _wgslsmith_f_op_vec3_f32(func_6(func_5(func_2(false), Struct_3(vec4<i32>(-1i, u_input.e, u_input.d.x, u_input.c) | vec4<i32>(-48399i, u_input.e, -1i, u_input.d.x), u_input.d.x), _wgslsmith_sub_u32(func_4(vec3<u32>(1u, var_0, u_input.a), Struct_2(vec4<i32>(-77487i, 32707i, 65028i, u_input.e), vec2<bool>(false, true)), Struct_3(vec4<i32>(u_input.e, -2147483647i, 14340i, u_input.e), u_input.c), 2147483647i), func_4(vec3<u32>(var_0, 1u, 4562u), Struct_2(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.c), vec2<bool>(false, false)), Struct_3(vec4<i32>(u_input.e, 1i, -1i, u_input.d.x), 4842i), u_input.c))), Struct_3(_wgslsmith_sub_vec4_i32(max(vec4<i32>(2147483647i, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(3064i, 6170i, 19381i, 62639i)), select(vec4<i32>(u_input.c, 27240i, u_input.c, 2147483647i), vec4<i32>(u_input.e, u_input.e, 30134i, 32966i), false)), ~abs(u_input.d.x)))));
    var var_3 = 223f;
    return Struct_3(-vec4<i32>(u_input.d.x, u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, ~u_input.e), -u_input.c), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 29>();
    global1 = array<Struct_5, 2>();
    let var_0 = u_input.b.x;
    global1 = array<Struct_5, 2>();
    let var_1 = var_0;
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

