struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(204f, 405f, 138f, -269f), vec4<f32>(-948f, 659f, -1687f, -1951f), vec4<f32>(-992f, -765f, -319f, 249f), vec4<f32>(-515f, 436f, -929f, 496f), vec4<f32>(575f, 1950f, 2236f, -546f), vec4<f32>(184f, 846f, -965f, 616f), vec4<f32>(796f, 409f, -316f, -694f), vec4<f32>(-560f, 1360f, 432f, -1732f), vec4<f32>(1030f, -839f, -576f, 1342f), vec4<f32>(-551f, -553f, -1000f, 445f), vec4<f32>(-974f, 418f, -1812f, 1642f), vec4<f32>(-1000f, 1396f, -1634f, 931f), vec4<f32>(1000f, 2010f, 175f, -1188f), vec4<f32>(-1037f, 1267f, 1063f, -733f), vec4<f32>(-1494f, -1374f, 1477f, 1150f), vec4<f32>(-242f, 260f, 705f, 580f), vec4<f32>(1725f, -506f, -1272f, -929f), vec4<f32>(657f, -1047f, 1824f, 916f), vec4<f32>(-1037f, 1459f, -1189f, -216f), vec4<f32>(-673f, -1045f, 1000f, 276f), vec4<f32>(-1000f, 2416f, -784f, -587f), vec4<f32>(-515f, 910f, -1000f, -477f), vec4<f32>(128f, 1173f, 1000f, 236f), vec4<f32>(-451f, -236f, 432f, 2683f), vec4<f32>(209f, 1313f, -1043f, -207f), vec4<f32>(288f, 1000f, 1000f, 1121f), vec4<f32>(1845f, 279f, -191f, -538f), vec4<f32>(-320f, 1377f, -375f, -1114f), vec4<f32>(486f, 1873f, -595f, -605f), vec4<f32>(310f, -2072f, -764f, -1633f), vec4<f32>(331f, -1127f, -1000f, -2212f));

var<private> global2: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> vec3<bool> {
    var var_0 = max(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(18183i, arg_0.x, arg_0.x, 0i) ^ -vec4<i32>(arg_1, 50965i, u_input.d, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, firstTrailingBit(arg_1), arg_0.x), vec4<i32>(-arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 13453i), vec2<i32>(-2147483647i, 0i)), firstLeadingBit(arg_0.x), u_input.d))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(13398i, arg_0.x), arg_0.x, arg_1, -1i) << ((vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.b.x) ^ min(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 26854u), vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 1u))) % vec4<u32>(32u)), vec4<i32>(-1i) * -(~vec4<i32>(u_input.d, arg_1, arg_1, arg_1)), vec4<i32>(max(firstLeadingBit(-1i), 1i), -1i, i32(-1i) * -3424i, arg_0.x | -19237i)));
    var var_1 = -max(vec4<i32>(countOneBits(_wgslsmith_sub_i32(12324i, var_0.x)), -2147483647i, -(i32(-1i) * -22546i), countOneBits(-1i)), ~vec4<i32>(2147483647i, 0i, -49511i, arg_1) | (~vec4<i32>(u_input.d, 20135i, 2147483647i, u_input.d) << ((vec4<u32>(5730u, u_input.c.x, u_input.a, u_input.a) ^ vec4<u32>(u_input.b.x, u_input.b.x, 15935u, 138502u)) % vec4<u32>(32u))));
    var var_2 = firstTrailingBit(1u);
    let var_3 = vec2<bool>(false, false);
    var_0 = abs(-abs(max(countOneBits(vec4<i32>(arg_0.x, arg_1, 2147483647i, var_0.x)), ~vec4<i32>(u_input.d, arg_1, 2147483647i, 0i))));
    return select(vec3<bool>(any(vec4<bool>(true, arg_2, var_3.x, false)) || arg_2, false, true), select(select(vec3<bool>(global0.x & arg_2, !global0.x, true), !select(vec3<bool>(arg_2, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, var_3.x)), arg_2), vec3<bool>(true, true, true), all(select(!vec4<bool>(true, var_3.x, var_3.x, var_3.x), !vec4<bool>(arg_2, true, var_3.x, global0.x), true))), vec3<bool>(arg_2 & true, global0.x, arg_2));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: u32) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(step(1597f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-525f, _wgslsmith_div_f32(-291f, -895f))))));
    global0 = select(!vec3<bool>(global0.x || false, true | global0.x, any(!vec3<bool>(true, true, global0.x))), func_3(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(min(arg_1, arg_1), ~vec3<i32>(arg_1.x, u_input.d, 27387i)), arg_1 | -vec3<i32>(arg_1.x, -2147483647i, 2147483647i)), arg_1.x, global0.x), all(vec2<bool>(true, 16996u != select(arg_2, 1u, global0.x))));
    let var_0 = vec2<bool>(true, true);
    let var_1 = global0.x;
    let var_2 = Struct_4(_wgslsmith_add_i32(u_input.d << (u_input.a % 32u), _wgslsmith_dot_vec3_i32(arg_1 | -vec3<i32>(-2147483647i, u_input.d, u_input.d), reverseBits(arg_1))), Struct_2(Struct_1(~57690u, any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f - -1008f)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 8169u, 0u) >> (vec3<u32>(u_input.a, 44935u, arg_0.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.c.x, 20401u, 92750u))), !select(select(vec4<bool>(false, global0.x, var_0.x, true), vec4<bool>(global0.x, global0.x, true, var_0.x), global0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.x, true, global0.x, false), false), var_0.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(11588u, arg_0.x, arg_2), vec3<u32>(4294967295u, 0u, arg_0.x)), abs(vec3<u32>(u_input.b.x, u_input.a, arg_2)))), 31u)], select(!vec3<bool>(false, false, global0.x), func_3(arg_1, -44217i, all(vec4<bool>(global0.x, global0.x, false, global0.x))), vec3<bool>(var_0.x, true, false))), !(!select(vec4<bool>(false, var_0.x, true, global0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(global0.x, true, false, var_0.x), global0.x), select(vec4<bool>(true, global0.x, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, global0.x, var_0.x, true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, -554f, 1644f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1255f, 1641f, 222f) * vec3<f32>(2267f, -869f, -1676f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-596f, -2204f, 624f))), select(vec3<bool>(false, true, false), !vec3<bool>(var_0.x, global0.x, true), all(vec2<bool>(false, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(674f, -977f, 967f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(619f, 2210f, 152f) + vec3<f32>(1428f, -375f, -402f)))), select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(var_0.x && global0.x, false, false), true))));
    return Struct_4(arg_1.x, var_2.b, select(select(vec4<bool>(var_0.x, any(var_2.b.b), true, any(vec2<bool>(true, var_2.c.x))), !vec4<bool>(true, global0.x, var_0.x, var_2.c.x), !(!var_2.c)), select(var_2.c, select(var_2.b.b, !var_2.c, !vec4<bool>(false, var_2.b.b.x, var_0.x, global0.x)), false), !vec4<bool>(-22925i >= var_2.a, var_2.c.x | true, true, any(vec3<bool>(var_0.x, var_0.x, var_2.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1506f, 1971f, var_2.d.x), vec3<f32>(-319f, -2446f, var_2.d.x))), _wgslsmith_f_op_vec3_f32(-var_2.b.c.zzx), var_2.b.d.x)) - _wgslsmith_f_op_vec3_f32(-var_2.d)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(593f)), _wgslsmith_f_op_f32(sign(-416f)), _wgslsmith_f_op_f32(trunc(var_2.d.x))), vec3<f32>(_wgslsmith_f_op_f32(763f + 380f), -705f, var_2.d.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_4) -> Struct_4 {
    global1 = array<vec4<f32>, 31>();
    let var_0 = arg_3.b.a;
    let var_1 = Struct_1(~(_wgslsmith_mod_u32(arg_2, 0u) | (select(u_input.a, u_input.a, global0.x) & 1u)), _wgslsmith_f_op_f32(-1000f - -276f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1615f))), _wgslsmith_f_op_f32(step(func_2(u_input.b, _wgslsmith_mult_vec3_i32(firstLeadingBit(arg_1.zzw), -vec3<i32>(arg_1.x, -1i, -16762i)), arg_2).b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, 1000f)))), arg_3.b.a.d);
    global0 = !vec3<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 14011i, u_input.d), arg_1.zzx) | (arg_3.a ^ 2147483647i)) == abs(-39487i), arg_3.c.x, func_3(vec3<i32>(0i, u_input.d | -2147483647i, ~arg_3.a), _wgslsmith_mult_i32(arg_3.a, firstTrailingBit(22801i)), true).x);
    global0 = vec3<bool>(!func_2(var_0.d.yy, abs(arg_1.yyw), select(3731u, var_0.a, true)).b.a.b, _wgslsmith_f_op_f32(ceil(514f)) < arg_3.d.x, any(arg_3.c.xwz));
    return Struct_4(arg_3.a, Struct_2(arg_3.b.a, !arg_3.b.b, arg_3.b.c, vec3<bool>(global0.x, true, true)), !vec4<bool>(false, arg_0.x, !func_3(vec3<i32>(-22028i, 0i, -16639i), u_input.d, var_1.b).x, firstLeadingBit(arg_3.a) < -u_input.d), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.d, vec3<f32>(298f, -558f, -891f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d.x, var_0.c, -640f) - arg_3.d) - _wgslsmith_f_op_vec3_f32(arg_3.d * arg_3.d))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_3.b.c.yzx, vec3<f32>(var_0.c, -1329f, 1000f))) + arg_3.d))))));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.d.xz))) + arg_1.d.zx)));
    var var_1 = _wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(arg_1.d.zz - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(max(arg_1.b.c.wx, var_0.a)))))));
    let var_2 = arg_1.b;
    let var_3 = true | all(var_2.b.wyw);
    let var_4 = all(global0.xz);
    return func_4(vec3<bool>(!var_3, true, !(_wgslsmith_sub_i32(2147483647i, u_input.d) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -10311i), vec3<i32>(28335i, -1i, u_input.d)))), vec4<i32>(~(~(-1281i)), ~u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0i), vec2<i32>(arg_1.a, 29808i) | vec2<i32>(2147483647i, 0i)) >> (_wgslsmith_dot_vec3_u32(arg_1.b.a.d, _wgslsmith_add_vec3_u32(arg_1.b.a.d, vec3<u32>(arg_1.b.a.a, var_2.a.a, var_2.a.d.x))) % 32u), ~arg_1.a), arg_0, Struct_4(countOneBits(_wgslsmith_div_i32(firstLeadingBit(u_input.d), 0i)), arg_1.b, vec4<bool>(all(!var_2.b), false, func_2(vec2<u32>(0u, u_input.b.x), abs(vec3<i32>(arg_1.a, -12027i, 41986i)), arg_1.b.a.d.x).c.x, (-1i ^ u_input.d) > ~72135i), func_2(~arg_1.b.a.d.yy, vec3<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.d, 3568i), -arg_1.a), ~1u).d));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = func_5(arg_2.a.a.d.x, func_4(!(!select(vec3<bool>(true, false, arg_2.a.d.x), arg_1.d, arg_2.a.d)), -vec4<i32>(-1i, -19920i, _wgslsmith_div_i32(-2147483647i, arg_0.x), -1i), ~1u, func_2(arg_2.a.a.d.yz, abs(vec3<i32>(arg_0.x, -17404i, 1i)), _wgslsmith_mod_u32(arg_1.a.d.x, 27u))));
    global0 = vec3<bool>(all(func_5(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(9597u, 1u, u_input.c.x), arg_1.a.d), ~arg_1.a.d), func_4(vec3<bool>(var_0.b.b.x, global0.x, arg_2.a.d.x), reverseBits(vec4<i32>(15898i, 0i, u_input.d, -3380i)), var_0.b.a.a, func_4(vec3<bool>(false, false, true), vec4<i32>(56086i, var_0.a, u_input.d, arg_0.x), arg_2.a.a.a, Struct_4(1i, Struct_2(var_0.b.a, var_0.c, vec4<f32>(-868f, var_0.d.x, -470f, var_0.d.x), arg_1.d), vec4<bool>(false, true, false, var_0.c.x), arg_1.c.zwz)))).b.b), all(vec4<bool>(any(var_0.c.zxx), !any(vec3<bool>(var_0.b.b.x, false, arg_1.a.b)), true, all(arg_1.b.yzx))), _wgslsmith_f_op_f32(992f * func_4(vec3<bool>(false, true, true), vec4<i32>(1i, 5186i, arg_0.x, arg_0.x), reverseBits(u_input.a), func_5(0u, Struct_4(0i, Struct_2(Struct_1(0u, arg_2.a.b.x, arg_2.b, vec3<u32>(31034u, u_input.a, u_input.c.x)), var_0.b.b, vec4<f32>(-1904f, 362f, -858f, arg_2.a.a.c), arg_1.b.wyx), arg_2.a.b, arg_2.a.c.zww))).d.x) == -1139f);
    let var_1 = ~(~abs(~(~vec4<u32>(9140u, arg_2.a.a.d.x, 22082u, 29318u))));
    var var_2 = ~u_input.d;
    return ~countOneBits(vec3<i32>(-1i) * -vec3<i32>(2147483647i, arg_0.x, -30274i));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32) -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(593f, 1782f) - vec2<f32>(757f, 835f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1670f, 1539f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-427f, -829f), vec2<f32>(130f, -1407f)))))));
    global1 = array<vec4<f32>, 31>();
    global1 = array<vec4<f32>, 31>();
    var var_1 = func_2(~u_input.b, arg_0, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, u_input.a, 60378u), ~firstLeadingBit(vec4<u32>(0u, 50935u, u_input.a, 28611u)))).b.a;
    var var_2 = countOneBits(_wgslsmith_div_vec3_i32(arg_0, vec3<i32>(max(5730i, arg_0.x), -arg_1, -45539i & arg_0.x)) ^ ~(-vec3<i32>(2147483647i, u_input.d, arg_0.x)));
    return _wgslsmith_f_op_f32(-func_5(u_input.a, func_4(vec3<bool>(var_1.b, true, false), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_2.x, 1i, var_2.x), vec4<i32>(-2147483647i, arg_0.x, arg_1, u_input.d), vec4<i32>(-1i, arg_1, arg_0.x, 29458i)), u_input.b.x, Struct_4(18443i, Struct_2(Struct_1(u_input.b.x, global0.x, 1000f, var_1.d), vec4<bool>(true, global0.x, var_1.b, true), global1[_wgslsmith_index_u32(0u, 31u)], vec3<bool>(true, true, true)), vec4<bool>(false, true, var_1.b, global0.x), vec3<f32>(-125f, var_1.c, -565f)))).b.c.x) == var_1.c;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_5) -> vec4<u32> {
    var var_0 = arg_2.a.a.a;
    global1 = array<vec4<f32>, 31>();
    global1 = array<vec4<f32>, 31>();
    global1 = array<vec4<f32>, 31>();
    let var_1 = -abs(firstLeadingBit(vec3<i32>(-1i, u_input.d, u_input.d) & vec3<i32>(u_input.d, -22999i, -1i))) << (abs(arg_1.d) % vec3<u32>(32u));
    return select(countOneBits(max(vec4<u32>(4294967295u, 11030u, 14408u, u_input.b.x), ~vec4<u32>(26518u, 1u, arg_2.a.a.d.x, 0u)) | firstLeadingBit(~vec4<u32>(arg_1.d.x, 1u, 0u, 10702u))), ~(~((vec4<u32>(arg_1.d.x, arg_1.a, arg_2.a.a.a, 1u) & vec4<u32>(0u, 1u, arg_2.a.a.d.x, u_input.c.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d.x, 4294967295u, 25831u, 351u), vec4<u32>(4294967295u, 31723u, u_input.b.x, arg_1.a)) % vec4<u32>(32u)))), arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-908f, 172f), -179f)), 1f))), 284f);
    let var_1 = select(vec4<u32>(0u ^ (abs(u_input.a) | u_input.b.x), 14443u, 1u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(max(20991u, u_input.c.x), ~u_input.c.x))), func_7(964f, Struct_1(~(~1u), func_6(func_1(vec2<i32>(0i, -1i), Struct_2(Struct_1(5930u, global0.x, var_0.x, vec3<u32>(u_input.c.x, 0u, 1u)), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<f32>(var_0.x, 1223f, -599f, var_0.x), vec3<bool>(global0.x, global0.x, true)), Struct_3(Struct_2(Struct_1(1u, true, var_0.x, vec3<u32>(u_input.c.x, 1u, 0u)), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<f32>(163f, var_0.x, var_0.x, -899f), vec3<bool>(false, false, global0.x)), 2496f)), -2147483647i), 107f, vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, 4294967295u), 1u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b))), Struct_3(Struct_2(Struct_1(1015u, global0.x, var_0.x, vec3<u32>(u_input.b.x, 104286u, u_input.b.x)), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, true), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1337f, 287f, -450f, -1041f)), !vec3<bool>(false, true, global0.x)), _wgslsmith_f_op_f32(749f - _wgslsmith_f_op_f32(-var_0.x))), Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2553f, var_0.x) + var_0.zz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-217f, var_0.x) + var_0.yz)))), func_2(select(abs(~vec2<u32>(1u, u_input.c.x)), u_input.b, !func_2(vec2<u32>(u_input.a, u_input.b.x), vec3<i32>(-2147483647i, u_input.d, -4605i), u_input.b.x).c.yx), vec3<i32>(u_input.d, abs(~(-28408i)), ~(-2147483647i)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21398u, u_input.a, 1u, u_input.c.x), vec4<u32>(u_input.b.x, 93819u, u_input.c.x, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 7508u, 0u), vec4<u32>(14032u, 1u, u_input.b.x, 405u)))).c);
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(879f))), -716f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-458f, var_0.x)))), _wgslsmith_div_f32(-419f, _wgslsmith_f_op_f32(156f - -1000f)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-var_0.xy));
    var var_3 = func_5(55029u, func_4(vec3<bool>(!global0.x, true, global0.x), vec4<i32>(i32(-1i) * -318i, u_input.d, _wgslsmith_sub_i32(u_input.d << (24870u % 32u), ~3000i), -_wgslsmith_div_i32(2147483647i, 54648i)), ~48200u, func_5(u_input.a, func_5(1u, func_4(vec3<bool>(true, global0.x, false), vec4<i32>(1i, u_input.d, -1i, u_input.d), 57865u, Struct_4(u_input.d, Struct_2(Struct_1(var_1.x, true, -1171f, var_1.xwz), vec4<bool>(global0.x, true, global0.x, global0.x), global1[_wgslsmith_index_u32(618u, 31u)], vec3<bool>(true, true, true)), vec4<bool>(false, global0.x, global0.x, false), vec3<f32>(1840f, 484f, var_2.a.x))))))).b.a;
    var var_4 = false;
    let var_5 = Struct_4(func_2(vec2<u32>(1141u ^ (var_1.x | 42147u), 1u), vec3<i32>(max(-7171i, max(u_input.d, u_input.d)), i32(-1i) * -1i, abs(-12836i)), var_1.x).a, func_2(~(~_wgslsmith_mod_vec2_u32(u_input.c, u_input.b)), vec3<i32>(~u_input.d, -u_input.d, ~24454i) & (vec3<i32>(-1i) * -vec3<i32>(0i, u_input.d, -2147483647i)), max(_wgslsmith_mult_u32(0u & var_1.x, countOneBits(76247u)), max(u_input.b.x, ~26815u))).b, vec4<bool>(select(select(global0.x, true, global0.x), func_6(-vec3<i32>(u_input.d, u_input.d, u_input.d), u_input.d), true), func_6(~countOneBits(vec3<i32>(u_input.d, u_input.d, u_input.d)), _wgslsmith_sub_i32(func_1(vec2<i32>(21358i, -1i), Struct_2(Struct_1(22145u, global0.x, var_0.x, var_3.d), vec4<bool>(var_3.b, global0.x, var_3.b, true), global1[_wgslsmith_index_u32(u_input.a, 31u)], vec3<bool>(false, global0.x, true)), Struct_3(Struct_2(Struct_1(var_3.d.x, false, 722f, var_1.wzx), vec4<bool>(global0.x, global0.x, var_3.b, false), vec4<f32>(3102f, var_2.a.x, var_3.c, var_2.a.x), vec3<bool>(global0.x, true, global0.x)), var_3.c)).x, u_input.d)), true, any(!(!vec4<bool>(global0.x, false, global0.x, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1876f, 292f, var_2.a.x) * vec3<f32>(2123f, -1000f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-804f, 669f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.x, 1438f, var_3.c)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(986f, 590f, var_0.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3.c, -521f) + vec3<f32>(738f, 1318f, -1026f))))), !func_2(_wgslsmith_mult_vec2_u32(var_3.d.yx, var_1.xy), select(vec3<i32>(u_input.d, 1i, u_input.d), vec3<i32>(u_input.d, 28705i, 61788i), vec3<bool>(true, var_3.b, global0.x)), ~u_input.a).c.zzy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -((vec4<i32>(u_input.d, -1i, 1i, var_5.a) & vec4<i32>(50163i, -5161i, 56040i, var_5.a)) | -vec4<i32>(-45594i, -2147483647i, -43600i, 0i)), vec4<f32>(var_3.c, func_4(func_5(4294967295u, func_5(var_5.b.a.a, Struct_4(u_input.d, var_5.b, vec4<bool>(false, var_5.b.b.x, false, global0.x), var_5.d))).b.d, ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_5.a, 0i, -1i, var_5.a), vec4<i32>(-74550i, -1i, u_input.d, 1i)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_3.d, vec3<u32>(var_1.x, var_5.b.a.a, var_1.x)), var_1.x), Struct_4(-20087i & u_input.d, Struct_2(var_5.b.a, vec4<bool>(true, true, true, false), vec4<f32>(var_0.x, var_2.a.x, -527f, var_0.x), var_5.c.yxw), func_5(0u, var_5).c, _wgslsmith_f_op_vec3_f32(ceil(var_5.b.c.wzw)))).b.a.c, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1685f, -831f), _wgslsmith_f_op_f32(595f * 1386f))), var_0.x)), var_5.a, vec4<u32>(max(1u >> (var_3.d.x % 32u), _wgslsmith_mod_u32(var_1.x, 15888u)), _wgslsmith_clamp_u32(~46260u, _wgslsmith_sub_u32(var_1.x, ~47308u), var_5.b.a.d.x), 5641u, 9335u), ~u_input.b.x);
}

