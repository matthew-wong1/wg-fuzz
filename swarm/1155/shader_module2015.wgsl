struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = ~u_input.b > (_wgslsmith_add_i32(-1i, countOneBits(-u_input.b)) >> (84855u % 32u));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(33696i, -(u_input.b | select(2147483647i, u_input.b, global0[_wgslsmith_index_u32(61986u, 9u)]))), -39845i, -1i);
    var var_2 = _wgslsmith_mult_vec4_i32(-(-vec4<i32>(9952i, -2147483647i, var_1, 19868i) >> (~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) % vec4<u32>(32u))) & ~abs(vec4<i32>(var_1, var_1, 26520i, -91238i)), vec4<i32>(2147483647i, u_input.b, firstLeadingBit(~u_input.b), -_wgslsmith_mod_i32(var_1, u_input.b)) & vec4<i32>(var_1 | _wgslsmith_mod_i32(1i, 31962i), var_1, -36472i, -u_input.b | 45699i));
    var var_3 = firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(~16767u, _wgslsmith_mult_u32(u_input.a, u_input.a)) | u_input.a, 1u));
    var_3 = _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1158u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(29798u, 4294967295u), vec2<u32>(u_input.a, u_input.a))) << (reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.x, var_3.x) >> (vec2<u32>(var_3.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(var_3.x, 48211u))) % vec2<u32>(32u)), max(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 18309u), vec2<u32>(36592u, var_3.x)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 68877u))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(34743u, 40966u), vec2<u32>(0u, 0u)), vec2<u32>(75431u, 77234u) | vec2<u32>(u_input.a, 1u)), u_input.a)));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_3.x), vec2<u32>(44767u, 28232u)) ^ firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.a, 0u))), vec2<u32>(~1u, u_input.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(true || !global0[_wgslsmith_index_u32(4294967295u, 9u)], true, any(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(53885u, 9u)], false, true)))), true);
    var var_1 = Struct_1(!(!(false != all(vec3<bool>(true, true, false)))), ~vec4<u32>(~(4294967295u >> (u_input.a % 32u)), ~u_input.a, 0u, 14016u), select(reverseBits(vec2<i32>(u_input.b, u_input.b)) ^ _wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b, 11743i), false), vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.b, -14322i) >> (func_3() % vec2<u32>(32u)), var_0.ww));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - _wgslsmith_f_op_f32(floor(-1576f)))))));
    let var_3 = vec4<f32>(891f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))), var_2);
    var var_4 = Struct_1(!(true | (_wgslsmith_f_op_f32(trunc(-1492f)) <= _wgslsmith_f_op_f32(f32(-1f) * -195f))), ~reverseBits(~vec4<u32>(var_1.b.x, 36047u, 22081u, u_input.a)), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.b, var_1.c.x)) ^ -(_wgslsmith_add_vec2_i32(var_1.c, vec2<i32>(-25061i, -12781i)) | vec2<i32>(u_input.b, -17716i)));
    return Struct_1(all(vec4<bool>(true, global0[_wgslsmith_index_u32(46624u, 9u)], true, var_4.a)), var_4.b, _wgslsmith_mod_vec2_i32(vec2<i32>(-(~0i), -(var_4.c.x & 6646i)), vec2<i32>(u_input.b, min(var_4.c.x, i32(-1i) * -1i))));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    return vec4<u32>(~(~35310u), 779u, _wgslsmith_dot_vec4_u32(arg_0.b, _wgslsmith_div_vec4_u32(arg_0.b, _wgslsmith_div_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, 4294967295u, arg_0.b.x, u_input.a)))), _wgslsmith_mod_u32(1u, firstTrailingBit(1u)));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_0 = Struct_1(!global0[_wgslsmith_index_u32(u_input.a, 9u)], select(func_4(func_2()), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 52010u, u_input.a, u_input.a)), max(vec4<u32>(u_input.a, 50698u, 11845u, u_input.a), vec4<u32>(19818u, u_input.a, 3759u, u_input.a))), true) ^ ~min(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), select(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 9u)])), -(~vec2<i32>(1i, 1i) & select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 90887i)), select(vec2<i32>(20503i, 1i), vec2<i32>(u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.a, 9u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], false), vec2<bool>(true, true), true))));
    var_0 = func_2();
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(select(var_0.c.x, u_input.b, !var_0.a)), select(2147483647i, max(u_input.b, ~(-37194i)), !(var_0.a & true))), ~(-(~(~vec2<i32>(u_input.b, u_input.b)))));
    return Struct_1(true, var_0.b, ~var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_1 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(20213i, reverseBits(0i), all(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 9u)], false, false))), _wgslsmith_mod_i32(11075i, -_wgslsmith_mod_i32(u_input.b, 42322i))), ~_wgslsmith_sub_u32(var_0.b.x, select(var_0.b.x, ~u_input.a, true)), -u_input.b, var_0.c.x);
}

