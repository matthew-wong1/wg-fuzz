struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global2: u32 = 4294967295u;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-724f, -993f, 1262f, -474f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 457f, _wgslsmith_f_op_f32(-104f - 617f), -740f))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-380f, _wgslsmith_f_op_f32(f32(-1f) * -429f), -435f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_f_op_f32(1956f + 1457f), -585f), (u_input.a << (u_input.b.x % 32u)) <= 11136u)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, _wgslsmith_f_op_f32(1750f * -2074f), _wgslsmith_div_f32(1543f, -1000f)))), vec3<f32>(-2323f, _wgslsmith_f_op_f32(trunc(830f)), 1000f), global3.wxy));
    let var_1 = select(u_input.a, _wgslsmith_mod_u32(firstLeadingBit(u_input.b.x) & (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4169u, u_input.a, u_input.b.x)) | 1u), countOneBits(u_input.a)), global3.x);
    let var_2 = Struct_1(-vec3<i32>(-5874i, _wgslsmith_mult_i32(-9618i, 1778i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d.x, 2147483647i), u_input.e, false), firstTrailingBit(u_input.d))));
    var var_3 = var_2.a.xx;
    return _wgslsmith_div_f32(-1368f, -1156f);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> vec3<i32> {
    global2 = ~4232u;
    let var_0 = !((-_wgslsmith_mod_i32(u_input.e.x, -18934i) >= -(~u_input.c)) || arg_0.x);
    var var_1 = Struct_4(Struct_1(abs(~vec3<i32>(24316i, u_input.d.x, u_input.d.x))));
    let var_2 = _wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.d), var_1.a.a.yy);
    global2 = 0u;
    return reverseBits(~_wgslsmith_mod_vec3_i32(var_1.a.a, var_1.a.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: u32) -> vec3<i32> {
    var var_0 = abs(u_input.d.x);
    var var_1 = arg_2;
    let var_2 = u_input.b;
    var var_3 = true;
    global3 = !select(!vec4<bool>(any(vec3<bool>(false, true, global3.x)), false, true, any(vec4<bool>(true, global3.x, global3.x, false))), !select(vec4<bool>(global3.x, global3.x, global3.x, true), select(vec4<bool>(false, true, false, true), vec4<bool>(global3.x, global3.x, true, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), true), all(global3.wyz));
    return func_4(vec3<bool>(global3.x && all(!global3.yw), false, !(arg_1.b == 1056f) || false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b, 1346f, -793f, arg_1.b), vec4<f32>(arg_1.b, arg_1.b, 1654f, arg_1.b))), _wgslsmith_f_op_vec4_f32(func_2(1u))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -428f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -1902f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.b, 2269f, -185f) * vec4<f32>(437f, arg_1.b, 684f, arg_1.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-481f * arg_1.b), -658f)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(func_3()))))), any(vec4<bool>(!global3.x, any(!vec3<bool>(true, false, global3.x)), true, true)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-382f, _wgslsmith_f_op_f32(min(998f, -1150f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(890f, -807f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1779f - 1188f), _wgslsmith_f_op_f32(max(-658f, 725f)), !global3.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-663f, 1140f))))))));
    global1 = array<vec3<bool>, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, -368f)), !vec2<bool>(false, global3.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1641f)), _wgslsmith_div_vec2_f32(vec2<f32>(194f, -383f), vec2<f32>(-2981f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-755f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))))));
    let var_2 = arg_1.a;
    var var_3 = ~arg_2;
    return Struct_4(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, 2147483647i, 6399i)), select(func_1(vec3<u32>(18437u, u_input.a, 21386u), Struct_3(Struct_1(vec3<i32>(1i, u_input.e.x, -1i)), -118f), vec4<u32>(u_input.a, 4294967295u, 16022u, u_input.a), 1u), firstTrailingBit(vec3<i32>(-6011i, -2147483647i, -30301i)), global3.x)), Struct_4(Struct_1(min(min(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(51292i, u_input.e.x, -25387i)), vec3<i32>(-15794i, u_input.d.x, -4731i)))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_clamp_u32(u_input.a, 28759u, 0u)), ~114609u), u_input.b.x));
    let var_1 = var_0.a.a.x;
    global3 = select(!select(select(select(vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(false, false, true, global3.x), false), select(vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(global3.x, false, global3.x, global3.x), global3.x), vec4<bool>(global3.x, true, global3.x, global3.x)), select(vec4<bool>(false, global3.x, global3.x, false), !vec4<bool>(global3.x, global3.x, global3.x, false), !vec4<bool>(global3.x, global3.x, true, true)), !vec4<bool>(false, true, global3.x, global3.x)), select(vec4<bool>(all(select(vec3<bool>(global3.x, false, global3.x), global1[_wgslsmith_index_u32(20283u, 15u)], global3.x)), global3.x, _wgslsmith_div_f32(-287f, -1088f) <= _wgslsmith_f_op_f32(round(-123f)), !(!global3.x)), !vec4<bool>(any(vec4<bool>(true, global3.x, global3.x, global3.x)), false, global3.x, global3.x | global3.x), vec4<bool>(global3.x, countOneBits(u_input.a) == _wgslsmith_div_u32(0u, u_input.b.x), global3.x, !global3.x)), true);
    global3 = select(vec4<bool>(all(vec4<bool>(global3.x, global3.x, !global3.x, !global3.x)), select(true, global3.x, true), false, true), vec4<bool>(global3.x, global3.x, select(global3.x, !any(vec4<bool>(global3.x, false, false, global3.x)), !all(vec4<bool>(global3.x, true, false, global3.x))), global3.x), !(!select(vec4<bool>(true, global3.x, global3.x, global3.x), select(vec4<bool>(true, false, false, global3.x), vec4<bool>(global3.x, true, global3.x, false), global3.x), true)));
    global1 = array<vec3<bool>, 15>();
    var_0 = func_5(firstLeadingBit(firstTrailingBit(vec3<i32>(var_0.a.a.x, 15052i, u_input.d.x))) & ~(~_wgslsmith_add_vec3_i32(var_0.a.a, var_0.a.a)), func_5(_wgslsmith_clamp_vec3_i32(var_0.a.a & ~var_0.a.a, firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.a.a.x, 1i), vec3<i32>(-2147483647i, -49489i, -2147483647i), var_0.a.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(40814i, 71016i, 1i), max(vec3<i32>(u_input.c, u_input.e.x, 8540i), var_0.a.a))), Struct_4(Struct_1(var_0.a.a)), 0u << (~countOneBits(u_input.b.x) % 32u)), u_input.a & _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40274u, 0u, u_input.b.x, 58076u), ~vec4<u32>(54766u, u_input.b.x, u_input.b.x, 41097u)), 39858u ^ u_input.a));
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f - -228f) * _wgslsmith_f_op_f32(-1834f + 713f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(569f, 1662f) - _wgslsmith_f_op_f32(round(175f))))))), _wgslsmith_div_f32(-804f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-276f)), _wgslsmith_f_op_f32(max(190f, 260f)), all(global1[_wgslsmith_index_u32(u_input.b.x, 15u)])))))));
    var var_4 = var_0.a.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 97592u);
}

