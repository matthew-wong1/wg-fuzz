struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1000f, 1368f, 1129f, -150f, 113f, 164f, -481f, 482f);

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(1i, 2147483647i), vec2<i32>(3735i, -12047i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: vec4<f32> = vec4<f32>(249f, 761f, 2471f, -1137f);

var<private> global3: i32;

var<private> global4: vec3<f32> = vec3<f32>(-247f, 1131f, -897f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global1 = array<vec2<i32>, 3>();
    let var_0 = _wgslsmith_f_op_f32(-global4.x);
    let var_1 = countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(arg_0, 36372u, 59305u) << (vec3<u32>(0u, arg_0, arg_0) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0)) ^ ~vec3<u32>(12867u, 33629u, arg_0)) << (~1u % 32u));
    var var_2 = arg_1;
    global3 = ~1i;
    return -30692i;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4991u, _wgslsmith_clamp_u32(~select(11708u, var_0.a.b, var_0.a.d.x), _wgslsmith_mult_u32(firstLeadingBit(arg_0.a.b), arg_3.c.x), ~1u), ~34077u, ~(~(~21932u))), arg_2.c, arg_3.c);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(957f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(exp2(global4.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-278f - global4.x) * -160f))), _wgslsmith_f_op_f32(max(1007f, arg_1))));
    let var_2 = Struct_2(Struct_1(vec3<i32>(~_wgslsmith_div_i32(-29666i, u_input.a), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 0i, var_0.b, 0i), vec4<i32>(2147483647i, arg_3.a.c, 7168i, arg_2.a.c) >> (vec4<u32>(0u, 4294967295u, arg_2.a.b, arg_2.c.x) % vec4<u32>(32u))), -min(0i, arg_2.b)), abs(_wgslsmith_clamp_u32(firstLeadingBit(0u), 41108u, _wgslsmith_dot_vec4_u32(arg_3.c, vec4<u32>(var_1.x, 1u, var_0.c.x, var_0.c.x)))), arg_2.a.c, !var_0.a.d));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.xyx * global2.wxz) * vec3<f32>(-556f, global2.x, global4.x))))));
    return -abs(~vec4<i32>(var_0.a.c, var_2.a.c, u_input.a, 2147483647i)) & max(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(15896i, -1i, arg_2.a.c, arg_2.b)), ~vec4<i32>(23195i, 2147483647i, arg_0.b, 3631i)), vec4<i32>(abs(arg_3.b), 2147483647i, 1i, i32(-1i) * -1i)), vec4<i32>((-44194i | arg_2.a.a.x) & _wgslsmith_div_i32(var_2.a.a.x, -20724i), -60656i, -_wgslsmith_mult_i32(var_0.a.c, arg_0.a.a.x), _wgslsmith_dot_vec2_i32(arg_3.a.a.yz >> (arg_2.c.wy % vec2<u32>(32u)), global1[_wgslsmith_index_u32(var_0.c.x ^ var_0.a.b, 3u)])));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20093u, arg_0.c.x, (0u ^ arg_0.a.b) & (arg_0.c.x ^ 35707u), ~(~arg_0.c.x)), arg_0.c & ~arg_0.c), arg_0.c);
    var var_1 = _wgslsmith_dot_vec4_i32(select(func_4(Struct_3(arg_0.a, -u_input.a, _wgslsmith_div_vec4_u32(arg_0.c, arg_0.c)), global2.x, arg_0, Struct_3(arg_0.a, func_3(arg_0.a.b, true), vec4<u32>(arg_0.a.b, 6975u, arg_0.c.x, 1u))), vec4<i32>(arg_0.b, reverseBits(arg_0.b), ~arg_0.b, 18927i), select(arg_0.c.x <= arg_0.a.b, true, true) | arg_0.a.d.x), countOneBits(func_4(Struct_3(arg_0.a, -10550i | u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, 59553u, arg_0.c.x, 1u), vec4<u32>(arg_0.a.b, arg_0.a.b, 36963u, arg_0.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -1375f), Struct_3(arg_0.a, 39413i, vec4<u32>(arg_0.a.b, 0u, arg_0.c.x, 0u)), Struct_3(Struct_1(arg_0.a.a, arg_0.c.x, 37513i, arg_0.a.d), ~arg_0.b, select(arg_0.c, vec4<u32>(arg_0.a.b, 4294967295u, arg_0.c.x, 4294967295u), arg_0.a.d.x)))));
    let var_2 = arg_0;
    global3 = 6278i;
    let var_3 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_sub_i32(1i, var_2.a.c), i32(-1i) * -u_input.a, _wgslsmith_clamp_i32(var_2.a.a.x, -33666i, firstTrailingBit(var_2.a.a.x))), select(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.b, 22951u), arg_0.c.xy), var_2.c.yz), countOneBits(1u >> (var_2.a.b % 32u)), arg_0.a.d.x), ~(~arg_0.b), !(!vec3<bool>(var_2.a.d.x, false, false))), func_3(~(~_wgslsmith_dot_vec3_u32(arg_0.c.zwz, vec3<u32>(arg_0.c.x, arg_0.a.b, 2911u))), any(arg_0.a.d.zx) != any(vec3<bool>(false, var_2.a.d.x, false))), select(~arg_0.c, (min(var_2.c, arg_0.c) >> ((vec4<u32>(arg_0.c.x, arg_0.a.b, 4294967295u, 44594u) & vec4<u32>(arg_0.c.x, 16311u, 47453u, 0u)) % vec4<u32>(32u))) >> (~_wgslsmith_add_vec4_u32(var_2.c, vec4<u32>(arg_0.a.b, var_2.a.b, 21095u, var_2.a.b)) % vec4<u32>(32u)), select(select(vec4<bool>(true, true, arg_0.a.d.x, arg_0.a.d.x), vec4<bool>(true, var_2.a.d.x, var_2.a.d.x, var_2.a.d.x), !vec4<bool>(arg_0.a.d.x, true, arg_0.a.d.x, false)), vec4<bool>(arg_0.a.d.x, var_2.a.d.x, false, any(vec4<bool>(var_2.a.d.x, false, false, true))), var_2.a.d.x)));
    return Struct_1(var_2.a.a, var_3.a.b, var_3.b, vec3<bool>(true, true, true));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_3(func_2(Struct_3(Struct_1(vec3<i32>(u_input.a, 52391i, u_input.a), 1u, -2147483647i, vec3<bool>(false, true, false)), 68836i, ~(~vec4<u32>(80058u, 47667u, 26784u, 9175u)))), 43797i, vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 1u, 154665u, 8627u)), ~vec4<u32>(1u, 10725u, 75808u, 1u)), ~abs(0u), 28150u, _wgslsmith_div_u32(max(0u, 0u), ~0u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 16979u, ~7503u, reverseBits(41926u)), vec4<u32>(~1u, select(13208u, 35996u, true), 1u, 4916u)));
    global4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global2.wwz)));
    var_0 = Struct_3(var_0.a, -1i, vec4<u32>(0u, reverseBits(var_0.c.x << (_wgslsmith_dot_vec3_u32(var_0.c.zyz, var_0.c.xzx) % 32u)), ~var_0.c.x, ~13157u));
    global0 = array<f32, 8>();
    let var_1 = Struct_2(Struct_1(vec3<i32>(func_4(Struct_3(Struct_1(vec3<i32>(var_0.b, var_0.b, 3937i), var_0.c.x, u_input.a, var_0.a.d), -1i, var_0.c), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.c.x, 8u)], global2.x, false)), Struct_3(var_0.a, u_input.a, vec4<u32>(var_0.c.x, 0u, 4294967295u, 54313u)), Struct_3(var_0.a, 1i, var_0.c)).x, u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-8594i, -1i), vec2<i32>(var_0.a.a.x, u_input.a))), abs(~countOneBits(var_0.a.b)), u_input.a << (var_0.a.b % 32u), var_0.a.d));
    return var_1.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1203f, global0[_wgslsmith_index_u32(8564u, 8u)]))));
    let var_1 = !select(vec3<bool>(true, true, true), func_1(), vec3<bool>(true, true, true));
    let var_2 = abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, ~1u), ~1u));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(136f, _wgslsmith_f_op_f32(max(975f, 457f)), _wgslsmith_f_op_f32(-global4.x), global2.x), vec4<f32>(global4.x, _wgslsmith_f_op_f32(859f - var_0), -973f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 8u)], global2.x)))))));
    var var_3 = max(~vec3<u32>(abs(_wgslsmith_div_u32(var_2, var_2)), 14247u, 4294967295u), ~(~(~(vec3<u32>(0u, 4294967295u, var_2) & vec3<u32>(var_2, var_2, var_2)))));
    let var_4 = ~var_3.x;
    var var_5 = vec4<bool>(true, var_1.x, all(!select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x), var_1.x)) || var_1.x, var_1.x);
    global1 = array<vec2<i32>, 3>();
    var_3 = reverseBits(max(abs(abs(vec3<u32>(var_3.x, 118846u, var_3.x))), ~(vec3<u32>(var_4, 21043u, 1u) | vec3<u32>(var_4, var_3.x, var_4)))) & vec3<u32>(~1u, ~55258u >> (var_2 % 32u), countOneBits(~var_4));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.a, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, -2147483647i, 2147483647i), select(vec4<i32>(u_input.a, -45316i, u_input.a, u_input.a), vec4<i32>(34167i, 0i, u_input.a, -1i), vec4<bool>(var_1.x, var_5.x, false, var_1.x))), -vec4<i32>(u_input.a, ~u_input.a, u_input.a, ~(-1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1314f, var_0, var_0) * global2.xxz)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(628f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))) * _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(191f)), var_5.x && any(vec2<bool>(var_5.x, var_5.x))))));
}

