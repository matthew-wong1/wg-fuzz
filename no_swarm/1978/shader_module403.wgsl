struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec3<f32>(-801f, -1489f, -1286f), true, vec3<u32>(17701u, 87442u, 38679u)), vec3<u32>(4294967295u, 1u, 39066u), Struct_2(false, 10485u, 1i, Struct_1(-3070i), vec3<i32>(-27376i, 1i, -27583i)));

var<private> global2: vec3<f32> = vec3<f32>(-1000f, 1000f, 129f);

var<private> global3: array<u32, 2> = array<u32, 2>(63916u, 0u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    var var_0 = global1.d.d;
    var var_1 = global1.a.zw;
    var var_2 = u_input.a;
    let var_3 = ~abs(abs(_wgslsmith_add_i32(var_0.a, 7960i))) | 16763i;
    var var_4 = 75061u;
    return countOneBits(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(global1.d.e.x, var_3, 32730i), _wgslsmith_div_i32(var_0.a, global1.d.e.x)) ^ -1i);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: Struct_4) -> u32 {
    global0 = ~1u;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1.b.a)));
    var var_0 = 1i;
    global3 = array<u32, 2>();
    let var_1 = Struct_2(false, arg_1.b & _wgslsmith_mult_u32(arg_1.b, 48792u), abs(0i), arg_3.d.d, vec3<i32>(~firstLeadingBit(~48173i), abs(min(~5800i, u_input.a)), _wgslsmith_clamp_i32(arg_3.d.c, ~countOneBits(-1i), reverseBits(-1i))));
    return var_1.b;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec4<i32>) -> f32 {
    return -329f;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_3 {
    global1 = Struct_4(global1.a, global1.b, ~_wgslsmith_clamp_vec3_u32(reverseBits(u_input.b.yzx), vec3<u32>(19283u, 0u, 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global3[_wgslsmith_index_u32(u_input.d.x, 2u)], u_input.c), u_input.b.yzw), countOneBits(global1.b.c))), global1.d);
    var var_0 = _wgslsmith_f_op_f32(-636f * global1.b.a.x);
    global3 = array<u32, 2>();
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_5(Struct_4(global1.a, global1.b, u_input.d, global1.d), 4294967295u, false), vec2<u32>(83236u, func_3(u_input.a != func_1(), Struct_2(global1.d.a && true, arg_0, 7207i, Struct_1(u_input.a), vec3<i32>(global1.d.e.x, 0i, u_input.a) & vec3<i32>(u_input.a, global1.d.c, -2438i)), -820f, Struct_4(!global1.a, Struct_3(vec3<f32>(865f, 1485f, -365f), true, vec3<u32>(global1.d.b, 1u, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.x, 4294967295u, 41149u), vec3<u32>(arg_0, 9650u, global3[_wgslsmith_index_u32(global1.b.c.x, 2u)])), global1.d))), _wgslsmith_mult_vec4_i32(countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(global1.d.d.a, global1.d.e.x, arg_1, u_input.a), vec4<i32>(arg_1, global1.d.e.x, -2147483647i, u_input.a))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, -31529i, u_input.a) >> (vec4<u32>(u_input.c, 4294967295u, 8338u, 0u) % vec4<u32>(32u)), vec4<i32>(-25617i, global1.d.c, -2147483647i, u_input.a), -vec4<i32>(-72771i, -549i, -12467i, u_input.a)), vec4<i32>(1i, _wgslsmith_mod_i32(-26415i, u_input.a), arg_1, -u_input.a)))));
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(global1.b.c), ~u_input.b.zxx, vec3<u32>(14001u, 31417u, u_input.c)), global1.b.c), ((global1.c | u_input.d) >> (~vec3<u32>(55979u, 1u, global1.c.x) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(45986u, 2u)], 0u), vec3<u32>(global1.b.c.x, u_input.c, global3[_wgslsmith_index_u32(u_input.b.x, 2u)]))), Struct_2(global1.a.x, ~u_input.d.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, -1i, global1.d.d.a, -2147483647i)), -countOneBits(vec4<i32>(-33483i, -1i, arg_1, arg_1))), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(2906i, 1i, u_input.a), vec3<i32>(global1.d.e.x, arg_1, 2147483647i))), _wgslsmith_sub_vec3_i32(global1.d.e << (vec3<u32>(arg_0, arg_0, 2312u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(63199i, global1.d.d.a, 1i) ^ global1.d.e, -global1.d.e))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(vec4<bool>(!global1.d.a, false, (func_1() < (global1.d.e.x | 0i)) && !(global1.d.c == u_input.a), global1.b.b), func_2(_wgslsmith_clamp_u32(~(~1u), ~select(56143u, global3[_wgslsmith_index_u32(67840u, 2u)], global1.a.x), _wgslsmith_dot_vec4_u32(reverseBits(u_input.b), _wgslsmith_div_vec4_u32(u_input.b, u_input.b))), -69979i, _wgslsmith_f_op_f32(f32(-1f) * -421f)), ~(~vec3<u32>(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global1.c.x, 2u)], 2u)], countOneBits(global1.d.b), _wgslsmith_add_u32(50861u, global3[_wgslsmith_index_u32(1u, 2u)]))), global1.d);
    let var_0 = !vec2<bool>(global1.a.x, true);
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(986f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.b.a.x)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.x)))), _wgslsmith_f_op_vec3_f32(-global1.b.a));
    var var_1 = all(!(!select(global1.a.zyy, !vec3<bool>(global1.d.a, var_0.x, var_0.x), true)));
    var var_2 = _wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(~0u, ~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 4294967295u, u_input.d.x >> (u_input.b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~var_2.x, ~u_input.d.x)), _wgslsmith_clamp_vec4_u32(reverseBits(reverseBits(abs(vec4<u32>(4294967295u, var_2.x, u_input.b.x, 15127u)))), select(u_input.b, u_input.b, all(!global1.a.yyy)), vec4<u32>((global3[_wgslsmith_index_u32(1u, 2u)] & 4294967295u) ^ firstTrailingBit(4294967295u), 74502u ^ var_2.x, 8020u, select(u_input.d.x, var_2.x, all(vec2<bool>(var_0.x, var_0.x))))), -vec3<i32>(u_input.a, global1.d.c, -1i) << (vec3<u32>(~_wgslsmith_clamp_u32(var_2.x, 4294967295u, 1u), ~var_2.x, u_input.c) % vec3<u32>(32u)), 0u, u_input.a);
}

