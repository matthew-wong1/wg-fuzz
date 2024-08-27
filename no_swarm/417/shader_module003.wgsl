struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(891f, 446f, -1013f, 1839f, 1162f, 865f, 549f, 1512f, 309f, -873f, -611f, -1611f, 977f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_5) -> bool {
    var var_0 = !vec2<bool>(!select(false, 2147483647i >= u_input.b.x, true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    let var_1 = -34575i << (~arg_0 % 32u);
    var_0 = select(vec2<bool>(-u_input.b.x < _wgslsmith_clamp_i32(-2147483647i, -56353i, u_input.a ^ arg_3.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-690f - -323f), global0[_wgslsmith_index_u32(arg_0, 13u)], true)) >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 25983u, 48188u), vec3<u32>(arg_0, 11262u, 5199u)), 13u)]), !vec2<bool>(var_0.x, false), any(select(vec3<bool>(true, true, true), !(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, true, true))));
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_4(Struct_3(vec3<bool>(!func_3(0u, vec3<f32>(global0[_wgslsmith_index_u32(5471u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], 581f), arg_2, Struct_5(vec2<i32>(arg_1, arg_2), arg_2)), false, arg_0.x)));
    let var_1 = Struct_2(!arg_0.yy, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(arg_1, u_input.b.x, 2147483647i, 1389i)), firstTrailingBit(vec4<i32>(37854i, arg_2, arg_1, u_input.a))), countOneBits(-u_input.b)), any(select(arg_0.yz, arg_0.zz, vec2<bool>(arg_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(772f)))) * global0[_wgslsmith_index_u32(~abs(~1u), 13u)]));
    global0 = array<f32, 13>();
    var_0 = Struct_4(var_0.a);
    var var_2 = arg_0;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1401f * _wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_f_op_f32(var_1.c - -1035f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1771f, _wgslsmith_f_op_f32(643f + var_1.c)), _wgslsmith_div_f32(-902f, _wgslsmith_f_op_f32(f32(-1f) * -240f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-792f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2189f, -1335f) - var_1.c))))), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 13u)], -2279f))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> Struct_5 {
    let var_0 = Struct_1(u_input.b.x, true);
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(abs(arg_0 ^ 0u), arg_1), arg_1), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1 << (4294967295u % 32u), arg_1)), select(vec2<u32>(arg_1, arg_1) ^ vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_0, 0u) >> (vec2<u32>(0u, arg_1) % vec2<u32>(32u)), !vec2<bool>(false, var_0.b)) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(6404u, arg_1), vec2<u32>(arg_1, 4294967295u)), ~vec2<u32>(arg_0, 41465u))));
    let var_2 = var_0;
    var var_3 = Struct_2(!vec2<bool>(all(!vec3<bool>(var_2.b, var_2.b, var_0.b)), true), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-909f - _wgslsmith_f_op_f32(f32(-1f) * -1357f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(71717u, 13u)], arg_2.x)))));
    global0 = array<f32, 13>();
    return Struct_5(vec2<i32>(~(i32(-1i) * -14935i) & _wgslsmith_mult_i32(var_3.b.a, 2147483647i), _wgslsmith_dot_vec4_i32(-u_input.b, u_input.b)), var_2.a);
}

fn func_1() -> f32 {
    let var_0 = func_4(~_wgslsmith_clamp_u32(1u, ~4294967295u, 1u) << (36661u % 32u), max(16863u, reverseBits(28962u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), u_input.b.x, abs(u_input.b.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(19313u, 13u)], 1017f, 782f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 834f) - vec3<f32>(-227f, 927f, -675f))) - vec3<f32>(global0[_wgslsmith_index_u32(~40408u, 13u)], -377f, 195f))));
    let var_1 = Struct_3(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, all(vec2<bool>(true, false)), all(vec2<bool>(false, false))), vec3<bool>(true, true, true)));
    var var_2 = 1f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2154f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 13u)]))));
    let var_3 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, ~_wgslsmith_clamp_u32(4294967295u, 5754u, 17528u)), ~(~vec3<u32>(0u, 17554u, 19435u)) ^ _wgslsmith_add_vec3_u32(select(vec3<u32>(42362u, 41847u, 26326u), vec3<u32>(0u, 1u, 1u), true), abs(vec3<u32>(58801u, 1u, 0u)))), 13u)], 1092f, _wgslsmith_f_op_f32(trunc(-561f)) > global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 41320u)), min(4294967295u, 89675u), min(46497u, 24649u)), 0u), 13u)]));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(1u), 13u)] * _wgslsmith_f_op_f32(step(-1099f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3 - -1058f)))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * 157f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(59149i, firstTrailingBit(_wgslsmith_clamp_i32(firstLeadingBit(1i), u_input.b.x, _wgslsmith_mod_i32(-1i, u_input.a)) ^ u_input.a));
    var var_1 = u_input.b.xxz;
    global0 = array<f32, 13>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(29121u), 13301u), 13u)])))));
    let var_3 = firstLeadingBit(u_input.a);
    let var_4 = Struct_1(_wgslsmith_mult_i32(-var_0.x, _wgslsmith_div_i32(i32(-1i) * -u_input.b.x, -2147483647i)), false);
    let var_5 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(89750u, 13u)])))))), var_4.b));
    let var_6 = vec4<bool>(true, all(!select(vec3<bool>(false, true, true), select(vec3<bool>(var_4.b, false, false), vec3<bool>(var_4.b, var_4.b, false), var_4.b), vec3<bool>(true, false, false))), var_4.b, var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5 * -535f) - global0[_wgslsmith_index_u32(9088u, 13u)]), _wgslsmith_sub_i32(20159i, var_3) | var_0.x, u_input.b.wx);
}

