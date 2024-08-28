struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec2<u32>(96143u, 25761u), vec2<u32>(0u, 93528u)), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec2<u32>(0u, 15018u), vec2<u32>(0u, 4294967295u)), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec2<u32>(64438u, 29544u), vec2<u32>(1u, 46091u)), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec2<u32>(37493u, 16829u), vec2<u32>(1u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec2<u32>(6081u, 17341u), vec2<u32>(70257u, 65465u)), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec2<u32>(29363u, 0u), vec2<u32>(0u, 8171u)), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec2<u32>(57970u, 4294967295u), vec2<u32>(33397u, 16503u)), Struct_2(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec2<u32>(55738u, 11212u), vec2<u32>(16717u, 1u)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec2<u32>(82060u, 45080u), vec2<u32>(3740u, 4294967295u)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec2<u32>(0u, 10443u), vec2<u32>(1u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec2<u32>(3727u, 4294967295u), vec2<u32>(0u, 1u)));

var<private> global2: f32;

var<private> global3: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = 271f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0)))) * var_0));
    var var_1 = u_input.a.x;
    let var_2 = -(~_wgslsmith_div_i32(arg_2, -37106i));
    global2 = 202f;
    return Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(round(174f)), 1820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0)), -829f, false)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(arg_2.c.x, arg_2.c.x);
    var var_1 = arg_2.a.zz;
    let var_2 = _wgslsmith_sub_vec3_u32(~((vec3<u32>(21747u, var_0, var_0) & ~u_input.a.wyw) ^ vec3<u32>(var_0, _wgslsmith_clamp_u32(var_0, 0u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 21550u), vec3<u32>(var_0, 67677u, u_input.a.x)))), ~abs(vec3<u32>(~12783u, ~arg_2.c.x, arg_2.d.x)));
    var var_3 = arg_1.a;
    var_1 = !select(vec2<bool>(arg_2.a.x, ~u_input.a.x > select(0u, arg_2.d.x, true)), !select(select(vec2<bool>(arg_2.b.x, false), vec2<bool>(arg_1.a, arg_2.a.x), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), arg_2.a.zy, arg_2.b.yy)), !arg_2.a.yz);
    return func_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, arg_2.d.x) >> (u_input.a.x % 32u), reverseBits(_wgslsmith_mod_u32(var_2.x, 30659u))), 4294967295u), arg_2, ~_wgslsmith_div_i32(38738i, 7169i));
}

fn func_4(arg_0: Struct_1) -> i32 {
    global1 = array<Struct_2, 12>();
    global3 = 29980i;
    var var_0 = func_2(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], ~(-15414i));
    let var_1 = ~(~(~_wgslsmith_add_u32(4294967295u, u_input.a.x) | ~_wgslsmith_mult_u32(0u, u_input.a.x)));
    let var_2 = global1[_wgslsmith_index_u32(~var_1, 12u)];
    return ~select(abs(-30172i), _wgslsmith_sub_i32(abs(1i), -24667i), func_3(_wgslsmith_f_op_vec2_f32(-arg_0.b.zy), arg_0, global0[_wgslsmith_index_u32(firstTrailingBit(1u), 30u)]).a && true);
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(!(func_3(func_2(arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 30u)], arg_3).b.xz, func_3(vec2<f32>(arg_1, 519f), Struct_1(false, vec3<f32>(arg_1, arg_1, 1226f)), global1[_wgslsmith_index_u32(71402u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.a.x, 25112u)), 12u)]).a && all(select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(false, arg_2, true, false), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 + -340f), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1235f + arg_1)), 466f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1165f, 199f)), vec3<f32>(arg_1, arg_1, -374f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + vec3<f32>(-347f, arg_1, -194f))), arg_2))));
    let var_1 = func_3(_wgslsmith_f_op_vec2_f32(var_0.b.yz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1108f, 205f), _wgslsmith_f_op_vec2_f32(var_0.b.zy - var_0.b.zz), !var_0.a)) * _wgslsmith_f_op_vec2_f32(min(var_0.b.zy, _wgslsmith_f_op_vec2_f32(floor(var_0.b.xz)))))), Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) * var_0.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~arg_0.x), ~(_wgslsmith_div_u32(arg_0.x, 10388u) ^ _wgslsmith_mult_u32(1u, arg_0.x))), 12u)]);
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f - _wgslsmith_f_op_f32(var_0.b.x + arg_1))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-978f, var_1.b.x, var_1.a)) * _wgslsmith_f_op_f32(abs(189f))))));
    let var_3 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.xz + var_1.b.yx)), var_0, global1[_wgslsmith_index_u32(~arg_0.x, 12u)]);
    let var_4 = ~_wgslsmith_sub_vec4_u32(~(~u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(24871u, arg_0.x, arg_0.x, u_input.a.x) << (u_input.a % vec4<u32>(32u)), u_input.a)) >> (vec4<u32>(54803u, _wgslsmith_mod_u32(28630u, ~arg_0.x & 0u), 4294967295u, 22537u) % vec4<u32>(32u));
    return var_1;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1733f, 1000f, -910f)))))));
    global2 = -909f;
    var_0 = func_5(_wgslsmith_mult_vec2_u32(u_input.a.zz, _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), select(u_input.a.yw, vec2<u32>(u_input.a.x, u_input.a.x), true), vec2<bool>(var_0.a, var_0.a)), _wgslsmith_div_vec2_u32(vec2<u32>(38544u, u_input.a.x), u_input.a.yw), _wgslsmith_mult_vec2_u32(reverseBits(u_input.a.yz), u_input.a.zy))), _wgslsmith_f_op_f32(sign(-388f)), any(vec3<bool>(var_0.a, !select(false, false, var_0.a), any(vec3<bool>(true, var_0.a, var_0.a)))), func_4(func_3(var_0.b.xx, func_2(firstLeadingBit(u_input.a.x), global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 12u)], firstLeadingBit(0i)), global1[_wgslsmith_index_u32(~u_input.a.x, 12u)])));
    global0 = array<Struct_2, 30>();
    var var_1 = !select(!(!(!vec2<bool>(true, var_0.a))), select(!vec2<bool>(false, var_0.a), vec2<bool>(0u != u_input.a.x, var_0.a && true), !(!var_0.a)), select(!select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), vec2<bool>(var_0.a, false)), !(!vec2<bool>(var_0.a, false)), false));
    return global1[_wgslsmith_index_u32(abs(u_input.a.x), 12u)];
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global3 = _wgslsmith_add_i32(-2147483647i, 1i);
    var var_0 = any(vec3<bool>(false, func_2(1u, Struct_2(!vec3<bool>(arg_1.a.x, arg_0.b.x, true), vec3<bool>(arg_0.a.x, arg_1.b.x, true), vec2<u32>(82519u, arg_0.c.x), ~vec2<u32>(46033u, 1u)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 29440i, -34767i, -25595i), vec4<i32>(0i, 1i, -14732i, 35203i)))).a, 4294967295u != u_input.a.x));
    var var_1 = !(!(!arg_0.b.x) && func_5(vec2<u32>(0u, 3751u), 939f, true, _wgslsmith_mult_i32(7622i, -14798i)).a) && true;
    global1 = array<Struct_2, 12>();
    var_1 = arg_0.a.x != true;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1704f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)), -1079f)), 994f), u_input.a.x > ~((arg_0.c.x << (31324u % 32u)) << (8020u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(global1[_wgslsmith_index_u32(1u, 12u)], func_1())));
    var var_1 = !(!func_3(vec2<f32>(func_5(vec2<u32>(11668u, u_input.a.x), 1000f, false, 2147483647i).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1564f)), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, -471f, 136f))), Struct_2(func_1().a, vec3<bool>(true, true, true), countOneBits(u_input.a.yy), u_input.a.yy)).a);
    global3 = -31221i;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(firstLeadingBit(0u), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, u_input.a.x)), 1i).b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1546f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_1 = true;
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, -2580f, _wgslsmith_div_f32(-1722f, 609f)), _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(-1688f, -1140f), Struct_1(true, vec3<f32>(-572f, 633f, 445f)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, false, false), u_input.a.ww, vec2<u32>(u_input.a.x, u_input.a.x))).b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(949f, -157f, 711f))), true)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(284f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1168f + 1447f) * _wgslsmith_f_op_f32(140f - 610f)), 323f)));
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 4294967295u)), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2020i, 2147483647i, 0i, -12039i), -vec4<i32>(5539i, -35454i, -7608i, 26151i), -vec4<i32>(2147483647i, 0i, 1i, 58444i)))), u_input.a.x, select(min(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(-1i, _wgslsmith_sub_i32(-5536i, -2147483647i), 0i), vec3<bool>(true, false, false)), var_2.b.x, 1i);
}

