struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: Struct_4 = Struct_4(1565f, Struct_1(vec4<bool>(false, true, false, true), 4945u, 1i), Struct_1(vec4<bool>(false, true, true, true), 0u, 65889i), vec2<u32>(26700u, 37678u));

var<private> global2: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global1 = Struct_4(global1.a, global1.c, Struct_1(global1.b.a, u_input.d.x, _wgslsmith_clamp_i32(~1i, _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.zz), 28697i)), reverseBits(select(~(~u_input.d.xy), ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], global0[_wgslsmith_index_u32(global1.b.b, 11u)]), true)));
    let var_0 = _wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, global1.c.b), vec2<u32>(4294967295u, 94218u)), u_input.d.xz);
    var var_1 = u_input.d;
    var_1 = vec3<u32>(~4294967295u, max(1u, _wgslsmith_dot_vec3_u32(u_input.d, ~(u_input.d & vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 41205u, global0[_wgslsmith_index_u32(4294967295u, 11u)])))), ~_wgslsmith_sub_u32(~4294967295u, global1.b.b));
    global0 = array<u32, 11>();
    return global1.c.c;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_5) -> f32 {
    return -244f;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> vec4<bool> {
    global1 = Struct_4(_wgslsmith_f_op_f32(func_4(arg_2, global1.c.a.x, arg_0, Struct_5(-14099i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) + vec2<f32>(global1.a, arg_2)), Struct_1(!global1.c.a, 4294967295u, -global1.c.c), vec2<u32>(global1.c.b, ~40762u), Struct_1(!global1.b.a, ~arg_0, func_3())))), global1.c, global1.b, abs(firstTrailingBit(firstTrailingBit(global1.d)) | u_input.d.zx));
    let var_0 = Struct_4(-578f, global1.b, global1.b, select(~global1.d, ~vec2<u32>(firstTrailingBit(4294967295u), min(global1.d.x, 39295u)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1124f, arg_2), _wgslsmith_f_op_f32(floor(global1.a))) < 692f));
    var var_1 = var_0.b;
    return vec4<bool>(all(global1.c.a.xwx), true, true, global1.b.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = ~vec4<u32>(~7469u, ~(~0u), firstLeadingBit(firstLeadingBit(firstTrailingBit(5897u))), abs((arg_0.b & 4294967295u) >> (global1.b.b % 32u)));
    let var_1 = Struct_5(firstTrailingBit(_wgslsmith_dot_vec2_i32(-u_input.c.yx, ~u_input.c.zy)), vec2<f32>(_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + -1000f)), arg_2), global1.b, vec2<u32>(min(~(~u_input.d.x), abs(global0[_wgslsmith_index_u32(1u, 11u)])), u_input.d.x), Struct_1(!arg_0.a, 89654u, -1i));
    var var_2 = arg_2;
    let var_3 = var_1.b.x;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(480f + 438f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-361f + var_1.b.x))))));
    return global1.b;
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_5) -> Struct_3 {
    let var_0 = Struct_5(_wgslsmith_mod_i32(~17622i, -8283i) | u_input.a, arg_2.b, func_5(arg_2.e, Struct_1(!(!global1.c.a), ~(25267u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.c.b, 11u)], 11u)]), u_input.b | ~global1.c.c), -1000f, all(vec3<bool>(!arg_2.e.a.x, all(global1.b.a.wyy), false))), vec2<u32>(5314u, ~countOneBits(4294967295u)), Struct_1(func_5(global1.b, Struct_1(vec4<bool>(arg_1, arg_2.e.a.x, global1.b.a.x, arg_1), abs(global0[_wgslsmith_index_u32(12086u, 11u)]), u_input.c.x & u_input.c.x), _wgslsmith_f_op_f32(-arg_0.x), arg_1).a, max(~(~global1.d.x), global1.d.x), arg_2.c.c));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), 774f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(546f)) * -134f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1702f, _wgslsmith_f_op_f32(round(1188f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 741f))))), vec3<bool>(!arg_2.c.a.x, true, arg_2.c.a.x), countOneBits(u_input.c.yz));
    let var_2 = select(vec2<u32>(global1.d.x, 4294967295u), reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, u_input.d.x, var_0.c.b, 8832u), vec4<u32>(0u, global1.c.b, 19336u, arg_2.e.b)), global1.c.b << (6847u % 32u))), func_2(var_0.c.b, vec2<i32>(7531i, arg_2.a) >> (~global1.d % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))).xz) | min(arg_2.d, var_0.d ^ vec2<u32>(global1.d.x, ~var_0.c.b));
    var var_3 = true;
    global1 = Struct_4(447f, Struct_1(select(select(vec4<bool>(var_0.c.a.x, false, true, true), select(var_0.e.a, arg_2.c.a, var_0.e.a), any(arg_2.e.a.zxz)), global1.b.a, arg_2.e.a), 1u, _wgslsmith_div_i32(arg_2.a, abs(arg_2.c.c))), Struct_1(global1.c.a, countOneBits(global1.c.b), -var_0.c.c), vec2<u32>(1u, 8883u));
    return Struct_3(!global1.c.a.xw, ~vec2<i32>(var_1.d.x, global1.c.c), _wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(var_1.d.x, arg_2.e.c, var_0.c.c, var_0.c.c)), abs(-vec4<i32>(u_input.c.x, 1i, 5963i, 11152i))), func_5(Struct_1(vec4<bool>(global1.b.a.x || true, 0i > u_input.c.x, select(arg_1, false, false), !var_1.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(8972u, global1.c.b, 59259u, 0u), vec4<u32>(u_input.d.x, var_2.x, 4294967295u, 1u)), var_0.a), func_5(func_5(Struct_1(vec4<bool>(true, var_1.c.x, var_1.c.x, var_0.c.a.x), 1u, var_1.d.x), Struct_1(var_0.e.a, arg_2.c.b, 62286i), arg_2.b.x, false), Struct_1(vec4<bool>(global1.b.a.x, arg_2.c.a.x, false, false), _wgslsmith_clamp_u32(var_2.x, 0u, arg_2.c.b), countOneBits(arg_2.e.c)), -345f, false), -575f, false), var_0.c);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-304f, _wgslsmith_f_op_f32(-global1.a)), arg_2.b)) - arg_2.b), arg_2.e.a.x, Struct_5(~10406i, arg_2.b, func_5(Struct_1(func_2(0u, u_input.c.xy, -1000f), _wgslsmith_mod_u32(u_input.d.x, 0u), ~arg_2.a), arg_2.c, -308f, false), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 44636u), vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 11u)], global0[_wgslsmith_index_u32(43748u, 11u)])) ^ _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.e.b), 81214u), Struct_1(!(!arg_2.c.a), reverseBits(arg_1), firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, global1.b.c, -2901i)))));
    var var_1 = !func_5(Struct_1(!arg_2.e.a, 28090u, _wgslsmith_sub_i32(u_input.a, u_input.b)), func_6(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.yz)), true || var_0.a.x, arg_2).d, -726f, func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) - vec2<f32>(816f, -672f)), all(vec3<bool>(true, true, arg_0.c.x)), arg_2).d.a.x).a.x == !var_0.a.x;
    var var_2 = Struct_4(arg_0.b, Struct_1(func_2(4331u, ~(vec2<i32>(global1.c.c, 1i) ^ arg_0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1588f)))), var_0.d.b, var_0.b.x | global1.b.c), global1.c, min(select(global1.d, ~u_input.d.yz ^ firstLeadingBit(global1.d), vec2<bool>(true, true)), vec2<u32>(5792u, select(_wgslsmith_sub_u32(68866u, u_input.d.x), ~u_input.d.x, func_5(Struct_1(var_0.e.a, var_0.e.b, global1.c.c), global1.b, global1.a, global1.b.a.x).a.x))));
    let var_3 = func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)), 872f)), ~(~(~arg_0.d.x)) <= 2147483647i, arg_2);
    var var_4 = 2155f;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2105f, -652f, _wgslsmith_f_op_f32(ceil(-823f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 472f, var_2.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2207f)), 1000f), global1.c.a.wzw, vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.c, var_3.c), var_0.e.c));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = global1.b.c;
    let var_1 = vec3<u32>(max(0u, 0u), reverseBits(34889u), u_input.d.x);
    let var_2 = var_1;
    let var_3 = func_1(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.a))))), _wgslsmith_div_f32(1805f, 817f), vec3<bool>(arg_3.x, arg_0.a.x, true | arg_0.a.x), select(arg_2.d, vec2<i32>(~arg_2.d.x, ~global1.b.c), global1.c.a.x)), ~(~(~var_1.x)), Struct_5(_wgslsmith_add_i32(-u_input.b, 2147483647i), _wgslsmith_f_op_vec2_f32(-arg_2.a.yz), func_5(global1.c, arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-355f, -1000f))), arg_3.x), vec2<u32>(17999u, ~49655u), func_6(arg_2.a.xy, true, Struct_5(global1.c.c ^ global1.c.c, _wgslsmith_f_op_vec2_f32(select(arg_2.a.zx, vec2<f32>(arg_2.b, global1.a), true)), arg_0, ~vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 11u)], var_2.x), func_5(arg_0, arg_0, -326f, true))).d));
    let var_4 = func_1(func_1(var_3, var_1.x, Struct_5(arg_2.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, var_3.a.x)), func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, var_3.a.x)), func_2(1u, vec2<i32>(u_input.c.x, arg_0.c), arg_2.a.x).x, Struct_5(11518i, vec2<f32>(154f, arg_2.a.x), Struct_1(global1.c.a, 1u, -40419i), var_1.yz, Struct_1(vec4<bool>(true, true, true, arg_3.x), u_input.d.x, global1.b.c))).d, vec2<u32>(4294967295u, arg_0.b) | ~var_2.yx, global1.b)), (u_input.d.x & u_input.d.x) & abs(1u), Struct_5(36660i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(678f, 1969f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1108f, var_3.b)))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(-global1.a)))), func_6(var_3.a.zy, arg_3.x, Struct_5(_wgslsmith_div_i32(-25921i, 2147483647i), _wgslsmith_f_op_vec2_f32(var_3.a.zy * vec2<f32>(var_3.a.x, 1444f)), func_5(Struct_1(vec4<bool>(arg_3.x, true, true, arg_0.a.x), 29633u, global1.c.c), arg_0, arg_2.b, global1.c.a.x), vec2<u32>(4297u, 0u), func_5(Struct_1(arg_0.a, arg_1.x, 49728i), arg_0, -244f, arg_2.c.x))).d, ~vec2<u32>(~25379u, _wgslsmith_dot_vec2_u32(global1.d, u_input.d.xz)), Struct_1(vec4<bool>(true, func_2(u_input.d.x, vec2<i32>(1i, -13394i), -1284f).x, any(vec2<bool>(arg_2.c.x, arg_0.a.x)), true), 4294967295u, -2147483647i))).b;
    return Struct_4(arg_2.b, Struct_1(!vec4<bool>(true, false, true && arg_2.c.x, true), ~reverseBits(firstLeadingBit(arg_1.x)), var_3.d.x), Struct_1(vec4<bool>(arg_2.c.x, !var_3.c.x || (arg_2.c.x & false), false, func_5(Struct_1(arg_0.a, var_1.x, 1i), func_5(Struct_1(vec4<bool>(true, false, true, global1.c.a.x), global1.c.b, 0i), global1.b, -121f, false), _wgslsmith_div_f32(var_4, var_4), arg_3.x).a.x), 21760u, -global1.b.c), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.zy, vec2<u32>(_wgslsmith_mod_u32(8871u, 46415u), 0u << (var_1.x % 32u))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(arg_0.b, global0[_wgslsmith_index_u32(arg_1.x, 11u)])), vec2<u32>(32863u, 35u)), vec2<u32>(4294967295u, 4294967295u) << (u_input.d.zx % vec2<u32>(32u)))));
}

fn func_8(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 1374f) - vec2<f32>(arg_0.a, -1190f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(432f, global1.a))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, arg_1) * vec2<f32>(-1105f, _wgslsmith_div_f32(867f, -230f))), func_7(Struct_1(arg_0.c.a, global1.c.b >> (0u % 32u), 1i), arg_2.xzz, func_1(func_1(Struct_2(vec3<f32>(global1.a, 1532f, global1.a), 113f, global1.c.a.wzx, u_input.c.yy), arg_2.x, Struct_5(u_input.a, vec2<f32>(arg_0.a, global1.a), Struct_1(vec4<bool>(arg_0.b.a.x, global1.c.a.x, true, true), arg_0.d.x, arg_0.b.c), arg_2.xy, Struct_1(arg_0.b.a, arg_2.x, -2147483647i))), ~627u, Struct_5(global1.c.c, vec2<f32>(arg_0.a, 649f), arg_0.c, vec2<u32>(4508u, 75015u), Struct_1(vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(4294967295u, 11u)], -52624i))), !vec3<bool>(arg_0.b.a.x, false, true)).b.a.yw)));
    let var_1 = ~arg_2.zy;
    var var_2 = func_6(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_1) * vec2<f32>(896f, -593f)))))), false, Struct_5(_wgslsmith_mult_i32(1911i, global1.c.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, 1080f), vec2<f32>(arg_1, 337f), vec2<bool>(true, false)))))), arg_0.c, arg_2.yw, arg_0.b)).e;
    var var_3 = true;
    var_2 = func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(526f))), _wgslsmith_f_op_f32(-2292f + _wgslsmith_f_op_f32(521f * 290f))) + vec2<f32>(1143f, -2171f)), global1.b.c >= -2147483647i, Struct_5(-2659i, vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), arg_0.b, countOneBits(~u_input.d.yy), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, 1211f), vec2<f32>(arg_0.a, 296f))), true, Struct_5(1i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, arg_1))), func_6(vec2<f32>(-798f, arg_0.a), false, Struct_5(arg_0.b.c, vec2<f32>(var_0.x, -255f), Struct_1(arg_0.b.a, u_input.d.x, -2147483647i), arg_2.zz, Struct_1(arg_0.c.a, 1u, -2147483647i))).e, _wgslsmith_mult_vec2_u32(var_1, arg_0.d), Struct_1(var_2.a, 15483u, -2147483647i))).d)).e;
    return func_6(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-216f - arg_1))), _wgslsmith_f_op_f32(-909f + _wgslsmith_f_op_f32(-var_0.x))))), var_2.a.x, Struct_5(_wgslsmith_dot_vec4_i32(-vec4<i32>(31110i, 27883i, u_input.c.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.c, 27673i, -16481i, arg_3.x), vec4<i32>(12492i, arg_3.x, 0i, -4940i))) >> ((_wgslsmith_add_u32(global1.c.b, arg_0.b.b) << (~var_1.x % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -717f), vec2<f32>(global1.a, arg_0.a), false)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-189f, var_0.x))))), arg_0.c, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(35283u, 11u)], global1.d.x) | ~var_1), Struct_1(vec4<bool>(global1.c.a.x | arg_0.b.a.x, false, !global1.b.a.x, any(vec2<bool>(false, arg_0.c.a.x))), ~global1.c.b | (global1.d.x ^ 4294967295u), var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.d.x, global0[_wgslsmith_index_u32(28383u, 11u)]);
    var var_1 = func_8(func_7(global1.c, ~abs(vec3<u32>(55122u, u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]) ^ vec3<u32>(global1.d.x, 1u, 44716u)), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(910f, global1.a, global1.a)), 483f, !global1.b.a.wwz, u_input.c.yy), firstTrailingBit(u_input.d.x), Struct_5(0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)), Struct_1(vec4<bool>(global1.b.a.x, true, false, global1.b.a.x), 10790u, 42533i), vec2<u32>(4294967295u, 30631u) << (u_input.d.yy % vec2<u32>(32u)), Struct_1(vec4<bool>(global1.c.a.x, false, global1.b.a.x, true), global0[_wgslsmith_index_u32(42142u, 11u)], 1i))), global1.b.a.xwz), _wgslsmith_f_op_f32(-global1.a), vec4<u32>(global0[_wgslsmith_index_u32(global1.b.b, 11u)], select(~47386u, global0[_wgslsmith_index_u32(2539u, 11u)] << (global1.d.x % 32u), global1.c.a.x) << (firstTrailingBit(_wgslsmith_mult_u32(34664u, global0[_wgslsmith_index_u32(0u, 11u)])) % 32u), ~global1.b.b, ~(~(~0u))), ~abs(firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(global1.b.c, global1.c.c, global1.b.c), u_input.c))));
    var var_2 = func_5(var_1.e, var_1.d, _wgslsmith_f_op_f32(global1.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-346f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(-global1.a)))), all(select(vec3<bool>(true, true, !var_1.a.x), vec3<bool>(select(true, global1.b.a.x, global1.b.a.x), var_1.a.x, true), all(func_8(Struct_4(global1.a, global1.c, Struct_1(vec4<bool>(true, var_1.a.x, var_1.d.a.x, false), 4294967295u, u_input.b), vec2<u32>(u_input.d.x, u_input.d.x)), global1.a, vec4<u32>(63171u, var_1.e.b, 39639u, u_input.d.x), u_input.c).d.a.zw)))).a;
    let var_3 = Struct_5(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -1132f))))), Struct_1(vec4<bool>(true, !(var_1.a.x != true), true, true), u_input.d.x, ~(-15438i)), abs(_wgslsmith_add_vec2_u32(u_input.d.zz, global1.d ^ abs(global1.d))), func_5(func_5(Struct_1(var_1.e.a, ~4294967295u, _wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(var_1.e.c, global1.c.c))), func_6(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1688f, 800f), vec2<f32>(-813f, global1.a))), func_8(Struct_4(-1467f, Struct_1(vec4<bool>(false, false, false, true), u_input.d.x, -19097i), global1.b, vec2<u32>(var_1.e.b, 38980u)), global1.a, vec4<u32>(64446u, 1u, 30045u, 29862u), vec3<i32>(var_1.d.c, 26738i, u_input.c.x)).d.a.x, Struct_5(2147483647i, vec2<f32>(global1.a, -1000f), global1.c, vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.d.b, 11u)], 11u)]), Struct_1(vec4<bool>(global1.b.a.x, false, true, true), 33898u, global1.b.c))).e, global1.a, !global1.c.a.x), func_7(Struct_1(!global1.b.a, _wgslsmith_mod_u32(global1.c.b, u_input.d.x), -2147483647i), firstTrailingBit(vec3<u32>(global1.d.x, 0u, 74035u)), func_1(func_1(Struct_2(vec3<f32>(298f, global1.a, -1150f), global1.a, var_2.xzw, vec2<i32>(-1i, u_input.a)), 25964u, Struct_5(-2147483647i, vec2<f32>(global1.a, 1236f), Struct_1(var_1.e.a, 45257u, global1.c.c), global1.d, global1.b)), 60974u, Struct_5(global1.b.c, vec2<f32>(1617f, global1.a), var_1.e, vec2<u32>(u_input.d.x, var_1.e.b), Struct_1(global1.b.a, global1.d.x, global1.c.c))), !vec3<bool>(var_2.x, false, var_1.e.a.x)).b, _wgslsmith_f_op_f32(floor(244f)), !func_6(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a, global1.a))), !var_2.x, Struct_5(-2147483647i, vec2<f32>(global1.a, -362f), Struct_1(global1.b.a, 39115u, 1i), global1.d, Struct_1(global1.c.a, 633u, u_input.b))).e.a.x));
    var var_4 = select(!var_1.d.a.x, false, !var_2.x);
    global2 = countOneBits(u_input.c.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f - 1263f) - -787f)));
    var var_6 = func_8(func_7(func_5(Struct_1(vec4<bool>(var_1.d.a.x, var_2.x, var_3.c.a.x, var_3.e.a.x), 50437u, 31054i), func_7(global1.b, ~vec3<u32>(19879u, global0[_wgslsmith_index_u32(global1.b.b, 11u)], 4294967295u), Struct_2(vec3<f32>(global1.a, var_3.b.x, var_5.x), global1.a, var_3.e.a.www, var_1.b), func_7(var_3.c, u_input.d, Struct_2(vec3<f32>(1345f, 414f, var_5.x), -893f, var_1.d.a.xyz, u_input.c.zx), var_1.d.a.wyx).b.a.yzx).c, 1954f, true), ~_wgslsmith_sub_vec3_u32(vec3<u32>(28438u, 22956u, u_input.d.x), vec3<u32>(var_1.e.b, 95768u, 0u)) ^ abs(u_input.d >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 4294967295u, global0[_wgslsmith_index_u32(36403u, 11u)]) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, global1.a, var_5.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5.x))), func_8(Struct_4(global1.a, Struct_1(vec4<bool>(global1.b.a.x, var_3.e.a.x, global1.b.a.x, var_3.c.a.x), 12516u, global1.c.c), Struct_1(var_1.e.a, global0[_wgslsmith_index_u32(var_3.c.b, 11u)], 9711i), var_3.d), global1.a, ~vec4<u32>(global0[_wgslsmith_index_u32(var_3.d.x, 11u)], var_1.d.b, 1u, 58082u), vec3<i32>(-10159i, 6022i, u_input.a)).d.a.zww, vec2<i32>(70514i, _wgslsmith_add_i32(-25195i, global1.b.c))), func_6(vec2<f32>(1f, _wgslsmith_f_op_f32(-973f * var_3.b.x)), func_6(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_5.x, -285f), var_5.xx)), false, var_3).e.a.x, var_3).e.a.wwz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-675f, 2587f)))), _wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.c.b, 4294967295u, 15492u, 40125u), _wgslsmith_add_vec4_u32(~vec4<u32>(5127u, 1u, 41524u, var_3.c.b), select(vec4<u32>(global0[_wgslsmith_index_u32(var_1.d.b, 11u)], global1.b.b, 0u, global0[_wgslsmith_index_u32(33925u, 11u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 4294967295u, u_input.d.x, var_1.d.b), vec4<bool>(true, var_2.x, var_1.d.a.x, false))), select(vec4<u32>(0u, 4294967295u, 4294967295u, global1.d.x), vec4<u32>(u_input.d.x, 4294967295u, global1.c.b, u_input.d.x), true) << (firstLeadingBit(vec4<u32>(1u, 0u, 4294967295u, 77144u)) % vec4<u32>(32u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.b.b, 7898u, global1.d.x), vec4<u32>(global1.c.b, u_input.d.x, var_3.c.b, global1.b.b), vec4<u32>(u_input.d.x, 1u, 29793u, 1u)))), u_input.c);
    let var_7 = ~(firstLeadingBit(_wgslsmith_sub_u32(max(global1.c.b, global0[_wgslsmith_index_u32(0u, 11u)]), global1.c.b)) >> (~_wgslsmith_dot_vec3_u32(reverseBits(u_input.d), u_input.d & vec3<u32>(var_1.e.b, 1u, 5941u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -608f, -1210f, global1.b.b);
}

