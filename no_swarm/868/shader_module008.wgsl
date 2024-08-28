struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, false, false, false, true, true, false, true, false, true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-528f)), arg_0.b.b);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.a.d.x, arg_0.c.c) - -1000f));
    let var_1 = Struct_3(vec4<u32>(~(u_input.a ^ 13020u), select(arg_0.a.x, 17818u, all(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], true))), ~(~56640u), max(abs(20237u), arg_0.a.x) >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.x, 48893u), 0u) % 32u)), arg_0.b, arg_0.c);
    let var_2 = Struct_4(select(vec4<bool>(!arg_0.b.c.x | true, all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], true, true, true)), true & all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], var_1.b.c.x, var_1.c.a.c.x)), select(arg_1.x, 1u, false) != (arg_1.x & 14929u)), vec4<bool>(var_1.b.a, !(!global0[_wgslsmith_index_u32(var_1.a.x, 12u)]), false, true & all(vec4<bool>(arg_0.b.c.x, false, false, false))), select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], true, false), vec4<bool>(true, arg_0.c.b.a, true, var_1.c.b.c.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, true, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], var_1.c.a.c.x, false, true), select(vec4<bool>(global0[_wgslsmith_index_u32(40158u, 12u)], arg_0.c.b.c.x, arg_0.c.a.c.x, arg_0.c.b.a), vec4<bool>(true, var_1.c.b.a, arg_0.c.b.c.x, true), global0[_wgslsmith_index_u32(7810u, 12u)]), var_1.c.d.x), _wgslsmith_mult_i32(var_1.b.e.x, arg_0.b.e.x) == ~3734i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.b.d, vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.b.d.x), -781f, _wgslsmith_f_op_f32(-134f - arg_0.c.b.b))))));
    let var_3 = var_2.a;
    return var_1.b.c;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(any(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(42354u, 12u)], true), vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(30705u, 12u)], arg_0, true)), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true))), 1018f, func_3(Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4970u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.d, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.d, 15395u)), Struct_1(false, -1782f, vec3<bool>(global0[_wgslsmith_index_u32(32663u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_0), vec3<f32>(-1028f, 1373f, -1193f), vec3<i32>(0i, -2147483647i, 44292i)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 12u)], 1714f, vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], true), vec3<f32>(2069f, -1953f, 1062f), vec3<i32>(-21615i, 53557i, -8479i)), Struct_1(true, -219f, vec3<bool>(arg_0, global0[_wgslsmith_index_u32(0u, 12u)], false), vec3<f32>(1458f, 1342f, 886f), vec3<i32>(-11453i, -6871i, -2147483647i)), -135f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], false, false))), ~firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, 1504f, -371f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2229f, 1364f, -173f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 263f, -1000f), vec3<f32>(753f, -1383f, -1196f), vec3<bool>(false, false, true))))), ~vec3<i32>(u_input.c, -u_input.c, _wgslsmith_div_i32(u_input.b, 0i))), Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f - 249f)))), !select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, arg_0), true), vec3<bool>(true, true, true), arg_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(738f * 1000f), _wgslsmith_div_f32(342f, -1574f), _wgslsmith_div_f32(1605f, 521f)))), vec3<i32>(_wgslsmith_sub_i32(u_input.c, -2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(2256i, u_input.b, u_input.b), vec3<i32>(-1i, -81765i, -4352i)), u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2054f)), _wgslsmith_f_op_f32(f32(-1f) * -947f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -133f))))), vec3<bool>(true, true, arg_0));
    global0 = array<bool, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))), -903f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.b, var_0.c, var_0.b.d.x, -1161f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_0.a.b, var_0.a.d.x) * vec4<f32>(var_0.a.d.x, -1000f, -725f, -1993f)), true)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 244f, var_0.b.b, var_0.a.d.x) * vec4<f32>(var_0.a.d.x, -390f, -345f, var_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 1861f, var_0.c, -775f))))));
    var var_2 = var_0.a;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2270i, u_input.b, -2147483647i, var_2.e.x)), firstTrailingBit(max(vec4<i32>(0i, var_2.e.x, 1i, var_0.a.e.x), vec4<i32>(var_0.a.e.x, 2147483647i, var_2.e.x, var_2.e.x)))) | var_2.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, var_0.a.e.x), _wgslsmith_div_i32(var_2.e.x, 1i), 1i), vec3<i32>(u_input.c, max(668i, var_2.e.x), _wgslsmith_mod_i32(var_0.b.e.x, var_0.b.e.x))), _wgslsmith_sub_vec3_i32(max(var_2.e, vec3<i32>(var_2.e.x, 2147483647i, -26671i)), var_2.e) ^ var_2.e));
    return select(vec3<bool>(0u == ((61967u | u_input.a) << (~u_input.a % 32u)), false, true), var_0.a.c, !var_2.a);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -657f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.d.x))))), 1041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.d.x - 684f) * arg_0)) - 512f));
    let var_1 = arg_1.a.e.x;
    return Struct_1(1u <= ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 46286u), vec2<u32>(u_input.d, 18048u)), vec2<u32>(0u, u_input.a)), var_0.x, select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)] || false, true, arg_3 == arg_1.b.e.x), select(select(!vec3<bool>(arg_1.b.c.x, true, false), arg_1.b.c, func_2(false)), !func_3(Struct_3(vec4<u32>(u_input.a, u_input.d, 11299u, 8213u), Struct_1(arg_1.a.c.x, -186f, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], arg_1.b.c.x), vec3<f32>(arg_2.x, 274f, arg_2.x), vec3<i32>(arg_3, -29382i, 44640i)), arg_1), vec4<u32>(21457u, u_input.a, 21670u, u_input.a)), !(global0[_wgslsmith_index_u32(3555u, 12u)] & false)), !func_3(Struct_3(vec4<u32>(1u, u_input.a, 4294967295u, 1u), Struct_1(arg_1.d.x, arg_1.a.d.x, vec3<bool>(arg_1.a.c.x, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(17913u, 12u)]), arg_2, vec3<i32>(arg_3, -1i, -12468i)), arg_1), ~vec4<u32>(u_input.d, 4294967295u, u_input.a, 898u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.d + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.d))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_2)) * vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_div_f32(458f, arg_2.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)))), max(~(_wgslsmith_mult_vec3_i32(arg_1.a.e, arg_1.b.e) ^ vec3<i32>(750i, arg_1.a.e.x, arg_1.a.e.x)), arg_1.a.e));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<f32> {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.b.b))))))));
    var var_1 = abs(_wgslsmith_mult_vec3_u32(arg_0.a.wxy, arg_0.a.zyz));
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.a.d.x * arg_2.a.d.x))))), arg_2, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1481f, -569f, _wgslsmith_f_op_f32(arg_2.c * arg_2.a.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.d) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(376f, arg_2.a.b, -171f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, arg_2.a.b, 572f), vec3<f32>(-192f, arg_0.b.d.x, arg_0.c.c))))))), u_input.b);
    return arg_0.c.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(3634f, 291f, 290f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, 1520f, -1185f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(903f, 285f, -911f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2116f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(floor(var_0.x)))) - _wgslsmith_f_op_vec3_f32(func_4(Struct_3(min(vec4<u32>(4294967295u, 48464u, 4294967295u, 0u), vec4<u32>(u_input.d, 71503u, u_input.a, u_input.d)), func_1(213f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(38086u, 12u)], -1361f, vec3<bool>(global0[_wgslsmith_index_u32(37946u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<f32>(450f, var_0.x, var_0.x), vec3<i32>(u_input.c, 0i, 1i)), Struct_1(true, var_0.x, vec3<bool>(true, false, false), vec3<f32>(var_0.x, 1124f, 218f), vec3<i32>(0i, u_input.b, u_input.b)), -351f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], true, global0[_wgslsmith_index_u32(1u, 12u)])), vec3<f32>(1000f, -1805f, 733f), 74747i), Struct_2(Struct_1(true, var_0.x, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true, true), vec3<f32>(var_0.x, var_0.x, -672f), vec3<i32>(u_input.c, -45484i, 62557i)), Struct_1(global0[_wgslsmith_index_u32(50860u, 12u)], 1736f, vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)], true), vec3<f32>(794f, 1692f, 1768f), vec3<i32>(-39543i, -2147483647i, u_input.b)), 1319f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 12u)], true, global0[_wgslsmith_index_u32(4294967295u, 12u)]))), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.d, 12u)], 1u < u_input.d, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)], false))), Struct_2(func_1(500f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 12u)], 1248f, vec3<bool>(global0[_wgslsmith_index_u32(45923u, 12u)], true, global0[_wgslsmith_index_u32(9837u, 12u)]), vec3<f32>(var_0.x, var_0.x, -268f), vec3<i32>(u_input.c, u_input.b, 2147483647i)), Struct_1(false, var_0.x, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<f32>(424f, var_0.x, -809f), vec3<i32>(u_input.c, u_input.c, u_input.c)), var_0.x, vec3<bool>(true, false, false)), vec3<f32>(1450f, -126f, var_0.x), u_input.b), Struct_1(false, var_0.x, vec3<bool>(false, global0[_wgslsmith_index_u32(83633u, 12u)], true), vec3<f32>(var_0.x, -1174f, -472f), vec3<i32>(u_input.b, -450i, 1972i)), var_0.x, func_2(true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1122f, 103f, var_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 389f)) * _wgslsmith_f_op_vec3_f32(func_4(Struct_3(vec4<u32>(18429u, 55917u, u_input.d, 51562u), Struct_1(global0[_wgslsmith_index_u32(1u, 12u)], 931f, vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)], true), vec3<f32>(645f, -865f, var_0.x), vec3<i32>(-20220i, 1i, 24847i)), Struct_2(Struct_1(false, 541f, vec3<bool>(true, false, true), vec3<f32>(var_0.x, -533f, 411f), vec3<i32>(1i, u_input.b, u_input.c)), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 12u)], var_0.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<f32>(380f, var_0.x, 299f), vec3<i32>(2147483647i, -21780i, u_input.b)), -625f, vec3<bool>(false, true, false))), vec3<bool>(global0[_wgslsmith_index_u32(116963u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(71034u, 12u)]), Struct_2(Struct_1(true, var_0.x, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<f32>(var_0.x, -1438f, 833f), vec3<i32>(2147483647i, u_input.b, u_input.b)), Struct_1(global0[_wgslsmith_index_u32(0u, 12u)], var_0.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(37662u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<f32>(-543f, -979f, 163f), vec3<i32>(2423i, -31083i, u_input.c)), -225f, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], true)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1231f, var_0.x, -791f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2262f, var_0.x, -1466f) + vec3<f32>(-2198f, -488f, 1349f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, func_1(-2148f, Struct_2(Struct_1(false, -967f, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec3<f32>(var_0.x, var_0.x, -153f), vec3<i32>(u_input.b, u_input.c, -20371i)), Struct_1(false, var_0.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], true, false), vec3<f32>(var_0.x, -1296f, var_0.x), vec3<i32>(u_input.b, u_input.c, -10689i)), -860f, vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 864f, var_0.x) - vec3<f32>(-874f, 1784f, var_0.x)), 0i).b, -1145f))));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(~1i, -9647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(min(-63083i, firstTrailingBit(u_input.c)), -28498i)));
    let var_2 = min(firstLeadingBit(abs(min(~vec3<u32>(4294967295u, 32852u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(22644u, u_input.a, 994u), vec3<u32>(u_input.a, 33743u, 0u))))), ~(~vec3<u32>(u_input.d, 65537u, 0u)) | vec3<u32>(~u_input.a & (4294967295u | u_input.a), ~u_input.d, u_input.a));
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1, vec2<i32>(-2147483647i, u_input.c) << (abs(var_2.xy) % vec2<u32>(32u))), vec2<i32>(2147483647i, 1i)) <= (i32(-1i) * -5919i);
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-34606i, var_1.x, var_1.x, var_1.x >> (_wgslsmith_mult_u32(u_input.d, 1u) % 32u)), -firstLeadingBit(~vec4<i32>(var_1.x, var_1.x, 48331i, -41920i))));
}

