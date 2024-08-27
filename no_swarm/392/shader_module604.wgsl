struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(-7513i, Struct_2(Struct_1(vec2<i32>(2147483647i, -27227i), vec2<u32>(15195u, 21871u), vec3<f32>(-635f, 169f, -1066f), 29180i, vec4<bool>(true, true, true, true)), vec3<u32>(5964u, 4294967295u, 106071u), vec3<i32>(2147483647i, 1i, i32(-2147483648)), Struct_1(vec2<i32>(9631i, -7856i), vec2<u32>(4294967295u, 60089u), vec3<f32>(161f, -619f, 1000f), 18488i, vec4<bool>(false, true, false, true))), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec2<i32>(-20221i, -9391i), vec2<u32>(29946u, 4294967295u), vec3<f32>(-969f, -273f, 1567f), -1i, vec4<bool>(false, false, false, true)), vec3<u32>(53935u, 0u, 64243u), vec3<i32>(9395i, -12247i, -25093i), Struct_1(vec2<i32>(-32392i, -20139i), vec2<u32>(1u, 11721u), vec3<f32>(1441f, 1577f, 545f), 1i, vec4<bool>(false, false, true, true))), true), Struct_4(0i, Struct_2(Struct_1(vec2<i32>(76129i, -36009i), vec2<u32>(18815u, 0u), vec3<f32>(-603f, 662f, 995f), 12827i, vec4<bool>(false, false, true, true)), vec3<u32>(26736u, 0u, 34361u), vec3<i32>(2147483647i, i32(-2147483648), 7913i), Struct_1(vec2<i32>(-1i, -4096i), vec2<u32>(1u, 1u), vec3<f32>(-381f, 590f, 1055f), 24342i, vec4<bool>(true, false, false, true))), vec4<bool>(false, true, true, false), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<u32>(34652u, 47880u), vec3<f32>(-2396f, -1573f, 2937f), -42524i, vec4<bool>(false, true, false, false)), vec3<u32>(1u, 49602u, 4294967295u), vec3<i32>(20084i, -1325i, 1i), Struct_1(vec2<i32>(16164i, -1i), vec2<u32>(1u, 1u), vec3<f32>(1460f, -1883f, -1000f), 64239i, vec4<bool>(false, false, false, true))), false));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-21085i, 44691i), vec2<u32>(46425u, 11457u), vec3<f32>(-1217f, 456f, -633f), 1i, vec4<bool>(true, false, true, false));

var<private> global3: u32;

var<private> global4: vec4<i32> = vec4<i32>(-28417i, 69189i, -27090i, 18663i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec4<u32> {
    return ~vec4<u32>(9734u, ~(~global2.b.x), global2.b.x, 1u);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_3(arg_0.d.d, arg_0.b, Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-1i) * -2147483647i), ~vec2<u32>(arg_0.d.b.x, 52429u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b.d.c.x, arg_0.d.d.c.x, -858f)))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-23625i, global2.a.x), -u_input.c.x), vec4<bool>(global1.x | true, false, true, !arg_0.c.x)), arg_0.b.b, _wgslsmith_add_vec3_i32(-global4.wzy, _wgslsmith_mod_vec3_i32(global4.yyz | global4.xwx, -vec3<i32>(1i, arg_0.b.c.x, 0i))), Struct_1(vec2<i32>(i32(-1i) * -13950i, u_input.c.x), ~(~vec2<u32>(global2.b.x, arg_0.b.d.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.d.c), vec3<f32>(-198f, -1257f, -543f)), arg_0.b.a.d, !vec4<bool>(true, false, global1.x, false))));
    global2 = arg_0.d.a;
    var var_1 = global1.x;
    let var_2 = Struct_4(select(u_input.c.x, u_input.a, any(!vec3<bool>(false, true, var_0.a.e.x))), var_0.b, global2.e, arg_0.d, global1.x);
    var var_3 = max(~var_2.b.a.a, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-(~var_0.b.d.a), vec2<i32>(~(-2147483647i), -14667i)), -var_0.b.d.a));
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-14802i, _wgslsmith_add_i32(u_input.a, ~0i), abs(52281i)), -55205i);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> vec2<f32> {
    var var_0 = firstTrailingBit(1u | arg_1);
    global1 = global2.e.yzz;
    global1 = !global2.e.yww;
    var var_1 = vec2<i32>(_wgslsmith_div_i32(21297i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global2.a.x, 0i), arg_2.x)), _wgslsmith_clamp_i32(-global2.a.x, func_3(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(61769u, global2.b.x), 2u)]), 0i));
    global1 = vec3<bool>(!global1.x, (!(!global2.e.x) || (!global2.e.x || any(vec2<bool>(true, global2.e.x)))) & true, !global2.e.x);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c.zy * global2.c.xy)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, -350f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1352f, global2.c.x))))), all(vec2<bool>(false, true)) != false)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.c.zz)))), global2.c.zy, global2.e.xx));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    global3 = 0u;
    return Struct_1(firstLeadingBit(u_input.c), select(u_input.b, vec2<u32>(firstLeadingBit(4294967295u), ~u_input.b.x), true), vec3<f32>(-556f, 468f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(217f + 460f), arg_0.x) * arg_0.x)), -45105i, vec4<bool>(global2.e.x, true, !(!global1.x), true));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(-1001f, _wgslsmith_f_op_f32(979f - global2.c.x), any(!arg_0.c.d.e.xwy))))));
    let var_1 = Struct_1(vec2<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(global2.a >> (global2.b % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(global4.yx, vec2<i32>(37442i, global2.d)))) | vec2<i32>(global2.a.x, global4.x), ~global2.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), -936f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(688f * -1000f) + _wgslsmith_f_op_f32(-arg_0.c.a.c.x))))), -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global4.x, arg_0.c.d.d, -9809i, u_input.c.x)), vec4<i32>(1i, u_input.c.x, 0i, 1i) >> (func_1() % vec4<u32>(32u))), global2.e);
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global4.x, u_input.b.x, vec4<i32>(global4.x, 0i, -2147483647i, -1i)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_div_f32(554f, arg_0.c.d.c.x))))), arg_0.c, Struct_2(var_1, ~(~arg_0.b.b), max(vec3<i32>(~0i, func_3(Struct_4(var_1.a.x, arg_0.b, global2.e, arg_0.b, global1.x)), global2.d), min(global4.wzw, global4.xzw) | vec3<i32>(arg_0.a.d, var_1.d, arg_0.a.d)), func_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(-133f)), 826f))));
    global0 = array<Struct_4, 2>();
    global4 = vec4<i32>(~global2.d, min(~(~_wgslsmith_add_i32(var_2.b.a.a.x, global4.x)), abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, 57927i), global4.ww), reverseBits(26549i)))), global4.x, u_input.c.x);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), ~(~vec4<u32>(1u, 0u, u_input.b.x, 1u) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, global2.b.x, 82839u)) ^ ~vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), global2.b.x, 12067u, u_input.b.x), global2.e.x);
    var var_1 = func_5(Struct_3(func_4(_wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(global4.x), u_input.b.x, ~vec4<i32>(global2.d, global2.d, u_input.c.x, 1i)))), Struct_2(Struct_1(min(vec2<i32>(global2.a.x, global2.a.x), vec2<i32>(global2.d, -2147483647i)), ~vec2<u32>(u_input.b.x, global2.b.x), vec3<f32>(1224f, 716f, -1443f), ~global2.a.x, vec4<bool>(false, global2.e.x, global2.e.x, global2.e.x)), var_0.zww, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, 31303i), ~vec3<i32>(-45914i, global4.x, u_input.a)), func_4(global2.c.zz)), Struct_2(Struct_1(global2.a, ~u_input.b, global2.c, -global4.x, vec4<bool>(global1.x, global2.e.x, global2.e.x, global1.x)), vec3<u32>(~u_input.b.x, 1u, ~1u), countOneBits(vec3<i32>(global2.d, global4.x, global2.d)), Struct_1(u_input.c, ~u_input.b, vec3<f32>(global2.c.x, global2.c.x, global2.c.x), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(global2.d, -1i)), vec4<bool>(global1.x, global1.x, global1.x, global2.e.x)))), global2.e.x, any(global2.e));
    global4 = vec4<i32>(~firstLeadingBit(reverseBits(1i)) << (var_1.b.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(func_4(global2.c.zx).a.x, -78570i), vec2<i32>(-28828i, var_1.c.x)), countOneBits(_wgslsmith_div_vec2_i32(-vec2<i32>(global2.d, 0i), u_input.c))), u_input.a, _wgslsmith_mod_i32(global4.x, -_wgslsmith_mult_i32(global4.x, global2.d)) ^ countOneBits(~func_3(global0[_wgslsmith_index_u32(35521u, 2u)])));
    var var_2 = Struct_3(func_4(var_1.a.c.xy), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(-global4.zx, vec2<i32>(global2.a.x, var_1.c.x) & var_1.d.a), ~_wgslsmith_sub_vec2_u32(var_1.a.b, vec2<u32>(6482u, 24105u)), vec3<f32>(var_1.a.c.x, -180f, 1529f), _wgslsmith_add_i32(_wgslsmith_add_i32(global2.a.x, u_input.a), -global4.x), !var_1.d.e), _wgslsmith_mult_vec3_u32(var_1.b, ~var_1.b), global4.wyx, func_5(Struct_3(Struct_1(u_input.c, vec2<u32>(var_0.x, 3981u), global2.c, global2.d, vec4<bool>(global2.e.x, global2.e.x, var_1.d.e.x, true)), Struct_2(Struct_1(vec2<i32>(4421i, var_1.a.a.x), vec2<u32>(global2.b.x, 18659u), vec3<f32>(var_1.d.c.x, global2.c.x, 116f), global2.d, vec4<bool>(var_1.d.e.x, true, global1.x, var_1.d.e.x)), var_1.b, global4.yww, var_1.a), Struct_2(var_1.a, var_0.wyz, var_1.c, Struct_1(vec2<i32>(-1i, 0i), vec2<u32>(global2.b.x, 4294967295u), vec3<f32>(global2.c.x, var_1.a.c.x, -235f), 0i, vec4<bool>(true, true, global2.e.x, var_1.d.e.x)))), !(!global2.e.x), any(vec4<bool>(true, global2.e.x, global2.e.x, global1.x))).d), Struct_2(func_5(Struct_3(var_1.a, func_5(Struct_3(var_1.a, Struct_2(Struct_1(vec2<i32>(global4.x, global2.d), var_0.wy, global2.c, 6099i, vec4<bool>(true, false, global1.x, true)), vec3<u32>(4294967295u, 0u, var_1.a.b.x), vec3<i32>(u_input.c.x, var_1.c.x, 1i), var_1.d), Struct_2(var_1.a, var_1.b, vec3<i32>(u_input.a, var_1.c.x, var_1.c.x), var_1.a)), true, false), func_5(Struct_3(Struct_1(vec2<i32>(-2147483647i, 822i), vec2<u32>(global2.b.x, 1u), vec3<f32>(var_1.a.c.x, 1049f, 1202f), -7014i, var_1.d.e), Struct_2(var_1.a, vec3<u32>(var_0.x, 4294967295u, 108781u), vec3<i32>(u_input.a, global4.x, global2.a.x), var_1.d), Struct_2(var_1.d, vec3<u32>(var_0.x, global2.b.x, 33356u), global4.xwx, Struct_1(vec2<i32>(u_input.c.x, var_1.a.d), vec2<u32>(4294967295u, u_input.b.x), vec3<f32>(-127f, var_1.a.c.x, var_1.a.c.x), 1i, vec4<bool>(global1.x, true, global2.e.x, true)))), true, false)), any(global2.e.wzx) & any(vec3<bool>(false, false, global2.e.x)), global1.x).d, vec3<u32>(2477u, ~countOneBits(4294967295u), 75101u), var_1.c, func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, 1087f)), _wgslsmith_f_op_vec2_f32(-global2.c.yz), true)))));
    let var_3 = vec2<bool>(any(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_2.b.d.a.x, 0u, vec4<i32>(global2.a.x, -2147483647i, var_1.c.x, -1i))))).e), any(vec2<bool>(!any(vec3<bool>(global1.x, false, false)), !(-85353i == global4.x))));
    let var_4 = Struct_4(9743i, func_5(Struct_3(func_4(var_2.b.d.c.zz), var_2.b, Struct_2(Struct_1(vec2<i32>(-1i, var_1.c.x), var_2.b.d.b, vec3<f32>(-994f, var_1.a.c.x, var_1.a.c.x), u_input.a, global2.e), _wgslsmith_mult_vec3_u32(var_1.b, vec3<u32>(10175u, 1u, 4294967295u)), firstTrailingBit(vec3<i32>(var_2.c.c.x, global2.d, -15560i)), Struct_1(vec2<i32>(1i, var_2.a.a.x), vec2<u32>(var_1.b.x, 74510u), vec3<f32>(-868f, var_2.a.c.x, var_2.a.c.x), 44624i, var_2.c.a.e))), select(any(func_4(var_1.d.c.zz).e.xz), true, true), global2.e.x), vec4<bool>(!var_1.d.e.x, true, global2.e.x, !(!global1.x)), Struct_2(var_1.a, vec3<u32>(~var_1.a.b.x, _wgslsmith_add_u32(0u, var_1.a.b.x) ^ func_5(Struct_3(Struct_1(vec2<i32>(var_2.a.d, var_2.a.a.x), var_1.d.b, var_1.a.c, u_input.a, vec4<bool>(global1.x, true, var_1.d.e.x, false)), Struct_2(Struct_1(var_2.c.d.a, vec2<u32>(47311u, 50063u), var_2.b.d.c, 1i, global2.e), var_0.yzx, global4.xyw, var_2.c.d), var_2.b), false, global1.x).d.b.x, _wgslsmith_mult_u32(1u, 42591u)), vec3<i32>(max(1i, 1i), countOneBits(var_2.c.c.x), -53170i), var_1.d), all(vec4<bool>(!all(var_1.a.e.yyx), true, var_3.x, _wgslsmith_dot_vec3_u32(var_0.yxx, vec3<u32>(u_input.b.x, 17487u, u_input.b.x)) < 53369u)));
    var var_5 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_1.b.xy & vec2<u32>(0u, var_0.x), select(var_4.d.a.b, vec2<u32>(var_2.b.d.b.x, 4294967295u), vec2<bool>(global2.e.x, var_3.x))), vec2<u32>(abs(func_1().x), 0u)), 2u)];
    var_2 = Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~40756i, -1i), var_1.d.a), vec2<u32>(var_4.d.b.x, _wgslsmith_mod_u32(var_0.x & var_1.b.x, var_5.b.b.x << (var_1.d.b.x % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(598f, 1590f, var_2.b.a.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.x, var_2.b.a.c.x, -1036f)), func_5(Struct_3(Struct_1(global2.a, global2.b, var_1.d.c, var_5.d.c.x, vec4<bool>(false, false, var_5.e, var_3.x)), Struct_2(Struct_1(vec2<i32>(var_5.a, global2.a.x), vec2<u32>(var_0.x, 4294967295u), vec3<f32>(var_1.a.c.x, 1141f, -1195f), global2.a.x, var_5.d.a.e), var_5.d.b, var_2.c.c, var_1.d), Struct_2(Struct_1(vec2<i32>(global2.a.x, -1i), var_1.b.zx, vec3<f32>(global2.c.x, 948f, -358f), -1i, global2.e), vec3<u32>(var_5.d.d.b.x, var_0.x, var_4.d.d.b.x), var_4.d.c, var_1.a)), var_3.x, true).a.e.ywx)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1701f, var_1.a.c.x, -1817f))))), abs(-_wgslsmith_mult_i32(-27392i, u_input.c.x)), !var_4.d.d.e), Struct_2(func_5(Struct_3(var_5.b.d, func_5(Struct_3(var_5.b.a, Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), var_0.zx, vec3<f32>(var_4.b.a.c.x, var_5.d.d.c.x, var_2.c.a.c.x), -2147483647i, var_4.d.d.e), vec3<u32>(1u, u_input.b.x, var_1.a.b.x), var_1.c, Struct_1(vec2<i32>(42917i, global2.d), vec2<u32>(1u, global2.b.x), vec3<f32>(global2.c.x, var_1.a.c.x, var_5.d.d.c.x), var_1.d.a.x, var_2.c.a.e)), Struct_2(Struct_1(var_5.b.d.a, vec2<u32>(var_2.c.a.b.x, 1u), var_1.a.c, -56753i, var_1.d.e), vec3<u32>(4294967295u, var_0.x, global2.b.x), vec3<i32>(global4.x, -1i, 2147483647i), var_5.d.a)), true, false), var_2.b), true, global1.x).a, vec3<u32>(abs(u_input.b.x), _wgslsmith_div_u32(~global2.b.x, global2.b.x), _wgslsmith_sub_u32(var_0.x, 1u)), _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(1i), ~var_5.a, -var_2.a.a.x), -_wgslsmith_div_vec3_i32(vec3<i32>(global4.x, 27388i, global4.x), var_5.d.c)), Struct_1(~(~vec2<i32>(global4.x, global2.d)), vec2<u32>(4294967295u, 30408u), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(global2.d, 0u, vec4<i32>(var_4.a, var_1.d.d, -1i, 2147483647i))).x, _wgslsmith_f_op_f32(sign(var_2.c.d.c.x)), _wgslsmith_f_op_f32(-1217f - -1629f)), -12724i, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1456f, var_1.a.c.x) - var_1.d.c.yx)).e)), func_5(Struct_3(Struct_1(~vec2<i32>(-2147483647i, -1i), _wgslsmith_add_vec2_u32(var_2.a.b, var_1.d.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.c.x, -668f, -1000f) * vec3<f32>(-245f, -828f, global2.c.x)), _wgslsmith_mult_i32(1i, var_5.d.c.x), var_1.a.e), Struct_2(var_2.a, vec3<u32>(var_1.a.b.x, global2.b.x, 119344u), var_4.d.c, Struct_1(var_5.b.a.a, var_1.d.b, vec3<f32>(var_1.a.c.x, 168f, var_1.a.c.x), global2.a.x, var_2.b.d.e)), var_4.b), !var_1.a.e.x, var_3.x));
    let var_6 = firstLeadingBit(abs(countOneBits(~vec4<u32>(10201u, 42253u, 0u, global2.b.x)))) | _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~func_1(), reverseBits(~vec4<u32>(0u, 49690u, 1u, var_4.d.a.b.x))), ~abs(~vec4<u32>(var_5.d.a.b.x, 14716u, 0u, var_5.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(select(vec4<i32>(global4.x, var_2.b.a.a.x, var_2.a.d, 3994i), vec4<i32>(-29739i, 1i, -2147483647i, var_4.d.d.d), vec4<bool>(false, true, var_3.x, true)) | vec4<i32>(-14695i, var_2.a.a.x, var_4.b.d.d, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_5.b.a.c.x)))), 1667f) + 1000f), var_2.c.a.c, countOneBits(~vec4<i32>(0i, reverseBits(-2147483647i), 9617i >> (0u % 32u), 1i)), _wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(528f, _wgslsmith_f_op_f32(-var_1.d.c.x)))))));
}

