struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(-240f, 814f, 144f), false), Struct_1(vec3<f32>(163f, 1125f, 858f), false), Struct_1(vec3<f32>(-351f, -340f, 1856f), false), Struct_1(vec3<f32>(771f, 1000f, -203f), true), Struct_1(vec3<f32>(-1113f, 2364f, -801f), false), Struct_1(vec3<f32>(-153f, 159f, 809f), false), Struct_1(vec3<f32>(-888f, -829f, -940f), true), Struct_1(vec3<f32>(-1000f, -455f, 466f), false), Struct_1(vec3<f32>(-575f, 1554f, 115f), false), Struct_1(vec3<f32>(-1012f, -1687f, -540f), true), Struct_1(vec3<f32>(1000f, -254f, -297f), true), Struct_1(vec3<f32>(487f, -1079f, 522f), false), Struct_1(vec3<f32>(413f, -1320f, 202f), true), Struct_1(vec3<f32>(-721f, 611f, -2097f), false), Struct_1(vec3<f32>(695f, -2554f, 313f), true), Struct_1(vec3<f32>(336f, 1238f, 211f), false), Struct_1(vec3<f32>(979f, 985f, 524f), false), Struct_1(vec3<f32>(505f, 771f, -2039f), true), Struct_1(vec3<f32>(-581f, -135f, -1216f), false));

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, true, true, false, true, true, false, false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, arg_0, arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: i32) -> vec2<u32> {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(32987u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 99372u, 4294967295u), abs(vec4<u32>(38544u, 1u, 41111u, 0u))) % 32u), ~81516u), 37945u, 1u);
    global1 = array<bool, 11>();
    let var_1 = arg_0;
    global1 = array<bool, 11>();
    let var_2 = !(!all(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 11u)], false)));
    return _wgslsmith_clamp_vec2_u32(~var_0.zz, _wgslsmith_div_vec2_u32(~(~(var_0.xz & var_0.yz)), ~abs(firstLeadingBit(var_0.xz))), firstTrailingBit(abs(~vec2<u32>(var_0.x, var_0.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = -u_input.c;
    global0 = array<Struct_1, 19>();
    return -759f;
}

fn func_2() -> i32 {
    global1 = array<bool, 11>();
    let var_0 = 240u;
    let var_1 = 26078i;
    var var_2 = var_1;
    let var_3 = vec4<f32>(-859f, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1374f + 1040f) - 1000f), 823f)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1554f, 1805f, 745f)))), global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 11u)]), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(-1089f)), any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0, 11u)], global1[_wgslsmith_index_u32(var_0, 11u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1319f, -979f)), vec3<bool>(true, !global1[_wgslsmith_index_u32(13553u, 11u)], !global1[_wgslsmith_index_u32(3815u, 11u)]), firstTrailingBit(min(1i, -44100i))))), _wgslsmith_f_op_f32(-1226f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + _wgslsmith_f_op_f32(f32(-1f) * -466f)))));
    return ~(var_1 >> (11856u % 32u));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = select(max(~(~vec3<u32>(1u, 122758u, 17568u)), abs(firstTrailingBit(vec3<u32>(65622u, 0u, 5456u)))), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11090u), vec2<u32>(4294967295u, 18426u)) ^ 20039u, 0u, _wgslsmith_div_u32(0u, max(347u, 1u))), false);
    let var_2 = _wgslsmith_sub_u32(~var_1.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.x, ~var_1.x), max(4294967295u, var_1.x)));
    var var_3 = select(vec4<bool>(false, true, !(!any(vec2<bool>(false, false))), false), vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, 9931u), ~var_1.xz), 11u)], false, false, true), true);
    let var_4 = u_input.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1819f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-134f * 1149f), -624f) * -283f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), -681f)), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f * -1420f))))));
    var var_1 = 46802i;
    var var_2 = ~vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a.x >> (4294967295u % 32u)), -18326i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2286f * var_0.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -324f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(348f - 1074f)))));
    var_1 = u_input.c.x | firstTrailingBit(_wgslsmith_div_i32(var_2.x, var_2.x));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-445f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_3)), any(vec3<bool>(global1[_wgslsmith_index_u32(123450u, 11u)], true, global1[_wgslsmith_index_u32(15962u, 11u)])))))), _wgslsmith_f_op_vec2_f32(round(var_0.zy)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x << (_wgslsmith_mod_u32(24398u, 46790u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, -1358i), _wgslsmith_sub_vec3_i32(u_input.c.yyx, vec3<i32>(28440i, -2147483647i, 16691i)))), vec2<i32>(44612i, var_2.x) & u_input.d, _wgslsmith_add_vec2_i32(vec2<i32>(0i, select(18461i, 56965i, true)), u_input.a)));
    let var_5 = global0[_wgslsmith_index_u32(~1u, 19u)];
    var var_6 = vec2<u32>(0u, ~_wgslsmith_clamp_u32(44050u, 16487u >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14373u), vec2<u32>(35960u, 8357u))) >> (abs(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(0u, 28231u), select(0u, 51333u, var_5.b))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(~0u, var_6.x >> (1u % 32u))), vec3<i32>(-1i, -1i, var_4.c.x), ~vec4<i32>(1i, _wgslsmith_dot_vec3_i32(-u_input.c.ywy, vec3<i32>(13931i, 18186i, 74462i)), 73627i, reverseBits(-1i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_4.c.x, var_4.c.x, u_input.d.x), u_input.c), ~u_input.c, select(vec4<i32>(u_input.b.x, 1i, -2935i, u_input.a.x), u_input.c, var_5.b))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(37546u, 4515u, 13325u, var_6.x), vec4<u32>(firstTrailingBit(var_6.x), ~13079u, var_6.x, 1u)) % vec4<u32>(32u)));
}

