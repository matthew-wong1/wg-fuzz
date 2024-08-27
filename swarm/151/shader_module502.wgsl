struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1257f)), arg_0.x, 638f, -1675f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(1351f + -504f), _wgslsmith_div_f32(-234f, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(floor(2686f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1705f, 233f)))))), u_input.d.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1496f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1368f), arg_0.x, arg_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(arg_0.xx))))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-6050i, u_input.b.x, u_input.e.x, -57677i) >> (~u_input.d % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(u_input.a, -21323i), u_input.b.x, 1i, max(u_input.a, u_input.e.x))));
    var var_1 = firstTrailingBit(vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(u_input.e.xzy, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, 29031i), vec3<i32>(u_input.e.x, u_input.e.x, u_input.b.x), u_input.e.wxy))), ~_wgslsmith_sub_i32(countOneBits(-2147483647i), _wgslsmith_mod_i32(var_0.e, u_input.e.x))));
    let var_2 = firstLeadingBit(~_wgslsmith_div_u32(14253u, ~(~u_input.c.x)));
    let var_3 = -(~select(abs(vec2<i32>(u_input.b.x, 50991i)), _wgslsmith_mult_vec2_i32(u_input.b.yy, abs(vec2<i32>(u_input.b.x, var_0.e))), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.zx + var_0.d.a));
    return var_0.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-arg_0.xyz)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -294f)))))));
    let var_2 = select(vec4<bool>((max(0u, 0u) > ~u_input.c.x) && (any(arg_3) & !arg_3.x), !(!all(arg_3)), arg_3.x, arg_3.x), vec4<bool>(true, any(!arg_3.zx), true, arg_3.x || ((arg_2 == arg_3.x) & arg_2)), !select(select(select(vec4<bool>(arg_3.x, arg_3.x, false, true), vec4<bool>(arg_3.x, false, false, false), vec4<bool>(arg_3.x, arg_2, true, arg_3.x)), !vec4<bool>(false, true, true, arg_2), true), vec4<bool>(true, arg_2 && arg_2, any(vec3<bool>(true, arg_3.x, arg_2)), true), true));
    var var_3 = select(vec2<bool>(arg_2, !all(vec2<bool>(true, false)) | any(!vec4<bool>(true, true, var_2.x, arg_2))), !(!var_2.yz), false);
    let var_4 = ~vec3<i32>(min(_wgslsmith_mod_i32(56233i, -1i), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.e.x, u_input.e.x), 1i)), max(~_wgslsmith_add_i32(u_input.b.x, 2147483647i), 0i), -2147483647i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.a))) - _wgslsmith_div_vec2_f32(vec2<f32>(2083f, -886f), _wgslsmith_f_op_vec2_f32(-var_1.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_2 {
    global0 = array<Struct_1, 8>();
    let var_0 = all(!select(!select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, false), vec2<bool>(false, arg_2)), select(vec2<bool>(false, true), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2)), true), arg_2));
    let var_1 = Struct_1(arg_0.a);
    var var_2 = var_1.a.x;
    var_2 = _wgslsmith_f_op_f32(var_1.a.x + func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1518f, -2786f, 924f, arg_0.a.x), vec4<f32>(-2665f, 1276f, var_1.a.x, -190f)), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(vec4<f32>(733f, var_1.a.x, arg_0.a.x, arg_0.a.x), -968f, var_0, vec3<bool>(false, true, true)).a.x), !(!vec4<bool>(false, arg_2, false, arg_2)))), _wgslsmith_f_op_f32(max(arg_0.a.x, var_1.a.x)), true, !vec3<bool>(arg_2, true, true)).a.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -884f, arg_0.a.x, -860f), vec4<f32>(-519f, arg_0.a.x, arg_0.a.x, arg_0.a.x))))), select(vec2<u32>(u_input.c.x, abs(4294967295u)), u_input.d.wx, any(select(!vec4<bool>(true, var_0, false, var_0), select(vec4<bool>(true, var_0, arg_2, true), vec4<bool>(true, var_0, arg_2, arg_2), arg_2), select(vec4<bool>(var_0, arg_2, true, arg_2), vec4<bool>(var_0, var_0, true, true), false)))), vec4<f32>(852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-781f - 153f)) * _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f - -547f)), _wgslsmith_f_op_f32(-var_1.a.x)), func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1647f, _wgslsmith_f_op_f32(round(1063f)), var_1.a.x, -1000f), vec4<f32>(_wgslsmith_f_op_f32(-299f * 1000f), var_1.a.x, -1949f, arg_0.a.x))), var_1.a.x, false, !vec3<bool>(any(vec4<bool>(true, arg_2, true, arg_2)), var_0, all(vec3<bool>(false, true, arg_2)))), u_input.e.x);
}

fn func_1() -> bool {
    var var_0 = ~reverseBits(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, -1i, u_input.b.x), u_input.b));
    let var_1 = func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-606f, 950f, -1321f, -941f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1556f, 686f, -1000f, -1905f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(467f, 726f, 789f, 126f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1597f * 1349f), _wgslsmith_div_f32(1000f, -272f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2031f)), _wgslsmith_f_op_f32(604f * 851f))), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec3<bool>(true, true | all(vec3<bool>(false, false, false)), true)), var_0.x, !any(vec2<bool>(true, true)));
    var var_2 = !select(!vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true), any(vec3<bool>(false, true, true)));
    var_0 = vec3<i32>(var_0.x, u_input.a, _wgslsmith_sub_i32(u_input.b.x, var_1.e));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + 1000f)), -829f)), -225f);
    return all(vec3<bool>(false, (select(var_2.x, var_2.x, true) & (var_1.c.x == 1120f)) | (_wgslsmith_f_op_f32(-var_3.x) <= 1000f), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(1f, 1f));
    let var_1 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), false, _wgslsmith_f_op_f32(var_0.a.x * 1633f) > 1575f, !all(vec4<bool>(true, true, true, true))), vec4<bool>(func_1(), true, func_1(), true), true);
    let var_2 = (~u_input.e.x & u_input.b.x) ^ -26348i;
    global0 = array<Struct_1, 8>();
    let var_3 = _wgslsmith_dot_vec4_u32(countOneBits(u_input.d) & ~(~vec4<u32>(u_input.c.x, 4294967295u, 73368u, u_input.c.x)), ~u_input.d);
    global0 = array<Struct_1, 8>();
    let var_4 = func_4(Struct_1(var_0.a), countOneBits(u_input.a), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1077f, _wgslsmith_div_i32(var_2, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_2, -22483i), select(u_input.e.x, -11988i, var_1.x), 0i)), var_4.c);
}

