struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: Struct_2;

var<private> global2: vec2<u32>;

var<private> global3: f32 = -702f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(global1.b.x, all(vec3<bool>(4294967295u >= global1.c.c.x, all(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x)), !global1.b.x)) | (true || (true == !global1.b.x)), global1.b.x, any(vec2<bool>(global1.b.x, true)));
    global1 = Struct_2(global1.d.b.yz, global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x << (global2.x % 32u)), 17u)], global1.c, Struct_1(vec3<i32>(global1.d.a.x, u_input.e, abs(max(-31228i, -6917i))), _wgslsmith_f_op_vec3_f32(-global1.d.b), ~(~vec3<u32>(global1.c.c.x, global2.x, 4294967295u))));
    let var_1 = !var_0.ywz;
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.d.b.yx, vec2<f32>(257f, _wgslsmith_f_op_f32(abs(-615f)))), global1.c.b.xz));
    return global1.c;
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = arg_0.c.c << (abs(global1.c.c) % vec3<u32>(32u));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, -1000f) - arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a + global1.c.b.xy))))), select(select(global0[_wgslsmith_index_u32(firstLeadingBit(~44037u), 17u)], select(arg_0.b, select(vec2<bool>(arg_0.b.x, global1.b.x), global1.b, arg_0.b.x), global1.b), (arg_0.d.b.x > 328f) && any(vec3<bool>(true, global1.b.x, arg_0.b.x))), vec2<bool>(!(!global1.b.x), arg_0.b.x), arg_0.b), func_2(), func_2());
    var var_1 = Struct_3(global1.d.a.x, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f * global1.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d.b.x, 1000f)))), arg_0.b, global1.c, Struct_1(-vec3<i32>(u_input.c, global1.c.a.x, arg_0.c.a.x) >> ((global1.c.c & vec3<u32>(var_0.x, global1.c.c.x, 43349u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(933f, 1408f, global1.a.x) + arg_0.d.b) - global1.d.b), vec3<u32>(global2.x, countOneBits(24576u), arg_0.c.c.x))), global1.d.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1909f)) * 1360f), Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.d.b.xx), vec2<bool>(true, true), Struct_1(arg_0.d.a, arg_0.c.b, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_0.c.c.x, 114136u, u_input.d.x)), min(arg_0.d.c, vec3<u32>(0u, arg_0.c.c.x, 4294967295u)))), global1.d), arg_0.c);
    var var_2 = max(firstLeadingBit(vec2<u32>(9456u, firstLeadingBit(33112u)) << (reverseBits(vec2<u32>(var_0.x, global1.d.c.x)) % vec2<u32>(32u))), var_0.yz);
    let var_3 = !vec3<bool>(var_1.c, true, ~(~var_0.x) == select(max(53261u, 50389u), var_1.b.c.c.x, global1.c.a.x != var_1.b.d.a.x));
    return ~max(min(vec4<i32>(u_input.e, global1.c.a.x, u_input.e, u_input.e) ^ vec4<i32>(1i, 31622i, arg_0.d.a.x, -29838i), select(reverseBits(vec4<i32>(global1.c.a.x, arg_0.d.a.x, -1i, -27387i)), max(vec4<i32>(26916i, 25581i, -64761i, global1.d.a.x), vec4<i32>(-1i, var_1.a, 0i, 1i)), select(vec4<bool>(global1.b.x, global1.b.x, false, true), vec4<bool>(true, var_3.x, var_1.b.b.x, var_1.c), vec4<bool>(var_1.b.b.x, false, var_1.c, false)))), abs(max(select(vec4<i32>(0i, arg_0.c.a.x, -3308i, 8237i), vec4<i32>(var_1.e.a.x, 21244i, global1.d.a.x, arg_0.d.a.x), false), vec4<i32>(global1.d.a.x, 1i, u_input.a.x, 55655i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.b.d.a << (arg_0.c % vec3<u32>(32u));
    let var_1 = _wgslsmith_mod_vec2_i32(~(-vec2<i32>(1i, func_2().a.x)), ~(~arg_1.yz));
    var var_2 = _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(trunc(1724f)));
    var_2 = global1.c.b.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_2.b.d.b.yz, vec2<f32>(global1.d.b.x, -659f)), _wgslsmith_f_op_vec2_f32(arg_2.b.c.b.xz * vec2<f32>(-1045f, 1420f)), false))), global1.d.b.zy)), !(!select(global0[_wgslsmith_index_u32(~1u, 17u)], select(vec2<bool>(arg_2.d.b.x, global1.b.x), global0[_wgslsmith_index_u32(38378u, 17u)], true), true && global1.b.x)), func_2(), arg_0);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -3067f);
    global3 = _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), func_3(arg_2.b), Struct_3(u_input.e, Struct_2(vec2<f32>(-197f, -378f), vec2<bool>(global1.b.x, true), global1.c, Struct_1(arg_2.d.c.a, global1.c.b, global1.c.c)), global1.b.x, Struct_2(vec2<f32>(1000f, arg_2.e.b.x), vec2<bool>(false, arg_2.b.b.x), global1.d, arg_2.e), global1.c)))) * arg_2.b.c.b.x)));
    let var_1 = arg_2.d;
    let var_2 = arg_2.d;
    global2 = vec2<u32>(~countOneBits(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(1u, global1.d.c.x))), firstLeadingBit(33573u));
    return reverseBits(vec3<u32>(12264u, 1u, global1.c.c.x) ^ ~max(vec3<u32>(4294967295u, global1.c.c.x, global2.x), _wgslsmith_clamp_vec3_u32(arg_2.b.c.c, vec3<u32>(u_input.d.x, 13313u, arg_2.b.d.c.x), vec3<u32>(38837u, var_2.c.c.x, 0u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = !(!(!select(arg_1.ywy, arg_3.yyz, !vec3<bool>(true, true, arg_2.c))));
    let var_1 = u_input.e;
    let var_2 = Struct_2(arg_0.b.yy, select(!select(!arg_3.xy, vec2<bool>(var_0.x, false), true), vec2<bool>(!global1.b.x, arg_2.c), vec2<bool>(false, arg_3.x)), arg_0, arg_0);
    var var_3 = ~select(var_2.c.c.zx, vec2<u32>(98054u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global2.x, 97126u), 0u, ~arg_2.e.c.x)), true);
    var_3 = _wgslsmith_div_vec2_u32(~arg_0.c.zy, vec2<u32>(countOneBits(~abs(4294967295u)), arg_2.e.c.x));
    return Struct_2(arg_2.e.b.xx, select(!vec2<bool>(true, arg_3.x), vec2<bool>(any(arg_3), !(1352f < arg_0.b.x)), global0[_wgslsmith_index_u32(global2.x, 17u)]), var_2.d, var_2.c);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = select(vec4<bool>(!arg_1 == ((global1.c.c.x ^ arg_0.d.c.c.x) > select(0u, u_input.d.x, true)), (global2.x > u_input.d.x) & any(vec4<bool>(false, global1.b.x, arg_0.b.b.x, true)), !(~31292i == (24659i >> (u_input.d.x % 32u))), true | ((i32(-1i) * -38856i) != _wgslsmith_mod_i32(-34954i, arg_0.d.d.a.x))), vec4<bool>(all(!(!vec4<bool>(arg_2, false, true, global1.b.x))), global1.d.b.x >= -645f, !all(!vec3<bool>(arg_1, arg_2, true)), true), !vec4<bool>(all(!vec2<bool>(arg_0.b.b.x, true)), false, arg_2, arg_0.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(822f, arg_0.d.c.b.x, arg_0.e.b.x, global1.a.x))))))) * _wgslsmith_div_vec4_f32(vec4<f32>(-933f, global1.a.x, arg_0.e.b.x, 1069f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, 611f, -321f, global1.c.b.x)))))));
    global1 = func_5(Struct_1(global1.c.a, var_1.wzx, ((vec3<u32>(0u, 0u, global2.x) | arg_0.e.c) ^ (vec3<u32>(1u, 50465u, global2.x) << (vec3<u32>(global1.c.c.x, global1.c.c.x, 1u) % vec3<u32>(32u)))) | global1.d.c), !select(var_0, var_0, true), arg_0, select(var_0, !vec4<bool>(false, arg_2 || arg_1, global1.d.c.x < 51893u, any(var_0.zzw)), var_0));
    let var_2 = vec3<bool>(arg_1, false, var_0.x);
    var var_3 = Struct_3(global1.d.a.x, func_5(func_2(), vec4<bool>((arg_1 & var_0.x) == any(var_0.wxx), any(var_0), true, true), Struct_3(_wgslsmith_dot_vec2_i32(u_input.a, abs(arg_0.d.c.a.zy)), func_5(Struct_1(vec3<i32>(1i, 34436i, global1.d.a.x), vec3<f32>(571f, var_1.x, -1205f), vec3<u32>(40631u, arg_0.d.c.c.x, 4294967295u)), select(vec4<bool>(true, var_2.x, true, arg_0.d.b.x), var_0, arg_0.b.b.x), arg_0, vec4<bool>(var_0.x, true, false, arg_0.d.b.x)), global1.b.x, func_5(Struct_1(global1.c.a, arg_0.b.c.b, global1.c.c), select(var_0, var_0, vec4<bool>(arg_1, false, true, true)), arg_0, var_0), Struct_1(abs(arg_0.b.c.a), arg_0.d.d.b, vec3<u32>(arg_0.e.c.x, 4294967295u, arg_0.b.d.c.x))), select(vec4<bool>(var_1.x >= 190f, all(var_0), true, var_1.x < global1.d.b.x), var_0, true)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, global1.d.c.x), vec4<u32>(0u, firstLeadingBit(66220u), global1.d.c.x >> (0u % 32u), arg_0.b.c.c.x ^ 1u)) >= ~u_input.d.x, arg_0.b, arg_0.d.d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(global1.c.a.x, func_5(Struct_1(~global1.c.a, _wgslsmith_f_op_vec3_f32(max(global1.d.b, vec3<f32>(global1.c.b.x, -512f, -990f))), func_1(global1.d.b.x, vec4<f32>(global1.d.b.x, 1135f, global1.d.b.x, global1.d.b.x), Struct_3(0i, Struct_2(vec2<f32>(312f, 298f), global0[_wgslsmith_index_u32(38742u, 17u)], Struct_1(vec3<i32>(u_input.c, u_input.a.x, global1.d.a.x), global1.c.b, global1.d.c), Struct_1(vec3<i32>(-1i, u_input.e, global1.c.a.x), global1.d.b, global1.d.c)), global1.b.x, Struct_2(global1.c.b.yy, global0[_wgslsmith_index_u32(0u, 17u)], global1.c, Struct_1(global1.c.a, vec3<f32>(166f, -127f, global1.d.b.x), global1.d.c)), global1.c))), vec4<bool>(any(vec2<bool>(true, false)), global1.b.x, any(vec3<bool>(false, global1.b.x, global1.b.x)), global1.b.x), Struct_3(1i, Struct_2(global1.a, vec2<bool>(true, global1.b.x), global1.c, global1.c), global1.b.x, Struct_2(global1.d.b.xx, global0[_wgslsmith_index_u32(1u, 17u)], Struct_1(vec3<i32>(global1.d.a.x, u_input.c, 30542i), global1.d.b, global1.c.c), global1.d), Struct_1(vec3<i32>(-1i, -74049i, -17803i), global1.d.b, vec3<u32>(u_input.d.x, 26147u, global2.x))), select(vec4<bool>(global1.b.x, true, global1.b.x, true), vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), !vec4<bool>(true, true, global1.b.x, false))), func_5(global1.d, select(!vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x), !vec4<bool>(global1.b.x, false, true, global1.b.x), true), Struct_3(~global1.d.a.x, func_5(global1.d, vec4<bool>(true, false, global1.b.x, global1.b.x), Struct_3(70415i, Struct_2(vec2<f32>(-2196f, global1.c.b.x), vec2<bool>(false, true), global1.c, Struct_1(vec3<i32>(-77738i, 19608i, -7688i), vec3<f32>(639f, 951f, -407f), global1.c.c)), global1.b.x, Struct_2(global1.a, global1.b, Struct_1(global1.c.a, vec3<f32>(global1.a.x, -1704f, global1.c.b.x), vec3<u32>(1u, global2.x, u_input.d.x)), global1.c), global1.d), vec4<bool>(true, global1.b.x, global1.b.x, false)), global1.b.x, func_5(global1.d, vec4<bool>(true, global1.b.x, false, false), Struct_3(u_input.a.x, Struct_2(global1.a, vec2<bool>(false, global1.b.x), Struct_1(vec3<i32>(-2147483647i, global1.c.a.x, -45620i), global1.c.b, vec3<u32>(1u, u_input.d.x, global2.x)), Struct_1(global1.d.a, global1.d.b, vec3<u32>(88180u, 0u, global1.c.c.x))), global1.b.x, Struct_2(vec2<f32>(global1.c.b.x, global1.d.b.x), global1.b, global1.d, Struct_1(vec3<i32>(0i, -8338i, -2147483647i), global1.d.b, global1.d.c)), Struct_1(global1.d.a, global1.d.b, global1.d.c)), vec4<bool>(true, false, global1.b.x, false)), global1.c), vec4<bool>(all(global0[_wgslsmith_index_u32(global2.x, 17u)]), true, any(vec2<bool>(true, true)), u_input.a.x == -2147483647i)).b.x, func_5(Struct_1(vec3<i32>(global1.c.a.x, 0i, -1i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a.x, global1.d.b.x, -1338f))), global1.d.c | global1.c.c), vec4<bool>(false, true, global1.b.x, !global1.b.x), Struct_3(u_input.e, func_5(Struct_1(vec3<i32>(global1.d.a.x, global1.d.a.x, global1.d.a.x), global1.c.b, vec3<u32>(global2.x, 64503u, global1.c.c.x)), vec4<bool>(true, false, global1.b.x, false), Struct_3(u_input.e, Struct_2(vec2<f32>(global1.d.b.x, global1.d.b.x), vec2<bool>(global1.b.x, true), Struct_1(global1.c.a, global1.d.b, global1.c.c), global1.d), true, Struct_2(global1.a, vec2<bool>(true, global1.b.x), global1.d, Struct_1(global1.d.a, global1.c.b, vec3<u32>(global1.d.c.x, u_input.d.x, u_input.d.x))), Struct_1(vec3<i32>(u_input.e, u_input.e, u_input.b), vec3<f32>(-399f, global1.c.b.x, -354f), vec3<u32>(global2.x, global1.d.c.x, 5222u))), vec4<bool>(true, global1.b.x, true, false)), any(vec4<bool>(global1.b.x, true, true, global1.b.x)), Struct_2(global1.d.b.xz, global1.b, global1.c, Struct_1(global1.c.a, global1.d.b, vec3<u32>(0u, 41154u, 4294967295u))), global1.c), select(select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x), false), select(vec4<bool>(false, global1.b.x, false, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, false), false), true)), Struct_1(vec3<i32>(1i, _wgslsmith_mod_i32(u_input.c, global1.c.a.x), reverseBits(-16580i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.b)), ~vec3<u32>(63719u, 26239u, 1u))), -1579f != global1.d.b.x, true);
    global0 = array<vec2<bool>, 17>();
    var var_1 = 1i;
    global3 = global1.a.x;
    var var_2 = Struct_1(~(~select(global1.d.a, firstTrailingBit(vec3<i32>(-2147483647i, u_input.c, u_input.c)), global1.b.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(2276f, -1058f, 1000f) + global1.c.b))), countOneBits(func_2().c));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.c.b.x), 1353f, var_0.e.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) - _wgslsmith_f_op_f32(f32(-1f) * -238f))), vec4<f32>(var_0.b.a.x, 313f, 553f, _wgslsmith_f_op_f32(-func_6(func_6(Struct_3(var_0.a, var_0.b, global1.b.x, var_0.d, var_0.b.c), var_0.b.b.x, true), false, true).b.a.x))));
    let var_4 = Struct_3(1773i, func_6(func_6(func_6(func_6(Struct_3(-4657i, Struct_2(vec2<f32>(-173f, -1403f), vec2<bool>(global1.b.x, false), Struct_1(vec3<i32>(var_0.a, var_2.a.x, 14718i), var_2.b, global1.c.c), Struct_1(global1.c.a, vec3<f32>(var_2.b.x, 1000f, -200f), vec3<u32>(13820u, var_0.e.c.x, 1u))), true, var_0.d, Struct_1(global1.c.a, global1.d.b, global1.d.c)), var_0.c, global1.b.x), true, global1.b.x), select(global1.b.x, global1.b.x, global1.b.x & false), true), true, u_input.d.x > ~u_input.d.x).b, global1.b.x, var_0.d, Struct_1(select(-vec3<i32>(9650i, u_input.e, var_0.b.d.a.x), vec3<i32>(var_2.a.x, 35879i, u_input.b), !vec3<bool>(global1.b.x, var_0.b.b.x, true)) | min(vec3<i32>(var_0.d.d.a.x, 45660i, 1i), var_2.a), vec3<f32>(1f, 1213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-608f, 424f)) - _wgslsmith_f_op_f32(exp2(global1.a.x)))), var_2.c));
    var_0 = Struct_3(_wgslsmith_mod_i32(-1i, func_5(Struct_1(vec3<i32>(-1i, var_4.d.d.a.x, global1.d.a.x), vec3<f32>(646f, 1423f, var_3.x), vec3<u32>(u_input.d.x, global2.x, var_4.b.c.c.x)), !vec4<bool>(true, global1.b.x, false, true), func_6(var_4, var_4.c, global1.b.x), !vec4<bool>(var_4.d.b.x, true, false, global1.b.x)).d.a.x >> (~(~3571u) % 32u)), func_6(Struct_3(var_4.e.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_3.zz)), vec2<bool>(true, true), func_2(), Struct_1(var_0.e.a, var_2.b, vec3<u32>(121855u, var_4.e.c.x, u_input.d.x))), false, Struct_2(_wgslsmith_f_op_vec2_f32(var_3.zy + var_2.b.xx), !var_4.b.b, Struct_1(vec3<i32>(-20052i, var_2.a.x, var_4.b.c.a.x), vec3<f32>(var_4.b.a.x, var_4.e.b.x, var_3.x), var_2.c), func_5(Struct_1(vec3<i32>(var_2.a.x, 1i, 2147483647i), var_3.wxz, vec3<u32>(u_input.d.x, 0u, 50156u)), vec4<bool>(var_4.d.b.x, false, true, var_0.b.b.x), var_4, vec4<bool>(var_0.d.b.x, var_4.c, var_0.b.b.x, true)).d), Struct_1(~var_4.d.c.a, vec3<f32>(var_3.x, var_0.e.b.x, global1.d.b.x), vec3<u32>(1u, 1u, 4294967295u) & vec3<u32>(var_4.e.c.x, 4294967295u, var_4.b.d.c.x))), var_0.b.b.x, global1.b.x).b, false, var_0.b, Struct_1(-_wgslsmith_mod_vec3_i32(global1.d.a, _wgslsmith_sub_vec3_i32(var_2.a, vec3<i32>(-67725i, 11311i, var_2.a.x))), var_0.e.b, ~_wgslsmith_div_vec3_u32(var_4.b.d.c, global1.d.c)));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1255f)), _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-var_2.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - global1.d.b.x) - var_0.b.c.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -2378f))) < _wgslsmith_f_op_f32(-var_4.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_u32(var_2.c.x, 0u)), reverseBits(-(_wgslsmith_add_i32(-15883i, 2147483647i) & _wgslsmith_mod_i32(var_4.d.d.a.x, global1.d.a.x))), 1u);
}

