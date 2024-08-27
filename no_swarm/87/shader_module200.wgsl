struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false));

var<private> global3: vec3<i32>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), -13657i), Struct_1(vec2<bool>(false, false), -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1 - arg_1)));
    global0 = true;
    global0 = select(select(any(select(select(vec3<bool>(global4.b.a.x, true, false), vec3<bool>(global4.a.a.x, true, global4.a.a.x), vec3<bool>(false, global4.b.a.x, true)), select(vec3<bool>(global4.b.a.x, true, global4.b.a.x), vec3<bool>(false, global4.b.a.x, false), vec3<bool>(global4.a.a.x, global4.b.a.x, global4.b.a.x)), vec3<bool>(global4.b.a.x, global4.b.a.x, global4.b.a.x))), !(global4.a.a.x & (false || global4.a.a.x)), false), global4.b.a.x, all(vec3<bool>(global4.a.a.x, true, global4.b.a.x)));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-global3.x, -2147483647i), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.a, ~vec4<i32>(0i, global3.x, 1i, u_input.b)), -vec4<i32>(0i, 2147483647i, -25898i, 15737i)));
    global2 = array<vec4<bool>, 28>();
    return ~u_input.b;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global1 = array<vec4<f32>, 28>();
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yw, global3.yx), _wgslsmith_mult_vec2_i32(global3.xy, firstLeadingBit(vec2<i32>(arg_0, -26005i)))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.a.b, u_input.a.x), ~3656i), func_3(_wgslsmith_f_op_f32(f32(-1f) * -2533f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-850f, -478f, 1020f) + vec3<f32>(383f, 2493f, 1000f)), 1593f, vec4<u32>(12466u, 64285u, 1u, 22045u))), reverseBits(~u_input.a.xz)), vec2<i32>(arg_0, _wgslsmith_mult_i32(global3.x, _wgslsmith_sub_i32(-2147483647i, ~global4.a.b))));
    var var_1 = Struct_2(Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.b.a.x), global4.b.a, global4.a.a), arg_1.a.a.x), !(!arg_1.b.a), !global4.b.a), 9472i), Struct_1(vec2<bool>(any(global2[_wgslsmith_index_u32(select(53720u, 11417u, true), 28u)]), arg_1.b.a.x), 13730i));
    global0 = true;
    var var_2 = vec3<i32>(1i, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.b, -1i), firstLeadingBit(u_input.a.zx) ^ countOneBits(vec2<i32>(var_0.x, u_input.b))) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(16410u, 4616u)) % 32u));
    return Struct_4(global1[_wgslsmith_index_u32(min(~_wgslsmith_mod_u32(~0u, select(33595u, 9126u, arg_2)), ~(~(~43613u))), 28u)], _wgslsmith_mult_i32(-(~global3.x), select(global4.b.b, -1i, any(global2[_wgslsmith_index_u32(1u, 28u)])) >> (4294967295u % 32u)), global4.a.a, _wgslsmith_f_op_f32(-2100f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-742f)))), -1003f)), Struct_3(any(select(select(vec2<bool>(false, arg_1.b.a.x), arg_1.b.a, vec2<bool>(false, global4.b.a.x)), vec2<bool>(false, true), vec2<bool>(global4.b.a.x, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_2(global4.a, global4.a);
    var var_1 = 0u;
    let var_2 = -u_input.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.a.yxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_2.a.wyy))))));
    let var_4 = func_2(_wgslsmith_dot_vec2_i32(~global3.yy, abs(-(~u_input.a.wx))), Struct_2(var_0.b, Struct_1(!arg_3.c, max(-u_input.a.x, -1i))), arg_1.e.a).e;
    return arg_1.b;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(52133u, 28u)]), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(23749u, 28u)] * vec4<f32>(518f, -632f, 1679f, -574f))))), -(u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 35609u), vec2<u32>(0u, 1u)) % 32u)) ^ -func_4(vec3<bool>(false, global4.a.a.x, global4.b.a.x), Struct_4(global1[_wgslsmith_index_u32(10417u, 28u)], 93472i, vec2<bool>(true, global4.b.a.x), 396f, Struct_3(true)), func_2(-1i, Struct_2(global4.a, arg_0), true), Struct_4(vec4<f32>(1000f, -1539f, 1637f, 646f), arg_0.b, arg_0.a, -180f, Struct_3(false))), arg_0.a, _wgslsmith_f_op_f32(-245f * _wgslsmith_f_op_f32(min(-302f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -617f)))))), func_2(u_input.a.x, Struct_2(Struct_1(vec2<bool>(false, true), firstLeadingBit(u_input.a.x)), global4.a), select(false, true, !(global4.b.a.x | true))).e);
    return abs(~32060u);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> f32 {
    global1 = array<vec4<f32>, 28>();
    var var_0 = func_2(reverseBits(~arg_1.a.b), arg_1, false);
    global4 = Struct_2(arg_1.a, Struct_1(vec2<bool>(any(vec2<bool>(arg_1.b.a.x, true)), true), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), global3.xz), vec2<i32>(global3.x, 0i)) ^ -16300i));
    global4 = arg_1;
    let var_1 = var_0.e;
    return -1167f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(4294967295u | (func_1(Struct_1(vec2<bool>(true, false), global4.b.b)) >> (_wgslsmith_mod_u32(~58291u, 19721u) % 32u)), Struct_2(Struct_1(global4.b.a, func_3(-1547f, _wgslsmith_f_op_vec3_f32(vec3<f32>(257f, 641f, -134f) * vec3<f32>(997f, 2558f, 1147f)), _wgslsmith_f_op_f32(max(1000f, -180f)), abs(vec4<u32>(1u, 23915u, 25206u, 4294967295u)))), global4.b)));
    global0 = !any(global4.a.a);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(1u, Struct_2(global4.b, global4.b))))));
    let var_2 = !(1000f < var_1);
    let var_3 = func_2(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), Struct_2(global4.b, global4.b), !(!(!var_2)));
    let var_4 = func_2(1i, Struct_2(Struct_1(vec2<bool>(false | global4.a.a.x, all(vec3<bool>(var_2, var_3.e.a, global4.a.a.x))), -27971i), Struct_1(vec2<bool>(var_3.c.x & var_3.e.a, var_2), _wgslsmith_add_i32(func_3(var_3.a.x, var_3.a.zxy, -343f, vec4<u32>(6038u, 19308u, 44437u, 1u)), abs(0i)))), (33223i & _wgslsmith_dot_vec2_i32(global3.yy, vec2<i32>(global3.x, -12574i) | global3.xx)) > ~2147483647i);
    var var_5 = func_2(_wgslsmith_add_i32(func_4(vec3<bool>(var_2, true, true), var_3, func_2(var_3.b >> (1u % 32u), Struct_2(global4.b, global4.a), !var_4.e.a), Struct_4(vec4<f32>(1641f, -695f, var_1, var_3.a.x), 16573i, vec2<bool>(false, var_3.c.x), _wgslsmith_f_op_f32(abs(183f)), func_2(-2147483647i, Struct_2(global4.b, Struct_1(vec2<bool>(true, global4.b.a.x), 1i)), var_2).e)), 1i), Struct_2(Struct_1(global4.a.a, func_3(_wgslsmith_f_op_f32(round(var_4.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-973f, var_3.d, var_3.a.x), var_4.a.zwz, false)), var_4.d, ~vec4<u32>(1651u, 4294967295u, 53941u, 9937u))), global4.a), !(!((global4.b.a.x == true) || var_3.e.a))).e;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

