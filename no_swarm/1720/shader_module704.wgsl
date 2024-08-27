struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(8319u, 26051u, 1u), false);

var<private> global3: array<vec2<u32>, 29>;

var<private> global4: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-29278i, i32(-2147483648)), vec2<i32>(-1i, -17880i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -23195i), vec2<i32>(-27380i, 1i), vec2<i32>(15775i, -14950i), vec2<i32>(i32(-2147483648), 21408i), vec2<i32>(1i, -6932i), vec2<i32>(2669i, -17190i), vec2<i32>(-15399i, 2147483647i), vec2<i32>(24459i, -18810i), vec2<i32>(1i, 11883i), vec2<i32>(-22608i, 24093i), vec2<i32>(0i, -54749i), vec2<i32>(-53711i, -71076i), vec2<i32>(i32(-2147483648), -3053i), vec2<i32>(-9267i, 1i), vec2<i32>(8814i, -1i), vec2<i32>(-1i, 6637i), vec2<i32>(0i, -7848i), vec2<i32>(-2230i, -13640i), vec2<i32>(-39995i, -10460i), vec2<i32>(-1i, 12258i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(53459i, -26364i), vec2<i32>(32795i, -25378i), vec2<i32>(-43868i, 19623i), vec2<i32>(0i, 26178i), vec2<i32>(2147483647i, -40346i), vec2<i32>(-1i, -2916i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = vec3<u32>(~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(17705u, abs(232u), ~4653u), ~vec3<u32>(arg_0.a.x, 12931u, 4294967295u)), u_input.c.x);
    let var_1 = arg_0;
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, -1667f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 356f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1237f, global1.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1071f, global1.x)))))), vec2<bool>(true, true)));
    let var_2 = vec3<bool>(true, global2.b, true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -113f))), _wgslsmith_f_op_f32(-global1.x), -819f);
    return select(!(4294967295u < _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(var_1.a.x, 29u)], global3[_wgslsmith_index_u32(var_1.a.x, 29u)])) == false, arg_0.b, any(var_2.yx));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1;
    global2 = arg_1;
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-162f)) - _wgslsmith_f_op_f32(-1736f * _wgslsmith_f_op_f32(select(-608f, _wgslsmith_f_op_f32(select(global1.x, global1.x, global2.b)), var_0.b)))));
    global2 = Struct_1(global2.a << (~(~vec3<u32>(arg_2, var_0.a.x, arg_2)) % vec3<u32>(32u)), !func_3(arg_1, global2.a));
    var var_1 = -804f;
    return var_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = -1043f;
    let var_1 = arg_1;
    return any(vec3<bool>(select(arg_1.b, arg_1.b, arg_1.b), !any(!vec2<bool>(var_1.b, var_1.b)), true));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(arg_0.a, !(!func_4(u_input.b.wxy, arg_0)));
    let var_1 = Struct_1(var_0.a, select(var_0.b, arg_0.b, select(any(vec4<bool>(true, arg_0.b, false, true)), var_0.b && var_0.b, false) & false));
    var var_2 = func_2(select(!(!(!vec4<bool>(true, var_1.b, false, false))), select(vec4<bool>(true, any(vec4<bool>(false, true, var_0.b, var_0.b)), true, func_2(vec4<bool>(var_1.b, var_1.b, false, false), Struct_1(vec3<u32>(4294967295u, var_0.a.x, 1u), true), var_0.a.x).b), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, var_0.b, true), true), !vec4<bool>(true, var_0.b, false, global2.b), vec4<bool>(false, false, false, global2.b)), select(select(vec4<bool>(var_1.b, true, global2.b, arg_0.b), vec4<bool>(var_0.b, global2.b, global2.b, arg_0.b), vec4<bool>(false, false, false, var_1.b)), vec4<bool>(var_0.b, var_1.b, false, false), false)), select(select(!vec4<bool>(true, var_1.b, arg_0.b, var_0.b), !vec4<bool>(arg_0.b, true, arg_0.b, false), !var_0.b), vec4<bool>(any(vec3<bool>(true, var_0.b, false)), true, true, var_1.b), select(select(vec4<bool>(arg_0.b, var_1.b, true, true), vec4<bool>(true, true, false, var_0.b), vec4<bool>(var_1.b, arg_0.b, var_0.b, false)), !vec4<bool>(false, true, var_1.b, arg_0.b), !vec4<bool>(true, arg_0.b, true, false)))), Struct_1(firstLeadingBit(func_2(vec4<bool>(true, true, true, true), Struct_1(var_1.a, arg_0.b), firstLeadingBit(1u)).a), true), var_0.a.x);
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), arg_0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_2.a.x, var_0.a.x), var_2.a), true), ~(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global2.a.x, 60344u)) & vec3<u32>(~arg_0.a.x, firstTrailingBit(var_0.a.x), min(arg_0.a.x, var_0.a.x))), !(arg_0.b | false));
    var var_4 = func_2(vec4<bool>(var_0.b, !var_3.b, true, true), func_2(!vec4<bool>(false, 0u == u_input.c.x, arg_0.b, true), func_2(!vec4<bool>(true, global2.b, false, global2.b), func_2(!vec4<bool>(false, var_2.b, true, true), func_2(vec4<bool>(false, true, var_1.b, true), arg_0, global2.a.x), ~76093u), var_3.a.x), firstLeadingBit(~global2.a.x << (u_input.c.x % 32u))), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~0u, global2.a.x), 50040u), 12u)]);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, global1.x)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, 321f), vec2<f32>(global1.x, global1.x)))))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global2 = arg_2;
    var var_0 = arg_2;
    global0 = array<u32, 12>();
    global4 = array<vec2<i32>, 30>();
    var_0 = func_2(select(select(vec4<bool>(true, true, -767f <= arg_1.x, select(false, false, false)), vec4<bool>(true, func_3(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], 35132u), var_0.b), global2.a), false, arg_1.x != 430f), select(vec4<bool>(arg_2.b, false, arg_2.b, false), select(vec4<bool>(global2.b, arg_2.b, false, true), vec4<bool>(false, arg_2.b, true, var_0.b), true), select(vec4<bool>(true, false, global2.b, arg_2.b), vec4<bool>(true, var_0.b, true, arg_2.b), var_0.b))), !(!vec4<bool>(arg_2.b, false, false, false)), !all(vec2<bool>(true, true))), func_2(!select(vec4<bool>(global2.b, arg_2.b, var_0.b, global2.b), select(vec4<bool>(true, true, false, arg_2.b), vec4<bool>(arg_2.b, var_0.b, false, global2.b), global2.b), true), arg_2, global0[_wgslsmith_index_u32(global2.a.x, 12u)]), ~u_input.c.x);
    return func_2(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488f, -640f)) >= arg_1.x, any(vec4<bool>(any(vec2<bool>(false, var_0.b)), select(arg_2.b, true, var_0.b), var_0.b, true)), all(vec4<bool>(false, true, true, var_0.b)) | all(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, false, arg_2.b), vec3<bool>(arg_2.b, true, true))), true), arg_2, firstTrailingBit(global0[_wgslsmith_index_u32(global2.a.x, 12u)]));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec3<u32>(17668u, arg_2.a.x, abs(arg_1)), func_4(vec3<i32>(u_input.b.x, 1i, 28255i) << (arg_2.a % vec3<u32>(32u)), func_2(vec4<bool>(false, false, global2.b, true), arg_2, arg_2.a.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(1000f, 451f)))))), Struct_1(countOneBits(u_input.c.xww), !any(vec3<bool>(arg_2.b, arg_2.b, true)) != false));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(416f, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), vec2<f32>(-770f, 2486f))))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f * 433f) * _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(trunc(286f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2171f, 1902f, global2.b)))), 334f)));
    let var_1 = vec4<i32>(arg_0, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), global4[_wgslsmith_index_u32(global2.a.x, 30u)]) << ((arg_2.a.x ^ 25045u) % 32u), arg_0), 0i >> (~(29107u | u_input.c.x) % 32u)), 20596i, _wgslsmith_mod_i32(arg_0, 1i));
    var var_2 = global1.x;
    global3 = array<vec2<u32>, 29>();
    return !((var_1.x ^ 2147483647i) > (u_input.b.x | 1i)) || var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a, func_1(u_input.b.x, ~43347u, Struct_1(global2.a, ~u_input.c.x <= _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-501f - 2895f), _wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1572f + 1607f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * global1.x), -853f)))));
    let var_1 = vec2<bool>(true, func_4(u_input.d, func_2(!(!vec4<bool>(var_0.b, global2.b, false, global2.b)), func_2(select(vec4<bool>(var_0.b, var_0.b, global2.b, false), vec4<bool>(var_0.b, global2.b, global2.b, true), vec4<bool>(true, global2.b, true, false)), func_6(vec2<f32>(-919f, global1.x), vec2<f32>(448f, 315f), Struct_1(var_0.a, false)), ~1u), 1u)));
    var var_2 = ~global0[_wgslsmith_index_u32(~u_input.c.x, 12u)];
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(-4643i, -1i) << (~(~(~var_0.a.x)) % 32u), min(~31034i, -u_input.a), -2147483647i ^ _wgslsmith_clamp_i32(u_input.b.x, 0i, ~u_input.b.x));
    var var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.c.x, func_6(vec2<f32>(-199f, global1.x), vec2<f32>(global1.x, 2049f), Struct_1(vec3<u32>(u_input.c.x, 0u, global2.a.x), false)).a.x, _wgslsmith_add_u32(0u, 0u)), u_input.c.xxw) << ((firstTrailingBit(abs(vec3<u32>(var_0.a.x, 4294967295u, u_input.c.x))) >> (vec3<u32>(var_0.a.x, ~43661u, _wgslsmith_div_u32(7810u, global0[_wgslsmith_index_u32(u_input.c.x, 12u)])) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(~(~func_2(vec4<bool>(var_1.x, global2.b, global2.b, var_0.b), Struct_1(global2.a, global2.b), 5629u).a)));
    let var_5 = _wgslsmith_mod_u32(u_input.c.x | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~global3[_wgslsmith_index_u32(0u, 29u)]), ~_wgslsmith_sub_u32(4294967295u, 1u)), u_input.c.x);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-890f, global1.x) * vec2<f32>(global1.x, 805f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1197f, -2032f) - _wgslsmith_f_op_vec2_f32(func_5(Struct_1(u_input.c.yyy, true)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), global1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1243f)))))));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec3<u32>(var_5, 4294967295u, global0[_wgslsmith_index_u32(1771u, 12u)]), global2.b))).x)), _wgslsmith_f_op_f32(-global1.x), -290f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-719f, 709f, global1.x), vec3<f32>(-1810f, global1.x, -118f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, -1428f, 1008f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d, u_input.b.zxw << (vec3<u32>(var_5, ~var_4.x, firstTrailingBit(38142u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_f32(global1.x + -760f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(521f)) + _wgslsmith_f_op_f32(-var_6.x))) + var_6.x), _wgslsmith_f_op_f32(sign(var_6.x)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.d.x) | var_3.x, -_wgslsmith_add_i32(1i, 0i)), u_input.b.x, ~(~var_3.x)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 43844u, var_4.x)), ~vec4<u32>(0u, 0u, 311u, var_4.x)) ^ vec4<u32>(var_0.a.x, firstLeadingBit(var_4.x), ~1u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a.x, abs(global2.a.x)), 12u)]));
}

