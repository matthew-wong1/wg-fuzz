struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4299i;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, true, false, false, true, true, false, false, false, true, false, false, false, false);

var<private> global2: Struct_1;

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(false, Struct_2(Struct_1(vec2<u32>(4235u, 13570u), vec3<u32>(37536u, 4294967295u, 85709u), vec3<i32>(1i, -30001i, -1i), vec2<f32>(-242f, -774f)), true, Struct_1(vec2<u32>(28823u, 6965u), vec3<u32>(4294967295u, 0u, 1330u), vec3<i32>(-19604i, -1i, -33847i), vec2<f32>(-537f, 1998f))), 1620f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(41469u, 32816u), vec3<u32>(375u, 0u, 4294967295u), vec3<i32>(54030i, 2147483647i, -1i), vec2<f32>(482f, 1299f)), true, Struct_1(vec2<u32>(29121u, 15460u), vec3<u32>(15514u, 59765u, 0u), vec3<i32>(2147483647i, 20348i, -1i), vec2<f32>(-595f, 395f))), -256f), Struct_3(false, Struct_2(Struct_1(vec2<u32>(1u, 1u), vec3<u32>(25182u, 64079u, 4294967295u), vec3<i32>(-6452i, -1i, 2147483647i), vec2<f32>(-1460f, -312f)), true, Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(14059u, 2553u, 0u), vec3<i32>(-7116i, 57912i, 35574i), vec2<f32>(-120f, -161f))), -2108f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(1u, 44128u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), -33624i, 76576i), vec2<f32>(122f, -187f)), true, Struct_1(vec2<u32>(44137u, 4294967295u), vec3<u32>(0u, 0u, 30000u), vec3<i32>(-261i, 0i, -21441i), vec2<f32>(1000f, -1251f))), 456f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(4294967295u, 47479u), vec3<u32>(0u, 51817u, 0u), vec3<i32>(i32(-2147483648), -4955i, -99015i), vec2<f32>(-472f, -1073f)), false, Struct_1(vec2<u32>(1u, 9912u), vec3<u32>(42138u, 1u, 57452u), vec3<i32>(1i, i32(-2147483648), -10678i), vec2<f32>(422f, -858f))), -261f), Struct_3(false, Struct_2(Struct_1(vec2<u32>(63124u, 4294967295u), vec3<u32>(1u, 1u, 49180u), vec3<i32>(-6634i, 1i, -21958i), vec2<f32>(1000f, 1000f)), true, Struct_1(vec2<u32>(9595u, 0u), vec3<u32>(0u, 0u, 67889u), vec3<i32>(-1i, 2977i, i32(-2147483648)), vec2<f32>(1357f, 487f))), -1000f), Struct_3(false, Struct_2(Struct_1(vec2<u32>(57753u, 42253u), vec3<u32>(0u, 1u, 100641u), vec3<i32>(40676i, 0i, -39162i), vec2<f32>(-1792f, 193f)), true, Struct_1(vec2<u32>(0u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<i32>(58843i, -25030i, 1i), vec2<f32>(729f, 1076f))), 888f), Struct_3(false, Struct_2(Struct_1(vec2<u32>(27101u, 0u), vec3<u32>(4294967295u, 72165u, 1u), vec3<i32>(-21252i, 0i, -12930i), vec2<f32>(-427f, -1000f)), true, Struct_1(vec2<u32>(4406u, 13362u), vec3<u32>(25643u, 0u, 1u), vec3<i32>(i32(-2147483648), 1i, -1i), vec2<f32>(688f, 842f))), 292f), Struct_3(false, Struct_2(Struct_1(vec2<u32>(1u, 36645u), vec3<u32>(0u, 0u, 29237u), vec3<i32>(2147483647i, 1i, 49055i), vec2<f32>(-1000f, -613f)), true, Struct_1(vec2<u32>(4294967295u, 9394u), vec3<u32>(46505u, 4294967295u, 5479u), vec3<i32>(0i, i32(-2147483648), 43509i), vec2<f32>(-422f, -150f))), 1584f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(18475u, 1u), vec3<u32>(19518u, 1u, 87701u), vec3<i32>(2147483647i, -25732i, i32(-2147483648)), vec2<f32>(270f, 364f)), false, Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(53252u, 24277u, 31615u), vec3<i32>(-5131i, -23445i, -562i), vec2<f32>(-720f, 1258f))), 564f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(1u, 0u, 4357u), vec3<i32>(-43455i, 1i, -1i), vec2<f32>(313f, 229f)), true, Struct_1(vec2<u32>(0u, 3549u), vec3<u32>(0u, 0u, 51245u), vec3<i32>(i32(-2147483648), -1i, 1i), vec2<f32>(-928f, 663f))), 1411f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(48119u, 0u, 1u), vec3<i32>(-1i, 3205i, -1i), vec2<f32>(1571f, -1000f)), false, Struct_1(vec2<u32>(21341u, 0u), vec3<u32>(28856u, 69285u, 4294967295u), vec3<i32>(-25795i, -68326i, 2147483647i), vec2<f32>(-1058f, 779f))), 356f), Struct_3(true, Struct_2(Struct_1(vec2<u32>(4294967295u, 79147u), vec3<u32>(64571u, 10071u, 0u), vec3<i32>(i32(-2147483648), 1i, 0i), vec2<f32>(-1618f, -118f)), false, Struct_1(vec2<u32>(0u, 0u), vec3<u32>(4294967295u, 4294967295u, 91530u), vec3<i32>(21236i, -1738i, 1i), vec2<f32>(-730f, 1130f))), -777f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x)));
    var var_3 = ~(-1i);
    var var_4 = Struct_1(select(vec2<u32>(_wgslsmith_clamp_u32(var_0.b.x, arg_0.a.x, 21513u), 5992u) >> (max(arg_0.b.zy, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 50268u), var_0.b.zz)) % vec2<u32>(32u)), var_0.a << (var_0.a % vec2<u32>(32u)), all(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(13909u, 15u)], var_1), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)]))), global2.b, vec3<i32>(-1i, u_input.b, -41229i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1249f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-327f, var_0.d.x) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2183f, var_0.d.x), vec2<f32>(global2.d.x, -470f), vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], var_1)))))));
    return select(vec2<bool>(!all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(global1[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 19226u, global2.b.x, 21312u), vec4<u32>(0u, global2.b.x, var_0.b.x, 0u)) % 32u), 15u)], false & all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 15u)]))), vec2<bool>(true, true), vec2<bool>(true, true)), false);
}

fn func_2() -> vec4<bool> {
    global1 = array<bool, 15>();
    let var_0 = !select(!vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(global2.a.x), 15u)], true), !(!func_3(Struct_1(vec2<u32>(29548u, 1u), vec3<u32>(1u, 4294967295u, 44441u), global2.c, vec2<f32>(1155f, global2.d.x)))), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(39723u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), !select(vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], global1[_wgslsmith_index_u32(83377u, 15u)]), vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], global1[_wgslsmith_index_u32(77834u, 15u)]), false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(949f * 1989f)), global2.d.x, -1218f))));
    global0 = abs(abs(_wgslsmith_mod_i32(max(-2147483647i, -1i), _wgslsmith_mult_i32(u_input.a, u_input.b))));
    global3 = array<Struct_3, 13>();
    return vec4<bool>(true, var_0.x, false, any(vec2<bool>(false, any(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(global2.b.x, 15u)], var_0.x, false)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = !vec2<bool>(true, !(false && any(vec4<bool>(false, arg_3.x, arg_1.x, arg_1.x))));
    global0 = 42050i;
    let var_1 = arg_0.x;
    var var_2 = global3[_wgslsmith_index_u32(global2.b.x >> (global2.b.x % 32u), 13u)];
    global3 = array<Struct_3, 13>();
    return var_2.b.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global1 = array<bool, 15>();
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1653f, _wgslsmith_f_op_f32(global2.d.x * 928f), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_1.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, 1348f, -646f, 1364f)), arg_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, global2.d.x, -407f, arg_1.x) * arg_1), _wgslsmith_f_op_vec4_f32(-arg_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1090f, global2.d.x, -517f), arg_1, vec4<bool>(true, false, global1[_wgslsmith_index_u32(global2.a.x, 15u)], global1[_wgslsmith_index_u32(57947u, 15u)])))))), !select(!select(arg_0, vec3<bool>(arg_0.x, false, false), true), arg_0, false), !select(select(vec3<bool>(false, false, false), arg_0, select(arg_0, vec3<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(global2.a.x, 15u)]), true)), !select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2.a.x, 15u)]), vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(global2.b.x, 15u)], global1[_wgslsmith_index_u32(global2.b.x, 15u)]), global1[_wgslsmith_index_u32(global2.a.x, 15u)]), vec3<bool>(arg_0.x, true, !global1[_wgslsmith_index_u32(global2.a.x, 15u)])), func_2());
    var var_1 = func_3(Struct_1(abs(firstTrailingBit(~var_0.a)), global2.b, global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -810f) * var_0.d))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_1.yw, vec2<f32>(248f, global2.d.x), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 170f) * vec2<f32>(var_0.d.x, arg_1.x)))))));
    var_1 = arg_0.zz;
    let var_2 = !select(select(select(func_2(), vec4<bool>(false, var_1.x, var_1.x, var_1.x), !global1[_wgslsmith_index_u32(8605u, 15u)]), vec4<bool>(arg_0.x, false, all(vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(var_0.a.x, 15u)], arg_0.x, true)), arg_0.x), !(global2.b.x >= 44682u)), !vec4<bool>(any(vec4<bool>(false, false, var_1.x, var_1.x)), all(vec3<bool>(global1[_wgslsmith_index_u32(6567u, 15u)], false, var_1.x)), var_1.x, true), true);
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(-412f - _wgslsmith_f_op_f32(sign(-795f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1382f, _wgslsmith_f_op_f32(global2.d.x + var_0.d.x)))), var_0.d.x, 1000f), arg_0, func_2().wzy, vec4<bool>(!arg_0.x, global1[_wgslsmith_index_u32(0u, 15u)], select(global1[_wgslsmith_index_u32(0u, 15u)], true, func_2().x), any(vec2<bool>(all(arg_0), true))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~max(vec4<u32>(31741u, 34545u, 1u, global2.b.x), vec4<u32>(1u, 17775u, 1u, 14880u)), ~reverseBits(vec4<u32>(19999u, global2.b.x, 18089u, arg_1.a.x))), min((vec4<u32>(global2.a.x, global2.a.x, 14873u, global2.b.x) | vec4<u32>(22420u, global2.b.x, 57568u, 1u)) & ~vec4<u32>(global2.b.x, arg_1.b.x, 21623u, global2.b.x), vec4<u32>(0u, firstLeadingBit(global2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, global2.b.x), vec2<u32>(global2.b.x, arg_1.b.x)), arg_1.b.x))), 15u)], Struct_2(arg_1, 0u > (global2.a.x | ~global2.b.x), func_1(vec3<bool>(false, 4294967295u > global2.a.x, false || global1[_wgslsmith_index_u32(26543u, 15u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d.x, global2.d.x, -1412f, global2.d.x))), -51408i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, 1138f)));
    global0 = -(arg_1.c.x ^ _wgslsmith_sub_i32(firstLeadingBit(8933i), firstLeadingBit(_wgslsmith_add_i32(global2.c.x, var_0.b.c.c.x))));
    let var_1 = Struct_1(global2.b.zx, ~var_0.b.c.b, _wgslsmith_mod_vec3_i32(arg_1.c, func_4(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.d.x, -1254f)), _wgslsmith_f_op_f32(f32(-1f) * -942f), func_1(vec3<bool>(var_0.a, global1[_wgslsmith_index_u32(arg_1.b.x, 15u)], global1[_wgslsmith_index_u32(global2.a.x, 15u)]), vec4<f32>(arg_1.d.x, 211f, -658f, 822f), arg_1.c.x).d.x, _wgslsmith_f_op_f32(max(1788f, -731f))), !func_2().yzw, select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1.a.x, 15u)], false), vec3<bool>(global1[_wgslsmith_index_u32(33816u, 15u)], var_0.a, var_0.a), vec3<bool>(true, true, var_0.b.b)), vec3<bool>(var_0.b.b, global1[_wgslsmith_index_u32(4294967295u, 15u)], false), !vec3<bool>(false, global1[_wgslsmith_index_u32(8887u, 15u)], var_0.b.b)), vec4<bool>(false, true, !global1[_wgslsmith_index_u32(arg_1.b.x, 15u)], any(vec4<bool>(var_0.a, var_0.b.b, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(global2.b.x, 15u)])))).c), var_0.b.a.d);
    global0 = _wgslsmith_sub_i32(arg_1.c.x, ~(~global2.c.x));
    var var_2 = func_3(Struct_1(select(var_1.b.xx, vec2<u32>(max(0u, 69425u), _wgslsmith_clamp_u32(4294967295u, var_0.b.a.a.x, var_1.a.x)), !(!vec2<bool>(true, var_0.a))), _wgslsmith_add_vec3_u32(~arg_1.b, ~abs(var_1.b)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(global2.c, -var_1.c), select(var_1.c, vec3<i32>(u_input.a, 2147483647i, global2.c.x), !vec3<bool>(true, global1[_wgslsmith_index_u32(7863u, 15u)], false))), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.a.d.x, _wgslsmith_f_op_f32(620f * global2.d.x))), var_0.b.a.d.x)));
    return var_0.b.c;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    global3 = array<Struct_3, 13>();
    var var_0 = _wgslsmith_clamp_vec4_u32(max(select(vec4<u32>(global2.a.x | 50442u, ~arg_0.c.b.x, abs(global2.a.x), ~arg_0.a.a.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_2.b.a.a.x, global2.a.x, 37001u), vec4<u32>(73224u, arg_2.b.a.a.x, 104210u, 48870u)), !select(vec4<bool>(arg_0.b, false, false, false), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.b.a.a.x, 15u)], false, arg_0.b, false))), vec4<u32>(max(4294967295u, 32294u), 1u >> (arg_2.b.c.b.x % 32u), ~37489u, ~67241u) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.a.x, 93296u, 45048u, 1u), vec4<u32>(arg_0.c.b.x, 1u, 72871u, 117296u)), vec4<u32>(arg_2.b.c.a.x, global2.b.x, 467u, arg_2.b.a.b.x), arg_2.a)), vec4<u32>(98482u, _wgslsmith_sub_u32(48788u, global2.a.x), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, -449f, 103f, -339f) * vec4<f32>(arg_2.b.c.d.x, arg_2.c, -2379f, -1616f)))), !(!vec3<bool>(arg_0.b, true, true)), func_2().zwz, vec4<bool>(arg_0.b, false, true, all(vec4<bool>(arg_2.a, arg_2.b.b, true, arg_2.b.b)))).a.x, _wgslsmith_sub_u32(4294967295u, ~global2.a.x)), vec4<u32>(1u, countOneBits(4294967295u), arg_0.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.c.a.x, 1u, func_4(vec4<f32>(global2.d.x, arg_1.x, arg_1.x, arg_0.c.d.x), vec3<bool>(false, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)], arg_2.a), vec4<bool>(global1[_wgslsmith_index_u32(22544u, 15u)], arg_0.b, false, arg_2.b.b)).a.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, arg_2.b.a.b.x, 24543u), vec4<u32>(91055u, 1u, 4294967295u, 19010u)))));
    global0 = abs(_wgslsmith_mod_i32(30155i, firstLeadingBit(abs(arg_2.b.a.c.x)) << (_wgslsmith_mult_u32(arg_2.b.a.b.x >> (var_0.x % 32u), ~56035u) % 32u)));
    let var_1 = _wgslsmith_mod_i32(arg_0.a.c.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(abs(9725i)), arg_0.a.c.x), _wgslsmith_dot_vec2_i32(~(~arg_2.b.a.c.yy), select(select(vec2<i32>(arg_0.a.c.x, 9996i), vec2<i32>(global2.c.x, arg_2.b.c.c.x), vec2<bool>(true, arg_0.b)), vec2<i32>(arg_0.a.c.x, u_input.b), all(vec2<bool>(false, false))))));
    let var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_add_vec2_i32(arg_2.b.a.c.xy, vec2<i32>(-2147483647i, ~48960i)), func_5(vec2<i32>(max(var_1, 2147483647i), global2.c.x), arg_0.a)).d.x * _wgslsmith_f_op_f32(arg_0.a.d.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -426f)) * _wgslsmith_f_op_f32(196f - 486f))))));
    return ~func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-909f, global2.d.x, 442f, var_2), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1151f, global2.d.x, global2.d.x, arg_2.b.a.d.x)))))), vec3<bool>(all(select(vec4<bool>(arg_0.b, arg_2.b.b, true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.b.c.b.x, 15u)], true, true, arg_2.b.b), global1[_wgslsmith_index_u32(55434u, 15u)])), arg_2.a, true && arg_0.b), vec3<bool>(func_3(Struct_1(arg_0.c.a, global2.b, vec3<i32>(arg_0.c.c.x, -30306i, global2.c.x), vec2<f32>(var_2, -981f))).x || !arg_2.a, true, global2.b.x >= ~40318u), select(select(vec4<bool>(arg_0.b, false, arg_0.b, arg_2.a), !vec4<bool>(false, false, arg_0.b, global1[_wgslsmith_index_u32(28909u, 15u)]), var_1 < u_input.b), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 15u)], true, false, global1[_wgslsmith_index_u32(arg_0.a.a.x, 15u)]), !vec4<bool>(false, arg_2.a, false, true), global1[_wgslsmith_index_u32(global2.a.x, 15u)]), vec4<bool>(arg_2.b.c.c.x < arg_0.c.c.x, func_2().x, true, any(vec3<bool>(true, true, true))))).a.x;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global2.d.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1044f + arg_1.d.x), arg_1.d.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(global3[_wgslsmith_index_u32(func_6(Struct_2(Struct_1(vec2<u32>(global2.a.x, 68601u) >> (vec2<u32>(global2.a.x, global2.b.x) % vec2<u32>(32u)), vec3<u32>(86137u, 510u, global2.a.x), vec3<i32>(global2.c.x, -1i, u_input.b), _wgslsmith_f_op_vec2_f32(ceil(global2.d))), false, func_5(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global2.c.x, global2.c.x)), func_1(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(global2.d.x, global2.d.x, -486f, -438f), 39717i))), _wgslsmith_f_op_vec2_f32(-global2.d), global3[_wgslsmith_index_u32(countOneBits(33108u), 13u)]), 13u)], func_5(vec2<i32>(countOneBits(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-28749i, -2147483647i, 2147483647i), global2.c) | _wgslsmith_clamp_i32(u_input.a, global2.c.x, u_input.a)), Struct_1(~(global2.b.xx & vec2<u32>(global2.a.x, 1u)), global2.b, -global2.c, vec2<f32>(_wgslsmith_f_op_f32(-1000f * global2.d.x), _wgslsmith_f_op_f32(round(global2.d.x))))));
    let var_1 = ~_wgslsmith_sub_i32(~2147483647i, global2.c.x);
    var var_2 = _wgslsmith_dot_vec2_i32(global2.c.zz, global2.c.zx);
    let var_3 = ~13302u;
    global0 = var_0.c.x;
    global0 = select(-var_0.c.x, _wgslsmith_mult_i32(firstLeadingBit(reverseBits(global2.c.x | -6715i)), (global2.c.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-23726i, -30255i, -1i, u_input.b), vec4<i32>(u_input.a, var_1, var_0.c.x, 18530i))) & (var_1 & global2.c.x)), func_2().x);
    global0 = ~_wgslsmith_mod_i32((-24391i | (global2.c.x ^ 0i)) ^ -39330i, -10702i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1119f * var_0.d.x), 669f), global2.d)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x), global2.d)), global1[_wgslsmith_index_u32(global2.b.x, 15u)])))), _wgslsmith_div_f32(func_5(vec2<i32>(_wgslsmith_sub_i32(-1i, 1i), var_0.c.x), Struct_1(var_0.b.yy, vec3<u32>(0u, var_3, 0u), -vec3<i32>(var_0.c.x, u_input.a, -31220i), _wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(281f, 1000f)))).d.x, -501f));
}

