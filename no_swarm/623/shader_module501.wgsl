struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 32>;

var<private> global2: array<i32, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global0 = ~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, -u_input.c.x, 29974i), _wgslsmith_clamp_i32(reverseBits(~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 20u)]), global2[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global1[_wgslsmith_index_u32(34910u, 32u)])), 20u)], global2[_wgslsmith_index_u32(~u_input.a.x, 20u)] | _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(49106u, 20u)], u_input.b.x)), _wgslsmith_clamp_i32((global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 20u)] & -1i) ^ _wgslsmith_clamp_i32(1i, global2[_wgslsmith_index_u32(1079u, 20u)], 15529i), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(1148u), 32u)], 20u)], -55287i));
    let var_0 = _wgslsmith_mult_i32(firstLeadingBit(~_wgslsmith_dot_vec3_i32(~u_input.c.yxx, u_input.c.yyx)), _wgslsmith_dot_vec4_i32(max(u_input.c, vec4<i32>(u_input.c.x & u_input.b.x, u_input.b.x, ~global2[_wgslsmith_index_u32(0u, 20u)], 0i)), u_input.c));
    global2 = array<i32, 20>();
    var var_1 = vec3<i32>(~(~max(u_input.c.x | var_0, global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(28444u, 32u)], 20u)])), ~u_input.b.x, 57754i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, 994f, 1000f, 1000f) * vec4<f32>(-1433f, 1397f, -1393f, -568f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1735f, 2038f, 1242f, 561f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, 912f, 130f, 919f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(818f, -321f, 713f, -821f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, -107f, 833f, -1104f) * vec4<f32>(1179f, 161f, 1477f, -1621f))))));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 32u)], 32u)] ^ select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 7658u, false), 20u)], u_input.c.x), var_0 << (_wgslsmith_add_u32(~23254u, 0u) % 32u)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~24506u, ~1u), 20u)]), -select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -2147483647i, 47850i), u_input.c.yxx), 41972i, var_2.x != var_2.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = select(vec3<i32>(func_3(), 29715i, 18769i), u_input.b, !((-443f == arg_1.c.c) == true));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -37776i, ~1i), firstTrailingBit(var_0.xz));
    global0 = ~(~var_0.x);
    global1 = array<u32, 32>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1597f, arg_1.c.c)) * arg_1.b.c)) < arg_1.b.c;
    return abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i | _wgslsmith_mod_i32(var_0.x, -1i), u_input.b.x >> (countOneBits(arg_1.c.b) % 32u), firstTrailingBit(-4811i)), ~_wgslsmith_clamp_vec3_i32(min(var_0, u_input.c.zxz), var_0, ~vec3<i32>(4125i, arg_0, 1i)), var_0));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.d.a), arg_2.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, arg_2.b.a, -1138f, arg_1.a.d.a.x)) + arg_1.a.d.a)), arg_1.a.d.a), arg_1.a.c, arg_2.c);
    var var_1 = all(!(!vec4<bool>(arg_1.a.a.x, true, arg_1.a.a.x, true)));
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    var_1 = arg_1.a.a.x || (any(select(select(arg_1.a.a.yz, vec2<bool>(arg_1.b, false), vec2<bool>(false, arg_1.a.a.x)), arg_1.a.a.yx, !vec2<bool>(arg_1.a.a.x, false))) != arg_1.a.a.x);
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_4 {
    global0 = -1i;
    var var_0 = ~select(min(~(~vec4<u32>(1u, 15187u, 5634u, 17838u)), vec4<u32>(~119293u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8377u, 32u)], 32u)], 1u, ~u_input.a.x)), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65165u, 32u)], 32u)], 32u)])), ~vec4<u32>(50296u, 4294967295u, u_input.a.x, u_input.a.x) >> (vec4<u32>(12202u, 42845u, u_input.a.x, 51261u) % vec4<u32>(32u))), true);
    var var_1 = func_4(countOneBits(func_2(global2[_wgslsmith_index_u32(53869u, 20u)], Struct_2(vec4<f32>(-538f, 233f, 974f, 1000f), Struct_1(-941f, 0u, -102f, vec4<u32>(4294967295u, 4294967295u, 0u, var_0.x), vec2<f32>(665f, -834f)), Struct_1(431f, 1u, -517f, vec4<u32>(4294967295u, 25720u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 4294967295u), vec2<f32>(-517f, 1985f))))) | -_wgslsmith_sub_vec3_i32(u_input.c.yxy ^ vec3<i32>(2147483647i, 50273i, u_input.b.x), vec3<i32>(u_input.c.x, u_input.c.x, -24292i)), Struct_5(Struct_3(select(vec4<bool>(false, arg_1.x, true, arg_0.x), select(vec4<bool>(true, arg_1.x, arg_1.x, arg_0.x), vec4<bool>(arg_1.x, false, true, arg_0.x), vec4<bool>(arg_1.x, false, arg_1.x, false)), select(vec4<bool>(arg_0.x, arg_1.x, arg_1.x, arg_0.x), vec4<bool>(arg_1.x, arg_0.x, arg_0.x, true), false)), _wgslsmith_dot_vec2_u32(~u_input.a, max(var_0.wx, u_input.a)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_dot_vec4_u32(vec4<u32>(40664u, 23426u, 4294967295u, 15651u), vec4<u32>(u_input.a.x, var_0.x, 1u, var_0.x)), _wgslsmith_f_op_f32(round(671f)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, 96701u, 69753u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 1u, 1u, global1[_wgslsmith_index_u32(var_0.x, 32u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1292f, 1410f), vec2<f32>(-1000f, -641f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1366f, 225f, 1001f, -525f)), Struct_1(1000f, 12816u, -388f, vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 102394u, 30877u, 1u), vec2<f32>(-1000f, 404f)), Struct_1(-389f, 0u, -488f, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 32u)], 40988u, u_input.a.x), vec2<f32>(1000f, 523f))), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 1u, 6111u, 10151u), vec4<u32>(4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 32u)], 51359u)) & ~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)])), !arg_0.x & true), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1497f, -388f, 1472f) + vec4<f32>(119f, -142f, 693f, 342f)) * vec4<f32>(2134f, 424f, 1869f, -111f))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-201f + 2848f), _wgslsmith_f_op_f32(-552f * 346f))), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(177f, 1106f)))), ~vec4<u32>(global1[_wgslsmith_index_u32(27718u, 32u)], u_input.a.x, 0u, var_0.x), vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(146f, 355f)))), ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-123f, 430f, false))), abs(~vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2172f, 377f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(379f, 940f), vec2<f32>(-898f, 1444f))))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -2147483647i, 29754i) >> (~var_1.a.d.c.d.wxw % vec3<u32>(32u)), Struct_5(var_1.a, true), var_1.a.d).a.d.a + var_1.a.d.a), func_4(~u_input.b, Struct_5(func_4(~vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(var_1.a.e.x, 20u)], global2[_wgslsmith_index_u32(var_1.a.c.b, 20u)]), Struct_5(var_1.a, false), Struct_2(var_1.a.d.a, Struct_1(var_1.a.c.e.x, global1[_wgslsmith_index_u32(66374u, 32u)], -1284f, var_1.a.c.d, vec2<f32>(var_1.a.d.c.c, -640f)), Struct_1(var_1.a.d.c.a, u_input.a.x, var_1.a.c.c, vec4<u32>(55410u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], var_1.a.b, global1[_wgslsmith_index_u32(22984u, 32u)]), vec2<f32>(var_1.a.d.b.a, var_1.a.d.c.a)))).a, var_1.b), var_1.a.d).a.c, var_1.a.d.b);
    let var_3 = abs(firstLeadingBit(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(var_2.c.b, 20u)], -2147483647i) >> (vec3<u32>(var_1.a.e.x, var_1.a.e.x, 4294967295u) % vec3<u32>(32u))))) >> (vec3<u32>(4294967295u, func_4(-vec3<i32>(1i, u_input.b.x, global2[_wgslsmith_index_u32(13275u, 20u)]), Struct_5(Struct_3(vec4<bool>(false, var_1.a.a.x, true, arg_0.x), 62061u, var_1.a.d.c, var_1.a.d, vec4<u32>(4906u, 4294967295u, 1u, global1[_wgslsmith_index_u32(29464u, 32u)])), select(true, false, arg_0.x)), func_4(vec3<i32>(u_input.b.x, -11992i, u_input.c.x), func_4(vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 20u)], -22166i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 20u)]), Struct_5(Struct_3(vec4<bool>(false, true, false, var_1.b), 1u, var_2.b, var_1.a.d, var_1.a.d.b.d), true), var_2), Struct_2(var_1.a.d.a, Struct_1(var_2.c.c, var_1.a.c.d.x, var_2.c.c, var_1.a.d.c.d, vec2<f32>(-894f, var_1.a.d.b.a)), var_1.a.d.c)).a.d).a.e.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a.c.d, vec4<u32>(u_input.a.x, 27022u, var_2.c.b, var_1.a.d.c.b)), vec4<u32>(u_input.a.x, var_1.a.d.b.b, var_0.x, var_2.c.b) << (vec4<u32>(1u, 4294967295u, 9662u, var_1.a.c.b) % vec4<u32>(32u)))) % vec3<u32>(32u));
    return Struct_4((i32(-1i) * -select(var_3.x, -24892i, var_1.a.a.x)) << (_wgslsmith_sub_u32(0u, 0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(true, true, true), !(!vec2<bool>(global1[_wgslsmith_index_u32(12911u, 32u)] < 13301u, true)));
    let var_1 = select(u_input.c, firstTrailingBit(u_input.c), (i32(-1i) * -2147483647i) != global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 32u)], 20u)]);
    let var_2 = vec4<bool>(global1[_wgslsmith_index_u32(~max(0u, 0u) & ~(u_input.a.x | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37249u, 32u)], 32u)]), 32u)] == abs(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(64167u, 32u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)])), ~u_input.c.x == 30523i, func_4(vec3<i32>(-2147483647i, max(12887i, 4121i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 4216i)) & vec3<i32>(_wgslsmith_sub_i32(-70874i, 10040i), -15854i, 1i), func_4(abs(vec3<i32>(var_1.x, u_input.c.x, var_1.x)), Struct_5(Struct_3(vec4<bool>(false, true, false, true), 4294967295u, Struct_1(183f, 34338u, -1475f, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 2630u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 32u)]), vec2<f32>(-1018f, 563f)), Struct_2(vec4<f32>(182f, -1299f, 1000f, 888f), Struct_1(-147f, u_input.a.x, -177f, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 9307u), vec2<f32>(-141f, -608f)), Struct_1(865f, u_input.a.x, -186f, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec2<f32>(631f, 1000f))), vec4<u32>(38935u, 5330u, global1[_wgslsmith_index_u32(68498u, 32u)], 65541u)), global2[_wgslsmith_index_u32(u_input.a.x, 20u)] > var_1.x), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(496f, -2039f, 1406f, 1540f) + vec4<f32>(988f, -1156f, 1777f, 778f)), func_4(vec3<i32>(0i, global2[_wgslsmith_index_u32(0u, 20u)], -2147483647i), Struct_5(Struct_3(vec4<bool>(false, true, true, false), 40011u, Struct_1(458f, 41931u, -1136f, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 40999u), vec2<f32>(887f, 328f)), Struct_2(vec4<f32>(-1265f, 386f, 198f, -675f), Struct_1(2041f, 109273u, 198f, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 4294967295u, 1u, 4959u), vec2<f32>(-1000f, -1000f)), Struct_1(920f, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], -999f, vec4<u32>(1u, 5982u, u_input.a.x, 57884u), vec2<f32>(1000f, 576f))), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 32u)], u_input.a.x, 1u)), true), Struct_2(vec4<f32>(558f, -2108f, -1484f, -1000f), Struct_1(552f, 38548u, 746f, vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(68933u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)]), vec2<f32>(-1035f, -276f)), Struct_1(1899f, 1u, 402f, vec4<u32>(u_input.a.x, 0u, 0u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<f32>(1322f, -1353f)))).a.d.b, Struct_1(779f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 1257f, vec4<u32>(8793u, u_input.a.x, 0u, global1[_wgslsmith_index_u32(22948u, 32u)]), vec2<f32>(-194f, -851f)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(1246f, -802f)), -590f, _wgslsmith_div_f32(1174f, 620f), 587f), Struct_1(-196f, ~1u, -1788f, ~vec4<u32>(21643u, 35274u, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, -814f))), Struct_1(-808f, u_input.a.x, -382f, ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-964f, 1002f), vec2<f32>(-228f, -1000f)))))).a.a.x, true);
    let var_3 = func_4(vec3<i32>(62895i, min(~1i, func_3()), 2147483647i), func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), var_1.x, countOneBits(-35051i)), vec3<i32>(6333i | var_0.a, firstTrailingBit(var_0.a), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 20u)], var_1.x))), func_4(var_1.wyy, func_4(~vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 20u)], 2147483647i, u_input.b.x), Struct_5(Struct_3(vec4<bool>(false, var_2.x, var_2.x, var_2.x), 56140u, Struct_1(1402f, 20410u, 1239f, vec4<u32>(global1[_wgslsmith_index_u32(22189u, 32u)], global1[_wgslsmith_index_u32(40506u, 32u)], 34396u, global1[_wgslsmith_index_u32(1u, 32u)]), vec2<f32>(-1600f, -632f)), Struct_2(vec4<f32>(-1853f, -1000f, -995f, 1485f), Struct_1(-279f, u_input.a.x, 1000f, vec4<u32>(u_input.a.x, 30769u, global1[_wgslsmith_index_u32(63642u, 32u)], 25048u), vec2<f32>(766f, -901f)), Struct_1(824f, u_input.a.x, 950f, vec4<u32>(u_input.a.x, 4294967295u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<f32>(-452f, 361f))), vec4<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 32u)], 0u)), true), Struct_2(vec4<f32>(-1404f, 177f, -1767f, 1122f), Struct_1(-304f, u_input.a.x, -231f, vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a.x, 7168u), vec2<f32>(326f, -510f)), Struct_1(-123f, u_input.a.x, -748f, vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47367u, 32u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(39450u, 32u)]), vec2<f32>(-1588f, -129f)))), func_4(-var_1.yzy, Struct_5(Struct_3(vec4<bool>(var_2.x, true, true, true), 45350u, Struct_1(-2004f, 83753u, 170f, vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(44731u, 32u)], 58116u, 1u), vec2<f32>(-478f, 1109f)), Struct_2(vec4<f32>(-1618f, -146f, 275f, 528f), Struct_1(290f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 264f, vec4<u32>(1u, 17698u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 1u), vec2<f32>(898f, -1000f)), Struct_1(592f, global1[_wgslsmith_index_u32(26201u, 32u)], -131f, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73732u, 32u)], 32u)], 32u)], 32u)], 9340u, 4294967295u, 58410u), vec2<f32>(-719f, 538f))), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(99100u, 32u)])), false), func_4(vec3<i32>(-1048i, var_0.a, 19085i), Struct_5(Struct_3(var_2, u_input.a.x, Struct_1(498f, 0u, 1101f, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66305u, 32u)], 32u)], 30609u, global1[_wgslsmith_index_u32(60001u, 32u)]), vec2<f32>(1182f, -904f)), Struct_2(vec4<f32>(786f, -488f, 625f, -459f), Struct_1(-244f, global1[_wgslsmith_index_u32(4294967295u, 32u)], 2010f, vec4<u32>(7114u, 72230u, 1u, u_input.a.x), vec2<f32>(-1990f, -1172f)), Struct_1(1000f, global1[_wgslsmith_index_u32(4294967295u, 32u)], 2116f, vec4<u32>(1u, global1[_wgslsmith_index_u32(52840u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<f32>(1111f, -691f))), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 4187u, 4294967295u, u_input.a.x)), true), Struct_2(vec4<f32>(815f, 1346f, -120f, 1000f), Struct_1(-417f, 19552u, 319f, vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec2<f32>(-372f, -848f)), Struct_1(-1219f, u_input.a.x, 269f, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29815u, 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], u_input.a.x, u_input.a.x), vec2<f32>(1592f, 1012f)))).a.d).a.d), func_4(-vec3<i32>(var_0.a, -2147483647i, -6263i), Struct_5(Struct_3(var_2, u_input.a.x, Struct_1(-430f, 0u, 1031f, vec4<u32>(u_input.a.x, 0u, 11054u, u_input.a.x), vec2<f32>(1220f, -401f)), Struct_2(vec4<f32>(936f, -110f, 665f, 526f), Struct_1(-112f, u_input.a.x, 309f, vec4<u32>(global1[_wgslsmith_index_u32(51778u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(69877u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), vec2<f32>(698f, 1000f)), Struct_1(423f, 118906u, -1502f, vec4<u32>(global1[_wgslsmith_index_u32(81896u, 32u)], 41962u, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<f32>(-2828f, 670f))), vec4<u32>(1441u, 0u, 24997u, u_input.a.x)), true), Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1196f, 557f, 1221f, -556f))), Struct_1(119f, 32593u, 544f, vec4<u32>(21642u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 32u)], 32u)], 82280u, u_input.a.x), vec2<f32>(-1000f, 501f)), func_4(var_1.yzy, Struct_5(Struct_3(var_2, u_input.a.x, Struct_1(-442f, u_input.a.x, -396f, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7312u, 32u)], 32u)], 1u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<f32>(1712f, -1661f)), Struct_2(vec4<f32>(1000f, 1000f, 275f, 862f), Struct_1(1839f, 1u, 660f, vec4<u32>(33761u, 0u, global1[_wgslsmith_index_u32(0u, 32u)], u_input.a.x), vec2<f32>(554f, -141f)), Struct_1(-1000f, 4294967295u, 939f, vec4<u32>(35293u, global1[_wgslsmith_index_u32(11613u, 32u)], u_input.a.x, global1[_wgslsmith_index_u32(0u, 32u)]), vec2<f32>(-267f, 1038f))), vec4<u32>(0u, global1[_wgslsmith_index_u32(18029u, 32u)], 1u, 1u)), var_2.x), Struct_2(vec4<f32>(1444f, 1000f, -1220f, 369f), Struct_1(-251f, 19250u, 505f, vec4<u32>(u_input.a.x, 21116u, 4294967295u, 4294967295u), vec2<f32>(330f, -1034f)), Struct_1(-849f, 4294967295u, 1000f, vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 32u)], 32864u, 76632u), vec2<f32>(-198f, -393f)))).a.d.c)).a.d), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, -1383f, 978f, -761f)) + func_4(var_1.zxw, func_4(vec3<i32>(var_0.a, var_0.a, -1i), Struct_5(Struct_3(vec4<bool>(var_2.x, true, false, var_2.x), 52502u, Struct_1(1127f, u_input.a.x, 409f, vec4<u32>(u_input.a.x, 58648u, 4294967295u, global1[_wgslsmith_index_u32(0u, 32u)]), vec2<f32>(-1272f, 857f)), Struct_2(vec4<f32>(1509f, -890f, 371f, -784f), Struct_1(2636f, 4294967295u, -1000f, vec4<u32>(u_input.a.x, 1u, 1u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<f32>(-676f, 749f)), Struct_1(-558f, 1u, 1306f, vec4<u32>(23256u, global1[_wgslsmith_index_u32(93806u, 32u)], u_input.a.x, u_input.a.x), vec2<f32>(-435f, -1219f))), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a.x, 0u, u_input.a.x)), var_2.x), Struct_2(vec4<f32>(-2049f, -1463f, 611f, 1445f), Struct_1(1448f, 4294967295u, -1154f, vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec2<f32>(-114f, 393f)), Struct_1(1765f, global1[_wgslsmith_index_u32(0u, 32u)], 1249f, vec4<u32>(u_input.a.x, 43469u, global1[_wgslsmith_index_u32(21776u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), vec2<f32>(1700f, 1601f)))), Struct_2(vec4<f32>(-1541f, -392f, -507f, -635f), Struct_1(1395f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -524f, vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(3026u, 32u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<f32>(-221f, 1000f)), Struct_1(487f, u_input.a.x, -1000f, vec4<u32>(32830u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec2<f32>(-199f, 910f)))).a.d.a), Struct_1(1595f, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_4(_wgslsmith_add_vec3_i32(var_1.zyx, var_1.yxx), func_4(var_1.yxz, Struct_5(Struct_3(vec4<bool>(false, var_2.x, var_2.x, var_2.x), 15120u, Struct_1(-1498f, u_input.a.x, 352f, vec4<u32>(59001u, 0u, 69331u, 0u), vec2<f32>(-1222f, -101f)), Struct_2(vec4<f32>(401f, 390f, -869f, 1000f), Struct_1(317f, 31904u, 830f, vec4<u32>(u_input.a.x, 21264u, 1u, 57662u), vec2<f32>(-819f, 1307f)), Struct_1(-458f, u_input.a.x, 1041f, vec4<u32>(u_input.a.x, u_input.a.x, 37091u, 4294967295u), vec2<f32>(-1537f, 1006f))), vec4<u32>(global1[_wgslsmith_index_u32(26731u, 32u)], 4294967295u, u_input.a.x, 20178u)), var_2.x), Struct_2(vec4<f32>(180f, -594f, -1000f, 745f), Struct_1(1000f, 0u, -1513f, vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], u_input.a.x, 66524u, 0u), vec2<f32>(-1000f, -758f)), Struct_1(-1270f, 4294967295u, 358f, vec4<u32>(55489u, 0u, 1u, 0u), vec2<f32>(-159f, -351f)))), func_4(vec3<i32>(global2[_wgslsmith_index_u32(78991u, 20u)], var_1.x, u_input.b.x), Struct_5(Struct_3(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), 1u, Struct_1(598f, 1u, -872f, vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), vec2<f32>(1000f, -1890f)), Struct_2(vec4<f32>(1170f, 1168f, -138f, 960f), Struct_1(331f, u_input.a.x, -473f, vec4<u32>(45663u, 13577u, 1091u, global1[_wgslsmith_index_u32(1u, 32u)]), vec2<f32>(1146f, 893f)), Struct_1(1710f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 1000f, vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 18446u, 42619u, u_input.a.x), vec2<f32>(484f, -846f))), vec4<u32>(29718u, global1[_wgslsmith_index_u32(33035u, 32u)], u_input.a.x, 1u)), true), Struct_2(vec4<f32>(858f, -427f, -363f, 1027f), Struct_1(1000f, u_input.a.x, 403f, vec4<u32>(35864u, 1u, 0u, u_input.a.x), vec2<f32>(-1000f, 388f)), Struct_1(-2239f, u_input.a.x, 1000f, vec4<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(31069u, 32u)], global1[_wgslsmith_index_u32(23100u, 32u)]), vec2<f32>(-488f, 143f)))).a.d).a.c.d.x, 32u)], 32u)], 32u)], 815f, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(29705u, 32u)], 27108u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(14596u, u_input.a.x, u_input.a.x, 19152u)) & (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15271u, 32u)], 32u)], 1u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 22133u) ^ vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 26496u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(abs(-388f)))), Struct_1(_wgslsmith_f_op_f32(max(func_4(u_input.c.yxy, Struct_5(Struct_3(var_2, u_input.a.x, Struct_1(1317f, 38294u, -1000f, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 32u)], 32u)], 0u, global1[_wgslsmith_index_u32(0u, 32u)]), vec2<f32>(684f, 1570f)), Struct_2(vec4<f32>(325f, 1458f, 1000f, -949f), Struct_1(-781f, u_input.a.x, 267f, vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 32u)], u_input.a.x, u_input.a.x), vec2<f32>(383f, 1339f)), Struct_1(-316f, u_input.a.x, -846f, vec4<u32>(0u, 14239u, u_input.a.x, 4294967295u), vec2<f32>(185f, 490f))), vec4<u32>(25678u, global1[_wgslsmith_index_u32(1u, 32u)], 4294967295u, u_input.a.x)), var_2.x), Struct_2(vec4<f32>(2069f, -111f, -530f, -292f), Struct_1(-1372f, 0u, -451f, vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(-881f, -1298f)), Struct_1(-884f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -139f, vec4<u32>(0u, u_input.a.x, u_input.a.x, 13972u), vec2<f32>(1000f, -656f)))).a.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -810f))), global1[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_div_u32(19726u, 1u), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1588f)), ~firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(49486u, 32u)], u_input.a.x, 0u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1559f, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1413f, -737f)))))).a;
    var_0 = Struct_4(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yy, u_input.a.x, ~vec4<u32>(52110u, _wgslsmith_dot_vec3_u32(var_3.c.d.yyz & var_3.e.zzw, ~vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)])), 4294967295u, var_3.e.x << (_wgslsmith_add_u32(24948u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]) % 32u)), func_4(u_input.b, Struct_5(func_4(select(vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 20u)], 0i), var_1.zzz, var_3.a.zxx), func_4(vec3<i32>(u_input.b.x, var_1.x, var_1.x), Struct_5(var_3, var_3.a.x), var_3.d), var_3.d).a, select(select(false, var_3.a.x, true), true, true)), func_4(vec3<i32>(0i, _wgslsmith_mult_i32(-16686i, -1i), 6644i), Struct_5(func_4(var_1.xyx, Struct_5(var_3, false), Struct_2(vec4<f32>(var_3.d.c.c, -1507f, var_3.d.a.x, -396f), var_3.c, var_3.c)).a, var_3.a.x), func_4(~var_1.yyy, func_4(vec3<i32>(1i, -2147483647i, 43586i), Struct_5(Struct_3(var_3.a, 44217u, var_3.c, Struct_2(vec4<f32>(-1850f, -192f, -800f, -245f), var_3.c, var_3.c), var_3.c.d), false), Struct_2(vec4<f32>(469f, var_3.c.e.x, var_3.d.c.a, var_3.c.c), var_3.d.c, Struct_1(-1316f, 28044u, 195f, var_3.d.c.d, vec2<f32>(var_3.c.a, var_3.d.a.x)))), Struct_2(var_3.d.a, Struct_1(var_3.c.c, 1u, -153f, var_3.d.c.d, vec2<f32>(635f, -641f)), Struct_1(-792f, var_3.d.b.d.x, var_3.c.a, vec4<u32>(u_input.a.x, 10955u, var_3.c.d.x, global1[_wgslsmith_index_u32(5697u, 32u)]), vec2<f32>(-1036f, var_3.c.a)))).a.d).a.d).a.d.c.c);
}

