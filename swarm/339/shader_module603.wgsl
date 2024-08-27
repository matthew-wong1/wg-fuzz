struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = Struct_4(~(-(~(vec4<i32>(-92285i, 0i, -1i, 37271i) << (vec4<u32>(u_input.a, arg_1, 4294967295u, 4294967295u) % vec4<u32>(32u))))), ~((vec4<u32>(arg_1, u_input.a, global1.a, 69229u) | vec4<u32>(0u, 26865u, u_input.b, 24434u)) & ~vec4<u32>(arg_1, 26610u, 0u, arg_2.a)) & min(vec4<u32>(33706u << (1u % 32u), 36183u >> (arg_2.a % 32u), ~29439u, ~1u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 65244u, 1u, arg_2.a), vec4<u32>(u_input.a, global1.a, 0u, arg_1)), firstLeadingBit(vec4<u32>(global1.a, u_input.a, 31480u, 8260u)))), Struct_2(arg_2, vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-41576i, 14303i, -1i, -2147483647i), vec4<i32>(-2147483647i, 1i, -24129i, 25662i)), -2147483647i << (arg_2.a % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(43611i, -2147483647i, -31335i, -2147483647i), vec4<i32>(-35832i, -1i, 0i, 0i)) >> (_wgslsmith_clamp_u32(arg_2.a, global1.a, arg_2.a) % 32u)), arg_2, Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1, arg_1), global1.a), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)))), Struct_2(arg_2, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(0i, 5251i)), 2147483647i), Struct_1(86331u, arg_2.b, global1.c), arg_2));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(19028u, ~(~(~4294967295u))), arg_1, ~abs(~_wgslsmith_mult_u32(var_0.d.d.a, 0u)), ~_wgslsmith_clamp_u32(22438u, _wgslsmith_sub_u32(global1.a, select(global1.a, 55683u, arg_0)), ~(~40191u)));
    var var_2 = var_0.d.b.x;
    var var_3 = ~64974i;
    let var_4 = Struct_2(var_0.c.a, _wgslsmith_sub_vec2_i32(-(~var_0.c.b), -_wgslsmith_clamp_vec2_i32(var_0.c.b, vec2<i32>(var_0.d.b.x, -2338i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.b.x, var_0.d.b.x), var_0.d.b))), Struct_1(u_input.a, arg_2.b, 2100f), Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2012f, -1000f, arg_2.c, -497f)))), var_0.c.d.b.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.c, global1.c, _wgslsmith_f_op_f32(860f - var_4.d.c)) - global1.b.zwz));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> i32 {
    global1 = Struct_1(firstTrailingBit(1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b, global1.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(273f)), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(ceil(global1.c)), _wgslsmith_f_op_f32(570f * 235f)))), -655f);
    var var_0 = Struct_3(global1.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true, u_input.b, Struct_1(_wgslsmith_div_u32(arg_0.x, u_input.a), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1026f))))), Struct_2(Struct_1(_wgslsmith_mult_u32(4294967295u, arg_0.x) & u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(-868f, arg_1, arg_1, arg_1))), arg_1), vec2<i32>(1i, 1i), Struct_1(_wgslsmith_mod_u32(global1.a, 13801u), global1.b, _wgslsmith_f_op_f32(-arg_1)), Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(521f, arg_2)))), Struct_2(Struct_1(13964u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 520f, -135f, 281f) - global1.b) - _wgslsmith_f_op_vec4_f32(abs(global1.b))), -263f), vec2<i32>(1i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(72559i, -1i, -62210i), vec3<i32>(0i, 1i, -2147483647i)))), Struct_1(~select(arg_0.x, arg_0.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_2, 376f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2)), -1796f)), Struct_1(~reverseBits(arg_0.x), vec4<f32>(-714f, arg_2, _wgslsmith_f_op_f32(trunc(-1254f)), _wgslsmith_f_op_f32(min(2310f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f - global1.c)))), _wgslsmith_f_op_vec4_f32(select(global1.b, global1.b, vec4<bool>(!all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(-736f - arg_2)))));
    let var_1 = Struct_4(-vec4<i32>(~(var_0.c.b.x | var_0.c.b.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-33199i, var_0.c.b.x, -47626i, var_0.d.b.x)), -vec4<i32>(var_0.d.b.x, var_0.c.b.x, -1i, var_0.d.b.x)), abs(_wgslsmith_sub_i32(var_0.c.b.x, var_0.d.b.x)), 26026i), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.a, 4294967295u), 56465u, 1u), var_0.d.c.a), countOneBits(min(min(global1.a, u_input.b), _wgslsmith_sub_u32(u_input.b, var_0.d.a.a))), 0u, u_input.a), var_0.d, Struct_2(var_0.c.c, var_0.d.b, var_0.d.d, Struct_1(~select(global1.a, u_input.b, true), vec4<f32>(_wgslsmith_div_f32(253f, var_0.b.x), global1.b.x, _wgslsmith_f_op_f32(trunc(-1444f)), var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(377f + arg_2))))));
    let var_2 = var_1.a.zxx;
    global0 = -10022i;
    return var_2.x;
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    global0 = func_2(firstLeadingBit(vec4<u32>(~(~1u), u_input.b, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(23242u, global1.a, 4294967295u, global1.a), vec4<u32>(37885u, 0u, u_input.a, 49049u))), _wgslsmith_sub_u32(u_input.a, global1.a))), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -375f))), _wgslsmith_f_op_f32(-365f + global1.c));
    let var_0 = Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + -460f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-556f, global1.c)))))));
    global1 = Struct_1(abs(~_wgslsmith_mod_u32(var_0.a, 61092u) | 34546u), var_0.b, _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-266f, arg_0.x) - global1.b.x)))));
    var var_1 = Struct_2(Struct_1(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 4294967295u), ~vec2<u32>(global1.a, global1.a))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.x, global1.b.x, arg_0.x, -624f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(512f, -1640f, var_0.c, var_0.b.x) + var_0.b) + vec4<f32>(548f, var_0.c, var_0.b.x, 399f)))), 350f), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(firstTrailingBit(reverseBits(24106i)), _wgslsmith_mod_i32(9557i >> (u_input.a % 32u), abs(26030i)))), var_0, var_0);
    let var_2 = Struct_2(var_1.d, vec2<i32>(select(var_1.b.x, func_2(~vec4<u32>(global1.a, 88296u, 1u, global1.a), -1000f, _wgslsmith_div_f32(var_0.c, var_0.b.x)), all(vec2<bool>(true, false))), -1i), var_1.c, var_0);
    return Struct_4(_wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(var_2.b.x, -2147483647i, -2147483647i, 33167i)) >> (~abs(vec4<u32>(1u, global1.a, 1u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(var_2.b.x, 4282i, var_2.b.x, -1i)), ~abs(vec4<i32>(var_2.b.x, var_2.b.x, 27437i, -1i)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_2.a.a, var_0.a, 27928u, u_input.a)), ~vec4<u32>(4294967295u, var_2.d.a, global1.a, 2792u) ^ firstLeadingBit(vec4<u32>(4294967295u, var_0.a, 52348u, u_input.b))), ~vec4<u32>(_wgslsmith_clamp_u32(var_0.a, var_1.d.a, global1.a), var_2.a.a, var_2.d.a, min(4294967295u, 1u))), Struct_2(var_1.a, select(vec2<i32>(var_2.b.x << (1u % 32u), reverseBits(-13444i)), var_2.b, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), global1.c > var_1.a.b.x)), var_2.a, Struct_1(56164u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, arg_0.x, var_1.a.c, var_0.b.x) * vec4<f32>(arg_0.x, global1.b.x, 410f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(var_0.b * var_2.a.b)), _wgslsmith_f_op_f32(1925f * 178f))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.b.zwy);
    var var_1 = ~min(~var_0.b, vec4<u32>(~1u, 0u, 8945u, ~func_1(vec3<f32>(1606f, -849f, 810f)).d.a.a));
    var var_2 = !select(vec3<bool>(all(vec2<bool>(false, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), true), vec3<bool>(false, false, true), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_3 = -554f;
    var var_4 = var_0.c.b >> (vec2<u32>(29928u, _wgslsmith_mult_u32(~4294967295u, 1u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_dot_vec2_u32(min(reverseBits(var_0.b.wy), ~_wgslsmith_sub_vec2_u32(var_1.yx, var_0.b.xy)), ~vec2<u32>(19966u, min(33819u, u_input.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.d.c * -487f) - 429f), 1341f) * global1.b.zyw), _wgslsmith_sub_vec4_i32(-(~firstLeadingBit(vec4<i32>(-2147483647i, var_4.x, var_0.a.x, var_0.c.b.x))), var_0.a ^ select(min(vec4<i32>(-2147483647i, var_4.x, var_0.a.x, var_0.a.x), vec4<i32>(17484i, 28175i, var_4.x, var_4.x)), _wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(37430i, var_4.x, var_4.x, var_0.c.b.x)), select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), var_2.x))));
}

