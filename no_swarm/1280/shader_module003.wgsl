struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(905f, Struct_2(vec4<bool>(false, true, true, false), 1u), Struct_2(vec4<bool>(false, true, true, true), 82432u)), Struct_3(-1000f, Struct_2(vec4<bool>(true, true, false, true), 1u), Struct_2(vec4<bool>(false, false, true, true), 4294967295u)), Struct_3(591f, Struct_2(vec4<bool>(false, false, false, true), 40491u), Struct_2(vec4<bool>(true, false, false, false), 1u)), Struct_3(524f, Struct_2(vec4<bool>(false, false, false, false), 45205u), Struct_2(vec4<bool>(false, true, true, true), 0u)), Struct_3(257f, Struct_2(vec4<bool>(false, false, false, false), 0u), Struct_2(vec4<bool>(false, false, false, true), 42519u)), Struct_3(1129f, Struct_2(vec4<bool>(true, true, false, false), 31419u), Struct_2(vec4<bool>(true, false, true, false), 0u)), Struct_3(-1000f, Struct_2(vec4<bool>(true, false, false, true), 4294967295u), Struct_2(vec4<bool>(false, false, true, true), 0u)), Struct_3(-2746f, Struct_2(vec4<bool>(true, false, true, true), 0u), Struct_2(vec4<bool>(false, false, false, true), 26829u)), Struct_3(-1744f, Struct_2(vec4<bool>(true, false, true, false), 4294967295u), Struct_2(vec4<bool>(false, false, false, true), 18699u)), Struct_3(562f, Struct_2(vec4<bool>(true, true, false, true), 1u), Struct_2(vec4<bool>(false, false, false, true), 21216u)), Struct_3(1635f, Struct_2(vec4<bool>(true, false, true, true), 7918u), Struct_2(vec4<bool>(false, false, true, true), 66510u)), Struct_3(-461f, Struct_2(vec4<bool>(false, true, false, false), 0u), Struct_2(vec4<bool>(false, true, false, false), 8182u)), Struct_3(426f, Struct_2(vec4<bool>(true, false, false, false), 0u), Struct_2(vec4<bool>(false, true, true, false), 23682u)), Struct_3(1000f, Struct_2(vec4<bool>(true, false, true, true), 0u), Struct_2(vec4<bool>(false, false, true, false), 5274u)), Struct_3(-555f, Struct_2(vec4<bool>(true, false, false, true), 0u), Struct_2(vec4<bool>(true, false, false, false), 0u)));

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: array<bool, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    var var_0 = u_input.c.x >> (53849u % 32u);
    let var_1 = Struct_2(vec4<bool>(true, false, !(!any(vec2<bool>(arg_0.a, false))), !(max(u_input.b.x, u_input.c.x) >= _wgslsmith_mod_i32(u_input.a.x, 0i))), ~arg_0.d.x);
    return u_input.b.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = arg_0.c;
    global1 = array<vec4<u32>, 22>();
    var_0 = Struct_2(select(select(select(vec4<bool>(true, true, true, false), var_0.a, true), select(var_0.a, var_0.a, !arg_0.b.a.x), !arg_0.b.a), vec4<bool>(true, !(!global2[_wgslsmith_index_u32(1u, 21u)]), u_input.d.x != (arg_0.c.b >> (var_0.b % 32u)), all(vec4<bool>(true, var_0.a.x, var_0.a.x, true))), !select(select(arg_0.c.a, arg_0.b.a, vec4<bool>(false, var_0.a.x, arg_0.c.a.x, var_0.a.x)), select(arg_0.c.a, vec4<bool>(var_0.a.x, false, false, false), global2[_wgslsmith_index_u32(2521u, 21u)]), !arg_0.c.a)), min(42485u, ~abs(_wgslsmith_mult_u32(19093u, 0u))));
    var var_1 = vec2<i32>(0i, firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, -1i) << (firstTrailingBit(~arg_0.b.b) % 32u)));
    let var_2 = arg_0.b;
    return -942f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = !(u_input.a.x != _wgslsmith_mult_i32(u_input.c.x | (i32(-1i) * -10183i), arg_0.x));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32((vec4<u32>(arg_1.d.x, 0u, u_input.d.x, 61932u) | ~vec4<u32>(arg_1.d.x, u_input.d.x, 94327u, 1u)) ^ ~(vec4<u32>(arg_1.d.x, 0u, 6406u, arg_1.d.x) << (global1[_wgslsmith_index_u32(arg_1.d.x, 22u)] % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.d.x, u_input.d.x), global1[_wgslsmith_index_u32(36286u, 22u)], _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], vec4<u32>(4294967295u, 12538u, u_input.d.x, 46581u)))), 15u)];
    var var_2 = false;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(var_1.a - -1977f), var_1.c, Struct_2(vec4<bool>(false, arg_1.a, false, arg_1.a), ~u_input.d.x)), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f - var_1.a))))), var_1.b, Struct_2(select(select(var_1.b.a, vec4<bool>(true, var_1.c.a.x, false, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.d.x, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], true, arg_1.a)), select(var_1.b.a, select(vec4<bool>(false, true, arg_1.a, false), var_1.b.a, arg_1.a), vec4<bool>(false, false, var_1.c.a.x, false)), any(!vec3<bool>(true, arg_1.a, true))), select(15089u, u_input.d.x, all(!vec3<bool>(arg_1.a, true, global2[_wgslsmith_index_u32(4294967295u, 21u)])))));
    var var_4 = Struct_2(vec4<bool>(true | (all(var_3.c.a) == all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], true, true))), true, any(!select(var_3.b.a.yy, vec2<bool>(global2[_wgslsmith_index_u32(var_3.c.b, 21u)], var_3.c.a.x), vec2<bool>(true, true))), -2147483647i >= ((arg_0.x & -8934i) << (_wgslsmith_dot_vec2_u32(arg_1.d.zw, vec2<u32>(1u, var_1.b.b)) % 32u))), _wgslsmith_add_u32(var_1.c.b, ~max(~arg_1.d.x, u_input.d.x)));
    return vec2<bool>(false, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<i32> {
    global1 = array<vec4<u32>, 22>();
    let var_0 = !arg_2.a.zz;
    let var_1 = arg_1.a;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1525f * -472f), -1219f))), Struct_2(!vec4<bool>(arg_1.a == -239f, var_0.x, true, !arg_2.a.x), min(~arg_2.b, ~u_input.d.x) >> (u_input.d.x % 32u)), Struct_2(arg_1.c.a, ~_wgslsmith_clamp_u32(~1u, ~arg_2.b, u_input.d.x)));
    global2 = array<bool, 21>();
    return u_input.b.zxy << (vec3<u32>(countOneBits(1u), arg_2.b, (~arg_1.b.b | 31725u) << (abs(_wgslsmith_add_u32(7676u, 15666u)) % 32u)) % vec3<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> Struct_1 {
    global2 = array<bool, 21>();
    let var_0 = true;
    var var_1 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(34501u, 0u, 43008u, 69282u), global1[_wgslsmith_index_u32(68012u, 22u)]), vec4<u32>(4294967295u >> (u_input.d.x % 32u), u_input.d.x, ~1u, 1u)));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 35079u, arg_3.x) ^ firstLeadingBit(vec4<u32>(u_input.d.x, 17388u, u_input.d.x, arg_3.x)), vec4<u32>(u_input.d.x, arg_3.x, 63609u, 4294967295u) << (~vec4<u32>(u_input.d.x, arg_3.x, 26549u, 4294967295u) % vec4<u32>(32u))), reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(42035u, abs(83726u)), 22u)]))), 15u)];
    var var_3 = global0[_wgslsmith_index_u32(28798u, 15u)];
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, -223f, var_3.a, 542f) + vec4<f32>(-625f, var_3.a, var_3.a, 382f)))), vec4<f32>(-267f, _wgslsmith_f_op_f32(abs(var_2.a)), -1887f, -1167f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, 277f) + vec2<f32>(-102f, -573f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, 1221f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1189f, -152f)), true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(562f, var_3.a))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(abs(var_2.b.b), var_3.c.b), ~61216u), 22u)], _wgslsmith_f_op_f32(max(316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_3, 15>();
    var var_0 = ~(~max(arg_1.d.x, ~(~1u)));
    global2 = array<bool, 21>();
    global1 = array<vec4<u32>, 22>();
    var var_1 = 1u;
    return global0[_wgslsmith_index_u32(16378u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    global1 = array<vec4<u32>, 22>();
    let var_0 = u_input.d.zz;
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(1019f - _wgslsmith_f_op_f32(step(-220f, 1811f)))))));
    let var_3 = func_6(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x & func_1(Struct_1(global2[_wgslsmith_index_u32(13835u, 21u)], vec4<f32>(-150f, -626f, var_2.x, var_2.x), vec2<f32>(var_2.x, -638f), global1[_wgslsmith_index_u32(0u, 22u)], var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, 549f)), -(~(-12172i)), u_input.b.x), vec3<i32>(u_input.c.x, 1i, select(firstTrailingBit(-18541i), _wgslsmith_add_i32(0i, 2147483647i), true || global2[_wgslsmith_index_u32(39784u, 21u)]))), func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.x, 453f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(328f)) + 1165f))), select(-firstLeadingBit(vec3<i32>(-3694i, u_input.a.x, u_input.a.x)), func_4(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(var_1.x, 15u)], Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], true, global2[_wgslsmith_index_u32(var_0.x, 21u)], global2[_wgslsmith_index_u32(710u, 21u)]), u_input.d.x), func_2(u_input.a, Struct_1(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], vec4<f32>(312f, var_2.x, var_2.x, var_2.x), vec2<f32>(var_2.x, -550f), global1[_wgslsmith_index_u32(u_input.d.x, 22u)], var_2.x))), !global2[_wgslsmith_index_u32(select(u_input.d.x, u_input.d.x, false), 21u)]), -abs(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-34436i, 1i, -2147483647i, 18777i))), countOneBits(vec4<u32>(_wgslsmith_div_u32(26060u, 19627u), ~u_input.d.x, var_1.x, ~var_0.x))), func_5(_wgslsmith_div_f32(var_2.x, 975f), _wgslsmith_mod_vec3_i32(~vec3<i32>(14979i, -35792i, -64281i), select(vec3<i32>(u_input.c.x, -30492i, u_input.b.x) & vec3<i32>(-2147483647i, 4820i, 21654i), _wgslsmith_clamp_vec3_i32(u_input.a.xyw, u_input.c.xyz, u_input.a.xxy), !global2[_wgslsmith_index_u32(0u, 21u)])), firstLeadingBit(u_input.a ^ u_input.c) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(59991u, var_1.x, 0u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 17003u)) | ~global1[_wgslsmith_index_u32(var_1.x, 22u)]) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 1u, u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(83421u, u_input.d.x, 53801u), u_input.d))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(min(u_input.c, u_input.b) << (~vec4<u32>(42429u, var_3.b.b, var_3.c.b, var_3.b.b) % vec4<u32>(32u))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(49539u, 28636u, var_1.x, var_3.b.b), ~vec4<u32>(1u, var_1.x, 99222u, u_input.d.x)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(abs(var_3.b.b), 22u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(454f, -1000f) - _wgslsmith_div_vec2_f32(vec2<f32>(1066f, -183f), vec2<f32>(1121f, var_3.a))), _wgslsmith_f_op_vec2_f32(-func_5(590f, firstTrailingBit(u_input.b.xyx), u_input.c, global1[_wgslsmith_index_u32(abs(u_input.d.x), 22u)]).b.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) <= _wgslsmith_f_op_f32(-var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), -1456f));
}

