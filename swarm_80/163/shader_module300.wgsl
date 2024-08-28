struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(false));

var<private> global1: vec3<f32>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 1u);

var<private> global3: array<f32, 12> = array<f32, 12>(-129f, -1119f, 916f, -1351f, 1000f, -2565f, 1000f, 1556f, -383f, -563f, 268f, -473f);

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec4<u32>(65288u, 4294967295u, 32640u, 0u), 1000f), vec2<f32>(-781f, 2018f)), Struct_2(Struct_1(vec4<u32>(16408u, 4294967295u, 13703u, 1u), 1221f), vec2<f32>(-1328f, -291f)), Struct_2(Struct_1(vec4<u32>(4827u, 12217u, 4294967295u, 73768u), 1537f), vec2<f32>(-1271f, -648f)), Struct_2(Struct_1(vec4<u32>(23905u, 20321u, 14845u, 44892u), -1494f), vec2<f32>(354f, -1164f)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, 4294967295u, 20783u, 79076u), abs(vec4<u32>(1u, u_input.d, u_input.d, global2.x)))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(23655u, global2.x, u_input.d)), countOneBits(vec3<u32>(u_input.d, u_input.d, global2.x))), 12u)], 840f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 12u)], 1791f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(665f, global1.x), vec2<f32>(global1.x, -1095f), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1249f, -763f) + _wgslsmith_f_op_vec2_f32(exp2(global1.yx)))))));
    global3 = array<f32, 12>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(global1.x - global3[_wgslsmith_index_u32(4294967295u, 12u)])), 1205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1436f)), _wgslsmith_div_f32(1761f, -1753f), all(vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~max(0u, global2.x), 12u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global1.x, global3[_wgslsmith_index_u32(global2.x, 12u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(28761u, 12u)]), 792f)))));
    var var_2 = 15485i;
    var var_3 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(4294967295u << ((u_input.d | 23389u) % 32u), 12u)])), -761f)) * var_0.a.b);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec3<u32> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.d << ((~global2.x | select(_wgslsmith_add_u32(~arg_1, ~28318u), min(0u, 1u), true)) % 32u), 4u)];
    var var_1 = var_0.a;
    var var_2 = Struct_2(var_0.a, global1.zz);
    var var_3 = !vec3<bool>(!(0u != _wgslsmith_div_u32(0u, var_1.a.x)), true, true);
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.a.b)), global3[_wgslsmith_index_u32(var_2.a.a.x, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1355f + global3[_wgslsmith_index_u32(var_1.a.x, 12u)])))), -171f), vec4<f32>(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b)) - _wgslsmith_f_op_f32(var_1.b * 344f))), -762f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.x), 935f))));
    return ~var_1.a.wzw;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-(2147483647i & ~u_input.b.x), i32(-1i) * -10589i), max(reverseBits(7061i), u_input.a ^ 1i) << (arg_3.x % 32u));
    var var_1 = Struct_5(true);
    global0 = array<Struct_5, 19>();
    let var_2 = global4[_wgslsmith_index_u32(0u, 4u)];
    var var_3 = _wgslsmith_sub_i32(u_input.b.x, u_input.c.x);
    return Struct_5(true);
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(func_2(-u_input.b.xy, ~global2.x).x, u_input.d, 29079u, abs(~u_input.d))), reverseBits(vec4<u32>(0u, _wgslsmith_mult_u32(~15232u, u_input.d & u_input.d), 1u, 2248u)));
    var var_1 = arg_0.a & arg_0.a;
    var var_2 = _wgslsmith_mult_i32(-12865i, firstLeadingBit(firstTrailingBit(abs(-25761i) >> (var_0.x % 32u))));
    var_0 = vec4<u32>(select(~(~(~24697u)), global2.x, arg_0.a), ~4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, countOneBits(firstTrailingBit(global2.x))), ~300u), ~var_0.x);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 12u)])))), -497f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 429f, 713f) + vec3<f32>(-710f, global1.x, -462f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x), -1096f))), ~max(~vec3<u32>(14636u, 0u, 14596u), max(vec3<u32>(var_0.x, u_input.d, u_input.d), vec3<u32>(4294967295u, var_0.x, global2.x))) ^ var_0.wyy);
    return Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(60185u, u_input.d, 50740u, 163u), ~vec4<u32>(var_0.x, 40915u, var_0.x, var_3.d.x)), _wgslsmith_sub_vec4_u32(firstTrailingBit(select(vec4<u32>(1u, global2.x, 19331u, 0u), vec4<u32>(10064u, var_0.x, 42841u, 69397u), arg_0.a)), vec4<u32>(1u, 0u, 1u, var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(35819u, 12u)]) * -1377f) + _wgslsmith_f_op_f32(func_3())), -854f)));
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(func_4(true, vec3<u32>(~abs(1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, u_input.d, u_input.d), vec4<u32>(2636u, 56227u, 4294967295u, 36264u)), _wgslsmith_mult_u32(1u, global2.x)), global2.x), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, false, true), vec4<bool>(any(vec3<bool>(false, true, true)), false, true, all(vec4<bool>(false, true, false, false)))), ~(~vec3<u32>(global2.x, global2.x, 28827u)) & ~func_2(vec2<i32>(u_input.c.x, -36036i), 4294967295u)));
    global4 = array<Struct_2, 4>();
    let var_1 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(u_input.c.x, 2147483647i)), vec2<i32>(reverseBits(u_input.c.x), min(u_input.c.x, u_input.c.x))), ~u_input.b.yy));
    var var_2 = !any(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-561f, 1416f, 1020f), vec3<f32>(-808f, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1238f, 1208f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, 341f, global3[_wgslsmith_index_u32(var_0.a.x, 12u)])))) - vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -453f), global3[_wgslsmith_index_u32(17186u, 12u)]))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(237f, global3[_wgslsmith_index_u32(58167u, 12u)], 2478f), vec3<f32>(global3[_wgslsmith_index_u32(28606u, 12u)], -590f, -2202f)), vec3<f32>(global1.x, -1729f, 1186f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-429f, -418f, var_0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(637f, 860f, 798f))))))));
    return Struct_4(global1.x, -494f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 12u)], -3974f, global1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, global3[_wgslsmith_index_u32(u_input.d, 12u)], var_0.b)), vec3<f32>(global1.x, global3[_wgslsmith_index_u32(global2.x, 12u)], var_0.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(f32(-1f) * -161f))), !vec3<bool>(any(vec4<bool>(false, false, false, true)), false, 4429u <= var_0.a.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(min(var_0.a.x, u_input.d), global2.x | u_input.d, global2.x >> (32969u % 32u)), func_2(vec2<i32>(u_input.a, 2147483647i), 1u) & _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2.x, 4294967295u), vec3<u32>(var_0.a.x, var_0.a.x, global2.x)), func_2(u_input.c, global2.x) >> (var_0.a.yyw % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(trunc(1190f)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-769f - 913f), _wgslsmith_f_op_f32(ceil(global1.x)), global3[_wgslsmith_index_u32(16759u, 12u)])))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1435f + -368f), -248f, _wgslsmith_f_op_f32(1004f - 1309f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-745f, -1100f, 1147f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 953f, 513f), vec3<f32>(-1000f, -1198f, global1.x))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global1.x - -224f), _wgslsmith_div_f32(global1.x, var_0.x), 2298f)))));
    let var_1 = func_1();
    let var_2 = 40423u;
    var var_3 = var_1;
    var var_4 = _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(~17030u), var_3.d.x), global2.x ^ (firstLeadingBit(4294967295u) << ((u_input.d ^ 4294967295u) % 32u))));
    let var_5 = _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.d.x, _wgslsmith_div_u32(var_1.d.x, func_2(u_input.c, 39295u).x), var_1.d.x), vec3<u32>(~0u, var_3.d.x, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.d.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(i32(-1i) * -1i, -58327i))), _wgslsmith_div_vec2_i32(u_input.b.yx, u_input.b.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 878f)))), -35127i);
}

