struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, true, false, true, true, true, false, false, false, false, false, true);

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: array<Struct_3, 5>;

var<private> global4: vec2<i32> = vec2<i32>(-44737i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec4<bool> {
    var var_0 = !all(!vec2<bool>(false | global1[_wgslsmith_index_u32(arg_0.a, 13u)], false != global1[_wgslsmith_index_u32(arg_1.c.x, 13u)]));
    let var_1 = _wgslsmith_sub_vec2_u32(arg_1.c, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.c.x, arg_1.c.x) | ~arg_0.b.c, vec2<u32>(min(0u, arg_1.c.x), ~arg_0.a)));
    global1 = array<bool, 13>();
    var var_2 = Struct_1(arg_1.d.a, select(select(vec4<bool>(true, true, all(arg_1.a.a.yxz), false & global1[_wgslsmith_index_u32(arg_1.c.x, 13u)]), !(!arg_0.d.a), true), vec4<bool>(~9439u <= ~arg_1.c.x, all(arg_1.a.a), _wgslsmith_f_op_f32(max(arg_1.a.c.x, -340f)) <= -637f, false), arg_0.b.a.c.x <= _wgslsmith_div_f32(arg_0.d.d.x, _wgslsmith_f_op_f32(abs(arg_0.b.b.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b.x, arg_0.b.d.c.x, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.d.d)))));
    global1 = array<bool, 13>();
    return !select(!(!vec4<bool>(var_2.b.x, false, global1[_wgslsmith_index_u32(134185u, 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)])), arg_0.b.d.b, false);
}

fn func_2() -> vec4<bool> {
    let var_0 = !any(vec3<bool>(!(!global1[_wgslsmith_index_u32(0u, 13u)]), true, any(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 13u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(24054u, 13u)])))));
    let var_1 = Struct_3(abs(~42843u), Struct_2(Struct_1(func_3(global3[_wgslsmith_index_u32(1u, 5u)], Struct_2(Struct_1(vec4<bool>(false, false, var_0, false), vec4<bool>(global1[_wgslsmith_index_u32(18585u, 13u)], true, false, var_0), global0.yxx, vec4<f32>(591f, global0.x, 1591f, -272f)), vec3<f32>(399f, global0.x, 1169f), vec2<u32>(67946u, 62514u), Struct_1(vec4<bool>(false, true, var_0, false), vec4<bool>(global1[_wgslsmith_index_u32(30277u, 13u)], false, global1[_wgslsmith_index_u32(4294967295u, 13u)], true), vec3<f32>(global0.x, 540f, global0.x), vec4<f32>(global0.x, 409f, global0.x, global0.x))), select(var_0, global1[_wgslsmith_index_u32(1u, 13u)], var_0), global1[_wgslsmith_index_u32(~1u, 13u)]), vec4<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], var_0), global0.yyx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-850f, global0.x, 772f, 488f))))), vec3<f32>(117f, _wgslsmith_f_op_f32(190f * 1f), _wgslsmith_f_op_f32(global0.x * -344f)), ~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(3588u, 8065u)), vec2<u32>(74679u, 0u)), Struct_1(select(select(vec4<bool>(var_0, var_0, global1[_wgslsmith_index_u32(1u, 13u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(23494u, 13u)], global1[_wgslsmith_index_u32(22639u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], var_0, true, var_0)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(118867u, 13u)], var_0), func_3(global3[_wgslsmith_index_u32(0u, 5u)], Struct_2(Struct_1(vec4<bool>(true, var_0, false, global1[_wgslsmith_index_u32(28586u, 13u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)], true, var_0), global0.zxy, vec4<f32>(global0.x, global0.x, global0.x, global0.x)), global0.zyy, vec2<u32>(1u, 82170u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(56441u, 13u)], false, global1[_wgslsmith_index_u32(17163u, 13u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, false, false), vec3<f32>(-300f, -236f, global0.x), vec4<f32>(598f, global0.x, 592f, 1825f))), global1[_wgslsmith_index_u32(0u, 13u)], true)), !func_3(Struct_3(44275u, Struct_2(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(40099u, 13u)], true, global1[_wgslsmith_index_u32(20973u, 13u)]), vec4<bool>(false, false, true, var_0), vec3<f32>(807f, global0.x, -264f), vec4<f32>(global0.x, -1406f, global0.x, -769f)), global0.xwz, vec2<u32>(15816u, 1u), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(24078u, 13u)], global1[_wgslsmith_index_u32(44801u, 13u)], true), vec4<bool>(true, var_0, false, var_0), vec3<f32>(-945f, global0.x, global0.x), vec4<f32>(global0.x, 1330f, global0.x, 562f))), false, Struct_1(vec4<bool>(false, true, var_0, var_0), vec4<bool>(true, var_0, true, false), vec3<f32>(global0.x, 2797f, -1511f), vec4<f32>(1824f, global0.x, -433f, 466f)), var_0), Struct_2(Struct_1(vec4<bool>(var_0, false, var_0, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], var_0, true, var_0), vec3<f32>(global0.x, 1690f, global0.x), vec4<f32>(-124f, 412f, global0.x, 1899f)), vec3<f32>(global0.x, 1245f, -1532f), vec2<u32>(9822u, 75175u), Struct_1(vec4<bool>(false, false, true, var_0), vec4<bool>(true, var_0, false, var_0), vec3<f32>(global0.x, global0.x, global0.x), vec4<f32>(613f, global0.x, 136f, global0.x))), global1[_wgslsmith_index_u32(47285u, 13u)], false), vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(step(275f, global0.x)), _wgslsmith_f_op_f32(global0.x + 749f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -699f, 1097f) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))), !(!var_0) && any(func_3(Struct_3(47754u, Struct_2(Struct_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(68630u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(5900u, 13u)], true, global1[_wgslsmith_index_u32(31721u, 13u)], false), global0.yyw, vec4<f32>(global0.x, 106f, global0.x, 1946f)), vec3<f32>(595f, global0.x, 437f), vec2<u32>(4294967295u, 0u), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(3607u, 13u)], false), vec3<f32>(global0.x, global0.x, -1850f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), global1[_wgslsmith_index_u32(6005u, 13u)], Struct_1(vec4<bool>(true, true, global1[_wgslsmith_index_u32(114698u, 13u)], true), vec4<bool>(true, false, true, false), vec3<f32>(-808f, global0.x, global0.x), vec4<f32>(global0.x, -944f, 909f, global0.x)), true), Struct_2(Struct_1(vec4<bool>(false, true, var_0, global1[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(var_0, var_0, false, global1[_wgslsmith_index_u32(4689u, 13u)]), global0.xwx, vec4<f32>(903f, global0.x, global0.x, 1000f)), global0.zwy, vec2<u32>(9467u, 4294967295u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(7349u, 13u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(4027u, 13u)], true, true, global1[_wgslsmith_index_u32(1u, 13u)]), vec3<f32>(global0.x, global0.x, global0.x), vec4<f32>(global0.x, 919f, 1661f, global0.x))), global4.x != 2147483647i, false).wzy), Struct_1(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(72817u, 13u)], var_0, true, global1[_wgslsmith_index_u32(4294967295u, 13u)]))), vec4<bool>(any(func_3(Struct_3(2706u, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], false, global1[_wgslsmith_index_u32(62694u, 13u)], var_0), vec4<bool>(global1[_wgslsmith_index_u32(2496u, 13u)], true, global1[_wgslsmith_index_u32(0u, 13u)], var_0), global0.xyw, vec4<f32>(774f, global0.x, global0.x, -1363f)), vec3<f32>(global0.x, 1958f, global0.x), vec2<u32>(4294967295u, 1u), Struct_1(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 13u)], false), vec3<f32>(global0.x, -758f, 1310f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), true, Struct_1(vec4<bool>(false, false, false, var_0), vec4<bool>(var_0, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], var_0), global0.yxx, vec4<f32>(-1706f, 353f, 1009f, global0.x)), global1[_wgslsmith_index_u32(16511u, 13u)]), Struct_2(Struct_1(vec4<bool>(var_0, global1[_wgslsmith_index_u32(1u, 13u)], true, var_0), vec4<bool>(true, false, global1[_wgslsmith_index_u32(106645u, 13u)], var_0), vec3<f32>(global0.x, global0.x, -2109f), vec4<f32>(-1433f, 638f, global0.x, global0.x)), global0.wzz, vec2<u32>(33282u, 4294967295u), Struct_1(vec4<bool>(false, false, var_0, global1[_wgslsmith_index_u32(17368u, 13u)]), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<f32>(218f, -1230f, global0.x), vec4<f32>(-645f, global0.x, global0.x, global0.x))), var_0, global1[_wgslsmith_index_u32(4294967295u, 13u)])), var_0, !(429f != global0.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 46040u, 17908u), 55983u), 13u)]), _wgslsmith_f_op_vec3_f32(-global0.ywx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1082f, global0.x, global0.x, -927f))))), vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x, _wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(sign(global0.x))))), true & any(select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false), vec2<bool>(true, true), func_3(Struct_3(98252u, Struct_2(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)], false, var_0), vec4<bool>(false, true, var_0, true), vec3<f32>(global0.x, 664f, global0.x), vec4<f32>(global0.x, global0.x, -1659f, global0.x)), global0.wxz, vec2<u32>(15142u, 49031u), Struct_1(vec4<bool>(var_0, false, true, false), vec4<bool>(true, false, false, false), global0.xxw, vec4<f32>(global0.x, global0.x, -648f, -240f))), true, Struct_1(vec4<bool>(false, false, true, var_0), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, var_0, global1[_wgslsmith_index_u32(4294967295u, 13u)]), global0.zzy, vec4<f32>(464f, 344f, global0.x, 708f)), var_0), Struct_2(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], true, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(69064u, 13u)], global1[_wgslsmith_index_u32(16309u, 13u)]), global0.zwz, vec4<f32>(-1098f, global0.x, global0.x, global0.x)), vec3<f32>(global0.x, -424f, global0.x), vec2<u32>(4294967295u, 1u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, var_0, var_0), vec4<bool>(global1[_wgslsmith_index_u32(20975u, 13u)], true, var_0, global1[_wgslsmith_index_u32(45241u, 13u)]), vec3<f32>(456f, 685f, global0.x), vec4<f32>(-716f, global0.x, -776f, global0.x))), true, true).x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d.d.x, 2456f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x)));
    var var_3 = Struct_2(Struct_1(vec4<bool>(any(vec3<bool>(true, false, var_1.b.a.b.x)), var_2 >= _wgslsmith_f_op_f32(-var_2), false, true), func_3(var_1, var_1.b, !(true != var_0), true), global0.xwz, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d.d - vec4<f32>(353f, -333f, -1185f, -1655f))), _wgslsmith_div_vec4_f32(var_1.b.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.x, 505f, var_1.b.a.c.x, 516f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-265f, _wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, _wgslsmith_f_op_f32(global0.x * var_1.d.d.x))), _wgslsmith_f_op_f32(ceil(-1182f))), var_1.b.c, Struct_1(vec4<bool>(any(!vec3<bool>(var_0, var_0, true)), all(vec4<bool>(global1[_wgslsmith_index_u32(var_1.a, 13u)], false, true, global1[_wgslsmith_index_u32(0u, 13u)])), any(select(var_1.d.a.xyy, vec3<bool>(var_0, false, false), var_0)), !all(vec3<bool>(false, false, var_1.c))), var_1.b.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.d.zyy + vec3<f32>(-515f, global0.x, -1709f)) * vec3<f32>(var_2, 969f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b.a.d, vec4<f32>(var_2, -120f, var_2, var_2))))));
    var var_4 = Struct_2(var_3.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f) + _wgslsmith_f_op_f32(trunc(-1640f))), global0.x, 958f), vec3<f32>(-2244f, -141f, _wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_div_vec2_u32(vec2<u32>(select(~var_3.c.x, ~1u, var_1.a >= var_1.a), 2292u), var_3.c), var_1.d);
    return vec4<bool>(var_4.a.b.x, var_1.c, true, !var_1.d.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    global1 = array<bool, 13>();
    global0 = vec4<f32>(-2662f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2613f)) - -1890f)), 396f), 525f);
    var var_0 = Struct_1(vec4<bool>(arg_2.c, (_wgslsmith_mod_u32(arg_2.a, arg_2.a) ^ _wgslsmith_mod_u32(30860u, arg_2.a)) > ~(66239u << (0u % 32u)), arg_2.e, false), func_3(Struct_3(~(~0u), arg_3, true, Struct_1(vec4<bool>(arg_3.a.a.x, false, true, global1[_wgslsmith_index_u32(arg_3.c.x, 13u)]), !vec4<bool>(true, arg_3.d.a.x, arg_0.b.x, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_2.b.d.c.x, arg_3.b.x)), arg_2.b.d.d), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.b.c.x, 0u), 13u)]), Struct_2(arg_0, vec3<f32>(1875f, _wgslsmith_f_op_f32(max(arg_3.a.c.x, arg_0.c.x)), arg_3.b.x), ~(~vec2<u32>(1683u, arg_2.b.c.x)), arg_0), func_2().x, !(1u != _wgslsmith_clamp_u32(53363u, arg_2.a, 0u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-978f))), 267f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-779f)), _wgslsmith_f_op_f32(-arg_2.b.d.d.x))))), vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f + arg_0.c.x))), _wgslsmith_f_op_f32(-arg_2.d.d.x), arg_3.d.d.x, -377f));
    var var_1 = Struct_3(arg_2.a, arg_2.b, func_2().x, arg_3.a, (abs(1i) > _wgslsmith_mod_i32(arg_1.x, abs(arg_1.x))) & arg_0.b.x);
    var var_2 = var_1.b.a;
    return arg_2.b;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    global2 = array<vec2<i32>, 7>();
    global3 = array<Struct_3, 5>();
    let var_0 = func_4(arg_1.d, vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -18988i), (arg_0.x | (global4.x & arg_0.x)) << (17538u % 32u), firstLeadingBit(-60448i), -1182i), global3[_wgslsmith_index_u32(~(49699u & ~_wgslsmith_dot_vec2_u32(arg_1.c, arg_1.c)), 5u)], func_4(Struct_1(vec4<bool>(func_2().x, any(vec3<bool>(true, global1[_wgslsmith_index_u32(26832u, 13u)], false)), true, false), !select(vec4<bool>(global1[_wgslsmith_index_u32(63482u, 13u)], false, arg_1.a.a.x, false), arg_1.d.a, true), _wgslsmith_f_op_vec3_f32(min(arg_1.d.c, arg_2.yzy)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1668f, arg_2.x, -488f, -1128f), vec4<f32>(-1267f, -1208f, arg_2.x, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1215f, global0.x, 370f, -1369f) - arg_1.a.d), false))), u_input.a, Struct_3(1u, func_4(func_4(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.c.x, 13u)], true, global1[_wgslsmith_index_u32(120794u, 13u)]), arg_1.d.a, arg_1.a.d.yxx, vec4<f32>(-1574f, -1089f, -127f, -773f)), vec4<i32>(-28302i, arg_0.x, -20379i, 0i), Struct_3(arg_1.c.x, arg_1, true, Struct_1(arg_1.d.b, vec4<bool>(true, false, global1[_wgslsmith_index_u32(88892u, 13u)], false), vec3<f32>(global0.x, 2184f, global0.x), arg_2), global1[_wgslsmith_index_u32(12199u, 13u)]), Struct_2(Struct_1(arg_1.d.b, arg_1.a.b, arg_2.wwz, vec4<f32>(arg_2.x, global0.x, arg_1.b.x, arg_2.x)), vec3<f32>(global0.x, 440f, -341f), arg_1.c, arg_1.a)).d, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, 2147483647i, -20116i), vec4<i32>(global4.x, global4.x, 24415i, arg_0.x)), Struct_3(arg_1.c.x, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.c.x, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], false, arg_1.a.a.x), arg_1.d.b, vec3<f32>(arg_2.x, -276f, 214f), arg_2), global0.yyz, vec2<u32>(arg_1.c.x, arg_1.c.x), arg_1.a), global1[_wgslsmith_index_u32(58076u, 13u)], arg_1.a, true), func_4(arg_1.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, arg_0.x), global3[_wgslsmith_index_u32(arg_1.c.x, 5u)], arg_1)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(93660u, 1u), 13u)], Struct_1(arg_1.d.b, arg_1.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 1000f, arg_2.x) * vec3<f32>(arg_2.x, 191f, arg_2.x)), arg_2), !global1[_wgslsmith_index_u32(~arg_1.c.x, 13u)]), arg_1)).a;
    var var_1 = 12036u;
    global4 = vec2<i32>(_wgslsmith_sub_i32(12267i, _wgslsmith_dot_vec3_i32(u_input.a.zwx ^ u_input.a.xwz, u_input.a.yzx) | _wgslsmith_dot_vec4_i32(countOneBits(u_input.a), vec4<i32>(0i, u_input.a.x, -26667i, 3341i))), _wgslsmith_dot_vec4_i32(-(min(vec4<i32>(0i, -38294i, -17056i, u_input.a.x), u_input.a) & countOneBits(u_input.a)), u_input.a));
    return Struct_3(6898u << (1u % 32u), Struct_2(func_4(func_4(func_4(arg_1.a, u_input.a, Struct_3(arg_1.c.x, Struct_2(arg_1.d, global0.zxy, vec2<u32>(0u, arg_1.c.x), Struct_1(var_0.b, var_0.a, vec3<f32>(global0.x, var_0.d.x, -417f), vec4<f32>(global0.x, -997f, global0.x, arg_2.x))), false, Struct_1(vec4<bool>(arg_1.d.a.x, true, global1[_wgslsmith_index_u32(71532u, 13u)], false), vec4<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(arg_1.c.x, 13u)], var_0.b.x), vec3<f32>(var_0.c.x, var_0.d.x, -1789f), arg_2), true), Struct_2(Struct_1(arg_1.d.b, var_0.a, vec3<f32>(var_0.d.x, arg_1.a.c.x, var_0.c.x), vec4<f32>(var_0.c.x, arg_1.d.d.x, 962f, arg_2.x)), vec3<f32>(var_0.c.x, var_0.c.x, 177f), vec2<u32>(arg_1.c.x, arg_1.c.x), arg_1.a)).d, vec4<i32>(-1i, global4.x, 36774i, 16207i), Struct_3(arg_1.c.x, Struct_2(var_0, vec3<f32>(746f, arg_1.a.d.x, arg_1.b.x), vec2<u32>(arg_1.c.x, 52975u), Struct_1(vec4<bool>(arg_1.d.b.x, false, var_0.b.x, false), vec4<bool>(arg_1.d.a.x, false, arg_1.a.b.x, false), global0.xwy, arg_1.d.d)), var_0.b.x, Struct_1(vec4<bool>(var_0.b.x, false, true, global1[_wgslsmith_index_u32(38179u, 13u)]), vec4<bool>(var_0.b.x, global1[_wgslsmith_index_u32(arg_1.c.x, 13u)], var_0.a.x, false), vec3<f32>(global0.x, -430f, var_0.c.x), var_0.d), var_0.a.x), Struct_2(arg_1.d, vec3<f32>(var_0.d.x, arg_1.b.x, global0.x), vec2<u32>(52708u, arg_1.c.x), Struct_1(var_0.b, vec4<bool>(false, false, true, arg_1.a.a.x), arg_2.zwz, vec4<f32>(var_0.d.x, global0.x, -1744f, var_0.d.x)))).a, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global4.x, 4467i, 37321i, global4.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a.x, 2147483647i, 2147483647i), u_input.a)), global3[_wgslsmith_index_u32(firstTrailingBit(60839u) << (~26207u % 32u), 5u)], Struct_2(Struct_1(arg_1.d.a, var_0.a, vec3<f32>(arg_2.x, var_0.d.x, 890f), arg_2), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(538f, arg_1.d.d.x, -1616f))), arg_1.c, var_0)).a, global0.wyy, vec2<u32>(44752u, arg_1.c.x), var_0), min(-16960i, -(~(-2147483647i))) > ~min(reverseBits(global4.x), -2147483647i), var_0, var_0.b.x);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(vec2<i32>(2147483647i, _wgslsmith_add_i32(u_input.a.x, -(~2147483647i))), func_4(Struct_1(!func_2(), select(func_3(Struct_3(49035u, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(34118u, 13u)], true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(29430u, 13u)], false), vec3<f32>(global0.x, global0.x, global0.x), vec4<f32>(1000f, global0.x, global0.x, 1146f)), vec3<f32>(-1087f, 955f, -2254f), vec2<u32>(4294967295u, 0u), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(23630u, 13u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), global0.zxw, vec4<f32>(362f, global0.x, global0.x, 630f))), global1[_wgslsmith_index_u32(1u, 13u)], Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], true, true), global0.yyy, vec4<f32>(-982f, global0.x, 688f, 521f)), global1[_wgslsmith_index_u32(0u, 13u)]), Struct_2(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(29382u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(7669u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]), global0.wwy, vec4<f32>(global0.x, 1186f, global0.x, global0.x)), global0.www, vec2<u32>(4294967295u, 3248u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, global1[_wgslsmith_index_u32(1u, 13u)], true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(63015u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false), global0.wyx, vec4<f32>(-583f, global0.x, 1346f, global0.x))), false, global1[_wgslsmith_index_u32(4294967295u, 13u)]), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(11171u, 13u)], global1[_wgslsmith_index_u32(30172u, 13u)]), vec4<bool>(true, false, true, true), global1[_wgslsmith_index_u32(76267u, 13u)]), true), global0.yxy, vec4<f32>(_wgslsmith_f_op_f32(select(-2275f, global0.x, false)), _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x)), abs(firstTrailingBit(~vec4<i32>(2147483647i, -2147483647i, 1i, global4.x))), Struct_3(min(65113u, ~4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(28157u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(21560u, 13u)], global1[_wgslsmith_index_u32(6169u, 13u)], true), vec3<f32>(-399f, 1438f, global0.x), vec4<f32>(-2110f, global0.x, global0.x, global0.x)), vec3<f32>(-180f, global0.x, global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(68538u, 0u), vec2<u32>(1058u, 43924u)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(27838u, 13u)], false, global1[_wgslsmith_index_u32(1u, 13u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(33707u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), global0.yyx, vec4<f32>(322f, 525f, global0.x, global0.x))), _wgslsmith_f_op_f32(-global0.x) > _wgslsmith_f_op_f32(global0.x + -488f), Struct_1(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 13u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(4970u, 13u)], false), global1[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 13u)], false), global0.zyw, _wgslsmith_f_op_vec4_f32(vec4<f32>(-283f, -1095f, -845f, 373f) - vec4<f32>(-252f, global0.x, -151f, global0.x))), true), Struct_2(Struct_1(func_2(), !vec4<bool>(true, global1[_wgslsmith_index_u32(42360u, 13u)], global1[_wgslsmith_index_u32(123366u, 13u)], true), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(716f, global0.x, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -540f, -1452f, global0.x) * vec4<f32>(global0.x, -446f, global0.x, 521f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2669f, 1450f, global0.x) + global0.wyy), vec3<f32>(-163f, 1194f, global0.x))), select(vec2<u32>(91246u, 76685u), vec2<u32>(1u, 1u), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)])) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 19120u), vec2<u32>(18721u, 52716u)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(15537u, 13u)], false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], true, global1[_wgslsmith_index_u32(67302u, 13u)], false), _wgslsmith_f_op_vec3_f32(-global0.zwz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -1190f, -155f, 1101f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, global0.x, global0.x, -965f))))));
    global4 = ~(~select(global2[_wgslsmith_index_u32(0u, 7u)], u_input.a.xw, vec2<bool>(true, any(var_0.b.d.b))));
    var var_1 = func_4(func_5(~u_input.a.zw & global2[_wgslsmith_index_u32(select(4294967295u, ~56401u, any(vec2<bool>(true, true))), 7u)], var_0.b, func_4(var_0.d, u_input.a, Struct_3(var_0.a, var_0.b, var_0.b.d.b.x, func_5(u_input.a.yw, Struct_2(var_0.b.d, vec3<f32>(-449f, -843f, -1000f), vec2<u32>(var_0.b.c.x, var_0.b.c.x), Struct_1(vec4<bool>(var_0.b.d.a.x, true, true, global1[_wgslsmith_index_u32(var_0.b.c.x, 13u)]), var_0.d.a, vec3<f32>(var_0.d.d.x, 1000f, -638f), var_0.d.d)), var_0.b.d.d).d, func_4(Struct_1(var_0.b.d.a, var_0.d.b, var_0.b.a.c, var_0.b.a.d), u_input.a, Struct_3(4294967295u, var_0.b, false, var_0.b.d, var_0.c), Struct_2(var_0.d, global0.xwx, var_0.b.c, var_0.b.a)).a.b.x), func_4(func_4(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false, var_0.d.b.x), vec4<bool>(var_0.d.a.x, false, false, false), vec3<f32>(-864f, var_0.b.b.x, var_0.b.a.c.x), vec4<f32>(var_0.b.a.c.x, var_0.b.b.x, 1000f, global0.x)), vec4<i32>(u_input.a.x, u_input.a.x, -31670i, global4.x), Struct_3(69765u, var_0.b, global1[_wgslsmith_index_u32(32341u, 13u)], Struct_1(var_0.d.a, vec4<bool>(global1[_wgslsmith_index_u32(20221u, 13u)], false, true, global1[_wgslsmith_index_u32(0u, 13u)]), var_0.b.a.d.yxx, var_0.b.a.d), var_0.c), Struct_2(var_0.b.a, var_0.d.c, vec2<u32>(var_0.b.c.x, 4294967295u), var_0.b.a)).a, ~u_input.a, func_5(vec2<i32>(15806i, -1i), var_0.b, var_0.b.a.d), var_0.b)).a.d).d, vec4<i32>(u_input.a.x, firstLeadingBit(-global4.x) & reverseBits(max(u_input.a.x, global4.x)), _wgslsmith_div_i32(28797i, 30022i), 21515i | _wgslsmith_add_i32(-2147483647i | global4.x, reverseBits(-1i))), global3[_wgslsmith_index_u32(var_0.a, 5u)], func_5(-min(max(global2[_wgslsmith_index_u32(70703u, 7u)], global2[_wgslsmith_index_u32(46744u, 7u)]), _wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(var_0.b.c.x, 7u)], vec2<i32>(u_input.a.x, 2268i))), func_5(countOneBits(-global2[_wgslsmith_index_u32(1u, 7u)]), Struct_2(Struct_1(var_0.d.a, var_0.b.a.a, var_0.b.d.c, var_0.d.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(1375f, -1507f, -825f) * vec3<f32>(var_0.d.d.x, var_0.d.d.x, var_0.b.b.x)), firstTrailingBit(var_0.b.c), func_4(var_0.d, u_input.a, global3[_wgslsmith_index_u32(0u, 5u)], var_0.b).a), _wgslsmith_f_op_vec4_f32(-var_0.b.a.d)).b, _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, func_4(var_0.d, vec4<i32>(global4.x, 20856i, global4.x, u_input.a.x), global3[_wgslsmith_index_u32(1u, 5u)], Struct_2(Struct_1(var_0.d.b, var_0.b.a.b, vec3<f32>(-562f, var_0.b.b.x, -1401f), vec4<f32>(var_0.b.a.d.x, 154f, -2070f, global0.x)), vec3<f32>(-740f, -1381f, var_0.b.b.x), vec2<u32>(var_0.b.c.x, 1u), var_0.b.a)).a.c.x, _wgslsmith_f_op_f32(max(615f, var_0.b.b.x)), _wgslsmith_f_op_f32(-global0.x)), vec4<f32>(_wgslsmith_f_op_f32(select(-1938f, 1000f, global1[_wgslsmith_index_u32(var_0.b.c.x, 13u)])), _wgslsmith_f_op_f32(1450f + global0.x), 1f, var_0.b.b.x))).b).a.a.x;
    global0 = vec4<f32>(-660f, var_0.b.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -346f), -950f);
    var var_2 = var_0.b;
    return func_5(~abs(-u_input.a.zy | global2[_wgslsmith_index_u32(abs(var_0.a), 7u)]), func_4(Struct_1(var_2.a.b, func_2(), _wgslsmith_f_op_vec3_f32(-var_2.d.d.wzy), var_0.d.d), u_input.a, global3[_wgslsmith_index_u32(var_0.b.c.x, 5u)], func_4(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, var_0.b.a.a.x), _wgslsmith_f_op_vec3_f32(step(var_2.a.c, vec3<f32>(var_2.d.c.x, -250f, 839f))), vec4<f32>(-306f, -191f, var_2.d.d.x, var_0.b.d.d.x)), vec4<i32>(0i, firstTrailingBit(global4.x), _wgslsmith_div_i32(u_input.a.x, -2147483647i), u_input.a.x), global3[_wgslsmith_index_u32(firstLeadingBit(~24208u), 5u)], var_0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, 1957f, var_0.b.b.x, var_0.d.d.x)), _wgslsmith_f_op_vec4_f32(step(var_2.a.d, var_0.d.d)))), _wgslsmith_f_op_vec4_f32(max(var_2.a.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.d.x, -2229f, var_0.d.d.x, -1299f) + _wgslsmith_f_op_vec4_f32(sign(var_0.d.d))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, firstTrailingBit(~0u)), firstLeadingBit(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1290u, 744u, 4294967295u, 43268u), vec4<u32>(87033u, 0u, 2846u, 0u))))), func_1(), global1[_wgslsmith_index_u32(abs(select(76483u >> (0u % 32u), _wgslsmith_add_u32(4690u, 58182u), global1[_wgslsmith_index_u32(1u, 13u)] & global1[_wgslsmith_index_u32(1u, 13u)])), 13u)] && true, func_5(vec2<i32>(global4.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-7471i, global4.x, 12321i)), _wgslsmith_mult_vec3_i32(vec3<i32>(16868i, -34348i, u_input.a.x), u_input.a.xww))), func_4(Struct_1(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(70887u, 13u)], global1[_wgslsmith_index_u32(91141u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(16470u, 13u)], true, global1[_wgslsmith_index_u32(7795u, 13u)], global1[_wgslsmith_index_u32(23898u, 13u)]), true), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], true, true), global0.ywz, vec4<f32>(-1079f, global0.x, -899f, global0.x)), ~u_input.a, func_5(vec2<i32>(u_input.a.x, 43080i) & vec2<i32>(-3989i, u_input.a.x), func_5(vec2<i32>(1i, global4.x), Struct_2(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(13119u, 13u)], global1[_wgslsmith_index_u32(66776u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(28051u, 13u)], true, true, global1[_wgslsmith_index_u32(460u, 13u)]), global0.wxz, vec4<f32>(-1000f, 1000f, -426f, global0.x)), global0.zzw, vec2<u32>(41977u, 39969u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(28241u, 13u)]), global0.zxz, vec4<f32>(1603f, global0.x, global0.x, global0.x))), vec4<f32>(-2204f, global0.x, global0.x, global0.x)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, global0.x, global0.x, global0.x))), func_4(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], true, true, true), global0.xwz, vec4<f32>(-940f, global0.x, -1301f, global0.x)), ~u_input.a, global3[_wgslsmith_index_u32(4294967295u, 5u)], Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(6505u, 13u)], global1[_wgslsmith_index_u32(39735u, 13u)], false), vec4<bool>(global1[_wgslsmith_index_u32(83779u, 13u)], true, false, false), vec3<f32>(global0.x, 1180f, 409f), vec4<f32>(-441f, global0.x, global0.x, global0.x)), vec3<f32>(-1109f, -1000f, global0.x), vec2<u32>(33134u, 60447u), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(5745u, 13u)], true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(40766u, 13u)], global1[_wgslsmith_index_u32(43789u, 13u)], true), vec3<f32>(global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, 1710f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(1122f * global0.x), _wgslsmith_f_op_f32(577f - -774f), _wgslsmith_f_op_f32(global0.x - global0.x)))).d, !any(vec3<bool>(global1[_wgslsmith_index_u32(abs(0u), 13u)], true, true)));
    var var_1 = var_0.c;
    let var_2 = var_0.b;
    var var_3 = _wgslsmith_mult_u32(func_5(vec2<i32>(-global4.x, global4.x) << ((var_2.c ^ ~var_2.c) % vec2<u32>(32u)), Struct_2(func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -9029i), vec2<i32>(u_input.a.x, global4.x)), var_0.b, _wgslsmith_div_vec4_f32(var_0.b.a.d, vec4<f32>(377f, var_2.d.d.x, 1000f, 568f))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.d.yyz) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, var_0.d.d.x) + vec3<f32>(global0.x, var_2.d.d.x, 1000f))), ~select(vec2<u32>(0u, 0u), vec2<u32>(var_0.b.c.x, var_0.b.c.x), var_0.d.b.yz), var_0.d), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(792f)), _wgslsmith_f_op_f32(min(391f, 420f)), _wgslsmith_f_op_f32(max(808f, global0.x)), var_0.d.c.x)))).b.c.x, var_2.c.x);
    let var_4 = var_0;
    var_1 = global1[_wgslsmith_index_u32(~var_0.a, 13u)];
    var var_5 = _wgslsmith_f_op_f32(min(var_2.d.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(var_2.c.x, 7u)], Struct_2(Struct_1(vec4<bool>(var_0.c, var_0.d.b.x, var_0.b.d.b.x, false), var_2.a.a, var_4.b.d.c, vec4<f32>(global0.x, global0.x, global0.x, var_0.b.d.d.x)), vec3<f32>(349f, -629f, var_0.b.d.d.x), var_2.c, Struct_1(var_4.b.a.b, vec4<bool>(true, false, global1[_wgslsmith_index_u32(63298u, 13u)], false), var_2.b, vec4<f32>(global0.x, 1262f, var_4.b.d.c.x, -260f))), var_2.d.d).b.a.d.x + _wgslsmith_div_f32(-1000f, 1250f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-19591i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_2.c.x), 7u)], vec2<i32>(global4.x, 5633i)) | (1i >> (var_0.a % 32u))));
}

