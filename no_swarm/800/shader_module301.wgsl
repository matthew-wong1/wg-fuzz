struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(-9707i, -1i, 2147483647i, -1i), vec4<i32>(5097i, 2147483647i, 1i, 11593i), vec4<i32>(63495i, -33468i, 1i, -11097i), vec4<i32>(31972i, -26296i, i32(-2147483648), 0i), vec4<i32>(1i, i32(-2147483648), 5869i, i32(-2147483648)), vec4<i32>(-3530i, i32(-2147483648), 2147483647i, 31385i), vec4<i32>(-34578i, 7613i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -67i, 1i, -4588i), vec4<i32>(0i, 5473i, 41206i, 2147483647i));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = true;
    let var_1 = 780f;
    let var_2 = ~1i;
    global2 = Struct_1(all(vec2<bool>(true, var_1 < _wgslsmith_div_f32(var_1, var_1))), global2.b, -(~abs(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(global2.b.x, 9u)], global1[_wgslsmith_index_u32(global3.b.x, 9u)]))), var_0, vec2<bool>(global2.b.x != ~_wgslsmith_sub_u32(4294967295u, global2.b.x), global2.a));
    let var_3 = abs(~(~firstLeadingBit(0u)));
    return vec4<i32>(-1i) * -vec4<i32>(~(~global3.c.x), 1i, -1i, ~reverseBits(0i));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-716f, 613f)))) - _wgslsmith_f_op_f32(f32(-1f) * -656f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1132f, -929f)) * _wgslsmith_f_op_f32(sign(962f))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1848f);
    global3 = Struct_1(global3.e.x, ~global2.b | (u_input.c.zxz | vec3<u32>(~global3.b.x, 56125u, 4294967295u)), _wgslsmith_mod_vec4_i32(reverseBits(~reverseBits(vec4<i32>(u_input.b, 55462i, global3.c.x, global3.c.x))), select(max(func_3(), vec4<i32>(global3.c.x, global3.c.x, u_input.a, global3.c.x)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-3678i, global3.c.x, -2147483647i, -2147483647i), vec4<i32>(global3.c.x, global3.c.x, 16001i, global3.c.x)), ~global2.c, 43982u < global3.b.x), select(select(vec4<bool>(true, true, true, false), vec4<bool>(global3.a, true, global2.a, true), vec4<bool>(global3.d, global3.e.x, global2.a, false)), !vec4<bool>(true, global2.a, global3.d, false), vec4<bool>(false, false, global3.e.x, global2.d)))), select(global3.b.x < global3.b.x, global3.e.x, !(false && !global3.e.x)), global2.e);
    var var_0 = global3.e.x;
    return Struct_2(1000f);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    global0 = arg_1.a;
    global3 = Struct_1(false, global3.b, ~_wgslsmith_add_vec4_i32(vec4<i32>(global3.c.x, u_input.a, 1i, 3941i), max(vec4<i32>(-1i, u_input.b, global3.c.x, global2.c.x), vec4<i32>(-31258i, 1i, 36299i, arg_3.x))) ^ ~abs(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)]), !(!arg_0), !(!global3.e));
    let var_0 = vec2<bool>(all(!vec4<bool>(!arg_0, global3.e.x, all(vec4<bool>(global2.d, global3.d, global2.e.x, true)), true)), global3.b.x >= _wgslsmith_add_u32(1u, 0u));
    let var_1 = true;
    var var_2 = 19978i >> (firstLeadingBit(1u >> (~abs(global2.b.x) % 32u)) % 32u);
    return Struct_1(true, vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(6391u, _wgslsmith_dot_vec3_u32(global3.b, vec3<u32>(6286u, u_input.c.x, u_input.c.x))), select(global3.b.yz, _wgslsmith_mult_vec2_u32(u_input.c.zw, global3.b.zy), arg_0)), global3.b.x), vec4<i32>(~(1i ^ abs(u_input.a)), global3.c.x, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-17632i, ~arg_3.x, 1i), vec3<i32>(-arg_3.x, ~(-18443i), -2147483647i))), select(arg_1.a > _wgslsmith_f_op_f32(select(1000f, arg_1.a, false)), true, arg_1.a > _wgslsmith_f_op_f32(-143f * arg_1.a)), select(!vec2<bool>(true, any(vec3<bool>(false, true, global2.d))), var_0, _wgslsmith_dot_vec3_i32(global2.c.yxx | vec3<i32>(13589i, global2.c.x, 1i), ~vec3<i32>(2147483647i, global2.c.x, global2.c.x)) >= global3.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global0 = arg_2.x;
    let var_0 = global3.d;
    let var_1 = u_input.c.wyz;
    var var_2 = min(vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(global2.c.x, 1i, arg_0.c.x & 6471i), func_4(global3.d, Struct_2(arg_2.x), func_2(), vec3<i32>(arg_0.c.x, global2.c.x, 0i)).c.x), ~(_wgslsmith_clamp_i32(arg_1.c.x, global2.c.x, global2.c.x) ^ _wgslsmith_div_i32(0i, arg_1.c.x))), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(15830i, global2.c.x), -20204i)), -arg_1.c.wx));
    var var_3 = func_2();
    return arg_0.e.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    global3 = Struct_1(func_5(arg_1, func_4(all(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_0, global2.e.x), vec3<bool>(false, true, arg_0))), func_2(), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1101f)), max(countOneBits(global3.c.xzy), vec3<i32>(global3.c.x, 26724i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(-257f * _wgslsmith_div_f32(-1513f, 2249f)), -195f)), select(abs(arg_1.b), arg_1.b, true), max(vec4<i32>(1i, -22000i, global2.c.x, 13604i << (global2.b.x % 32u)), vec4<i32>(global3.c.x, _wgslsmith_clamp_i32(func_3().x, u_input.b, _wgslsmith_div_i32(arg_1.c.x, u_input.a)), -18618i, ~global3.c.x)), false, global2.e);
    let var_0 = vec4<i32>(u_input.a, ~select(-1i, _wgslsmith_add_i32(9086i, u_input.a), global2.d), 803i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, u_input.a, 47952i), -2147483647i, ~18782i) & arg_1.c.x) << (vec4<u32>(arg_1.b.x, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, global2.b.x, 19378u), vec4<u32>(1u, global3.b.x, _wgslsmith_dot_vec2_u32(global3.b.xz, vec2<u32>(global2.b.x, 88852u)), _wgslsmith_mod_u32(global3.b.x, u_input.c.x))), 1u) % vec4<u32>(32u));
    var var_1 = -1000f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_2().a, -407f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1607f) - -1064f))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(1000f)));
    return 0u;
}

fn func_6(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_3.x));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(vec4<u32>(~(1u << (u_input.c.x % 32u)) >> (_wgslsmith_mod_u32(func_1(false, Struct_1(global2.a, u_input.c.zzw, global3.c, global2.d, vec2<bool>(false, false))), _wgslsmith_dot_vec2_u32(global2.b.yx, vec2<u32>(u_input.c.x, global3.b.x))) % 32u), 28300u, _wgslsmith_sub_u32(reverseBits(u_input.c.x), _wgslsmith_sub_u32(global2.b.x, ~global2.b.x)), 79060u << (0u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1310f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2016f, 152f)) * _wgslsmith_f_op_f32(f32(-1f) * -622f)))), func_4(false, Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(219f * 1444f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1366f, 895f))), global2.c.zzx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1614f), _wgslsmith_f_op_f32(f32(-1f) * -1497f), -877f, _wgslsmith_f_op_f32(f32(-1f) * -165f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1593f, -416f, -1000f, 2013f)), vec4<f32>(-240f, _wgslsmith_f_op_f32(f32(-1f) * -1734f), _wgslsmith_f_op_f32(f32(-1f) * -1082f), -1186f))));
    let var_0 = vec2<i32>(_wgslsmith_div_i32(abs(-1i), global3.c.x), countOneBits(1250i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1183f, 695f)))))));
    global1 = array<vec4<i32>, 9>();
    let var_2 = -abs(global3.c.x);
    global3 = Struct_1(global3.d, ~(_wgslsmith_mod_vec3_u32(global2.b, reverseBits(global2.b)) ^ func_6(u_input.c | u_input.c, _wgslsmith_f_op_f32(step(-281f, var_1.a)), Struct_1(true, global3.b, vec4<i32>(var_2, -8220i, 2147483647i, -1i), true, global3.e), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1251f, 1604f, var_1.a, 334f)))).b), ~(~global3.c), global3.d, func_4(true && global3.e.x, var_1, var_1, reverseBits(vec3<i32>(23048i, countOneBits(2147483647i), _wgslsmith_sub_i32(var_0.x, -1i)))).e);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-381f, var_1.a, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f * var_1.a) - var_1.a) + -1785f)), 682f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(var_1.a * var_1.a), !global2.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1310f + var_1.a)))) * var_1.a));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_2().a)) - var_4.a), var_3.zw, var_3.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-295f + var_1.a), -460f, _wgslsmith_f_op_f32(-var_4.a), -463f))), ~(~vec4<u32>(4294967295u, u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, global3.b.x, 38008u, u_input.c.x)), _wgslsmith_mult_u32(47321u, 1u))));
}

