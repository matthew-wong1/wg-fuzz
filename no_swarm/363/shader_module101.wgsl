struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: vec4<i32> = vec4<i32>(-36063i, 32040i, 2266i, 31427i);

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(26560u, 7471u, 81871u), vec3<u32>(0u, 21617u, 4294967295u), vec3<u32>(1u, 0u, 0u));

var<private> global3: f32 = 1292f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, arg_0.a.x), 0u, 7836u), 3u)], vec3<u32>(firstTrailingBit(u_input.a), arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 19188u, 46463u, 5940u), vec4<u32>(4294967295u, u_input.a, 4294967295u, 34338u)))), !arg_0.b, -(_wgslsmith_mod_vec3_i32(arg_0.c, vec3<i32>(arg_0.c.x, -6195i, 1i)) ^ abs(arg_0.c)), _wgslsmith_div_f32(arg_0.d, -856f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(472f, arg_0.e.x, arg_0.d), vec3<f32>(-1000f, arg_0.d, 1574f))))))), all(select(!select(vec3<bool>(false, arg_0.b.x, false), vec3<bool>(true, arg_0.b.x, false), arg_0.b.x), select(select(vec3<bool>(false, arg_0.b.x, true), vec3<bool>(false, true, arg_0.b.x), vec3<bool>(false, true, arg_0.b.x)), select(vec3<bool>(arg_0.b.x, true, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), false), arg_0.b.x), -24075i >= (2147483647i ^ u_input.b.x))), false, _wgslsmith_mod_vec4_i32(abs(global0[_wgslsmith_index_u32(36156u, 12u)]) | countOneBits(max(global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], global0[_wgslsmith_index_u32(21715u, 12u)])), select(vec4<i32>(arg_0.c.x, 2147483647i, 24775i, 48600i) | min(vec4<i32>(-2147483647i, global1.x, -21552i, global1.x), global0[_wgslsmith_index_u32(72627u, 12u)]), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 1i, -7199i, 16829i), vec4<i32>(global1.x, arg_0.c.x, arg_0.c.x, -25770i)) << (vec4<u32>(64450u, arg_0.a.x, 74708u, 33634u) % vec4<u32>(32u)), select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), arg_0.b.x), vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(false, false, arg_0.b.x, true)))));
    global0 = array<vec4<i32>, 12>();
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-957f))));
    var var_1 = Struct_3(Struct_1(global2[_wgslsmith_index_u32(~abs(u_input.a), 3u)], !(!var_0.a.b), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(1i), arg_0.c.x, 1i), vec3<i32>(reverseBits(var_0.a.c.x), 53412i, arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x * arg_0.d) * 431f)), vec3<f32>(-582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f - -573f) - _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.d)), _wgslsmith_f_op_f32(-arg_0.d)))), abs(-(-vec3<i32>(-2147483647i, 48288i, var_0.d.x) >> (_wgslsmith_sub_vec3_u32(arg_0.a, global2[_wgslsmith_index_u32(1u, 3u)]) % vec3<u32>(32u)))));
    let var_2 = Struct_1(vec3<u32>(~firstTrailingBit(10531u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 14973u)) << (global2[_wgslsmith_index_u32(min(u_input.a, var_1.a.a.x), 3u)] % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, var_0.a.a.x), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, arg_0.a.x)), vec3<u32>(4294967295u, u_input.a, 1u) >> (vec3<u32>(var_0.a.a.x, var_1.a.a.x, 4294967295u) % vec3<u32>(32u)))), ~9512u), vec2<bool>(select(any(vec2<bool>(var_1.a.b.x, false)), all(vec3<bool>(true, false, false)), var_0.a.e.x == -728f), any(vec4<bool>(true | var_1.a.b.x, all(vec2<bool>(false, false)), all(vec3<bool>(false, false, false)), arg_0.b.x))), global1.yxw, 144f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.e.x)))), var_0.a.d, _wgslsmith_f_op_f32(trunc(-2102f))));
    return select(select(!(!select(vec4<bool>(true, arg_0.b.x, true, true), vec4<bool>(true, false, var_2.b.x, false), vec4<bool>(false, var_2.b.x, true, var_2.b.x))), select(select(select(vec4<bool>(var_1.a.b.x, true, true, arg_0.b.x), vec4<bool>(var_1.a.b.x, var_2.b.x, true, false), arg_0.b.x), !vec4<bool>(true, true, var_2.b.x, false), !arg_0.b.x), select(!vec4<bool>(var_2.b.x, false, true, arg_0.b.x), vec4<bool>(var_0.b, false, true, false), any(vec3<bool>(false, var_1.a.b.x, arg_0.b.x))), select(vec4<bool>(var_0.c, true, false, false), select(vec4<bool>(false, var_2.b.x, var_1.a.b.x, true), vec4<bool>(var_1.a.b.x, true, true, var_0.a.b.x), arg_0.b.x), select(vec4<bool>(false, var_1.a.b.x, var_2.b.x, var_2.b.x), vec4<bool>(var_0.a.b.x, var_1.a.b.x, var_0.b, var_2.b.x), var_1.a.b.x))), vec4<bool>(any(!var_2.b), true & !var_0.a.b.x, all(vec4<bool>(true, false, false, false)) || !arg_0.b.x, var_2.b.x)), !(!vec4<bool>(var_0.a.b.x, !arg_0.b.x, var_2.d < 570f, true)), select(!(!vec4<bool>(var_0.c, false, var_2.b.x, var_1.a.b.x)), select(select(vec4<bool>(var_1.a.b.x, true, true, false), !vec4<bool>(arg_0.b.x, false, var_1.a.b.x, arg_0.b.x), true), vec4<bool>(var_1.a.b.x, true, false, false), false), !(_wgslsmith_f_op_f32(var_2.e.x * var_2.d) < 1689f)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1325f - 451f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) - _wgslsmith_f_op_f32(step(792f, -1256f))))), true));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), func_3(Struct_1(vec3<u32>(u_input.a, u_input.a, 512u), vec2<bool>(false, true), u_input.b, -1036f, vec3<f32>(1741f, 471f, 1000f))), true), select(func_3(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 3u)], vec2<bool>(false, true), vec3<i32>(global1.x, global1.x, -2147483647i), -318f, vec3<f32>(1692f, 1024f, 1006f))), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))));
    let var_2 = func_3(Struct_1(global2[_wgslsmith_index_u32(72487u >> ((0u << (~4294967295u % 32u)) % 32u), 3u)], !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec3<i32>(~(-2147483647i), min(u_input.b.x, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(69346u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), abs(_wgslsmith_clamp_i32(0i, u_input.b.x, -766i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(723f + -1249f) + 1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(646f, 338f)) + 1913f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1599f, 1000f, 403f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1608f, 356f, -298f))))))).yy;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1072f)), _wgslsmith_f_op_f32(round(1679f)))))));
    let var_4 = -39074i;
    return Struct_2(Struct_1(vec3<u32>(abs(~4294967295u), ~u_input.a, u_input.a), var_2, -vec3<i32>(abs(-2147483647i), var_4 << (u_input.a % 32u), i32(-1i) * -7732i), var_3, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(579f, -1000f, -108f)) + vec3<f32>(var_3, var_3, -442f))))), select(var_1.x, any(var_1), !select(var_1.x, all(vec3<bool>(true, var_2.x, var_2.x)), false | var_2.x)), true, global0[_wgslsmith_index_u32(17393u, 12u)]);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2();
    global1 = -firstTrailingBit(~(-vec4<i32>(var_0.d.x, -1i, -52666i, -15768i) | _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 12u)], vec4<i32>(u_input.b.x, var_0.a.c.x, 19503i, 7034i))));
    global2 = array<vec3<u32>, 3>();
    global0 = array<vec4<i32>, 12>();
    return Struct_2(var_0.a, !select(false, var_0.a.b.x, select(any(vec2<bool>(true, var_0.c)), any(vec3<bool>(true, var_0.b, false)), 4294967295u > u_input.a)), !arg_2, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 12>();
    global2 = array<vec3<u32>, 3>();
    var var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(530f)))), 308f, false);
    var var_1 = select(~countOneBits(_wgslsmith_sub_i32(u_input.b.x, 32568i) << (u_input.a % 32u)), _wgslsmith_dot_vec3_i32(min(global1.xwy, ~vec3<i32>(8945i, var_0.a.c.x, 2147483647i)), u_input.b) >> (~(~(1u >> (1u % 32u))) % 32u), select(64878i, -(2147483647i & u_input.b.x), true) >= _wgslsmith_mult_i32(u_input.b.x, u_input.b.x));
    let var_2 = any(select(!select(!vec3<bool>(true, var_0.c, false), vec3<bool>(true, var_0.b, true), vec3<bool>(false, var_0.a.b.x, false)), !select(func_3(Struct_1(global2[_wgslsmith_index_u32(1u, 3u)], var_0.a.b, vec3<i32>(global1.x, -1i, var_0.a.c.x), 1057f, vec3<f32>(-980f, var_0.a.e.x, var_0.a.e.x))).zzz, select(vec3<bool>(true, true, true), vec3<bool>(var_0.b, true, var_0.c), var_0.b), false), all(var_0.a.b)));
    var var_3 = ~0i;
    global1 = vec4<i32>(-min(var_0.a.c.x ^ global1.x, 7882i), -u_input.b.x, _wgslsmith_add_i32(-28582i, i32(-1i) * -1i), var_0.d.x);
    let var_4 = reverseBits(var_0.d.wx);
    let x = u_input.a;
    s_output = StorageBuffer(-997f, u_input.a ^ 4294967295u, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.e.x) + -519f) - _wgslsmith_f_op_f32(-1f)), select(vec2<i32>(997i, 0i), u_input.b.zy, vec2<bool>(func_2().c, !var_2)));
}

