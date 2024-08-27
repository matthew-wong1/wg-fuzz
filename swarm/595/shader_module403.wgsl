struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_0 = u_input.c;
    global0 = array<f32, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(212f, 1000f, -376f, 985f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 851f, global0[_wgslsmith_index_u32(43285u, 28u)], -125f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 28u)], -1000f), 156f))))));
    return !arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(41332u, 0u, 1u), vec3<u32>(_wgslsmith_mod_u32(arg_1.c, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(1u, 79125u))), ~(arg_2 >> (0u % 32u)) & _wgslsmith_clamp_u32(arg_2, u_input.c.x, 4294967295u), ~4294967295u));
    let var_1 = select(vec2<bool>(true, false), vec2<bool>(true, select(false, true, true) | any(vec2<bool>(false, true))), !vec2<bool>(!any(vec4<bool>(false, true, true, true)), func_3(arg_1, arg_1, true)));
    global0 = array<f32, 28>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32((_wgslsmith_sub_u32(arg_1.a, var_0) & ~6258u) & countOneBits(~arg_1.a), 28u)])), -754f, _wgslsmith_div_f32(-787f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.b, var_0)), 28u)], -918f))), -1000f);
    var var_3 = Struct_1(1u & arg_1.a, _wgslsmith_mod_i32(arg_1.d, _wgslsmith_clamp_i32(arg_1.b, firstTrailingBit(_wgslsmith_add_i32(-1i, arg_1.d)), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-1i, 1i, 0i)))), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 41754u), u_input.c.zy)), arg_1.b);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(~1u), 0u), ~u_input.c.yx), 28u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] - 1000f)))) > -863f) & select(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_1.c, 28u)])))) <= global0[_wgslsmith_index_u32(14432u, 28u)], all(vec4<bool>(true, true, true, true)) & true);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~arg_2.x, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_i32(arg_3, arg_3), Struct_1(arg_1.a, arg_3.x, 4294967295u, -34363i), abs(16636u))) * _wgslsmith_f_op_f32(-arg_0.x)));
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~(-arg_3), vec4<i32>(arg_3.x | -2147483647i, arg_3.x >> (arg_1.a % 32u), 0i, countOneBits(-23231i))), arg_3, select(arg_3, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, -1i, -1i, arg_3.x) & arg_3, vec4<i32>(arg_1.b, 2147483647i, arg_3.x, arg_1.d) | arg_3, select(vec4<i32>(arg_3.x, arg_1.d, -2147483647i, arg_1.d), arg_3, vec4<bool>(false, false, false, false))), false)), ~(~vec4<i32>(arg_3.x ^ 10952i, reverseBits(arg_3.x), arg_3.x, -12475i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-44560i, -1i, -2147483647i, 77643i), arg_3, vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(arg_3, arg_3)) ^ reverseBits(arg_3));
    let var_3 = arg_1;
    var var_4 = Struct_1(u_input.c.x & _wgslsmith_mult_u32(arg_2.x, u_input.b), 28131i, _wgslsmith_add_u32(56593u, countOneBits(firstLeadingBit(~u_input.c.x))), 67856i);
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(countOneBits(arg_2)), ~select(u_input.c, ~arg_2, vec3<bool>(true, true, true))), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14990u, 28u)] * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(max(-1000f, -1381f))), global0[_wgslsmith_index_u32(4294967295u, 28u)]);
    var_0 = vec3<f32>(_wgslsmith_div_f32(-1744f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-776f, global0[_wgslsmith_index_u32(20877u, 28u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 28u)])))))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u | u_input.b, ~(~u_input.c.x)), 28u)])), global0[_wgslsmith_index_u32(3927u, 28u)]);
    var var_1 = ~_wgslsmith_clamp_u32(75106u, ~select(func_1(vec4<f32>(-312f, -1288f, global0[_wgslsmith_index_u32(u_input.b, 28u)], 406f), Struct_1(u_input.b, 2147483647i, u_input.c.x, 20312i), u_input.c, vec4<i32>(-2147483647i, 1i, -25982i, -1i)), ~10753u, u_input.c.x <= u_input.a), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(79549u, 0u, u_input.b, u_input.b), vec4<u32>(4294967295u, 16034u, u_input.b, 0u)), ~vec4<u32>(38286u, u_input.a, u_input.a, u_input.b), true), ~vec4<u32>(0u, 23405u, 1u, 63246u)));
    let var_2 = _wgslsmith_div_u32(~4294967295u, ~_wgslsmith_mod_u32(max(~0u, reverseBits(u_input.b)), u_input.a));
    let var_3 = !select(!vec2<bool>(func_3(Struct_1(var_2, 2147483647i, var_2, -2147483647i), Struct_1(u_input.c.x, -2147483647i, u_input.a, -10004i), false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), any(vec2<bool>(false, true))));
    var var_4 = -_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(countOneBits(-40145i), _wgslsmith_sub_i32(-2147483647i, -44641i), -2147483647i, -18158i)), vec4<i32>(-(~2147483647i), _wgslsmith_sub_i32(-73766i, _wgslsmith_mult_i32(656i, 49449i)), (i32(-1i) * -35009i) >> (_wgslsmith_mult_u32(4294967295u, u_input.b) % 32u), countOneBits(1i)));
    let var_5 = var_3.x;
    let var_6 = all(vec2<bool>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-17258i, var_4.x, var_4.x), var_4.xwx | var_4.zxy) >= -6823i, false));
    global0 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zx);
}

