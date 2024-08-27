struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<u32>(0u, 24699u), vec4<i32>(39077i, -11135i, i32(-2147483648), -43684i), vec4<f32>(-875f, -1229f, -1196f, 315f), false), Struct_1(vec2<i32>(-13708i, -1i), vec2<u32>(32324u, 4294967295u), vec4<i32>(4753i, i32(-2147483648), i32(-2147483648), -1i), vec4<f32>(2063f, 1000f, 961f, -181f), true), Struct_1(vec2<i32>(-44566i, 20918i), vec2<u32>(51314u, 4294967295u), vec4<i32>(-4636i, -51460i, 0i, 18806i), vec4<f32>(1562f, -567f, 131f, 501f), false), Struct_1(vec2<i32>(34449i, 2147483647i), vec2<u32>(4294967295u, 1u), vec4<i32>(0i, -1i, -28528i, -1i), vec4<f32>(-608f, 785f, -1000f, -786f), false), Struct_1(vec2<i32>(-44454i, -3914i), vec2<u32>(52096u, 43484u), vec4<i32>(i32(-2147483648), 1i, -51985i, 85988i), vec4<f32>(138f, 974f, 1000f, 1597f), false), Struct_1(vec2<i32>(-9062i, 2147483647i), vec2<u32>(4294967295u, 0u), vec4<i32>(i32(-2147483648), 33175i, 17799i, 2147483647i), vec4<f32>(-894f, -1403f, 399f, 1000f), false), Struct_1(vec2<i32>(-29515i, -2012i), vec2<u32>(27525u, 30003u), vec4<i32>(2147483647i, 2147483647i, 8241i, 0i), vec4<f32>(276f, 1290f, -1199f, 613f), false), Struct_1(vec2<i32>(2147483647i, -1i), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(0i, 2147483647i, 42868i, 3705i), vec4<f32>(-1000f, 653f, 662f, 2416f), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(26502u, 4294967295u), vec4<i32>(1i, -640i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-140f, 1220f, 957f, 1307f), true), Struct_1(vec2<i32>(54842i, i32(-2147483648)), vec2<u32>(0u, 6880u), vec4<i32>(24282i, 12456i, 60565i, 1i), vec4<f32>(604f, 945f, -1000f, -104f), false), Struct_1(vec2<i32>(36245i, 0i), vec2<u32>(34670u, 88842u), vec4<i32>(2147483647i, i32(-2147483648), -24124i, 1i), vec4<f32>(443f, -628f, 1468f, 218f), false), Struct_1(vec2<i32>(-7948i, 1i), vec2<u32>(102816u, 44211u), vec4<i32>(30302i, -25243i, 2147483647i, 16083i), vec4<f32>(-670f, -266f, -1260f, 655f), false));

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 24> = array<f32, 24>(-740f, -896f, -148f, -112f, -409f, 356f, -1166f, 1000f, -215f, -411f, -611f, 1000f, 1264f, 399f, -891f, 805f, -1521f, 773f, 286f, -755f, -214f, -220f, -185f, 1475f);

var<private> global4: Struct_1 = Struct_1(vec2<i32>(3743i, -51488i), vec2<u32>(0u, 4294967295u), vec4<i32>(-29858i, -16256i, 12761i, 3050i), vec4<f32>(725f, -424f, -416f, -766f), false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(global4.a, abs(vec2<i32>(-5701i, -899i)));
    global3 = array<f32, 24>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.b.x, ~firstLeadingBit(0u), global4.b.x & _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(0u, global4.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(global4.b.x, global4.b.x), global4.b))), 12u)];
    var var_2 = firstTrailingBit(~max(~7988i >> (var_1.b.x % 32u), _wgslsmith_mod_i32(1i, -2147483647i)));
    let var_3 = var_1.d.x;
    return vec4<bool>(arg_1.x, true, true, all(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global4 = arg_1;
    global4 = Struct_1(arg_2.a, ~global4.b, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global4.c, arg_1.c), vec4<i32>(global2.x, 20326i | (arg_1.a.x | arg_2.a.x), -2147483647i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_2.d.x, arg_3, -1516f)), global4.d, func_3(arg_1.b.x >= 0u, !arg_0, _wgslsmith_f_op_vec2_f32(round(arg_1.d.yx))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.d.x))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(846f))), global3[_wgslsmith_index_u32(firstLeadingBit(global4.b.x), 24u)])), !all(arg_0));
    var var_0 = Struct_1(arg_1.c.wz, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_2.b.x), firstLeadingBit(vec2<u32>(arg_1.b.x, 1u)))), arg_2.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.d))), false);
    var_0 = Struct_1(select(_wgslsmith_mod_vec2_i32(arg_1.c.ww, -vec2<i32>(var_0.c.x, -19440i)), arg_1.c.yw, select(func_3(var_0.e, arg_0, global4.d.wx).yw, !arg_0, vec2<bool>(true, arg_1.e))) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(32u, 4294967295u), vec2<u32>(var_0.b.x, 1010u)) << (~vec2<u32>(arg_2.b.x, 17130u) % vec2<u32>(32u)), arg_2.b) % vec2<u32>(32u)), arg_2.b, select(vec4<i32>(arg_2.c.x, ~_wgslsmith_mult_i32(0i, global4.a.x), arg_1.c.x, ~(-15306i)), vec4<i32>(global2.x, _wgslsmith_dot_vec2_i32(global4.a, u_input.a.zy), global2.x, ~(-2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -3010f) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.d.x - arg_1.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global4.d), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, -372f, arg_1.d.x, -155f), arg_1.d))), select(select(vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(global4.e, arg_0.x, false, global4.e), true), !vec4<bool>(true, global4.e, true, arg_2.e), !vec4<bool>(arg_0.x, false, arg_2.e, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.d + vec4<f32>(346f, 1000f, 1337f, -1413f)))), _wgslsmith_div_f32(228f, arg_1.d.x) > 741f);
    var var_1 = global4.b.x;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: bool) -> vec2<bool> {
    global4 = func_2(!(!(!(!vec2<bool>(false, arg_0.e)))), Struct_1(global4.a, vec2<u32>(_wgslsmith_sub_u32(reverseBits(arg_1.x), global4.b.x ^ 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 7618u, arg_0.b.x, arg_0.b.x), countOneBits(vec4<u32>(77818u, arg_0.b.x, 41517u, global4.b.x)))), -(arg_2 | arg_2), arg_0.d, false), Struct_1(vec2<i32>(arg_0.c.x, _wgslsmith_mod_i32(~arg_2.x, abs(-1i))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global4.b.x, arg_1.x), arg_1)), ~func_2(vec2<bool>(arg_3, true), arg_0, arg_0, -274f).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1682f, 279f, global3[_wgslsmith_index_u32(global4.b.x, 24u)], global4.d.x) - vec4<f32>(global4.d.x, -845f, -292f, 1887f)), vec4<f32>(arg_0.d.x, 934f, global4.d.x, global3[_wgslsmith_index_u32(arg_0.b.x, 24u)]))), any(vec3<bool>(u_input.a.x < u_input.a.x, true, any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(27894u, arg_1.x) >> (arg_1.x % 32u), 24u)] + global4.d.x));
    var var_0 = func_2(select(vec2<bool>(true && !arg_0.e, true), !vec2<bool>(true, arg_3), !vec2<bool>(!arg_3, arg_3)), global1[_wgslsmith_index_u32(func_2(func_3(arg_0.e, vec2<bool>(arg_0.e, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(485f, 1189f))))).wz, func_2(vec2<bool>(true, true), arg_0, arg_0, _wgslsmith_f_op_f32(abs(-171f))), func_2(select(select(vec2<bool>(false, arg_3), vec2<bool>(false, true), vec2<bool>(global4.e, global4.e)), vec2<bool>(false, false), !vec2<bool>(global4.e, false)), Struct_1(vec2<i32>(20114i, u_input.a.x), arg_1, abs(arg_0.c), vec4<f32>(-1000f, arg_0.d.x, 401f, arg_0.d.x), 101586u >= arg_1.x), Struct_1(-vec2<i32>(arg_2.x, 0i), global4.b ^ vec2<u32>(arg_0.b.x, 13792u), vec4<i32>(1i, global4.a.x, u_input.a.x, arg_2.x), arg_0.d, false && arg_3), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-571f + arg_0.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))).b.x, 12u)], arg_0, _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(-2501f + _wgslsmith_f_op_f32(-1299f - _wgslsmith_f_op_f32(min(global4.d.x, 643f))))));
    global2 = -arg_2.yy;
    let var_1 = _wgslsmith_dot_vec3_i32(abs(arg_0.c.xwx), vec3<i32>(countOneBits(arg_2.x), -49751i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-11905i, 44573i), vec2<i32>(2147483647i, 55561i))) << (countOneBits(abs(vec3<u32>(global4.b.x, 16359u, 0u))) % vec3<u32>(32u)));
    global1 = array<Struct_1, 12>();
    return !(!(!(!select(vec2<bool>(true, arg_3), vec2<bool>(arg_0.e, false), vec2<bool>(false, true)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(vec2<bool>(global4.e, arg_3.e), func_2(func_3(!any(arg_0.wzz), func_4(func_2(arg_0.xw, Struct_1(vec2<i32>(-2147483647i, -2147483647i), global4.b, vec4<i32>(global4.c.x, u_input.a.x, global4.c.x, 8446i), vec4<f32>(global4.d.x, global3[_wgslsmith_index_u32(arg_2, 24u)], arg_1.x, arg_1.x), arg_3.e), Struct_1(vec2<i32>(7521i, global2.x), vec2<u32>(global4.b.x, global4.b.x), vec4<i32>(2147483647i, -80997i, -1i, global4.c.x), global4.d, arg_0.x), arg_3.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_3.b.x), global4.b), global4.c, 7968u >= arg_3.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_3.d.zw), _wgslsmith_f_op_vec2_f32(-global4.d.wz)))).zw, arg_3, func_2(arg_0.zy, func_2(vec2<bool>(arg_3.e, false), func_2(arg_0.wy, Struct_1(vec2<i32>(27974i, global4.c.x), vec2<u32>(1u, global4.b.x), vec4<i32>(global2.x, arg_3.a.x, u_input.a.x, u_input.a.x), arg_3.d, false), Struct_1(vec2<i32>(-10524i, -2147483647i), vec2<u32>(4294967295u, arg_2), vec4<i32>(-2147483647i, global2.x, -1i, arg_3.c.x), vec4<f32>(arg_3.d.x, 1000f, 955f, arg_1.x), false), arg_1.x), arg_3, _wgslsmith_f_op_f32(sign(-2173f))), Struct_1(u_input.a.xx, select(vec2<u32>(global4.b.x, 1u), vec2<u32>(arg_3.b.x, global4.b.x), vec2<bool>(arg_3.e, arg_3.e)), global4.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 422f, arg_1.x, -611f)), all(vec2<bool>(arg_3.e, arg_3.e))), _wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1322f, _wgslsmith_f_op_f32(max(-685f, -1000f)))), global4.d.x))), Struct_1(global4.a, vec2<u32>(arg_2, global4.b.x), -firstTrailingBit(global4.c | global4.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(109f * arg_1.x))), global4.d.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, _wgslsmith_clamp_u32(22781u, 0u, 31405u)), 24u)]), !arg_0.x == false), arg_1.x);
    var var_1 = arg_0.wz;
    let var_2 = arg_0.wzy;
    global2 = vec2<i32>(-32622i, abs(42477i));
    return func_2(func_3(all(vec3<bool>(func_3(true, vec2<bool>(false, arg_0.x), vec2<f32>(-1234f, global3[_wgslsmith_index_u32(arg_3.b.x, 24u)])).x, all(vec3<bool>(arg_3.e, arg_3.e, var_1.x)), global4.e)), !arg_0.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, global3[_wgslsmith_index_u32(var_0.b.x, 24u)]) + vec2<f32>(1000f, 1259f)) - _wgslsmith_f_op_vec2_f32(max(arg_3.d.zx, var_0.d.ww))))).yz, func_2(!(!vec2<bool>(var_1.x, arg_0.x)), func_2(var_2.yz, arg_3, Struct_1(var_0.a, arg_3.b, max(vec4<i32>(-13533i, u_input.a.x, 0i, global4.a.x), var_0.c), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, var_0.d.x, 734f, 750f), vec4<f32>(arg_1.x, 864f, arg_3.d.x, 1881f))), select(global4.e, global4.e, var_1.x)), -1431f), arg_3, _wgslsmith_f_op_f32(ceil(514f))), global1[_wgslsmith_index_u32(firstLeadingBit(35571u << (select(global4.b.x, ~46611u, true) % 32u)), 12u)], -471f);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    global4 = func_5(vec4<bool>(all(func_4(func_2(vec2<bool>(false, true), global1[_wgslsmith_index_u32(arg_0, 12u)], Struct_1(vec2<i32>(-1i, -1i), vec2<u32>(4294967295u, global4.b.x), global4.c, global4.d, true), global3[_wgslsmith_index_u32(arg_0, 24u)]), global4.b, vec4<i32>(global4.a.x, global2.x, global2.x, global4.c.x), global4.e)), global4.e, false, global4.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.d.yzx + global4.d.ywy)), vec3<f32>(func_2(vec2<bool>(true, global4.e), global1[_wgslsmith_index_u32(arg_0, 12u)], global1[_wgslsmith_index_u32(arg_0, 12u)], -1905f).d.x, 787f, -549f))), max(1u, global4.b.x), func_2(select(vec2<bool>(63776u != arg_0, true), vec2<bool>(true, true), func_3(global4.e, vec2<bool>(global4.e, global4.e), global4.d.yw).wy), Struct_1(select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, global2.x), global4.a), vec2<i32>(-2147483647i, global4.a.x), vec2<bool>(global4.e, true)), ~(~global4.b), vec4<i32>(u_input.a.x, -2147483647i, global4.a.x, 84125i) & vec4<i32>(14765i, global2.x, 23309i, global4.c.x), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(min(320f, global3[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(674f - arg_1.x), -576f), (global4.e | true) | false), func_2(select(func_3(false, vec2<bool>(false, global4.e), global4.d.zy).yy, vec2<bool>(global4.e, global4.e), !vec2<bool>(global4.e, false)), func_2(select(vec2<bool>(global4.e, global4.e), vec2<bool>(global4.e, false), false), func_2(vec2<bool>(false, global4.e), global1[_wgslsmith_index_u32(28330u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], 1447f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, arg_0), 12u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 24u)] * global3[_wgslsmith_index_u32(1u, 24u)])), Struct_1(global4.c.zz, _wgslsmith_add_vec2_u32(global4.b, global4.b), vec4<i32>(global2.x, 1513i, u_input.a.x, global4.c.x) >> (vec4<u32>(4294967295u, arg_0, global4.b.x, 95908u) % vec4<u32>(32u)), vec4<f32>(2137f, global4.d.x, arg_1.x, global4.d.x), global3[_wgslsmith_index_u32(arg_0, 24u)] < global3[_wgslsmith_index_u32(46589u, 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, -320f, false)) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 24u)] * global4.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 2311f) * _wgslsmith_f_op_f32(max(-336f, -149f)))));
    global3 = array<f32, 24>();
    global1 = array<Struct_1, 12>();
    global4 = Struct_1(-func_5(!(!vec4<bool>(global4.e, global4.e, global4.e, false)), vec3<f32>(_wgslsmith_f_op_f32(-global4.d.x), 2079f, _wgslsmith_f_op_f32(exp2(arg_1.x))), min(0u, arg_0), func_2(vec2<bool>(true, true), Struct_1(u_input.a.xz, global4.b, global4.c, vec4<f32>(-544f, 482f, 277f, global3[_wgslsmith_index_u32(0u, 24u)]), false), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.b.x, global4.b.x), 12u)], _wgslsmith_f_op_f32(473f + 1025f))).a, (~(~global4.b) >> (vec2<u32>(~arg_0, firstTrailingBit(29083u)) % vec2<u32>(32u))) | ~(~_wgslsmith_clamp_vec2_u32(global4.b, global4.b, global4.b)), global4.c, _wgslsmith_f_op_vec4_f32(global4.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.b.x, 24u)]), _wgslsmith_f_op_f32(global4.d.x * global3[_wgslsmith_index_u32(arg_0, 24u)]), arg_1.x))), global4.e & true);
    let var_0 = 0i;
    return -12169i;
}

fn func_6(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 12u)];
    var var_1 = -var_0.c;
    var_1 = reverseBits(abs(min(-var_0.c, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(global4.c, global4.c), global4.c))));
    var var_2 = arg_0;
    let var_3 = var_1.x;
    return Struct_1(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~var_0.a, var_1.yx), abs(arg_1.x), min(7157i, ~arg_1.x)), -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 0i), var_0.c.xyy))), vec2<u32>(var_0.b.x, _wgslsmith_add_u32(arg_0, ~arg_0) & _wgslsmith_clamp_u32(~4294967295u, 4294967295u, 54411u)), vec4<i32>(var_0.c.x, -40102i, func_5(vec4<bool>(true, global4.e, true, var_0.e), _wgslsmith_f_op_vec3_f32(-var_0.d.wzz), _wgslsmith_sub_u32(var_0.b.x, global4.b.x), func_2(vec2<bool>(true, true), Struct_1(var_1.xy, var_0.b, vec4<i32>(var_0.a.x, global4.c.x, 27991i, -1i), global4.d, false), Struct_1(vec2<i32>(-18718i, var_0.c.x), vec2<u32>(14718u, global4.b.x), var_0.c, vec4<f32>(198f, 385f, 863f, -488f), global4.e), 681f)).a.x, -var_1.x) << ((abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 26462u, arg_0, var_0.b.x), vec4<u32>(28925u, 3086u, 4294967295u, arg_0))) << (((vec4<u32>(19327u, 1u, arg_0, 27060u) | vec4<u32>(4294967295u, 1u, var_0.b.x, 0u)) | vec4<u32>(var_0.b.x, 56014u, global4.b.x, global4.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(110f, var_0.d.x, global3[_wgslsmith_index_u32(var_0.b.x, 24u)], global4.d.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1365f, global4.d.x, var_0.d.x, global3[_wgslsmith_index_u32(global4.b.x, 24u)]))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_6(4294967295u, vec3<i32>(func_1(global4.b.x, global4.d.wy), _wgslsmith_add_i32(-10754i, 0i), -abs(u_input.a.x)));
    var var_0 = func_5(!(!vec4<bool>(false, global4.e, !global4.e, global2.x <= -1i)), _wgslsmith_f_op_vec3_f32(-global4.d.ywx), _wgslsmith_mult_u32(_wgslsmith_mod_u32(func_5(vec4<bool>(true, global4.e, global4.e, global4.e), vec3<f32>(global4.d.x, global4.d.x, global3[_wgslsmith_index_u32(global4.b.x, 24u)]), global4.b.x, Struct_1(u_input.a.zy, vec2<u32>(global4.b.x, global4.b.x), vec4<i32>(-50966i, u_input.a.x, 1i, u_input.a.x), global4.d, false)).b.x, abs(global4.b.x)), _wgslsmith_add_u32(0u, 33455u)) & 39260u, Struct_1(vec2<i32>(~reverseBits(7699i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-958i, 2147483647i, -24660i), vec3<i32>(2147483647i, 1i, global2.x))), global4.b, -_wgslsmith_add_vec4_i32(firstLeadingBit(global4.c), vec4<i32>(-13342i, global4.a.x, global4.a.x, 68003i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(global4.b.x, 24u)], global3[_wgslsmith_index_u32(global4.b.x, 24u)], 547f, -1031f), vec4<f32>(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(69773u, 24u)], -150f, global4.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.d.x, global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(global4.b.x, 24u)], 970f), global4.d)) - global4.d))), global4.d.x == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(930f, -1836f)))));
    let var_1 = ~(~var_0.b);
    var_0 = global1[_wgslsmith_index_u32(min(abs(global4.b.x), max(1u, global4.b.x)), 12u)];
    var var_2 = select(select(!(!vec4<bool>(var_0.e, false, true, var_0.e)), vec4<bool>(func_4(global1[_wgslsmith_index_u32(var_0.b.x >> (1u % 32u), 12u)], ~vec2<u32>(25495u, 47734u), vec4<i32>(global4.c.x, 2147483647i, -13429i, global2.x), true).x, all(func_3(false, vec2<bool>(true, var_0.e), vec2<f32>(-615f, 442f)).wzz), true, select(global2.x, 20793i, false) >= global4.a.x), select(select(!vec4<bool>(false, true, var_0.e, var_0.e), select(vec4<bool>(false, var_0.e, true, true), vec4<bool>(global4.e, true, false, var_0.e), true), any(vec3<bool>(var_0.e, false, global4.e))), select(!vec4<bool>(true, var_0.e, var_0.e, true), !vec4<bool>(global4.e, true, false, true), select(vec4<bool>(global4.e, true, true, var_0.e), vec4<bool>(true, global4.e, global4.e, false), var_0.e)), vec4<bool>(false, global4.e, false, !global4.e))), vec4<bool>(true, var_0.e, !(-410f <= _wgslsmith_f_op_f32(max(-551f, global4.d.x))), true), func_5(select(!vec4<bool>(true, var_0.e, false, true), select(vec4<bool>(true, false, true, false), !vec4<bool>(false, global4.e, true, var_0.e), vec4<bool>(var_0.e, true, false, global4.e)), vec4<bool>(func_2(vec2<bool>(global4.e, var_0.e), Struct_1(vec2<i32>(global2.x, -22204i), vec2<u32>(var_0.b.x, global4.b.x), vec4<i32>(global4.c.x, global2.x, -47644i, u_input.a.x), vec4<f32>(global4.d.x, global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(17148u, 24u)], var_0.d.x), global4.e), Struct_1(u_input.a.xz, var_0.b, vec4<i32>(var_0.c.x, 9830i, -10037i, -34387i), var_0.d, var_0.e), -1454f).e, all(vec4<bool>(false, true, true, true)), 4294967295u == var_0.b.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(vec4<bool>(false, global4.e, global4.e, true), global4.d.xxy, 0u, Struct_1(vec2<i32>(-2147483647i, u_input.a.x), var_0.b, vec4<i32>(-2350i, 11853i, 37616i, 23784i), vec4<f32>(global4.d.x, global4.d.x, var_0.d.x, global4.d.x), false)).d.zzx + _wgslsmith_f_op_vec3_f32(var_0.d.zyy - vec3<f32>(1242f, -712f, global3[_wgslsmith_index_u32(global4.b.x, 24u)])))), global4.b.x ^ abs(_wgslsmith_sub_u32(37606u, 6732u)), Struct_1(_wgslsmith_mod_vec2_i32(var_0.c.xy, var_0.c.wy << (vec2<u32>(29553u, 52472u) % vec2<u32>(32u))), ~global4.b, vec4<i32>(select(u_input.a.x, 1i, global4.e), _wgslsmith_sub_i32(var_0.c.x, global2.x), 1i, 29889i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3[_wgslsmith_index_u32(70854u, 24u)], var_0.d.x, global4.d.x) + _wgslsmith_f_op_vec4_f32(exp2(global4.d))), false)).e);
    let var_3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~0u, abs(global4.b.x)) << (var_0.b.x % 32u)), 12u)];
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(95983u, ~var_0.b.x, _wgslsmith_sub_u32(~7783u, var_3.b.x | 4294967295u)));
}

