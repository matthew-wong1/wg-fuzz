struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-219f, -847f);

var<private> global1: vec2<u32> = vec2<u32>(1u, 24663u);

var<private> global2: vec3<i32> = vec3<i32>(1i, 0i, -5538i);

var<private> global3: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global4: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f)));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(u_input.a.x, global2.x, 2147483647i)) & _wgslsmith_mod_vec3_i32(~vec3<i32>(global2.x, global2.x, u_input.a.x), vec3<i32>(global2.x, global2.x, -34420i)), reverseBits(~vec3<i32>(global2.x, u_input.a.x, 0i)) << (select(~vec3<u32>(19210u, 1u, 29290u), vec3<u32>(1u, 1u, 1u), !global3[_wgslsmith_index_u32(global1.x, 3u)]) % vec3<u32>(32u))), select(global3[_wgslsmith_index_u32(global1.x, 3u)], select(global3[_wgslsmith_index_u32(global1.x, 3u)], select(select(global3[_wgslsmith_index_u32(global1.x, 3u)], global3[_wgslsmith_index_u32(global1.x, 3u)], global3[_wgslsmith_index_u32(global1.x, 3u)]), !global3[_wgslsmith_index_u32(4294967295u, 3u)], all(vec4<bool>(true, true, true, false))), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(global1.x, 3u)]))), true), ~_wgslsmith_sub_u32(1u, 0u), all(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, false)), true), any(global3[_wgslsmith_index_u32(global1.x, 3u)]))), vec4<u32>(max(min(21918u, global1.x), global1.x ^ (0u << (1u % 32u))), global1.x, ~(~global1.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(global1.x, global1.x >> (0u % 32u)))));
    let var_2 = var_1.a;
    global3 = array<vec3<bool>, 3>();
    global4 = array<vec4<bool>, 16>();
    return u_input.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: u32) -> i32 {
    let var_0 = arg_1.c;
    global1 = arg_1.c;
    global2 = -vec3<i32>(2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(26295i, u_input.a.x, global2.x, arg_1.b.x), firstLeadingBit(arg_1.b)), min(func_3(), -26121i), ~firstTrailingBit(global2.x));
    return _wgslsmith_clamp_i32(func_3(), _wgslsmith_div_i32(i32(-1i) * -2147483647i, 1i), countOneBits(global2.x) & 2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 12426i;
    var var_1 = arg_2.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -493f), 350f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(440f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - global0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2377f, global0.x, global0.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-arg_1)), -659f)));
    let var_3 = global1.x;
    global2 = vec3<i32>(countOneBits(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, arg_0.a.c, u_input.a.x, 2147483647i), -vec4<i32>(var_0, -2147483647i, -70672i, -70020i))), _wgslsmith_clamp_i32(~(-2147483647i) & select(var_0 | arg_0.b.a, func_2(var_2.yz, Struct_5(-765f, vec4<i32>(-2147483647i, arg_2.a, arg_0.a.a, global2.x), vec2<u32>(global1.x, 56361u), Struct_4(var_2.x), vec4<u32>(63204u, global1.x, 1u, 4294967295u)), arg_2.c), false), 1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), global2.zz), arg_2.a, arg_0.b.c) ^ countOneBits(var_0 | arg_0.b.c)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(532f, -1131f), vec2<f32>(arg_1, var_2.x))), _wgslsmith_f_op_vec2_f32(ceil(var_2.xx))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(275f, arg_1) * var_2.yx)), Struct_5(485f, max(vec4<i32>(40728i, arg_0.b.c, 1i, 1i), ~vec4<i32>(-1i, global2.x, 2147483647i, global2.x)), vec2<u32>(arg_2.c & arg_2.e.x, arg_2.c), Struct_4(-1104f), _wgslsmith_mult_vec4_u32(~arg_2.e, arg_2.e)), max(abs(global1.x) & 22126u, _wgslsmith_dot_vec4_u32(arg_2.e, arg_2.e))));
    return Struct_2(global2.x, vec3<bool>(any(!vec2<bool>(arg_0.b.d.x, false)), arg_0.a.d.x, false), global1.x, true, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(~arg_2.e), ~(~arg_2.e)), select(vec4<u32>(0u << (global1.x % 32u), 12347u >> (arg_2.c % 32u), 4294967295u >> (arg_2.e.x % 32u), firstTrailingBit(arg_2.e.x)), arg_2.e, global4[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(~global1.x, ~(arg_2.c >> (global1.x % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(11837u, 0u), arg_2.e.xy)), (global1.x >> (4294967295u % 32u)) >> (_wgslsmith_div_u32(2497u, arg_2.e.x) % 32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_1 = vec4<i32>(firstLeadingBit(countOneBits(select(global2.x, arg_0, arg_1.d)) >> (abs(_wgslsmith_mod_u32(global1.x, 31435u)) % 32u)), -(-7934i ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(761i, arg_0, -2225i), vec3<i32>(-24094i, arg_1.a, 0i), vec3<bool>(true, false, arg_1.d)), min(vec3<i32>(global2.x, -2147483647i, 56477i), vec3<i32>(arg_1.a, arg_1.a, -42785i)))), global2.x, _wgslsmith_clamp_i32(-2147483647i, 0i >> (abs(global1.x & global1.x) % 32u), arg_1.a));
    let var_2 = global1.x;
    let var_3 = _wgslsmith_mod_vec4_i32(var_1, select(var_1 | (firstTrailingBit(vec4<i32>(0i, -13052i, arg_0, global2.x)) >> (arg_1.e % vec4<u32>(32u))), select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 28349i, arg_1.a, 0i), -vec4<i32>(arg_0, u_input.a.x, u_input.a.x, var_1.x)), var_1 << (~vec4<u32>(4294967295u, arg_1.e.x, global1.x, arg_1.c) % vec4<u32>(32u)), arg_1.d), arg_1.d));
    let var_4 = func_1(Struct_3(Struct_1(_wgslsmith_sub_i32(-arg_0, 1i), ~arg_1.c >= (1u >> (1u % 32u)), 21813i, global3[_wgslsmith_index_u32(global1.x, 3u)]), Struct_1(0i, true, reverseBits(_wgslsmith_clamp_i32(var_3.x, var_1.x, -52250i)), vec3<bool>(arg_1.b.x, arg_1.d, arg_1.d))), global0.x, func_1(Struct_3(Struct_1(u_input.a.x << (0u % 32u), true, -arg_0, !vec3<bool>(true, arg_1.d, arg_1.b.x)), Struct_1(-4554i, arg_1.b.x, arg_1.a, !arg_1.b)), 151f, arg_1)).b;
    return ~(_wgslsmith_div_vec4_u32(func_1(Struct_3(Struct_1(global2.x, var_4.x, arg_0, vec3<bool>(var_4.x, true, true)), Struct_1(12463i, arg_1.b.x, global2.x, global3[_wgslsmith_index_u32(global1.x, 3u)])), _wgslsmith_f_op_f32(max(global0.x, -1369f)), arg_1).e, vec4<u32>(~22396u, abs(arg_1.c), global1.x, ~global1.x)) ^ (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, arg_1.c, arg_1.c, 92203u)), vec4<u32>(arg_1.e.x, arg_1.e.x, 25868u, global1.x), arg_1.e) | vec4<u32>(arg_1.c, ~arg_1.c, ~4294967295u, _wgslsmith_sub_u32(4294967295u, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(func_4(-global2.x, func_1(Struct_3(Struct_1(2147483647i, true, u_input.a.x, global3[_wgslsmith_index_u32(1u, 3u)]), Struct_1(40526i, false, 8940i, vec3<bool>(false, false, true))), global0.x, Struct_2(global2.x, vec3<bool>(true, false, true), 1u, false, vec4<u32>(22560u, global1.x, global1.x, global1.x)))), vec4<u32>(72868u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(0u, global1.x)), global1.x | 4294967295u, global1.x)), 50183u), vec2<u32>(global1.x, global1.x));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1253f, global0.x)), select(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 0i, global2.x, global2.x), vec4<i32>(9514i, -66089i, u_input.a.x, global2.x)), _wgslsmith_add_i32(u_input.a.x, global2.x)), -2147483647i, global2.x & reverseBits(16528i), global2.x), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a.x, global2.x, -2147483647i, global2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -36533i, 13664i, 0i), vec4<i32>(-17335i, 17507i, -10652i, 1i))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(84235i, -2147483647i, global2.x, -50127i), abs(vec4<i32>(u_input.a.x, global2.x, -8822i, global2.x))), global4[_wgslsmith_index_u32(0u, 16u)]), select(~vec2<u32>(0u, 4294967295u) | func_4(~u_input.a.x, func_1(Struct_3(Struct_1(1i, true, 10328i, vec3<bool>(true, true, true)), Struct_1(global2.x, false, global2.x, global3[_wgslsmith_index_u32(10101u, 3u)])), 274f, Struct_2(-21117i, vec3<bool>(false, false, true), 1u, true, vec4<u32>(41363u, global1.x, global1.x, global1.x)))).wy, ~vec2<u32>(~22905u, 0u), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(256f, -569f)))), abs(~vec4<u32>(min(19344u, 1u), global1.x, global1.x, ~global1.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-528f, var_0.a))), vec2<f32>(var_0.a, -635f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, var_0.a), vec2<f32>(1000f, var_0.d.a))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1268f, global0.x)))))));
    let var_1 = true;
    var var_2 = var_0.d;
    global1 = vec2<u32>(global1.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(~var_0.e)), ~vec4<u32>(_wgslsmith_mult_u32(0u, var_0.e.x), ~global1.x, 28269u, 3284u)));
    let var_3 = reverseBits(func_2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.a), var_0.a), Struct_5(var_0.d.a, vec4<i32>(var_0.b.x, global2.x, -2147483647i, -4826i) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 5499i, 29758i, 2147483647i), var_0.b), vec2<u32>(22563u, ~16984u), var_0.d, ~vec4<u32>(var_0.e.x, global1.x, 4294967295u, global1.x)), _wgslsmith_mod_u32(firstTrailingBit(26643u), ~var_0.c.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(435f, 468f), vec2<f32>(300f, 332f), false))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(789f, 1142f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-369f, -225f) - vec2<f32>(1235f, var_2.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f + _wgslsmith_f_op_f32(f32(-1f) * -619f)), global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(840f, _wgslsmith_div_f32(global0.x, 679f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1.x, ~var_0.e.x), _wgslsmith_dot_vec4_u32(var_0.e, select(var_0.e, vec4<u32>(4294967295u, 4294967295u, global1.x, var_0.c.x), global4[_wgslsmith_index_u32(73536u, 16u)])), _wgslsmith_clamp_u32(global1.x, var_0.c.x, _wgslsmith_mult_u32(27007u, var_0.e.x)), 62680u), vec4<u32>(~var_0.e.x, var_0.e.x | abs(var_0.e.x), var_0.c.x, ~(~1633u))), var_0.b.yxz);
}

