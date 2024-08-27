struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(54806u, 46998u, 20233u, 38490u, 1u, 0u, 72742u, 7403u, 16780u, 77361u, 14362u, 17587u);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(140f, -1129f, -1000f, -681f), vec3<bool>(true, false, true), vec2<f32>(1183f, 2246f)), Struct_1(vec4<f32>(1696f, -1279f, 118f, -341f), vec3<bool>(false, false, true), vec2<f32>(-1000f, -1000f)));

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(22724u, 0u, 4294967295u, 9363u), vec4<u32>(1u, 14334u, 0u, 33245u), vec4<u32>(1u, 1u, 38018u, 4294967295u), vec4<u32>(61897u, 0u, 4294967295u, 9980u), vec4<u32>(71427u, 1u, 37290u, 4294967295u), vec4<u32>(25524u, 23624u, 49846u, 37086u), vec4<u32>(35504u, 24123u, 71750u, 4294967295u), vec4<u32>(1u, 0u, 9249u, 1u), vec4<u32>(0u, 29473u, 10003u, 29642u), vec4<u32>(0u, 90242u, 16314u, 18120u), vec4<u32>(4294967295u, 1u, 7984u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 30577u), vec4<u32>(65430u, 5586u, 99353u, 4294967295u), vec4<u32>(1u, 26924u, 0u, 49280u), vec4<u32>(22106u, 0u, 1672u, 24903u), vec4<u32>(13658u, 4294967295u, 1u, 110576u), vec4<u32>(0u, 20026u, 4294967295u, 20849u), vec4<u32>(4294967295u, 1u, 429u, 62655u), vec4<u32>(0u, 65272u, 86411u, 75018u), vec4<u32>(0u, 25239u, 1u, 7814u), vec4<u32>(21802u, 0u, 37882u, 4007u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(30336u, 43110u, 1u, 4294967295u), vec4<u32>(16700u, 1u, 1u, 6788u), vec4<u32>(7027u, 33614u, 4563u, 0u), vec4<u32>(8992u, 4294967295u, 4294967295u, 28603u));

var<private> global3: array<vec3<bool>, 6>;

var<private> global4: f32 = -791f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1557f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-522f + _wgslsmith_f_op_f32(969f - -1117f)), -769f))), 974f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))))));
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(select(min(93874u, global0[_wgslsmith_index_u32(4294967295u, 12u)]), ~global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true) | countOneBits(0u), select(u_input.a.x, ~global0[_wgslsmith_index_u32(~124786u, 12u)], true)), 2u)];
    var var_1 = vec4<bool>(!select(true, var_0.b.x == false, true), any(select(!select(var_0.b.zy, vec2<bool>(var_0.b.x, false), false), vec2<bool>(true, any(vec2<bool>(var_0.b.x, var_0.b.x))), !vec2<bool>(true, var_0.b.x))), any(vec2<bool>(var_0.b.x, false || var_0.b.x)) & var_0.b.x, true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-var_0.a.x));
    global2 = array<vec4<u32>, 26>();
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> bool {
    let var_0 = vec2<u32>(~_wgslsmith_mult_u32(u_input.a.x, ~1u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(~global0[_wgslsmith_index_u32(16111u, 12u)], abs(36626u), func_3()), min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]), global2[_wgslsmith_index_u32(4294967295u, 26u)]))), 12u)]) | select(~vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25805u, 12u)], 12u)], 53543u), ~global0[_wgslsmith_index_u32(0u, 12u)]), arg_1.zy, arg_2.zy);
    var var_1 = ~0u;
    global2 = array<vec4<u32>, 26>();
    let var_2 = ~(_wgslsmith_mod_i32(~arg_3.x, min(firstTrailingBit(-16568i), max(50988i, arg_3.x))) | max(-1i, -(arg_3.x ^ arg_3.x)));
    let var_3 = -125f;
    return arg_0.b.x;
}

fn func_1() -> bool {
    let var_0 = 0i;
    global0 = array<u32, 12>();
    var var_1 = true;
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1522f, _wgslsmith_f_op_f32(f32(-1f) * -1559f), 1268f))), vec3<bool>(!(!any(vec4<bool>(true, true, false, true))), true, !(func_2(Struct_1(vec4<f32>(-1000f, -955f, -162f, -462f), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 6u)], vec2<f32>(-790f, 674f)), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 248u, u_input.a.x), vec4<bool>(true, false, true, false), vec3<i32>(-2147483647i, var_0, var_0)) & true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, -397f) * vec2<f32>(-1235f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1221f, 444f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1814f, -1065f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1518f, 1566f), vec2<f32>(1162f, 768f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(100f, 1071f)) + vec2<f32>(-1000f, -558f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -829f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, -1027f) * vec2<f32>(750f, 1000f)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))))));
    return var_3.b.x;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = vec4<bool>(arg_1.x, arg_0 <= arg_0, !(_wgslsmith_f_op_f32(-arg_2.a.x) > _wgslsmith_f_op_f32(min(arg_2.c.x, _wgslsmith_f_op_f32(1692f - arg_2.a.x)))), any(select(select(vec2<bool>(arg_3.x, false), vec2<bool>(false, arg_3.x), select(vec2<bool>(arg_2.b.x, arg_2.b.x), vec2<bool>(arg_1.x, true), arg_3.x)), !arg_3, vec2<bool>(true, true))));
    var var_1 = _wgslsmith_mult_u32(u_input.a.x, ~firstTrailingBit(~_wgslsmith_div_u32(4294967295u, 83959u)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), -1000f, arg_2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x))), _wgslsmith_f_op_f32(max(arg_2.c.x, _wgslsmith_f_op_f32(sign(arg_2.c.x))))))), select(vec3<bool>(!arg_3.x & !arg_2.b.x, arg_2.b.x, false), select(arg_2.b, !(!var_0.ywy), arg_2.b), vec3<bool>(arg_3.x, true, !(true != arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.xz * vec2<f32>(_wgslsmith_div_f32(arg_2.a.x, 1625f), _wgslsmith_f_op_f32(-arg_2.a.x)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a.x, -1380f, _wgslsmith_f_op_f32(min(-1037f, 1532f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(764f, var_2.c.x, var_2.b.x))))))), var_2.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a.x, -331f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a.ww, vec2<f32>(-288f, 716f), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -656f)))))));
    let var_4 = vec2<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstTrailingBit(abs(30981u)), ~abs(u_input.a.x)), 12u)], min(u_input.a.x, ~global0[_wgslsmith_index_u32(~(~11526u), 12u)]));
    return _wgslsmith_f_op_f32(716f - 1308f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -902f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-32308i, vec2<bool>(func_1(), false), global1[_wgslsmith_index_u32(4294967295u, 2u)], vec2<bool>(true, false))));
    var var_1 = 181f;
    global4 = -106f;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1028f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-449f + 341f))))));
    let var_2 = ~vec4<u32>(~max(~4294967295u, _wgslsmith_sub_u32(55924u, 32270u)), ~u_input.a.x, 1u, firstLeadingBit(~0u));
    var var_3 = var_0;
    global0 = array<u32, 12>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1154f, -1432f, -626f, 1260f) - vec4<f32>(-1073f, 180f, 183f, -939f)) + vec4<f32>(-1216f, -1327f, 1869f, -2344f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1298f, -1191f, -621f, 1137f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1270f, -276f, -793f, 1064f), vec4<f32>(488f, -714f, 532f, 1476f), vec4<bool>(true, false, true, false))))))), !select(vec3<bool>(true, var_0, var_0), vec3<bool>(4294967295u != u_input.a.x, select(true, false, false), true), select(select(vec3<bool>(true, var_0, var_0), global3[_wgslsmith_index_u32(1u, 6u)], true), select(vec3<bool>(var_0, false, true), vec3<bool>(false, true, var_0), var_0), select(global3[_wgslsmith_index_u32(55840u, 6u)], vec3<bool>(var_0, true, var_0), var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 205f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(-134f, -353f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2906f, 1345f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(1i, firstTrailingBit(25434i), true), _wgslsmith_div_u32(var_2.x, 1u), _wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -152f)), vec3<i32>(-2147483647i, _wgslsmith_div_i32(max(firstTrailingBit(-10335i), reverseBits(-2147483647i)), 1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(-8389i, -2147483647i, 26408i), vec3<i32>(1i, 1i, 48238i)))), ~(0u | _wgslsmith_mod_u32(1u, countOneBits(var_2.x))));
}

