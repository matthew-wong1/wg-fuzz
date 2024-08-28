struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1696f, 1000f, -1458f), vec3<f32>(-255f, -2614f, -422f), vec3<f32>(-1733f, 720f, -116f), vec3<f32>(-957f, -1000f, 424f), vec3<f32>(-1494f, -1542f, 1568f), vec3<f32>(742f, 115f, -1624f), vec3<f32>(-516f, 1000f, 481f), vec3<f32>(-1000f, 1306f, -1311f), vec3<f32>(886f, -791f, 790f), vec3<f32>(-508f, -1228f, 1062f), vec3<f32>(-967f, -674f, 955f));

var<private> global2: vec3<i32> = vec3<i32>(-29658i, -1i, -28100i);

var<private> global3: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1358f, 326f, -277f), vec3<f32>(-215f, -115f, 554f), vec3<f32>(-664f, 164f, 1198f), vec3<f32>(-548f, -373f, 1168f), vec3<f32>(850f, -196f, 1000f), vec3<f32>(1391f, -1873f, -224f), vec3<f32>(-1914f, 933f, -1868f), vec3<f32>(-196f, -232f, -1760f), vec3<f32>(-908f, -956f, 761f), vec3<f32>(-692f, -163f, 788f), vec3<f32>(-1087f, -227f, 745f), vec3<f32>(-137f, 1441f, -464f), vec3<f32>(2324f, -1659f, 118f), vec3<f32>(-124f, -1000f, -1223f), vec3<f32>(1000f, 1005f, -1057f), vec3<f32>(443f, -988f, -630f), vec3<f32>(2397f, 217f, 307f), vec3<f32>(574f, -2589f, -509f), vec3<f32>(1077f, 1000f, -353f), vec3<f32>(-1720f, -814f, -547f), vec3<f32>(362f, 2018f, 652f), vec3<f32>(138f, 383f, -953f), vec3<f32>(296f, -262f, -959f), vec3<f32>(1000f, 1128f, 793f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(global0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(global0.a.b.x * global0.c), global0.d.b.x), _wgslsmith_f_op_f32(round(global0.c)), Struct_1(vec4<u32>(0u, 1u, 55825u, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, global0.d.a.x, u_input.b) % vec4<u32>(32u)), vec4<f32>(global0.c, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(1055f - 178f), -723f), min(~vec2<i32>(0i, -15308i), countOneBits(vec2<i32>(global2.x, -23657i))))), select(-global0.a.c.x ^ -_wgslsmith_sub_i32(global0.d.c.x, -2147483647i), -2147483647i, true), !select(vec4<bool>(true, global0.a.b.x < 1409f, true, false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), true), Struct_2(Struct_1(vec4<u32>(firstTrailingBit(global0.d.a.x), reverseBits(global0.d.a.x), u_input.b, global0.a.a.x << (4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.a.b.x, 1000f, global0.d.b.x) - global0.a.b))), min(u_input.d | u_input.c.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(14411i, u_input.c.x), global2.zz))), _wgslsmith_f_op_vec3_f32(trunc(global0.b)), -694f, Struct_1(global0.d.a, _wgslsmith_f_op_vec4_f32(floor(global0.d.b)), u_input.c.xx)));
    global1 = array<vec3<f32>, 11>();
    let var_1 = var_0.d.a.a;
    let var_2 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u >> (0u % 32u), global0.a.a.x, ~var_1.x, 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e.x, var_0.d.d.a.x, u_input.e.x, u_input.e.x), global0.d.a | var_0.d.a.a)) & _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(max(global0.d.a, var_1), var_1), var_1));
    var var_3 = select(!(!var_0.c.yyy), vec3<bool>(var_0.c.x, _wgslsmith_f_op_f32(trunc(-1655f)) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.b.x))), all(vec3<bool>(global0.c <= var_0.a.a.b.x, var_0.c.x, any(var_0.c.wx)))), false);
    return var_0.c.xxz;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.a.a.x;
    var var_1 = arg_1;
    let var_2 = var_1.a;
    let var_3 = !func_3();
    global0 = arg_1;
    return _wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~_wgslsmith_mult_u32(22264u, _wgslsmith_mod_u32(u_input.a, 36299u) >> (reverseBits(u_input.b) % 32u)) << (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.x, ~0u, ~global0.a.a.x, _wgslsmith_dot_vec4_u32(global0.a.a, vec4<u32>(global0.d.a.x, 0u, 4294967295u, 106713u))), global0.a.a)) % 32u);
    global1 = array<vec3<f32>, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d.b.x))) + global0.c), _wgslsmith_f_op_f32(-global0.d.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(func_2(u_input.c, Struct_2(Struct_1(global0.d.a, global0.a.b, global0.d.c), global3[_wgslsmith_index_u32(0u, 24u)], global0.a.b.x, Struct_1(global0.a.a, global0.a.b, global0.a.c)), global0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, global0.b.x))), 1300f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.c))))), any(vec3<bool>(_wgslsmith_f_op_f32(614f + -564f) <= _wgslsmith_f_op_f32(global0.c - 352f), !all(vec2<bool>(true, true)), func_3().x))));
    global2 = u_input.c.yyy;
    let var_2 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 774f, global0.d.b.x) * vec3<f32>(798f, 692f, global0.a.b.x))))), _wgslsmith_f_op_f32(round(var_1.x)), Struct_1(firstLeadingBit(global0.a.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x))), -367f, global0.d.b.x, _wgslsmith_f_op_f32(-var_1.x)), u_input.d));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_3(func_1(), _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(u_input.c, select(vec4<i32>(1i, 0i, -1i, -6269i), _wgslsmith_div_vec4_i32(vec4<i32>(-26943i, -29828i, global0.d.c.x, global2.x), u_input.c), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)), u_input.c)), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !(-54467i == global2.x)), Struct_2(global0.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)))), _wgslsmith_div_f32(-1654f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(205f - 516f)))), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global0.a.a, vec4<u32>(u_input.e.x, global0.d.a.x, 0u, global0.a.a.x)), ~vec4<u32>(4781u, 4294967295u, u_input.b, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1155f, 2122f, 884f, 199f)) + global0.d.b), _wgslsmith_mult_vec2_i32(func_1().d.c, u_input.d))));
    global0 = func_1();
    let var_1 = func_3();
    let var_2 = 2147483647i;
    let var_3 = true;
    let var_4 = var_0;
    var var_5 = -global2.x | select(global2.x, global0.d.c.x, any(!(!var_4.c.xy)));
    let var_6 = global0.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.d.b, vec4<u32>(8997u, 4294967295u, u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.x, var_4.d.d.a.x, 0u, global0.a.a.x), vec4<u32>(global0.a.a.x, global0.d.a.x, var_4.d.a.a.x, 25284u)), ~global0.a.a.x)) ^ reverseBits(_wgslsmith_mod_vec4_u32(var_4.d.a.a, countOneBits(global0.d.a))));
}

