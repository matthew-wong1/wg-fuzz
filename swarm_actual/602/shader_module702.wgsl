struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<u32>(101145u, 65103u), false, vec4<f32>(-528f, -1092f, -142f, 660f), vec4<i32>(i32(-2147483648), -45314i, 0i, 2147483647i), 472f), Struct_2(vec2<u32>(4294967295u, 34399u), false, vec4<f32>(1667f, -417f, 323f, 258f), vec4<i32>(29302i, i32(-2147483648), -22194i, i32(-2147483648)), -610f), Struct_2(vec2<u32>(1u, 0u), true, vec4<f32>(1000f, -1712f, 366f, 911f), vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648)), 1763f), Struct_2(vec2<u32>(73487u, 74719u), false, vec4<f32>(-1029f, -1021f, 983f, -467f), vec4<i32>(i32(-2147483648), 7730i, 0i, i32(-2147483648)), 1181f), Struct_2(vec2<u32>(0u, 48071u), false, vec4<f32>(1835f, 135f, -860f, 389f), vec4<i32>(-13893i, i32(-2147483648), 1i, 1i), 432f), Struct_2(vec2<u32>(0u, 1u), true, vec4<f32>(265f, 984f, -341f, -871f), vec4<i32>(-34574i, 13497i, i32(-2147483648), -46825i), -2176f), Struct_2(vec2<u32>(10809u, 4294967295u), true, vec4<f32>(313f, -735f, -2026f, -389f), vec4<i32>(-7929i, 0i, i32(-2147483648), 0i), -1375f), Struct_2(vec2<u32>(10700u, 1u), true, vec4<f32>(-652f, 524f, -823f, 735f), vec4<i32>(58198i, 2147483647i, -11009i, 42808i), 151f));

var<private> global3: Struct_3 = Struct_3(false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> i32 {
    let var_0 = Struct_2(min(reverseBits(reverseBits(u_input.a.ww)), abs(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, global0.a.x), vec2<u32>(22049u, 4294967295u)), global0.a))), arg_2, global0.c, min(global0.d, -(_wgslsmith_clamp_vec4_i32(global0.d, global0.d, global0.d) << ((u_input.a >> (vec4<u32>(arg_0, u_input.a.x, global0.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x)))));
    var var_1 = !((var_0.b | all(!vec3<bool>(true, var_0.b, var_0.b))) && !var_0.b);
    global3 = Struct_3(true);
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 70498u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.a.x, 1u), u_input.a.yzz), 1u, var_0.b & var_0.b), 19563u), ~(arg_0 >> (arg_0 % 32u)));
    var var_3 = select(-(~1i), _wgslsmith_mod_i32(1i, -1i), !any(!vec2<bool>(arg_2, false)));
    return -select(-7409i, -2147483647i, true);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> f32 {
    global0 = Struct_2(vec2<u32>(abs(_wgslsmith_mult_u32(0u, 49743u) | _wgslsmith_div_u32(arg_1, 32698u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.b, arg_1), u_input.a.zzx))), global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3 - -1199f), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(global0.e + -724f), global0.c.x))), firstTrailingBit(vec4<i32>(global0.d.x, -2147483647i, global0.d.x, func_3(_wgslsmith_mult_u32(u_input.a.x, 12075u), global0.c.yx, true))), arg_3);
    let var_0 = _wgslsmith_div_vec4_f32(global0.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), 422f, true)) + _wgslsmith_div_f32(_wgslsmith_div_f32(1344f, global0.e), _wgslsmith_f_op_f32(exp2(arg_3)))), arg_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1159f + arg_3))), arg_0.c.x));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(~u_input.b, countOneBits(129623u), 0u, _wgslsmith_clamp_u32(arg_1, arg_1, 45832u))), u_input.a), ~vec4<u32>(global0.a.x, 46168u, 983u, reverseBits(~80800u)));
    var var_2 = _wgslsmith_sub_i32(reverseBits(56619i), _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -1i, max(_wgslsmith_mult_i32(-1i, global1.x), global0.d.x | -46656i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, global1.x, -13145i, -2147483647i), global0.d >> (u_input.a % vec4<u32>(32u)), select(vec4<bool>(true, arg_2.a, false, false), vec4<bool>(true, global3.a, global0.b, false), arg_2.a)), vec4<i32>(1i, global0.d.x | -26665i, ~global0.d.x, 44380i))));
    global0 = Struct_2(u_input.a.ww, false, global0.c, _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.d, global0.d, vec4<i32>(-1i, 27293i, 7092i, -2147483647i)), vec4<i32>(global0.d.x, arg_0.d.x, global1.x, global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(~1i, min(7948i, global0.d.x), global1.x, reverseBits(global1.x)), ~_wgslsmith_add_vec4_i32(global0.d, global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(step(-312f, 1411f))) * -215f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.e)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-842f, 870f)), global0.e))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_3 {
    global1 = countOneBits(arg_2.yz);
    let var_0 = Struct_2((select(_wgslsmith_clamp_vec2_u32(global0.a, vec2<u32>(u_input.b, u_input.a.x), global0.a), u_input.a.yy ^ global0.a, arg_3.yx) >> (select(max(u_input.a.xy, vec2<u32>(1u, 1u)), global0.a, select(arg_3.yx, vec2<bool>(arg_3.x, false), global3.a)) % vec2<u32>(32u))) << (vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(19918u, 4294967295u, 0u, u_input.b)), u_input.a)) % vec2<u32>(32u)), !global0.b, _wgslsmith_f_op_vec4_f32(global0.c * global0.c), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global1.x, 37970i, -1i, -85431i)), firstLeadingBit(vec4<i32>(arg_1, 25367i, global0.d.x, -1i)), firstTrailingBit(global0.d)) | _wgslsmith_div_vec4_i32(vec4<i32>(global0.d.x, -2147483647i, 0i, global1.x), reverseBits(vec4<i32>(1i, global1.x, -2147483647i, -2147483647i))), global0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(func_2(Struct_1(1i, global0.a.x, vec3<f32>(global0.e, global0.c.x, global0.c.x), vec3<i32>(arg_2.x, -19681i, 10080i)), global0.a.x, Struct_3(arg_3.x), global0.e)))) - _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_div_f32(-1105f, 798f))))));
    let var_1 = Struct_3(true);
    var var_2 = Struct_3(arg_0);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - -430f)), var_0.e)), _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(213f, var_0.e, false)) - 112f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -14662i;
    global3 = func_1(!(!all(!vec4<bool>(true, global3.a, false, false))), ~_wgslsmith_add_i32(min(abs(global0.d.x), 1i), min(_wgslsmith_add_i32(3421i, -2147483647i), global0.d.x)), ~vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -26325i), global0.d.zw), global0.d.x >> (u_input.a.x % 32u), ~global1.x), select(vec3<bool>(global3.a, any(select(vec3<bool>(global3.a, global3.a, false), vec3<bool>(global0.b, global0.b, true), vec3<bool>(global3.a, true, true))), false), !vec3<bool>(!global3.a, global0.b, false), !(!select(vec3<bool>(global3.a, false, global3.a), vec3<bool>(global0.b, global3.a, global0.b), global0.b))));
    let var_1 = _wgslsmith_clamp_u32(u_input.b, 13499u & _wgslsmith_mod_u32(28762u, select(31236u, 83016u, false)), 32728u);
    let var_2 = abs(~u_input.a);
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~max(firstTrailingBit(vec4<u32>(u_input.a.x, var_2.x, 1u, u_input.a.x)), min(vec4<u32>(var_2.x, var_1, global0.a.x, 40395u), u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(var_2, u_input.a), vec4<u32>(4122u, 19283u, var_1, global0.a.x)), u_input.a)), 8u)];
    var_3 = Struct_2(vec2<u32>(~((u_input.a.x >> (1u % 32u)) >> (_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(4294967295u, var_2.x)) % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, var_3.a), _wgslsmith_mod_u32(1u, 49013u))), false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(select(597f, 1382f, true)), _wgslsmith_f_op_f32(func_2(Struct_1(62970i, var_2.x, global0.c.zxy, vec3<i32>(-653i, global1.x, var_3.d.x)), global0.a.x, Struct_3(true), -256f)), -1921f), var_3.c))), firstLeadingBit(select(~select(vec4<i32>(var_3.d.x, 0i, var_3.d.x, -37905i), vec4<i32>(global0.d.x, var_3.d.x, 0i, -4162i), false), global0.d, vec4<bool>(!global3.a, false | global0.b, global3.a, true))), var_3.c.x);
    var var_4 = true;
    let var_5 = Struct_1(~(~global1.x), _wgslsmith_dot_vec4_u32(~countOneBits(~vec4<u32>(var_3.a.x, 4294967295u, var_2.x, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(81989u, var_2.x, global0.a.x), ~var_2.x, ~var_1, var_3.a.x), ~countOneBits(u_input.a))), _wgslsmith_f_op_vec3_f32(ceil(global0.c.yzx)), ~vec3<i32>(abs(1i), global0.d.x, select(1i, -44650i, global3.a)) ^ global0.d.yxz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~4294967295u, var_3.a.x >> (35976u % 32u), 25810u, 0u), u_input.a.zw, abs(~((var_2.wwx >> (u_input.a.wzw % vec3<u32>(32u))) ^ abs(vec3<u32>(1u, 52252u, 4294967295u)))), -21797i, _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-1i, -45425i, global0.d.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.d.x, var_5.d.x, var_5.d.x), vec3<i32>(-19496i, -1i, global1.x))), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, -1i, var_5.a), var_3.d.xww ^ vec3<i32>(global1.x, 19746i, global0.d.x)) >> (var_2.xxw % vec3<u32>(32u))));
}

