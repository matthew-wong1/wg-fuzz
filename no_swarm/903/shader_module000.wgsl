struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(81125u, vec2<f32>(-1275f, -796f));

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(944f, -946f, -143f, -189f), false, Struct_1(1u, vec2<f32>(586f, -1293f))), Struct_2(vec4<f32>(-1029f, 644f, 1619f, 209f), false, Struct_1(1u, vec2<f32>(1051f, 1387f))), Struct_2(vec4<f32>(176f, -417f, 1000f, 587f), true, Struct_1(78303u, vec2<f32>(-1413f, -895f))), Struct_2(vec4<f32>(848f, -1495f, 711f, 491f), true, Struct_1(2606u, vec2<f32>(1193f, 153f))), Struct_2(vec4<f32>(-1121f, 516f, -1112f, 607f), false, Struct_1(49317u, vec2<f32>(340f, 1192f))), Struct_2(vec4<f32>(1000f, -1171f, 783f, -724f), false, Struct_1(4294967295u, vec2<f32>(1271f, -844f))), Struct_2(vec4<f32>(-195f, 404f, 1427f, -697f), false, Struct_1(1u, vec2<f32>(-409f, 2034f))), Struct_2(vec4<f32>(2398f, 1898f, 1148f, 982f), false, Struct_1(1u, vec2<f32>(717f, -1772f))), Struct_2(vec4<f32>(1033f, -123f, 455f, -1616f), true, Struct_1(4294967295u, vec2<f32>(845f, 245f))), Struct_2(vec4<f32>(-790f, 1215f, 1468f, 802f), true, Struct_1(10791u, vec2<f32>(1000f, 396f))), Struct_2(vec4<f32>(354f, -493f, -301f, -2013f), true, Struct_1(0u, vec2<f32>(815f, 191f))), Struct_2(vec4<f32>(1932f, -494f, 552f, -268f), true, Struct_1(1u, vec2<f32>(-1079f, -1285f))), Struct_2(vec4<f32>(1760f, -242f, 292f, -1293f), false, Struct_1(38134u, vec2<f32>(1463f, -1000f))), Struct_2(vec4<f32>(-1000f, 711f, 693f, 531f), false, Struct_1(0u, vec2<f32>(1402f, 465f))), Struct_2(vec4<f32>(129f, 332f, 369f, -226f), false, Struct_1(63190u, vec2<f32>(-1900f, 124f))), Struct_2(vec4<f32>(-518f, 1911f, -368f, 208f), false, Struct_1(0u, vec2<f32>(1320f, 130f))), Struct_2(vec4<f32>(-1000f, -1000f, -1196f, 619f), true, Struct_1(4294967295u, vec2<f32>(884f, 1267f))), Struct_2(vec4<f32>(1000f, 1026f, 246f, -1477f), true, Struct_1(1u, vec2<f32>(426f, 340f))), Struct_2(vec4<f32>(-114f, -1050f, 591f, 590f), true, Struct_1(34923u, vec2<f32>(414f, -191f))), Struct_2(vec4<f32>(-1000f, 1562f, 843f, -327f), false, Struct_1(40075u, vec2<f32>(-125f, 2582f))), Struct_2(vec4<f32>(-515f, -940f, 1317f, -1096f), true, Struct_1(55450u, vec2<f32>(821f, -1013f))), Struct_2(vec4<f32>(863f, 133f, -636f, -337f), false, Struct_1(33134u, vec2<f32>(-656f, 620f))), Struct_2(vec4<f32>(-1267f, 605f, -203f, -269f), true, Struct_1(1749u, vec2<f32>(131f, -853f))), Struct_2(vec4<f32>(-535f, -263f, 1049f, -516f), true, Struct_1(45878u, vec2<f32>(147f, 161f))), Struct_2(vec4<f32>(-474f, -199f, 1046f, -453f), false, Struct_1(4294967295u, vec2<f32>(-1061f, 974f))), Struct_2(vec4<f32>(-692f, 482f, -703f, 1550f), true, Struct_1(0u, vec2<f32>(-497f, 255f))));

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<u32, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    var var_0 = (!(min(u_input.b.x, u_input.a.x) <= _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) && all(vec3<bool>(-2147483647i == u_input.a.x, true, true))) & (all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)) || true);
    global0 = Struct_1(59702u, vec2<f32>(1f, _wgslsmith_f_op_f32(sign(1177f))));
    var var_1 = 2147483647i;
    var var_2 = Struct_1(global0.a, global0.b);
    global3 = array<u32, 9>();
    return vec2<bool>(false, false);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(~global3[_wgslsmith_index_u32(abs(13040u | firstTrailingBit(global0.a)), 9u)], _wgslsmith_f_op_vec2_f32(max(vec2<f32>(320f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), -511f)), vec2<f32>(global0.b.x, 574f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - var_0.b.x));
    var var_2 = true;
    var var_3 = var_0;
    global1 = array<Struct_2, 26>();
    return any(!select(!func_3(), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), func_3().x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_div_f32(global0.b.x, global0.b.x)))), -1052f, global0.b.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1393f, 1000f, arg_3.b)) * _wgslsmith_div_vec3_f32(vec3<f32>(100f, 178f, -327f), vec3<f32>(1170f, arg_3.c.b.x, 399f)))))), arg_0.x));
    var var_1 = Struct_3(vec2<i32>(1i, 0i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1007f * arg_3.c.b.x))), Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0.a, arg_3.c.a, 24420u)), vec3<u32>(arg_3.c.a, 33808u, 48718u)) << (_wgslsmith_div_u32(reverseBits(arg_1.a), 1u) % 32u), arg_3.c.b));
    return Struct_1(9416u, arg_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global3 = array<u32, 9>();
    let var_0 = func_3();
    global1 = array<Struct_2, 26>();
    var var_1 = arg_2.a.x;
    let var_2 = select(!(!var_0), select(vec2<bool>((var_0.x & var_0.x) | true, func_3().x), func_3(), var_0.x), func_3().x);
    return global1[_wgslsmith_index_u32(0u, 26u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(!vec3<bool>(true, true, func_2(-2147483647i, u_input.b)), Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23074u, global0.a, global3[_wgslsmith_index_u32(global0.a, 9u)]), vec4<u32>(global0.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 0u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 9u)], 240u, global3[_wgslsmith_index_u32(1u, 9u)]), vec3<u32>(global0.a, global3[_wgslsmith_index_u32(46943u, 9u)], global0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) * _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(global0.b.x, 741f)))), -2147483647i, Struct_3(-_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(-39256i, u_input.a.x)), global0.b.x, Struct_1(select(49481u, 58749u, false), global0.b))), Struct_3(vec2<i32>(~u_input.b.x, _wgslsmith_add_i32(~u_input.a.x, u_input.b.x ^ u_input.b.x)), global0.b.x, func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), global0.b.x <= 267f), Struct_1(~4294967295u, _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(-240f, global0.b.x))), firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, 18246i)), Struct_3(vec2<i32>(120i, 15448i) & vec2<i32>(u_input.b.x, u_input.a.x), -635f, func_4(vec3<bool>(false, true, false), Struct_1(4294967295u, global0.b), -13188i, Struct_3(u_input.b.xy, global0.b.x, Struct_1(global0.a, vec2<f32>(global0.b.x, 1451f))))))), Struct_3(min(abs(-vec2<i32>(u_input.a.x, 2147483647i)), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 1i), 31332i)), 735f, Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(216f, -392f))))));
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    var var_1 = true;
    return func_5(Struct_1(abs(global3[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 9u)]), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-117f, -294f) + _wgslsmith_f_op_f32(global0.b.x - var_0.c.b.x)), func_4(!vec3<bool>(true, var_0.b, var_0.b), Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c.a, 9u)], 9u)], vec2<f32>(global0.b.x, 634f)), u_input.a.x, Struct_3(vec2<i32>(1i, u_input.b.x), var_0.c.b.x, Struct_1(4294967295u, vec2<f32>(var_0.a.x, -264f)))).b.x)), Struct_3(reverseBits(-u_input.b.yx) >> (vec2<u32>(~var_0.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a, var_0.c.a, 43854u), vec3<u32>(global3[_wgslsmith_index_u32(global0.a, 9u)], 94779u, global3[_wgslsmith_index_u32(4294967295u, 9u)]))) % vec2<u32>(32u)), 1497f, Struct_1(var_0.c.a, var_0.c.b)), Struct_3(u_input.b.xx, -958f, Struct_1(func_4(!vec3<bool>(var_0.b, true, var_0.b), func_4(vec3<bool>(var_0.b, var_0.b, var_0.b), var_0.c, 0i, Struct_3(vec2<i32>(-1i, -14787i), var_0.a.x, var_0.c)), _wgslsmith_mult_i32(11896i, u_input.b.x), Struct_3(u_input.b.yy, 611f, Struct_1(4294967295u, vec2<f32>(var_0.a.x, -151f)))).a, func_5(Struct_1(4294967295u, vec2<f32>(global0.b.x, global0.b.x)), Struct_3(u_input.a, var_0.c.b.x, Struct_1(0u, vec2<f32>(var_0.c.b.x, global0.b.x))), Struct_3(vec2<i32>(u_input.a.x, u_input.a.x), var_0.a.x, var_0.c)).c.b))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 9>();
    global0 = func_1();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global0.a, global3[_wgslsmith_index_u32(global0.a, 9u)], global3[_wgslsmith_index_u32(15417u, 9u)], 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(1u, 9u)], 14947u, 46639u, 1u), true), abs(~vec4<u32>(global0.a, global3[_wgslsmith_index_u32(48378u, 9u)], global0.a, 4294967295u))), vec2<f32>(global0.b.x, global0.b.x));
    var var_1 = vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-341f)), var_1.x)) - _wgslsmith_div_vec2_f32(global0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1277f, global0.b.x, global0.b.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, 108f, -2830f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, 903f, -203f))))), vec3<bool>(!all(vec2<bool>(false, true)), select(global3[_wgslsmith_index_u32(5512u, 9u)], 16404u, true) == _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(66719u, 9u)], 4294967295u), ~var_0.a <= global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 92357u, 53118u), vec3<u32>(var_0.a, var_0.a, 1u)), 9u)]))));
}

