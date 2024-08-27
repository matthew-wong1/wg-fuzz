struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

var<private> global1: array<f32, 23>;

var<private> global2: array<vec2<f32>, 20>;

var<private> global3: array<bool, 28> = array<bool, 28>(true, true, true, true, true, true, true, true, false, false, true, true, false, true, false, false, false, false, false, false, true, true, false, false, false, true, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<i32>(select(abs(_wgslsmith_mod_i32(-42717i, _wgslsmith_dot_vec3_i32(u_input.a.ywx, vec3<i32>(u_input.a.x, u_input.b, u_input.a.x)))), -2147483647i, true), _wgslsmith_mult_i32(abs(firstTrailingBit(u_input.b)), u_input.a.x));
    var var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], true, true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], true), any(vec2<bool>(global3[_wgslsmith_index_u32(19120u, 28u)], global3[_wgslsmith_index_u32(2502u, 28u)]))), select(select(vec3<bool>(global3[_wgslsmith_index_u32(68076u, 28u)], global3[_wgslsmith_index_u32(27944u, 28u)], global3[_wgslsmith_index_u32(38694u, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(100576u, 28u)], global3[_wgslsmith_index_u32(17840u, 28u)], true), global3[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec3<bool>(true, true, true), vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 28u)]), global3[_wgslsmith_index_u32(0u, 28u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 79257u, 37039u), 28u)])));
    let var_2 = 1u;
    let var_3 = Struct_1(false, -1i >= countOneBits(-(1i << (var_2 % 32u))));
    var var_4 = reverseBits(~vec4<u32>(var_2, (var_2 ^ var_2) >> (reverseBits(var_2) % 32u), 6866u, var_2 << (1u % 32u)));
    return _wgslsmith_mod_vec3_u32(var_4.zzz, vec3<u32>(var_4.x, _wgslsmith_mult_u32(16290u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(62687u, 4294967295u, 1u, 4294967295u), vec4<u32>(var_2, 20032u, 1u, var_4.x))), firstLeadingBit(~var_4.x) << (var_2 % 32u)));
}

fn func_2() -> Struct_1 {
    global3 = array<bool, 28>();
    let var_0 = vec4<bool>(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(27603u, 33937u, 3704u, 0u), vec4<u32>(1u, 36942u, 1u, 67441u))) >= 1u, 18210i <= firstTrailingBit(_wgslsmith_clamp_i32(-1i, u_input.a.x, 32837i) >> (1u % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, 1u, 1u)), func_3()), 28u)], select(true, ~(~87011u) >= _wgslsmith_dot_vec3_u32(~vec3<u32>(4939u, 4294967295u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(59558u, 49997u, 55891u), vec3<u32>(17240u, 0u, 4683u))), select(!(!global3[_wgslsmith_index_u32(4294967295u, 28u)]), all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 23u)])) <= _wgslsmith_f_op_f32(-627f * global1[_wgslsmith_index_u32(4697u, 23u)]))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-451f * 528f))) - global1[_wgslsmith_index_u32(firstLeadingBit(~8403u), 23u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-419f)) * _wgslsmith_f_op_f32(select(906f, global1[_wgslsmith_index_u32(56590u, 23u)], var_0.x))))), global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 23u)]));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-474f, _wgslsmith_f_op_f32(f32(-1f) * -478f))), -169f)), var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(43817u, 23u)])));
    var var_3 = u_input.a.wzx;
    return Struct_1(1u > (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) & 4294967295u), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    var var_0 = Struct_1(true, any(select(arg_1.zz, vec2<bool>(true, !arg_1.x), ~arg_0.x == 0u)));
    var var_1 = arg_0;
    var var_2 = !(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.b, u_input.b), -1i) > ~1i);
    global2 = array<vec2<f32>, 20>();
    var var_3 = func_2();
    return ~reverseBits(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~func_1(vec2<u32>(0u, 4294967295u), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(13621u, 28u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(26677u, 28u)], true, global3[_wgslsmith_index_u32(65112u, 28u)]), 1u) ^ ~1u, 1u), 20u)];
    let var_1 = Struct_1(true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~0u), ~_wgslsmith_add_u32(62101u, ~83979u)), 28u)]);
    let var_2 = u_input.a.zz;
    var_0 = global2[_wgslsmith_index_u32(33073u, 20u)];
    var var_3 = var_1;
    global2 = array<vec2<f32>, 20>();
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(229f, -1561f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f), var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-426f)) + var_0.x)), 1719f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(46139u, 23u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 23u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17900u, 23u)]) - -659f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 23u)] - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 23u)])))), -1417f));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.x, var_4.x, var_4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-807f, 1296f, -1620f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(26536u, 23u)], var_4.x))), select(vec3<bool>(true, global3[_wgslsmith_index_u32(25513u, 28u)], false), select(vec3<bool>(true, global3[_wgslsmith_index_u32(43070u, 28u)], true), vec3<bool>(false, true, global3[_wgslsmith_index_u32(79797u, 28u)]), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, global3[_wgslsmith_index_u32(0u, 28u)]))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_2.x, ~var_2.x, var_2.x), -u_input.a.xxw, ~vec3<i32>(var_2.x, var_2.x | var_2.x, _wgslsmith_clamp_i32(var_2.x, -6296i, var_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -971f))), var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(f32(-1f) * -1455f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(9783u, 23u)], var_0.x, var_4.x, -1293f)))), vec2<f32>(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 23u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1273f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(9827u, 23u)])), -813f))))), -19240i, u_input.a.yzw);
}

