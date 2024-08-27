struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: bool = false;

var<private> global2: f32 = 198f;

var<private> global3: array<u32, 28>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(round(874f)))) - arg_1.x) == arg_2.x, vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(-1000f))), 1i, 4294967295u, arg_2.x);
    let var_1 = Struct_1(!(!(!all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_2.wzx + var_0.b), _wgslsmith_f_op_vec3_f32(max(arg_2.yyz, arg_2.zzx)), true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1649f, 737f, 1169f), _wgslsmith_f_op_vec3_f32(ceil(arg_1))))))), arg_3, _wgslsmith_mod_u32(4294967295u, select(1u, u_input.c.x, false & var_0.a)) ^ ~u_input.c.x, -185f);
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -_wgslsmith_div_i32(arg_3, arg_3), -firstLeadingBit(_wgslsmith_mod_i32(-1i, -1i)), firstLeadingBit(arg_0.x), var_0.c), -(u_input.b ^ _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_1.c, 0i, arg_3), vec4<i32>(72654i, 0i, var_1.c, -4170i))) | (_wgslsmith_mod_vec4_i32(-u_input.b, u_input.b) & _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_3, -616i, var_0.c, var_1.c)), select(vec4<i32>(1i, 1i, -1i, 72841i), vec4<i32>(arg_3, var_1.c, -1i, u_input.a), vec4<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29441u, 28u)], 28u)], 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 3u)])), u_input.b)));
    let var_3 = var_0;
    return ~(~global3[_wgslsmith_index_u32(43942u, 28u)]);
}

fn func_2() -> u32 {
    global0 = array<bool, 3>();
    global2 = -631f;
    global1 = any(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], false), vec2<bool>(select(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53761u, 28u)], 3u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 3u)]), true), true), select(vec2<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 3u)], false), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false)), select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 3u)], global0[_wgslsmith_index_u32(1u, 3u)]))), vec2<bool>(true, true)));
    let var_0 = Struct_1((global3[_wgslsmith_index_u32(func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), u_input.b.yz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-735f, -601f, 1000f), vec3<f32>(1422f, -2890f, 184f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8593u, 28u)], 3u)]))), vec4<f32>(1268f, -820f, -1593f, -1447f), ~1i), 28u)] < _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(47956u, 28u)], 46977u, 60167u), vec3<u32>(75230u, u_input.c.x, 11464u)), abs(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(u_input.c.x, 28u)])))) != global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], 28u)])), 28u)], 3u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2358f, 576f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2298f * -2143f) + -193f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1334f)), -243f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(942f, 1212f, global0[_wgslsmith_index_u32(63562u, 3u)]))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1619f), -1000f))), u_input.b.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], 28u)]), vec4<u32>(30377u, u_input.c.x, global3[_wgslsmith_index_u32(70897u, 28u)], 4294967295u)), u_input.c.x, u_input.c.x), ~vec3<u32>(countOneBits(6492u), ~global3[_wgslsmith_index_u32(u_input.c.x, 28u)], _wgslsmith_sub_u32(u_input.c.x, 1u))), 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -621f)))) - 673f));
    var var_1 = Struct_1(!(!all(!vec2<bool>(global0[_wgslsmith_index_u32(7605u, 3u)], false))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(ceil(var_0.b)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 3u)])))), _wgslsmith_sub_i32(abs(abs(_wgslsmith_mod_i32(0i, u_input.b.x))), u_input.a), select(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(var_0.d, 28u)], _wgslsmith_sub_u32(82724u, ~global3[_wgslsmith_index_u32(1u, 28u)])), abs(u_input.c.x), ~u_input.c.x < 35527u), -693f);
    return ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, var_0.d, u_input.c.x, 68440u) & vec4<u32>(58491u, 37910u, 4294967295u, 35669u), reverseBits(vec4<u32>(var_0.d, var_0.d, var_0.d, 67713u)), vec4<bool>(true, var_0.a, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, 8837u, 26496u, 22846u), vec4<u32>(var_1.d, 4294967295u, 1u, 0u)) & vec4<u32>(8056u, var_0.d, var_1.d, 27368u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], 51132u, var_0.a) ^ 20597u, 28u)], _wgslsmith_div_u32(~u_input.c.x, reverseBits(1u)), u_input.c.x), ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, global3[_wgslsmith_index_u32(u_input.c.x, 28u)], var_1.d), vec3<u32>(32025u, 79160u, var_0.d))));
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(var_0, 12354u << (_wgslsmith_sub_u32(u_input.c.x, 4294967295u) % 32u)), ~37066u), 3u)], vec3<f32>(1f, 1f, 1f), ~(u_input.b.x ^ 1699i), 43051u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) * 1490f))) + 1202f));
    let var_2 = ~var_1.c;
    let var_3 = select(countOneBits(4294967295u), u_input.c.x, !(var_1.b.x > _wgslsmith_f_op_f32(_wgslsmith_div_f32(1647f, -875f) * -1000f)));
    let var_4 = Struct_1(true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1130f, var_1.b.x, -459f))), var_1.b)), ~(i32(-1i) * -26251i), func_2(), -291f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    global3 = array<u32, 28>();
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(74236u, 1u))) << ((1338u & global3[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(1u), 0u), 28u)]) % 32u);
    let var_1 = func_1();
    let var_2 = -firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b));
    var var_3 = func_1();
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-607f, var_3.b.x)));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_add_vec2_i32(~var_2.zy, countOneBits(vec2<i32>(1i, var_1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.b, vec3<f32>(108f, -1622f, -1000f), vec3<bool>(true, var_1.a, var_3.a)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(1481f * 1922f), 408f, func_1().e), 0i) ^ 1u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(~1u, ~var_1.d), 10936u << (1u % 32u)));
}

