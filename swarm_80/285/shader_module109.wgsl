struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-51814i, -45309i, -1i), vec4<bool>(false, false, false, true), vec3<i32>(1i, 6909i, 0i), vec3<f32>(127f, -1702f, 2484f)), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), vec4<bool>(true, true, false, true), vec3<i32>(8019i, i32(-2147483648), 0i), vec3<f32>(-1000f, 1579f, 1347f)), Struct_1(vec3<i32>(40135i, 2147483647i, 14174i), vec4<bool>(false, false, true, false), vec3<i32>(-1i, 0i, 33216i), vec3<f32>(182f, -995f, 345f)), Struct_1(vec3<i32>(-10568i, 0i, 14275i), vec4<bool>(true, true, false, false), vec3<i32>(-1i, -73695i, 1838i), vec3<f32>(1318f, 179f, 1883f)), Struct_1(vec3<i32>(-49856i, -31576i, 2147483647i), vec4<bool>(false, true, true, true), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<f32>(-919f, -1109f, -1142f)), Struct_1(vec3<i32>(26904i, 1i, 0i), vec4<bool>(true, false, true, false), vec3<i32>(i32(-2147483648), -1i, -4655i), vec3<f32>(307f, -1000f, 2150f)), Struct_1(vec3<i32>(-1i, -13559i, 1i), vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<f32>(-756f, 447f, 3104f)), Struct_1(vec3<i32>(-1i, 1i, -1i), vec4<bool>(false, true, false, false), vec3<i32>(28012i, -40316i, -45987i), vec3<f32>(318f, -903f, -3364f)), Struct_1(vec3<i32>(-1i, -14432i, -29915i), vec4<bool>(false, false, true, true), vec3<i32>(34249i, -54840i, i32(-2147483648)), vec3<f32>(934f, 1520f, 221f)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 10074i), vec4<bool>(false, true, false, false), vec3<i32>(i32(-2147483648), -48407i, -49492i), vec3<f32>(510f, 633f, -298f)), Struct_1(vec3<i32>(10181i, 2147483647i, -44054i), vec4<bool>(false, false, true, true), vec3<i32>(-12749i, i32(-2147483648), 23711i), vec3<f32>(1058f, -548f, -987f)), Struct_1(vec3<i32>(i32(-2147483648), -9813i, 1i), vec4<bool>(true, false, false, true), vec3<i32>(2777i, i32(-2147483648), 1i), vec3<f32>(264f, -405f, 171f)), Struct_1(vec3<i32>(-17400i, -8422i, 43196i), vec4<bool>(false, false, true, false), vec3<i32>(30663i, -49024i, -15586i), vec3<f32>(427f, 439f, 418f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec4<bool>(true, true, true, false), vec3<i32>(-39119i, 2147483647i, 11578i), vec3<f32>(729f, -1771f, -213f)), Struct_1(vec3<i32>(28298i, 0i, i32(-2147483648)), vec4<bool>(false, false, false, false), vec3<i32>(-1i, -1i, -21872i), vec3<f32>(-464f, 505f, -1129f)), Struct_1(vec3<i32>(-424i, 34478i, i32(-2147483648)), vec4<bool>(true, true, false, true), vec3<i32>(-14493i, -3339i, -51030i), vec3<f32>(1108f, 197f, 1000f)), Struct_1(vec3<i32>(1i, -10362i, 21578i), vec4<bool>(false, true, true, true), vec3<i32>(-6094i, 2923i, 1i), vec3<f32>(259f, 374f, 457f)), Struct_1(vec3<i32>(-69628i, 0i, -47994i), vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), 1i, 4286i), vec3<f32>(746f, -1667f, -1287f)), Struct_1(vec3<i32>(1i, 30363i, 0i), vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, -19707i, 1i), vec3<f32>(-585f, 336f, 2233f)), Struct_1(vec3<i32>(-43012i, i32(-2147483648), 8812i), vec4<bool>(true, true, false, true), vec3<i32>(-26169i, 2946i, 1i), vec3<f32>(-663f, -2413f, -456f)));

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1001i, ~global0.d, max(u_input.a.x, 2147483647i)), select(u_input.a.yzy, vec3<i32>(global0.d, global0.d, -2147483647i), select(vec3<bool>(true, true, global0.a.x), vec3<bool>(false, global0.a.x, false), true)))), _wgslsmith_add_vec3_i32(~(u_input.a.wyy >> (u_input.c.zwz % vec3<u32>(32u))) << (u_input.c.wzz % vec3<u32>(32u)), ~(~vec3<i32>(global0.d, 25819i, 0i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, 211f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 653f, global0.c.x) + vec3<f32>(387f, global0.c.x, 812f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1186f, 1000f, -905f))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c.x, -1066f, _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(1044f - global0.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, _wgslsmith_f_op_f32(round(1160f)), _wgslsmith_f_op_f32(global0.c.x + global0.c.x))))));
    var var_2 = vec3<bool>(global0.a.x, false, any(vec4<bool>(global0.b.x, global0.b.x, true && (global0.b.x | false), false)));
    let var_3 = Struct_2(select(global0.a, global0.a, false), select(!(!(!vec2<bool>(global0.a.x, false))), vec2<bool>(false, global0.b.x), false), vec2<f32>(296f, 1797f), var_0.x);
    var var_4 = Struct_2(vec4<bool>(!var_3.b.x, false, false, var_2.x), global0.b, var_1.xx, var_0.x);
    return select(_wgslsmith_f_op_f32(select(var_1.x, 254f, -341f < var_4.c.x)) != -1760f, var_2.x, ((1u <= (16362u << (u_input.b.x % 32u))) & true) || !any(!var_3.a.xzz));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(select(vec4<bool>(any(global0.a.yzw), !(u_input.c.x > u_input.d.x), all(select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), vec4<bool>(false, true, global0.a.x, global0.b.x), vec4<bool>(global0.b.x, global0.a.x, true, true))), all(select(global0.a, global0.a, global0.b.x))), select(global0.a, !(!vec4<bool>(global0.b.x, global0.a.x, global0.a.x, global0.a.x)), all(global0.b)), global0.a), vec2<bool>(select(true, global0.a.x, func_3(u_input.d.x)), global0.a.x), _wgslsmith_f_op_vec2_f32(max(global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(665f, -1017f), vec2<f32>(1f, 1f))))), 2147483647i);
    global3 = array<vec2<u32>, 29>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(~firstLeadingBit(u_input.a), _wgslsmith_div_vec4_i32(~select(vec4<i32>(-1i, u_input.a.x, var_0.d, var_0.d), u_input.a, false), vec4<i32>(var_0.d, var_0.d, -2147483647i, _wgslsmith_mod_i32(global0.d, var_0.d)))), 2147483647i, 58665i, global0.d);
    let var_2 = vec3<i32>(reverseBits(6939i), 2147483647i, abs(var_0.d));
    let var_3 = Struct_2(!vec4<bool>(!global0.a.x, false, true, false), select(!select(var_0.b, var_0.b, !global0.a.zx), !vec2<bool>(global0.d == -12153i, any(vec2<bool>(false, true))), vec2<bool>(true, func_3(1u))), _wgslsmith_f_op_vec2_f32(-var_0.c), min(-24432i, _wgslsmith_dot_vec4_i32(~abs(u_input.a), u_input.a | (u_input.a ^ vec4<i32>(-12946i, 4455i, -42542i, 33072i)))));
    return _wgslsmith_clamp_u32(~(~(~773u)), _wgslsmith_mod_u32(19631u, ~0u) & min(~reverseBits(u_input.d.x), ~(~u_input.b.x)), abs(1u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_3.a, !(!(!global0.b)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.c.x, global0.c.x, arg_3.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1174f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_0.yz)))))), _wgslsmith_clamp_i32(-1i, u_input.a.x, firstLeadingBit(~arg_3.d)) >> (0u % 32u));
    global1 = array<Struct_1, 20>();
    let var_1 = select(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, abs(u_input.d.x), ~1u), select(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(u_input.b.x, arg_1.x, u_input.c.x), var_0.a.x)), max(vec3<u32>(1u, firstTrailingBit(60544u), arg_1.x), _wgslsmith_sub_vec3_u32(arg_1, arg_1)), func_3(~arg_2) && global0.a.x);
    let var_2 = global1[_wgslsmith_index_u32(1u, 20u)];
    let var_3 = arg_3;
    return Struct_2(select(select(vec4<bool>(select(global0.b.x, false, false), arg_3.a.x, var_2.d.x == arg_0.x, arg_3.a.x), vec4<bool>(true || arg_3.a.x, all(arg_3.b), var_3.d < global0.d, false), !(!global0.a)), vec4<bool>(global0.a.x, false, var_3.a.x, all(vec4<bool>(true, var_3.b.x, var_2.b.x, global0.b.x)) && global0.b.x), vec4<bool>(false, func_2() != arg_2, var_2.b.x == (16809i >= global0.d), true)), !var_3.a.wz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(312f, 1249f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), all(vec3<bool>(false, false, true)))))), -reverseBits(3689i));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = u_input.b;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f), 1324f);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, arg_0.c.x, 1054f, global0.c.x)))))), _wgslsmith_mult_vec3_u32(select(~(vec3<u32>(var_0.x, 65840u, var_0.x) & vec3<u32>(4294967295u, var_0.x, u_input.b.x)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 16567u), vec3<u32>(var_0.x, var_0.x, u_input.d.x)), u_input.c.yzw), func_4(vec4<f32>(arg_0.c.x, arg_0.c.x, -1567f, global0.c.x), ~u_input.c.wxw, ~106183u, func_4(vec4<f32>(-1360f, 448f, global0.c.x, -1093f), u_input.c.wxw, 16676u, Struct_2(global0.a, vec2<bool>(arg_0.b.x, true), vec2<f32>(797f, -2151f), -2147483647i))).a.wzz), abs(vec3<u32>(1u, max(var_0.x, u_input.c.x), func_2()))), var_0.x, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1162f, -672f, -1359f, -450f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.c.x, 1869f, global0.c.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, -871f, arg_0.c.x, arg_0.c.x), vec4<f32>(476f, global0.c.x, arg_0.c.x, 1405f), true)))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.d.x, 29u)] ^ var_0.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(77671u, var_0.x), global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.b.x, 29u)])), 22608u), ~func_2(), arg_0));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1038f * _wgslsmith_f_op_f32(f32(-1f) * -1633f)), _wgslsmith_f_op_f32(select(var_1.c.x, -227f, global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.c.x)), -1000f, global0.c.x))))));
    var var_3 = vec3<u32>(~_wgslsmith_sub_u32(~4175u, u_input.c.x), firstTrailingBit(~abs(_wgslsmith_div_u32(u_input.b.x, u_input.d.x))), 0u);
    return global1[_wgslsmith_index_u32(1u, 20u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 1084f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 1904f, global0.c.x, global0.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 176f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -722f, global0.c.x), vec4<f32>(global0.c.x, 1724f, global0.c.x, global0.c.x)))), vec3<u32>(1u, ~(~arg_1.x), 1u), (max(44775u, u_input.c.x) | arg_1.x) >> (func_2() % 32u), Struct_2(!global0.a, vec2<bool>(!arg_0.x, func_3(0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, global0.c.x)), _wgslsmith_f_op_vec2_f32(-global0.c)), 1i)));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, -1918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), -508f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-287f, global0.c.x)), _wgslsmith_f_op_f32(floor(global0.c.x)), -1963f, -2967f))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 0u, arg_1.x), vec3<u32>(37797u, 4294967295u, 9625u)) >> (min(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(u_input.d.x, arg_1.x, u_input.d.x)) % vec3<u32>(32u)), u_input.b), 44524u, func_4(vec4<f32>(-1463f, _wgslsmith_f_op_f32(-func_4(vec4<f32>(-642f, -1064f, -773f, -515f), vec3<u32>(3553u, 1u, u_input.c.x), arg_1.x, Struct_2(global0.a, vec2<bool>(global0.a.x, false), var_0.d.xz, global0.d)).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-133f, -930f, true)))), ~max(max(arg_1.wzy, vec3<u32>(u_input.b.x, 48370u, 4294967295u)), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(1u, 1u, u_input.b.x))), func_2(), Struct_2(vec4<bool>(false, all(arg_0.yz), true && var_0.b.x, true), select(!global0.b, func_5(Struct_2(vec4<bool>(true, arg_0.x, false, false), vec2<bool>(global0.b.x, arg_0.x), var_0.d.yx, 2147483647i)).b.xw, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.zy)), var_0.c.x))).a;
    let var_2 = (select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, u_input.a.x, global0.d), vec3<i32>(-13028i, -2147483647i, global0.d)) | vec3<i32>(global0.d, global0.d, global0.d), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, u_input.a.x) >> (u_input.b % vec3<u32>(32u)), var_0.c), true) ^ vec3<i32>(-1i, -2147483647i, _wgslsmith_sub_i32(-u_input.a.x, ~global0.d))) | func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-482f, var_0.d.x, global0.c.x, var_0.d.x)))), u_input.b, arg_1.x, func_4(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, -102f, global0.c.x, var_0.d.x), vec4<f32>(global0.c.x, var_0.d.x, var_0.d.x, var_0.d.x)), arg_1.xwy, ~u_input.c.x, func_4(vec4<f32>(-501f, 520f, 137f, 1169f), vec3<u32>(70199u, u_input.b.x, arg_1.x), 0u, Struct_2(vec4<bool>(arg_0.x, var_1.x, var_1.x, var_0.b.x), arg_0.yz, global0.c, 2147483647i))))).c;
    var_1 = !select(vec4<bool>((var_0.b.x && true) | arg_0.x, !all(vec2<bool>(var_0.b.x, var_0.b.x)), any(!global0.a), !(-43289i == var_2.x)), vec4<bool>(var_1.x, true, !all(var_0.b.yz), arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(1000f - -686f), global0.b.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * 1508f) - _wgslsmith_f_op_f32(-1475f * var_0.d.x)));
    var var_3 = _wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(47621u, arg_1.x, 15839u)), vec3<u32>(_wgslsmith_mod_u32(~arg_1.x, ~u_input.c.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(43644u, 75703u, arg_1.x), arg_1.wyy), vec3<u32>(41255u, 37638u, 1u)), _wgslsmith_sub_u32(arg_1.x, 47833u) ^ u_input.d.x) ^ (select(~u_input.c.zzz, vec3<u32>(0u, 4294967295u, arg_1.x) | u_input.b, !var_0.b.yww) << (~(~vec3<u32>(u_input.b.x, u_input.d.x, u_input.b.x)) % vec3<u32>(32u))));
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 12195i, -17467i, global0.d) & u_input.a, ~vec4<i32>(19545i, u_input.a.x, -1i, var_0.c.x)), u_input.a), _wgslsmith_clamp_i32(-firstLeadingBit(u_input.a.x), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -276f, -1173f, global0.c.x)), u_input.c.yyw, func_2(), Struct_2(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec2<bool>(false, false), var_0.d.zx, u_input.a.x)).d, 1i), firstTrailingBit(~firstTrailingBit(var_0.a.x))), !var_0.b, var_2 >> (vec3<u32>(max(4294967295u, arg_1.x >> (arg_1.x % 32u)), 28361u, arg_1.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 650f, -613f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!select(global0.a.zxy, global0.a.zwz, select(global0.a.wwy, vec3<bool>(global0.a.x, true, global0.b.x), true))), vec4<u32>(1u, select(~u_input.c.x, 1838u, !global0.b.x), abs(u_input.b.x), _wgslsmith_sub_u32(abs(u_input.b.x) ^ ~u_input.d.x, ~(20931u << (u_input.b.x % 32u)))));
    var var_1 = ~(~(~_wgslsmith_div_u32(33891u, u_input.b.x))) > func_2();
    let var_2 = 36053u;
    var var_3 = Struct_2(!var_0.b, vec2<bool>(!(var_0.b.x || !global0.b.x), !(_wgslsmith_f_op_f32(max(-189f, var_0.d.x)) > -1465f)), var_0.d.yy, 0i);
    var var_4 = var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1021f) + _wgslsmith_f_op_f32(abs(-659f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-816f, 154f) + global0.c.x))), ~_wgslsmith_sub_u32(var_2, 62491u), _wgslsmith_dot_vec2_i32(func_1(!global0.a.zxw, vec4<u32>(u_input.b.x, 1u, var_2, u_input.c.x)).a.zy << (u_input.c.xw % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), -44136i))), u_input.a | _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_mod_i32(19580i, var_0.a.x), 0i, _wgslsmith_add_i32(u_input.a.x, global0.d)), -vec4<i32>(var_0.c.x, -2147483647i, 27721i, 1i)), global3[_wgslsmith_index_u32(~var_2, 29u)]);
}

