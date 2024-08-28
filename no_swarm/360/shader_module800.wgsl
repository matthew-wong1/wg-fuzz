struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(0u, 4294967295u, 0u));

var<private> global1: Struct_3;

var<private> global2: bool = false;

var<private> global3: array<Struct_4, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(all(vec2<bool>(select(any(vec2<bool>(true, false)), all(vec3<bool>(global1.c, false, global1.c)), global1.c || global1.a), all(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(false, global1.c, false), true)))));
    var var_1 = ~1i;
    var var_2 = select(vec3<bool>(all(!select(vec3<bool>(var_0.a, global1.c, global1.a), vec3<bool>(var_0.a, var_0.a, false), global1.a)), any(vec2<bool>(!global1.a, true || global1.c)), var_0.a || true), vec3<bool>(var_0.a || true, !any(select(vec2<bool>(var_0.a, global1.c), vec2<bool>(global1.a, true), false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, global1.a)), true, select(false, var_0.a, var_0.a)), var_0.a), select(vec3<bool>(!var_0.a, true, !global1.a), vec3<bool>(!global1.a, 0u <= global1.b.a.x, global1.a), !(!var_0.a)), vec3<bool>(var_0.a, true, global1.a)));
    var var_3 = 2147483647i;
    var var_4 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_add_vec4_u32(global1.b.a, _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, 1u)), global1.b.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(56855u, 15764u), 4294967295u & global1.b.a.x), _wgslsmith_add_u32(firstLeadingBit(113992u), ~u_input.a.x), u_input.c.x, abs(u_input.a.x)), abs(global1.b.a)));
    return vec3<u32>(~(~countOneBits(~global1.b.a.x)), var_4.x, var_4.x);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = global1.b.a.wwz & ~func_3();
    var var_1 = _wgslsmith_mod_vec4_u32(~(~countOneBits(u_input.b)), _wgslsmith_mult_vec4_u32(abs(global1.b.a >> (vec4<u32>(u_input.a.x, arg_3.a.a.x, 37496u, var_0.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 2959u, arg_3.a.a.x, var_0.x), u_input.b) << (vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, var_0.x, u_input.b.x), vec4<u32>(46171u, u_input.a.x, global1.b.a.x, global1.b.a.x)), func_3().x, 1u) % vec4<u32>(32u))));
    var var_2 = Struct_3(true, Struct_2(arg_3.a.a), true);
    let var_3 = _wgslsmith_mod_i32(countOneBits(-_wgslsmith_mod_i32(1i, 14851i)) ^ select(-(1i >> (var_1.x % 32u)), 1i, any(!vec4<bool>(var_2.c, true, false, arg_3.c.x))), 1i);
    var var_4 = Struct_1(all(vec2<bool>(true, true)));
    return Struct_3(any(select(arg_3.c, vec4<bool>(var_4.a, var_4.a && global1.c, all(arg_3.c.xy), true), all(arg_3.c))), Struct_2(vec4<u32>(_wgslsmith_sub_u32(19590u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(32525u, 16920u, 31628u, 4294967295u))), 34752u, 0u, ~var_0.x)), firstTrailingBit(41421u ^ reverseBits(var_2.b.a.x)) <= 22912u);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<i32>) -> vec4<u32> {
    global2 = func_2(127f, !select(select(arg_1.zx, arg_1.yz, false), vec2<bool>(arg_0.c, true), select(arg_1.xx, arg_1.xy, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, -696f, 442f, 1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(737f, -620f, 641f, -744f), vec4<f32>(1119f, 558f, -1926f, 543f), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1685f, -513f, 1513f, 106f)) + vec4<f32>(1f, 1f, 1f, 1f))), Struct_4(arg_0.b, vec2<f32>(-998f, -456f), vec4<bool>(true, !global1.c, !global1.a, true))).a && all(vec2<bool>(all(vec3<bool>(true, true, true)), arg_1.x));
    var var_0 = Struct_5(select(select(vec2<bool>(true, arg_0.a), !(!vec2<bool>(global1.a, false)), !(arg_2.x > -1i)), arg_1.xz, all(vec2<bool>(arg_0.b.a.x > 24930u, true))), arg_2.x, ~u_input.b);
    global0 = array<vec3<u32>, 1>();
    let var_1 = Struct_5(vec2<bool>(global1.c, select(false, !arg_1.x == any(arg_1.yx), !all(arg_1))), -16973i, select(select(func_2(-829f, vec2<bool>(global1.a, false), vec4<f32>(-124f, -707f, 888f, 1129f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b.a.x, var_0.c.x), 14u)]).b.a, ~func_2(1000f, var_0.a, vec4<f32>(467f, -669f, 727f, 790f), global3[_wgslsmith_index_u32(global1.b.a.x, 14u)]).b.a, vec4<bool>(global1.c, all(vec4<bool>(true, var_0.a.x, true, arg_0.c)), func_2(569f, vec2<bool>(false, global1.a), vec4<f32>(-1395f, 413f, -421f, 201f), global3[_wgslsmith_index_u32(global1.b.a.x, 14u)]).c, global1.a)), func_2(_wgslsmith_f_op_f32(-1221f * -421f), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-951f, 202f, 1000f, 1000f), vec4<f32>(-302f, -1000f, 879f, -1414f))), Struct_4(Struct_2(vec4<u32>(30u, arg_0.b.a.x, 1u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-454f, 275f) - vec2<f32>(-2549f, 1191f)), vec4<bool>(global1.c, false, true, var_0.a.x))).b.a, all(var_0.a) & (_wgslsmith_f_op_f32(floor(364f)) != 1f)));
    global2 = false;
    return vec4<u32>(_wgslsmith_div_u32(~u_input.c.x, ~25816u), abs(max(arg_0.b.a.x, 8395u)), var_0.c.x, arg_0.b.a.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    global2 = true;
    global0 = array<vec3<u32>, 1>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    return func_2(arg_0.x, !select(!(!vec2<bool>(global1.a, arg_2)), select(vec2<bool>(global1.a, arg_2), select(vec2<bool>(false, true), vec2<bool>(global1.a, global1.c), true), !vec2<bool>(arg_2, arg_2)), !arg_2), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1002f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -2136f, -538f))))))), global3[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_3(global1.a | !(any(vec3<bool>(false, global1.c, arg_1.c)) && true), arg_2, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, 243f, -369f)) - vec3<f32>(-896f, _wgslsmith_f_op_f32(max(-833f, -535f)), _wgslsmith_f_op_f32(f32(-1f) * -491f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1090f, 1446f, -2095f))), !(arg_0.x >= arg_0.x) || true)));
    let var_2 = Struct_2(select(vec4<u32>(1u, 4294967295u >> (~var_0.b.a.x % 32u), global1.b.a.x, firstLeadingBit(func_4(arg_1, vec3<bool>(true, arg_1.c, true), vec2<i32>(arg_0.x, arg_0.x)).x)), ~(~vec4<u32>(33724u, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x)), true));
    let var_3 = global3[_wgslsmith_index_u32(global1.b.a.x, 14u)];
    var var_4 = Struct_2(~var_2.a);
    return Struct_5(select(vec2<bool>(global1.a, ~u_input.b.x != 1u), vec2<bool>(true, !arg_1.c && !var_0.c), var_3.c.x), 66854i, ~(vec4<u32>(var_2.a.x, 49853u, abs(arg_2.a.x), min(var_0.b.a.x, var_3.a.a.x)) | firstTrailingBit(vec4<u32>(arg_1.b.a.x, 34302u, u_input.b.x, var_4.a.x))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> i32 {
    global2 = select(global1.a, arg_0.a.x, false);
    let var_0 = func_6(vec2<i32>(arg_0.b, arg_0.b), func_5(arg_1.b, u_input.b.x, all(select(select(arg_2.c.wxw, arg_1.c.wzy, arg_2.c.yzx), arg_1.c.wzw, select(vec3<bool>(true, arg_2.c.x, true), vec3<bool>(arg_2.c.x, true, false), arg_1.c.xzy))), Struct_2(func_4(func_2(-1138f, vec2<bool>(false, arg_0.a.x), vec4<f32>(-780f, arg_1.b.x, arg_2.b.x, arg_1.b.x), arg_2), arg_1.c.yyy, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b, 27618i), vec2<i32>(arg_0.b, arg_0.b))))), func_2(-2334f, vec2<bool>(false, all(select(vec2<bool>(false, global1.c), vec2<bool>(arg_2.c.x, false), arg_2.c.yx))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), arg_2.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), 634f), Struct_4(Struct_2(~vec4<u32>(977u, u_input.c.x, 4294967295u, global1.b.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, -583f)), vec4<bool>(arg_1.c.x | global1.a, false, any(arg_1.c.ywz), !arg_3))).b);
    var var_1 = arg_2.a;
    global1 = Struct_3(any(vec4<bool>(all(vec3<bool>(false, true, arg_3)) && true, select(true, 1672u >= arg_0.c.x, true), true, _wgslsmith_f_op_f32(arg_1.b.x - -802f) < -249f)), arg_1.a, true);
    global2 = !all(!arg_2.c.wyx);
    return var_0.b | ~(-2147483647i << (_wgslsmith_dot_vec3_u32(u_input.b.wzx, global1.b.a.ywy) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !global1.a;
    global3 = array<Struct_4, 14>();
    var var_0 = vec4<i32>(firstTrailingBit(i32(-1i) * -_wgslsmith_sub_i32(-1i, -2147483647i)), ~_wgslsmith_div_i32(-1i, ~_wgslsmith_add_i32(66546i, -1i)), ~_wgslsmith_div_i32(countOneBits(1i), 1i), _wgslsmith_sub_i32(countOneBits(func_1(Struct_5(vec2<bool>(global1.c, false), 41325i, vec4<u32>(76708u, 128158u, u_input.b.x, global1.b.a.x)), global3[_wgslsmith_index_u32(57773u, 14u)], Struct_4(global1.b, vec2<f32>(-1230f, -251f), vec4<bool>(global1.c, global1.c, global1.a, global1.a)), true)), -1i) >> (~abs(~global1.b.a.x) % 32u));
    var var_1 = _wgslsmith_mult_vec3_u32(func_4(func_2(779f, !vec2<bool>(global1.c, true), vec4<f32>(1f, 1f, 1f, 1f), global3[_wgslsmith_index_u32(~21574u, 14u)]), select(!vec3<bool>(global1.c, global1.c, false), select(select(vec3<bool>(global1.a, true, global1.c), vec3<bool>(global1.c, false, global1.c), vec3<bool>(false, global1.a, false)), vec3<bool>(global1.a, false, global1.c), !global1.a), (true && global1.c) | (1u < global1.b.a.x)), _wgslsmith_sub_vec2_i32(var_0.yy, vec2<i32>(-1i) * -var_0.yw)).zwx, ~vec3<u32>(u_input.c.x, global1.b.a.x, ~6680u) & _wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, 4294967295u, 15721u), ~vec3<u32>(u_input.b.x, global1.b.a.x, u_input.a.x)), vec3<u32>(~1u, countOneBits(global1.b.a.x), 56883u)));
    var var_2 = vec4<bool>(true, any(!select(vec3<bool>(global1.a, true, true), !vec3<bool>(global1.a, global1.a, global1.a), true)), true, func_6(-var_0.wy, func_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1589f, -132f)))), u_input.c.x, global1.c, Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 28626u, global1.b.a.x, 53046u), global1.b.a))), Struct_2(vec4<u32>(func_6(var_0.zx, Struct_3(true, Struct_2(global1.b.a), global1.c), global1.b).c.x, global1.b.a.x, countOneBits(1u), 17109u))).a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-447f, 698f, _wgslsmith_f_op_f32(-1433f * _wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1164f, -612f, 348f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1141f, -2563f, 2045f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-381f, 1481f, 326f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1245f, -987f, -1220f)))))))));
    var var_4 = ~vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec3_u32(~global1.b.a.ywy, _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, 4294967295u), vec3<u32>(var_1.x, 0u, global1.b.a.x))), _wgslsmith_div_u32(func_2(_wgslsmith_div_f32(var_3.x, var_3.x), !var_2.zw, vec4<f32>(var_3.x, 486f, 1039f, 1184f), Struct_4(global1.b, var_3.yy, vec4<bool>(var_2.x, false, global1.c, var_2.x))).b.a.x, countOneBits(abs(77684u))), 0u);
    let var_5 = Struct_5(!(!select(var_2.zw, var_2.zy, vec2<bool>(global1.a, false))), min(countOneBits(reverseBits(~(-43717i))), 4394i), global1.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_3 * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_3.x))))), firstLeadingBit(func_6(vec2<i32>(countOneBits(var_5.b), _wgslsmith_clamp_i32(-29307i, -47166i, 2147483647i)), func_5(var_3.zy, _wgslsmith_sub_u32(global1.b.a.x, 23811u), any(vec2<bool>(false, var_5.a.x)), global1.b), Struct_2(_wgslsmith_mult_vec4_u32(var_5.c, vec4<u32>(var_1.x, 4294967295u, 0u, var_5.c.x)))).c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_3.x)))) + _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-558f * var_3.x))))), firstLeadingBit(vec4<u32>(select(0u, func_6(var_0.zx, Struct_3(var_5.a.x, global1.b, false), Struct_2(var_5.c)).c.x, false), 4294967295u, ~_wgslsmith_div_u32(0u, 4294967295u), 11268u)));
}

