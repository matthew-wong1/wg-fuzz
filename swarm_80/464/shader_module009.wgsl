struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(0i, -63588i, -27125i), vec3<i32>(1i, 2147483647i, 96i), vec3<i32>(-19312i, 1i, 46011i), vec3<i32>(14155i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, -1i, 1782i), vec3<i32>(-214i, 2147483647i, -1i), vec3<i32>(2329i, -49527i, i32(-2147483648)), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, -40361i, -37918i), vec3<i32>(-6042i, 1i, 85993i), vec3<i32>(-16239i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 26071i, 28152i), vec3<i32>(-4061i, 1i, 0i), vec3<i32>(2147483647i, -18867i, 17026i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 2210i), vec3<i32>(13584i, -1i, 21656i), vec3<i32>(-5477i, 1i, -1i), vec3<i32>(10374i, -6911i, -1i), vec3<i32>(1i, -22217i, -1i), vec3<i32>(-54772i, 1i, 13575i), vec3<i32>(27342i, -54952i, 2147483647i), vec3<i32>(-34549i, -33154i, i32(-2147483648)), vec3<i32>(8094i, -13241i, -21113i), vec3<i32>(-1i, 1i, 9972i), vec3<i32>(-1i, 49397i, 23932i), vec3<i32>(-16030i, 2147483647i, 2147483647i), vec3<i32>(-1i, 46545i, -1i), vec3<i32>(34383i, -1i, 1i), vec3<i32>(1i, -10312i, i32(-2147483648)));

var<private> global1: i32 = 9257i;

var<private> global2: u32 = 1u;

var<private> global3: bool;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1730f, 396f, all(vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1293f + _wgslsmith_f_op_f32(trunc(-1276f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-876f * -933f), _wgslsmith_f_op_f32(trunc(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-883f))))));
    let var_1 = _wgslsmith_div_i32(-firstTrailingBit(arg_0.x), _wgslsmith_add_i32(~arg_0.x, -arg_0.x));
    var var_2 = Struct_2(~(~u_input.a));
    let var_3 = Struct_4(vec4<bool>(all(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true)), !(false | (var_2.a > 4294967295u)), u_input.a > _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(95479u, 17945u, u_input.c, var_2.a), vec4<u32>(50758u, 30730u, u_input.b.x, u_input.a)), vec4<u32>(9929u, u_input.c, 13156u, u_input.a))), ~vec4<i32>(29051i, -11793i << (var_2.a % 32u), var_1, arg_0.x));
    return var_3.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    global0 = array<vec3<i32>, 30>();
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true | !(1u > arg_1.x), -1i != _wgslsmith_mod_i32(_wgslsmith_mod_i32(-3976i, arg_3), arg_3)), func_3(max(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(-14255i, 0i)), abs(vec2<i32>(-14864i, arg_3)))) || true);
    var var_1 = true;
    var var_2 = Struct_3(Struct_1(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), arg_1.wzw), ~32011u, _wgslsmith_mod_u32(27007u, 82503u))), ~4294967295u));
    global4 = array<Struct_1, 31>();
    return Struct_2(_wgslsmith_mod_u32(~(~reverseBits(u_input.b.x)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(17571u, u_input.a) | 1u, ~(~49304u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(103f, -504f, _wgslsmith_f_op_f32(abs(128f)), _wgslsmith_f_op_f32(abs(165f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0.x, arg_1, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -291f, -471f, arg_1), vec4<f32>(1676f, 226f, arg_2.x, 211f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1091f, arg_0.x, -164f, 401f) * vec4<f32>(-1306f, 798f, 325f, arg_0.x))))), ~_wgslsmith_add_vec4_u32(reverseBits(arg_3), select(arg_3, vec4<u32>(u_input.c, 4294967295u, 37064u, 15091u), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1119f))), arg_1)), 16903i);
    var var_1 = ~(-44803i) < (_wgslsmith_sub_i32(abs(1i), min(0i >> (var_0.a % 32u), ~19775i)) << (~(~u_input.b.x) % 32u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(245f, -519f)))), _wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + _wgslsmith_f_op_f32(arg_0.x + 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1410f)) * arg_0.x));
    var var_3 = Struct_1(vec3<u32>(0u, 76321u, u_input.c), ~u_input.b.x);
    global1 = i32(-1i) * -2147483647i;
    return global4[_wgslsmith_index_u32(0u, 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<bool> {
    global2 = 1u;
    let var_0 = Struct_4(vec4<bool>(true, false, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(754f))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-482f)), _wgslsmith_f_op_f32(-1995f - 791f)))), countOneBits(vec4<i32>(abs(-46035i), 0i, 1i, ~29047i)));
    global4 = array<Struct_1, 31>();
    let var_1 = !var_0.a.x;
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.b.xz, var_0.b.zw, vec2<i32>(countOneBits(2147483647i), firstTrailingBit(abs(48521i)))), reverseBits(vec2<i32>(1i, -var_0.b.x | var_0.b.x)));
    return vec3<bool>(true, all(!(!(!var_0.a.wxw))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2455f, 533f), vec2<f32>(251f, 576f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(859f, 739f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-285f, 1109f), vec2<f32>(-871f, -435f))))), 1f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1525f, -472f, 962f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, -867f, -592f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, 1627f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(730f, -177f, -874f))))), ~(~(vec4<u32>(u_input.c, 49238u, 22130u, 61096u) << (vec4<u32>(u_input.a, u_input.b.x, u_input.c, u_input.d.x) % vec4<u32>(32u))))), vec3<u32>(~(~0u), reverseBits(~select(0u, 14440u, true)), u_input.b.x), Struct_3(func_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -1554f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, 449f, -1000f))), ~vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.b.x))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(1i ^ firstTrailingBit(17392i), ~(-83435i)), _wgslsmith_dot_vec3_i32(max(abs(global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), global0[_wgslsmith_index_u32(u_input.b.x, 30u)] | global0[_wgslsmith_index_u32(43606u, 30u)]), vec3<i32>(reverseBits(0i), 1i, 15817i))) & abs(-2147483647i);
    var var_2 = !select(false, all(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x))), true);
    var var_3 = _wgslsmith_mod_u32(u_input.b.x, 10864u) > _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(select(vec4<u32>(51414u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 1u, 1u, u_input.a), var_0.x)), ~vec4<u32>(70866u, u_input.a, u_input.a, u_input.d.x)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 58030u, u_input.c), vec4<u32>(0u, 4294967295u, u_input.a, u_input.b.x))));
    let var_4 = Struct_4(select(select(!vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, true, true, var_1 <= -30831i), true), select(vec4<bool>(true, var_0.x, func_3(vec2<i32>(var_1, var_1)), var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, false, var_0.x), false), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, var_0.x), true)), vec4<bool>(func_4(Struct_1(u_input.d, u_input.a), vec3<u32>(u_input.b.x, 1u, 4294967295u), Struct_3(Struct_1(vec3<u32>(56600u, u_input.b.x, u_input.b.x), 0u))).x, true, !var_0.x, var_0.x && var_0.x)), select(vec4<bool>(true, all(vec4<bool>(true, var_0.x, var_0.x, true)), true, var_0.x), !(!vec4<bool>(false, var_0.x, true, false)), any(!vec3<bool>(var_0.x, var_0.x, true)))), -(~reverseBits(reverseBits(vec4<i32>(2147483647i, -1i, 1i, var_1)))));
    let var_5 = ~abs(firstLeadingBit(firstLeadingBit(u_input.b.x)));
    var var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1302f) + -1027f) - 1644f), _wgslsmith_f_op_f32(-2360f * _wgslsmith_div_f32(277f, _wgslsmith_f_op_f32(-1078f - 256f))), var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(min(u_input.d, vec3<u32>(25104u, u_input.c, u_input.c)) ^ abs(vec3<u32>(4294967295u, var_5, 0u)), ~(~vec3<u32>(u_input.b.x, u_input.d.x, u_input.d.x))), var_1, firstLeadingBit(15507u));
}

