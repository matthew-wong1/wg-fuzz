struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: bool,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1713f, -1024f, -1153f);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec3<f32>(-1180f, -1803f, 1224f), vec3<i32>(29459i, 4747i, i32(-2147483648)), vec2<f32>(313f, -657f)), Struct_3(vec3<f32>(-967f, 757f, 746f), vec3<i32>(1i, 1990i, -7243i), vec2<f32>(242f, -803f)));

var<private> global3: Struct_1;

var<private> global4: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = !(!vec2<bool>(false, !any(global3.d)));
    let var_1 = global1.x || true;
    global3 = Struct_1((_wgslsmith_mult_vec4_u32(global3.a, global3.a) ^ vec4<u32>(~14424u, _wgslsmith_add_u32(u_input.a, u_input.a), ~global3.a.x, arg_1)) ^ global3.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(global3.b)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global3.b, global3.b, global3.d.xxw)), _wgslsmith_f_op_vec3_f32(abs(global3.b))))), global3.b)), arg_1, !select(vec4<bool>(global3.d.x | global1.x, true, any(vec2<bool>(global3.d.x, false)), var_1 && true), !(!vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(false, true, global3.d.x, var_0.x)), (abs(~vec2<u32>(30595u, 4294967295u)) ^ ~(~global3.a.yx)) | ~(vec2<u32>(0u, arg_1) | _wgslsmith_mult_vec2_u32(global3.a.ww, global3.a.ww)));
    global2 = array<Struct_3, 2>();
    global1 = !(!select(select(!vec2<bool>(var_0.x, global3.d.x), vec2<bool>(false, global1.x), !vec2<bool>(global3.d.x, var_1)), var_0, !select(var_0, vec2<bool>(true, true), global3.d.yz)));
    return !(true & global1.x);
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = any(select(!global3.d.xw, global3.d.yy, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-644f)) + global3.b.x), _wgslsmith_div_u32(global3.c ^ global3.c, 845u | u_input.a))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -1976f, _wgslsmith_f_op_f32(global0.x + global4.x)))), ~firstLeadingBit(vec3<i32>(arg_0.x, 1472i, -2147483647i) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))) >> (global3.a.zyw % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(191f - global3.b.x), _wgslsmith_f_op_f32(524f + _wgslsmith_f_op_f32(exp2(global4.x)))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(global3.b.x)), 1f, _wgslsmith_f_op_f32(round(406f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1175f, 1243f, global0.x, var_1.c.x) + vec4<f32>(-448f, -1671f, global0.x, -1013f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.b.x, 744f, global0.x, var_1.c.x)))))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 2u)], all(global3.d.wy), global3.b.x, var_1);
    let var_3 = 35564u;
    global4 = _wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(abs(global3.b)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.a.yxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b * vec3<f32>(global3.b.x, 809f, global4.x)))))), min(max(var_1.b, _wgslsmith_sub_vec3_i32(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_1.b.x, arg_0.x), vec3<i32>(arg_0.x, 1i, var_2.e.b.x)))), vec3<i32>(-1i, 0i, select(-11210i, ~1i, true))), vec2<f32>(856f, var_1.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_5 {
    let var_0 = -296f;
    global2 = array<Struct_3, 2>();
    var var_1 = Struct_1(vec4<u32>(max(1u, select(~global3.e.x, arg_1 | arg_1, !global1.x)), arg_1, ~(~4294967295u), _wgslsmith_mod_u32(u_input.a, 5616u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1f, -672f, _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, arg_0.c.x, 341f), _wgslsmith_f_op_vec3_f32(trunc(arg_0.a)), !global3.d.xzx))))), _wgslsmith_dot_vec2_u32(max(firstLeadingBit(firstLeadingBit(vec2<u32>(arg_1, 17324u))), vec2<u32>(_wgslsmith_mult_u32(17770u, arg_1), ~57066u)), firstLeadingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), global3.e)))), global3.d, (firstLeadingBit(global3.e) | ~global3.e) << ((vec2<u32>(_wgslsmith_clamp_u32(global3.a.x, u_input.a, 9895u), 37217u >> (u_input.a % 32u)) >> (vec2<u32>(global3.c & 0u, ~u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = global3.e.x;
    var var_3 = select(global3.d.xy, vec2<bool>(all(select(vec4<bool>(global1.x, false, true, false), global3.d, !vec4<bool>(true, global1.x, var_1.d.x, true))), global3.d.x), vec2<bool>(((56903u >> (arg_1 % 32u)) | ~u_input.a) <= _wgslsmith_dot_vec4_u32(~global3.a, global3.a), !global3.d.x));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, _wgslsmith_f_op_f32(-global0.x), 1753f, global4.x))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.b)))), func_2(_wgslsmith_mod_vec3_i32(arg_0.b, vec3<i32>(1i, 0i, -2147483647i))).b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(285f)), var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - global4.x))), false, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_f32(-982f * _wgslsmith_f_op_f32(global4.x * 632f)) < _wgslsmith_f_op_f32(round(arg_0.c.x)))), func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-10138i, arg_0.b.x), arg_0.b.x, func_2(arg_0.b).b.x), abs(vec3<i32>(-2147483647i, arg_0.b.x, arg_0.b.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    global1 = !(!(!select(select(global3.d.yz, global3.d.xy, false), vec2<bool>(global1.x, global3.d.x), vec2<bool>(true, true))));
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global0.x * -124f), -384f, global3.b.x)));
    global4 = global3.b;
    let var_1 = arg_3.x;
    var var_2 = func_4(func_2(_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(arg_2.b, arg_2.b), vec3<i32>(-1i) * -vec3<i32>(27951i, 42885i, 2147483647i))), u_input.a);
    return var_2.e.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.x;
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(func_1(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 64012u, u_input.a), global3.a), 45293i, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global3.a.zyy, global3.a.wxz), 2u)], vec2<i32>(-2147483647i, abs(-1i))), reverseBits(2147483647i)), ~max(-_wgslsmith_clamp_i32(2147483647i, 0i, -12120i), _wgslsmith_mod_i32(-1i, func_4(global2[_wgslsmith_index_u32(u_input.a, 2u)], global3.a.x).e.b.x)));
    let var_2 = vec3<f32>(646f, func_2(-(~(-vec3<i32>(-51827i, 2147483647i, -15099i)))).c.x, _wgslsmith_f_op_f32(-521f + -1627f));
    var var_3 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-155f, 742f), vec2<f32>(global0.x, global4.x)) + vec2<f32>(-846f, var_2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.xx, vec2<f32>(405f, global4.x)) * vec2<f32>(global3.b.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(195f, global4.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) * global4.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.x + -1659f), _wgslsmith_f_op_f32(ceil(-1194f)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, select(reverseBits(vec3<i32>(var_1.x, -2147483647i, 1i)) >> (_wgslsmith_sub_vec3_u32(global3.a.xzw, vec3<u32>(u_input.a, 3806u, global3.c)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(15120i, 2147483647i, 2147483647i), vec3<i32>(34702i, var_1.x, var_1.x)), -vec3<i32>(45787i, var_1.x, var_1.x)), select(global3.d.yzw, !vec3<bool>(global1.x, true, global3.d.x), select(global3.d.x, false, global1.x))) << ((global3.a.yyw & countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, 10204u, global3.a.x)))) % vec3<u32>(32u)), vec3<i32>(var_1.x, var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), min(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, 1i)), vec2<i32>(var_1.x, -2147483647i) | vec2<i32>(0i, -19770i)))), firstLeadingBit(select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 22921u), vec2<u32>(15432u, 36912u)), ~2170u, ~u_input.a), global3.a.xxx, global1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -2250f, -1050f, -923f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global3.b.x, -277f, -1310f), vec4<f32>(global0.x, global4.x, -626f, 325f), false)))))), func_4(global2[_wgslsmith_index_u32(63187u, 2u)], ~0u).a));
}

