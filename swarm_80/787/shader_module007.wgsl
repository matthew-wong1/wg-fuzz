struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(i32(-2147483648), 0i, 23396i), vec3<i32>(-1i, 51323i, 1545i), vec3<i32>(-3299i, 2777i, 26340i), vec3<i32>(-49882i, 2147483647i, -1i), vec3<i32>(-25453i, -1i, -74433i), vec3<i32>(i32(-2147483648), 0i, 12209i), vec3<i32>(i32(-2147483648), 1370i, 1i), vec3<i32>(1i, 7529i, 0i), vec3<i32>(-1553i, 1i, -44523i), vec3<i32>(25409i, 30421i, -30422i), vec3<i32>(-27117i, -1i, 30573i), vec3<i32>(28085i, -1i, -1i), vec3<i32>(1i, 26544i, -1i), vec3<i32>(2147483647i, 0i, -7011i), vec3<i32>(-7069i, 0i, -4546i), vec3<i32>(14320i, -30831i, -21373i), vec3<i32>(-3174i, i32(-2147483648), i32(-2147483648)));

var<private> global3: Struct_3 = Struct_3(vec2<i32>(0i, 1i), Struct_1(vec3<f32>(-1000f, -464f, 1056f), vec3<f32>(800f, -575f, -658f), vec4<i32>(-4344i, 68137i, i32(-2147483648), 0i), vec4<u32>(10330u, 30937u, 63823u, 78213u), -369f), Struct_1(vec3<f32>(926f, -707f, 1258f), vec3<f32>(1614f, 936f, -344f), vec4<i32>(-1i, 1i, 49986i, -8620i), vec4<u32>(75998u, 38520u, 48543u, 0u), 2444f), 46549i, vec4<f32>(-1888f, -1000f, 690f, 333f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_0.a.x;
    return Struct_3(vec2<i32>(global3.a.x, 1i), global3.b, arg_0, arg_0.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.b.x, arg_1.c.a.x)), _wgslsmith_f_op_f32(select(491f, arg_0.e, false)), _wgslsmith_f_op_f32(-967f * -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global3.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.x, -1695f, -400f, var_0))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec4<bool> {
    global1 = global0.yxy;
    var var_0 = abs(-(vec2<i32>(-1i) * -vec2<i32>(1i, u_input.b.x)));
    let var_1 = abs(-44064i);
    var var_2 = countOneBits(~arg_0.c.d.x);
    global0 = select(select(!vec4<bool>(!global0.x, 33503u != arg_0.c.d.x, false & global0.x, global0.x && false), !vec4<bool>(all(vec2<bool>(false, true)), global1.x && global1.x, any(vec3<bool>(global1.x, false, global1.x)), global0.x), global1.x), !(!select(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global0.x, global1.x, global0.x, true)), vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(false, global1.x, global0.x, global0.x), vec4<bool>(global1.x, true, false, global0.x), true))), !select(vec4<bool>(!global0.x, global1.x, true, global0.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(false, global0.x, true, global1.x))));
    return !select(select(select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global1.x, global0.x, true, false), true), !vec4<bool>(true, false, global1.x, global0.x), vec4<bool>(false, global0.x, global1.x, false)), vec4<bool>(select(global1.x, global1.x, global0.x), select(global0.x, global1.x, false), true, select(global1.x, global1.x, false)), global1.x), vec4<bool>(true && all(global1.yx), true, global0.x, !(true | global0.x)), !(_wgslsmith_f_op_f32(global3.c.b.x - arg_0.e.x) <= _wgslsmith_f_op_f32(f32(-1f) * -949f)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(arg_2.xx));
    let var_1 = global3.b.d.x;
    var var_2 = all(vec4<bool>(!(!any(arg_0)), global3.b.d.x < ~(~arg_3.x), global1.x, true));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.yx), var_0))), _wgslsmith_div_vec2_f32(arg_2.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-2365f * var_0.x)))));
    let var_4 = Struct_3(firstTrailingBit(vec2<i32>(u_input.b.x, select(-2147483647i, global3.c.c.x, arg_0.x) << (1u % 32u))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, var_3.x, global3.e.x), global3.b.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) + _wgslsmith_f_op_vec3_f32(-arg_2))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(Struct_1(arg_2, arg_2, arg_1, vec4<u32>(global3.c.d.x, global3.c.d.x, arg_3.x, arg_3.x), 346f), Struct_3(u_input.b.zz, Struct_1(global3.c.b, vec3<f32>(arg_2.x, -1602f, 1877f), global3.b.c, global3.b.d, -1421f), global3.c, arg_1.x, vec4<f32>(-739f, -662f, -303f, 1249f))).e.ywx), arg_2), ~vec4<i32>(10573i << (global3.c.d.x % 32u), ~0i, u_input.b.x ^ global3.a.x, min(global3.b.c.x, global3.c.c.x)), ~(~vec4<u32>(1u, arg_3.x, 65600u, global3.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(1313f + arg_2.x)))), func_2(global3.c, func_2(global3.c, Struct_3(u_input.b.yz, func_2(Struct_1(arg_2, arg_2, global3.b.c, vec4<u32>(global3.c.d.x, 6581u, 0u, 45503u), var_0.x), Struct_3(vec2<i32>(global3.a.x, arg_1.x), Struct_1(vec3<f32>(-104f, arg_2.x, 861f), vec3<f32>(891f, -129f, 1165f), vec4<i32>(u_input.b.x, -47401i, 1i, u_input.b.x), vec4<u32>(arg_3.x, u_input.a, u_input.a, u_input.a), arg_2.x), global3.b, -1i, global3.e)).c, Struct_1(global3.c.b, arg_2, global3.c.c, arg_3, var_3.x), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, arg_2.x, arg_2.x, arg_2.x)))))).c, global3.b.c.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.x) + -1322f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2281f, var_0.x), _wgslsmith_f_op_f32(-1323f * var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1000f)), func_2(func_2(Struct_1(arg_2, arg_2, arg_1, arg_3, 303f), func_2(Struct_1(arg_2, arg_2, arg_1, global3.c.d, arg_2.x), Struct_3(vec2<i32>(-19287i, -2147483647i), Struct_1(arg_2, arg_2, global3.c.c, vec4<u32>(0u, u_input.a, 1u, u_input.a), var_0.x), Struct_1(global3.b.a, vec3<f32>(465f, var_3.x, -1000f), vec4<i32>(arg_1.x, 7472i, 48649i, arg_1.x), arg_3, 1010f), -13426i, vec4<f32>(var_3.x, var_0.x, arg_2.x, global3.b.e)))).b, func_2(Struct_1(vec3<f32>(-504f, -460f, 867f), global3.b.a, vec4<i32>(u_input.b.x, arg_1.x, 4537i, global3.c.c.x), vec4<u32>(global3.b.d.x, global3.b.d.x, u_input.a, u_input.a), 428f), func_2(global3.b, Struct_3(u_input.b.zz, global3.b, global3.b, u_input.b.x, vec4<f32>(var_0.x, 1000f, 900f, 728f))))).e.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.b.x))), _wgslsmith_f_op_f32(round(-1000f))));
}

fn func_1() -> Struct_2 {
    let var_0 = !(!global1.x);
    global0 = vec4<bool>(global1.x == !(!global0.x), _wgslsmith_f_op_f32(func_4(func_3(func_2(Struct_1(vec3<f32>(global3.e.x, -724f, 1152f), global3.e.wyx, global3.b.c, vec4<u32>(14799u, 12130u, u_input.a, u_input.a), 513f), Struct_3(vec2<i32>(global3.c.c.x, 48073i), Struct_1(vec3<f32>(1000f, -784f, 1106f), vec3<f32>(global3.e.x, global3.c.e, global3.b.e), vec4<i32>(-20493i, u_input.b.x, u_input.b.x, global3.b.c.x), global3.b.d, global3.e.x), global3.b, u_input.b.x, vec4<f32>(global3.e.x, 951f, global3.b.b.x, 904f))), global3.c.d, vec3<i32>(-2147483647i, 1i, 0i) >> (global3.c.d.wxx % vec3<u32>(32u))), global3.b.c, _wgslsmith_f_op_vec3_f32(select(global3.b.a, global3.c.b, global0.x)), abs(~vec4<u32>(global3.b.d.x, 0u, global3.b.d.x, u_input.a)))) <= -783f, select(false || var_0, all(global1.xx), all(func_3(func_2(global3.b, Struct_3(vec2<i32>(-1i, -2147483647i), global3.c, global3.c, global3.d, vec4<f32>(-780f, global3.e.x, 579f, -291f))), vec4<u32>(global3.c.d.x, 4294967295u, 4294967295u, 13901u), countOneBits(global2[_wgslsmith_index_u32(57777u, 18u)])))), any(global1.xy));
    global1 = !vec3<bool>(false, !global1.x, all(global0.xwz));
    var var_1 = -vec4<i32>(u_input.b.x, -firstTrailingBit(~1i), firstLeadingBit(u_input.b.x) >> (_wgslsmith_mult_u32(u_input.a, 12292u) % 32u), -23044i);
    global2 = array<vec3<i32>, 18>();
    return Struct_2(46463i, global3.c, abs(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global3.e.zzy), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e.x, global3.c.b.x, global3.e.x) - vec3<f32>(global3.e.x, 530f, global3.e.x)), global3.b.c, ~global3.c.d, _wgslsmith_f_op_f32(trunc(-1345f))), Struct_3(~vec2<i32>(-1i, 0i), global3.c, Struct_1(global3.b.a, global3.c.b, vec4<i32>(var_1.x, global3.d, u_input.b.x, 0i), vec4<u32>(global3.c.d.x, global3.b.d.x, global3.c.d.x, global3.c.d.x), global3.b.b.x), ~(-1i), _wgslsmith_f_op_vec4_f32(-global3.e))).b.d.ww), true, func_3(Struct_3(max(~u_input.b.yx, max(global3.c.c.wx, vec2<i32>(var_1.x, var_1.x))), func_2(func_2(global3.b, Struct_3(global3.b.c.xx, global3.c, Struct_1(global3.c.b, global3.c.a, global3.c.c, vec4<u32>(35691u, 4294967295u, 1u, u_input.a), 119f), global3.d, global3.e)).c, Struct_3(vec2<i32>(29659i, var_1.x), Struct_1(vec3<f32>(757f, global3.e.x, global3.c.b.x), global3.b.b, global3.c.c, global3.b.d, -1079f), Struct_1(global3.b.b, global3.b.b, vec4<i32>(u_input.b.x, u_input.b.x, 39664i, var_1.x), global3.c.d, global3.c.a.x), 2147483647i, global3.e)).c, global3.c, -2147483647i, global3.e), _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, ~23766u, global3.c.d.x, 1u), ~select(vec4<u32>(57661u, u_input.a, 0u, 1335u), vec4<u32>(21387u, 54428u, global3.c.d.x, 28205u), vec4<bool>(true, var_0, global1.x, global1.x))), global3.b.c.wyw));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> StorageBuffer {
    global2 = array<vec3<i32>, 18>();
    var var_0 = func_2(func_1().b, func_2(Struct_1(vec3<f32>(global3.b.e, arg_0.b.a.x, _wgslsmith_f_op_f32(select(618f, -135f, false))), arg_0.b.a, -_wgslsmith_div_vec4_i32(arg_0.b.c, arg_1), _wgslsmith_div_vec4_u32(global3.c.d | arg_0.b.d, ~arg_0.b.d), _wgslsmith_f_op_f32(global3.e.x * -1176f)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(global3.b.a, vec3<f32>(2306f, 1531f, arg_0.b.b.x))), arg_0.b.b, vec4<i32>(2147483647i, 222i, u_input.b.x, global3.b.c.x), global3.b.d, _wgslsmith_f_op_f32(global3.c.e * global3.c.e)), Struct_3(global3.a, Struct_1(vec3<f32>(824f, arg_0.b.e, -987f), global3.e.zxx, global3.b.c, vec4<u32>(global3.c.d.x, arg_2, global3.b.d.x, 87258u), 541f), arg_0.b, u_input.b.x, global3.e)))).c;
    var var_1 = false;
    global0 = vec4<bool>(true, !all(func_3(Struct_3(vec2<i32>(global3.a.x, -62377i), Struct_1(vec3<f32>(global3.e.x, 1665f, -1000f), vec3<f32>(arg_0.b.b.x, 153f, -467f), arg_1, vec4<u32>(40062u, arg_0.c.x, arg_2, 4294967295u), global3.c.a.x), arg_0.b, -2245i, vec4<f32>(var_0.a.x, arg_0.b.a.x, var_0.e, 2416f)), global3.c.d, ~vec3<i32>(global3.a.x, arg_1.x, 8390i)).zz), true, all(func_3(Struct_3(reverseBits(vec2<i32>(-11796i, 0i)), Struct_1(var_0.a, var_0.a, vec4<i32>(var_0.c.x, u_input.b.x, 1i, -17996i), var_0.d, 136f), func_1().b, global3.d, _wgslsmith_f_op_vec4_f32(step(global3.e, global3.e))), abs(_wgslsmith_add_vec4_u32(arg_0.b.d, vec4<u32>(1u, 28016u, 0u, 1u))), -_wgslsmith_mod_vec3_i32(u_input.b, global2[_wgslsmith_index_u32(arg_0.b.d.x, 18u)])).yxy));
    let var_2 = min(vec2<i32>(-1i) * -(vec2<i32>(-1i) * -arg_1.zz), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -arg_0.b.c.wx, _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_1.x), global3.a))));
    return StorageBuffer(select(-(~arg_0.b.c), _wgslsmith_clamp_vec4_i32(global3.c.c, min(arg_0.b.c, ~vec4<i32>(-29850i, 56860i, -17456i, 16987i)), _wgslsmith_mult_vec4_i32(vec4<i32>(3279i, u_input.b.x, global3.b.c.x, -1i), -var_0.c)), func_1().e.x), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.c.x, arg_0.a, -2750i, var_0.c.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, -68489i, global3.c.c.x), global3.c.c), arg_1), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(), global3.b.c, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(global3.c.d.x, 8446u), _wgslsmith_clamp_u32(global3.c.d.x | 1u, 80109u, ~1u)) | func_2(Struct_1(global3.c.a, _wgslsmith_f_op_vec3_f32(ceil(global3.c.b)), global3.b.c, global3.c.d, -1914f), Struct_3(~u_input.b.xz, Struct_1(vec3<f32>(global3.c.a.x, global3.c.e, -123f), vec3<f32>(global3.c.e, global3.c.a.x, -2192f), global3.b.c, global3.c.d, global3.e.x), Struct_1(vec3<f32>(global3.e.x, global3.b.e, -771f), vec3<f32>(-154f, -609f, -499f), global3.c.c, global3.b.d, global3.b.b.x), ~(-2147483647i), _wgslsmith_f_op_vec4_f32(global3.e - global3.e))).b.d.x);
}

