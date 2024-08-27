struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(0i, -22340i, 43099i, 13425i, -28309i, i32(-2147483648), 2147483647i, 0i, 0i, 2147483647i, -3351i, -46487i, 0i, 0i, -48664i, -10763i);

var<private> global1: array<bool, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = abs(-vec3<i32>(-reverseBits(arg_0), arg_0, -global0[_wgslsmith_index_u32(u_input.b, 16u)]));
    global0 = array<i32, 16>();
    var var_1 = !vec3<bool>(all(vec2<bool>(arg_1, true)), _wgslsmith_dot_vec2_i32(-var_0.yy, -vec2<i32>(-10396i, -2147483647i)) <= _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(19888i, -80117i, u_input.c.x, var_0.x), vec4<i32>(arg_0, arg_0, -13852i, -1i)), abs(vec4<i32>(arg_0, var_0.x, var_0.x, -11389i))), all(!select(vec3<bool>(arg_1, global1[_wgslsmith_index_u32(u_input.b, 6u)], false), vec3<bool>(arg_1, false, global1[_wgslsmith_index_u32(480u, 6u)]), arg_1)));
    var_1 = select(select(select(vec3<bool>(false, true, all(vec3<bool>(true, var_1.x, global1[_wgslsmith_index_u32(arg_2, 6u)]))), !vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, all(vec3<bool>(false, true, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true, false, var_1.x)), true), vec3<bool>(select(true, var_1.x, false), global1[_wgslsmith_index_u32(arg_2 & 50569u, 6u)], false)), true), select(!vec3<bool>(!var_1.x, global1[_wgslsmith_index_u32(~1u, 6u)], select(global1[_wgslsmith_index_u32(80128u, 6u)], var_1.x, true)), select(vec3<bool>(!arg_1, true, var_1.x), select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(arg_2, 6u)], true), vec3<bool>(true, var_1.x, true), var_1.x), !vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, false, false)), true), !(!all(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(0u, 6u)])))), !select(vec3<bool>(21641u != arg_2, true, select(false, false, true)), !vec3<bool>(arg_1, true, true), var_1.x));
    return arg_3.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_2 {
    global1 = array<bool, 6>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(36562u, 6u)], arg_2, vec4<f32>(281f, 1555f, -1000f, 1067f))) - _wgslsmith_f_op_f32(-193f - 161f))))), -1545f, -1596f);
    var var_1 = i32(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(36348u | arg_2, arg_0), firstTrailingBit(0u), 1u), 16u)];
    global1 = array<bool, 6>();
    let var_2 = arg_1;
    return Struct_2(u_input.a.xz, Struct_1(u_input.a.zz, any(select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(47576u, 6u)]), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 6u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 6u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(arg_2, 6u)], global1[_wgslsmith_index_u32(arg_0, 6u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(25953u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], false), vec4<bool>(global1[_wgslsmith_index_u32(23683u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], true, false), false))), vec2<bool>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(global0[_wgslsmith_index_u32(arg_2, 16u)], global0[_wgslsmith_index_u32(10901u, 16u)], 20239i)) > arg_1, global1[_wgslsmith_index_u32(u_input.b >> (abs(65699u) % 32u), 6u)]), -3543i), Struct_1(~(~u_input.a.xz) >> (max(select(vec2<u32>(20911u, 0u), vec2<u32>(740u, 24442u), global1[_wgslsmith_index_u32(u_input.b, 6u)]), reverseBits(vec2<u32>(48118u, 1u))) % vec2<u32>(32u)), (u_input.a.x > 2147483647i) != false, vec2<bool>(true, !(-26274i <= global0[_wgslsmith_index_u32(arg_0, 16u)])), select(global0[_wgslsmith_index_u32(58119u, 16u)], select(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(12933i, var_2)), max(-12270i, -2147483647i), false), true)), Struct_1(_wgslsmith_sub_vec2_i32(~u_input.c.xy & u_input.c.zy, _wgslsmith_clamp_vec2_i32(u_input.a.xy ^ vec2<i32>(u_input.c.x, -1i), vec2<i32>(-7104i, var_2), vec2<i32>(arg_1, -1i) >> (vec2<u32>(18500u, 286u) % vec2<u32>(32u)))), any(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(arg_2, 6u)]))), !(!select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 6u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2, 6u)]))), min(var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2, 2147483647i), vec3<i32>(-13860i, u_input.a.x, 1i)))));
}

fn func_1() -> vec3<f32> {
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    var var_0 = Struct_3(true, func_2(~_wgslsmith_clamp_u32(~1u, 66894u, select(52995u, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 6u)])), 21088i, ~22764u));
    var_0 = Struct_3(~u_input.b == countOneBits(0u), Struct_2(vec2<i32>(_wgslsmith_add_i32(-2147483647i << (0u % 32u), 53978i), select(firstTrailingBit(u_input.c.x), global0[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(4889u, 6u)])), var_0.b.d, func_2(10354u, abs(reverseBits(-56061i)), _wgslsmith_div_u32(u_input.b << (u_input.b % 32u), u_input.b)).c, func_2(u_input.b, func_2(u_input.b >> (1u % 32u), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 16u)], _wgslsmith_mod_u32(54190u, u_input.b)).a.x, 0u).d));
    global0 = array<i32, 16>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1167f, _wgslsmith_f_op_f32(f32(-1f) * -557f), 1f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-2025f, 1431f, global1[_wgslsmith_index_u32(11136u, 6u)])), _wgslsmith_f_op_f32(trunc(226f)), _wgslsmith_f_op_f32(424f - -1424f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(535f, 168f, -1000f))))), global1[_wgslsmith_index_u32(0u, 6u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global1 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1238f, -316f, 304f), vec3<f32>(-139f, 1317f, 410f)))) * _wgslsmith_f_op_vec3_f32(func_1()));
    let var_1 = global1[_wgslsmith_index_u32(~10179u, 6u)] && global1[_wgslsmith_index_u32(u_input.b, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(u_input.b), u_input.b, _wgslsmith_sub_u32(1u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(32774u, 4294967295u, u_input.b), vec3<u32>(43561u, 13631u, 77186u))) | _wgslsmith_mod_vec3_u32(abs(firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 1u))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(0u, 1u, 45504u), vec3<u32>(u_input.b, 84247u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 31171u, 4294967295u), vec3<u32>(4294967295u, 21661u, u_input.b)))), ~(abs(u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(42329u, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.b, u_input.b, 13651u, 66639u)) % 32u)) ^ 1i, _wgslsmith_mod_u32(u_input.b, 33801u), firstLeadingBit(_wgslsmith_div_u32(u_input.b, (u_input.b & u_input.b) | ~u_input.b)), 735f);
}

