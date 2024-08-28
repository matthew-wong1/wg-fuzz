struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: bool;

var<private> global2: array<bool, 3> = array<bool, 3>(false, false, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<bool, 22>();
    global1 = any(!vec3<bool>(arg_0 == 0u, _wgslsmith_f_op_f32(sign(arg_3.a)) > arg_3.b.x, all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], false, global2[_wgslsmith_index_u32(32072u, 3u)], true))));
    var var_0 = arg_0;
    let var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-11638i, arg_3.c) << (~(~arg_0) % 32u), _wgslsmith_add_i32(i32(-1i) * -2147483647i, arg_3.d.x)), -arg_3.d.x, min(firstLeadingBit(-1i), -u_input.a));
    var var_2 = min(-(~(i32(-1i) * -2147483647i)), -52919i);
    return !(!(!(!select(vec3<bool>(true, true, arg_2.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false, global2[_wgslsmith_index_u32(6050u, 3u)]), global0[_wgslsmith_index_u32(u_input.d.x, 22u)]))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    var var_0 = vec2<i32>(arg_0, arg_0 ^ 0i);
    var_0 = firstTrailingBit(~vec2<i32>(arg_0 >> (0u % 32u), reverseBits(arg_0)) & vec2<i32>(arg_0, abs(-12279i)));
    global0 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1735f, -530f, 1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1084f, 668f, -778f) * vec3<f32>(330f, 706f, 719f)))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(451f, -2257f, -113f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(437f, 1322f, -692f), vec3<f32>(-344f, -2731f, 435f)))))))), _wgslsmith_div_vec3_f32(vec3<f32>(-786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-304f, 1054f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f - 319f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-163f, -1805f, -365f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -638f, 262f)), !global2[_wgslsmith_index_u32(4294967295u, 3u)])))), arg_2));
    var var_2 = Struct_1(-var_0.x, u_input.d.xz);
    return 491f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(-267f * 279f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    global1 = global2[_wgslsmith_index_u32(73725u, 3u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(26066u, 0u, ~u_input.b.x, _wgslsmith_add_u32(u_input.c, u_input.c))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~0u), ~1u << (u_input.d.x % 32u), ~(u_input.c ^ u_input.b.x), ~(u_input.b.x | u_input.d.x)), ~min(~vec4<u32>(u_input.d.x, u_input.b.x, 1u, u_input.c), select(vec4<u32>(77261u, 4294967295u, u_input.b.x, u_input.d.x), vec4<u32>(u_input.b.x, u_input.c, 1u, u_input.d.x), vec4<bool>(global0[_wgslsmith_index_u32(37078u, 22u)], false, global2[_wgslsmith_index_u32(42u, 3u)], false))))), 22u)];
    var var_1 = ~u_input.a;
    var var_2 = Struct_2(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)), ~(~vec3<i32>(24210i, u_input.a, 1i))), -2147483647i, _wgslsmith_f_op_f32(func_4(u_input.a, -2147483647i, func_3(~(~u_input.b.x), -(vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.d.x, u_input.b.x, 9844u) % vec3<u32>(32u))), !select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(73438u, 3u)], true), false), Struct_3(-1354f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-206f, var_0.x, 164f, var_0.x) + vec4<f32>(var_0.x, var_0.x, 1858f, var_0.x)), u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)))))));
    return Struct_3(_wgslsmith_f_op_f32(step(1f, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(select(-1773f, -447f, global0[_wgslsmith_index_u32(u_input.b.x | 31879u, 22u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, -241f, 241f, var_0.x) + vec4<f32>(170f, var_0.x, var_2.c, 116f))), vec4<f32>(var_0.x, var_2.c, 589f, _wgslsmith_f_op_f32(f32(-1f) * -128f))), !(13684u > ~u_input.b.x))), max(26602i, -6691i), (countOneBits(abs(vec2<i32>(var_2.b, var_2.a))) & max(abs(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, var_2.b) & vec2<i32>(u_input.a, -16348i))) << ((_wgslsmith_add_vec2_u32(firstTrailingBit(u_input.d.yz), vec2<u32>(0u, 19216u)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(21070u, u_input.b.x) | u_input.b.yx)) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    global1 = global0[_wgslsmith_index_u32(arg_2.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 54962u), u_input.b.yz) % 32u), 22u)];
    var var_0 = Struct_2(19522i, 60633i, arg_0.b.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x)))))) - _wgslsmith_f_op_f32(f32(-1f) * -556f));
    var var_2 = Struct_4(vec4<u32>(~firstLeadingBit(u_input.d.x), 95600u, u_input.b.x, 1u), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(8642i), u_input.a << (arg_2.x % 32u), 1i, -2147483647i), abs(firstLeadingBit(vec4<i32>(arg_1.a, var_0.b, 13659i, var_0.a)))), ~select(31295i, _wgslsmith_sub_i32(1i, 2147483647i), true && arg_3.x), -1864f), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(u_input.c, arg_1.b.x), _wgslsmith_div_u32(u_input.b.x, 119120u))) | select(arg_2.x, firstTrailingBit(arg_2.x) & arg_2.x, true), 3u)], !(!(!vec4<bool>(global2[_wgslsmith_index_u32(14192u, 3u)], global2[_wgslsmith_index_u32(16135u, 3u)], arg_3.x, true))));
    let var_3 = u_input.d;
    return _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.d.x, -arg_0.d.x, arg_0.d.x)), vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(var_2.b.b, 25539i, -5402i)));
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_4(~arg_1.a & vec4<u32>(1u, 85236u, 4294967295u, ~1u), Struct_2(u_input.a, 1i, _wgslsmith_div_f32(arg_1.b.c, arg_0)), all(select(vec2<bool>(true, true), vec2<bool>(all(arg_1.d.xyw), all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 3u)], false))), false)), arg_1.d);
    var_0 = Struct_4(reverseBits(~arg_1.a), Struct_2(-1i, ~((u_input.a >> (70314u % 32u)) << (u_input.c % 32u)), _wgslsmith_div_f32(arg_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(657f)) + _wgslsmith_f_op_f32(min(443f, arg_0))))), !(-6787i < firstLeadingBit(arg_1.b.b)), vec4<bool>(53480i < u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.d.x), 1u), 22u)], select(select(all(var_0.d.xy), !global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), any(arg_1.d), !(u_input.b.x != arg_1.a.x)), global2[_wgslsmith_index_u32(0u, 3u)]));
    var_0 = arg_1;
    var var_1 = Struct_2(~(-2147483647i), -3720i, var_0.b.c);
    let var_2 = arg_1.a.ww;
    return Struct_1(2147483647i, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.zy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1722u, arg_1.a.x), vec2<u32>(23896u, var_0.a.x)) % vec2<u32>(32u)), ~(~vec2<u32>(19257u, 68848u)), firstTrailingBit(select(vec2<u32>(arg_1.a.x, 1u), arg_1.a.ww, false))), ~(~(~vec2<u32>(var_2.x, 65183u)))));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    global2 = array<bool, 3>();
    var var_0 = func_6(-795f, Struct_4(vec4<u32>(~(~u_input.b.x), 20272u, ~u_input.d.x, u_input.b.x), Struct_2(_wgslsmith_add_i32(u_input.a ^ u_input.a, u_input.a), func_5(func_2(), Struct_1(u_input.a, u_input.d.yy), vec3<u32>(u_input.d.x, u_input.d.x, 1u), !vec3<bool>(false, arg_1, false)), _wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(f32(-1f) * -989f))), !(false & func_3(26941u, vec3<i32>(-39777i, -1i, u_input.a), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 3u)]), Struct_3(-952f, vec4<f32>(2629f, -934f, -455f, -1862f), -6173i, vec2<i32>(-21i, u_input.a))).x), vec4<bool>(!(u_input.a <= -71905i), false, true, true)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(-546f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(627f, -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(547f)), _wgslsmith_f_op_f32(func_4(1i, 0i, vec3<bool>(true, false, arg_1))))), all(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global2[_wgslsmith_index_u32(4294967295u, 3u)])))), func_3(0u, select(-vec3<i32>(var_0.a, u_input.a, u_input.a), countOneBits(vec3<i32>(var_0.a, u_input.a, -1i)), select(vec3<bool>(true, arg_0, arg_1), vec3<bool>(false, arg_0, true), vec3<bool>(true, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], arg_1), arg_1), select(vec2<bool>(false, arg_0), vec2<bool>(false, false), arg_1), select(vec2<bool>(arg_1, global0[_wgslsmith_index_u32(var_0.b.x, 22u)]), vec2<bool>(arg_0, true), true)), func_2()).x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_2().b.x)) * 2022f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(853f + _wgslsmith_f_op_f32(max(-393f, 309f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-707f)))), _wgslsmith_div_f32(488f, 1002f), _wgslsmith_f_op_f32(trunc(-480f))), var_0.a, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, 25661i)) ^ ~vec2<i32>(12265i, var_0.a), vec2<i32>(~(-u_input.a), 2147483647i)));
    let var_2 = Struct_4(vec4<u32>(~var_0.b.x, ~_wgslsmith_mod_u32(u_input.b.x, reverseBits(var_0.b.x)), var_0.b.x, 43833u), Struct_2(abs(var_1.c), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 728f))), any(vec4<bool>(false, arg_1, select(-223i == u_input.a, false | arg_1, var_1.a != 680f), any(select(vec2<bool>(false, true), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(var_0.b.x, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]))))), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 22u)], true, var_1.d.x < 1i, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 3u)], true, arg_1, false), select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.c, 22u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 22u)], arg_0, false), vec4<bool>(true, true, false, false))))));
    global2 = array<bool, 3>();
    return _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.b.x, ~_wgslsmith_dot_vec3_u32(var_2.a.yyy, u_input.b), min((var_0.b.x ^ var_2.a.x) | 0u, func_6(_wgslsmith_f_op_f32(f32(-1f) * -585f), var_2).b.x)), 1u, ~26764u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 3>();
    var var_0 = Struct_1(abs(u_input.a) >> (select(func_1(false, global0[_wgslsmith_index_u32(72832u, 22u)]) & 62852u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(0u, u_input.c)), all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false))) % 32u), u_input.d.zx);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-723f, -180f))), 587f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(191f, 1019f)), _wgslsmith_f_op_f32(f32(-1f) * -930f))), _wgslsmith_f_op_f32(-570f + _wgslsmith_f_op_f32(-681f * -432f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1786f, -1000f, -1275f, 352f) + vec4<f32>(-1000f, 284f, -119f, -1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -110f, 767f, 489f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1931f, _wgslsmith_f_op_f32(func_4(u_input.a, -1i, vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 3u)], false, false))), -1380f))), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 3u)], true, false, ~73495i >= u_input.a), !(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(24382u, 3u)], global2[_wgslsmith_index_u32(var_0.b.x, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]))), !(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)], true, true), vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 22u)], true, true, global0[_wgslsmith_index_u32(var_0.b.x, 22u)]))))));
    global0 = array<bool, 22>();
    var_0 = Struct_1(_wgslsmith_mult_i32(abs(u_input.a), _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(var_0.a, 2147483647i, 2199i, 1i), vec4<i32>(var_0.a, u_input.a, u_input.a, -49170i)), vec4<i32>(var_0.a, -18986i, u_input.a, -57593i) << (vec4<u32>(78889u, 4294967295u, 83520u, u_input.b.x) % vec4<u32>(32u)), vec4<bool>(true, true, false, true)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-17191i, 36935i, 1i, 2584i), vec4<i32>(u_input.a, -19173i, u_input.a, -53575i)), ~vec4<i32>(u_input.a, var_0.a, -9869i, -69693i), any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], false, true))))), vec2<u32>(~u_input.c ^ 9254u, var_0.b.x));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1045f)), -2206f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstTrailingBit(u_input.a & var_0.a), u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 1u), 22u)], false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -209f), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xz)), _wgslsmith_f_op_f32(round(var_1.x)), -(firstLeadingBit(-vec4<i32>(u_input.a, 1i, 23101i, -1i)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4554u), _wgslsmith_div_vec4_u32(vec4<u32>(14501u, u_input.b.x, 87427u, u_input.b.x), vec4<u32>(1u, var_0.b.x, 5762u, 0u))) % vec4<u32>(32u))), 1260f);
}

