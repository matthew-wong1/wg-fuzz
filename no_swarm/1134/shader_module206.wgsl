struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-1329f, 879f, -251f, -875f, 749f, -1448f, 335f, -258f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = 1u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~arg_1.a.wx, _wgslsmith_div_vec2_u32(~arg_0.d.a.yz, vec2<u32>(0u, 66828u) ^ arg_1.a.wy)), 56730u, _wgslsmith_mod_u32(49198u & arg_2, abs(4294967295u) & (arg_2 << (arg_0.d.a.x % 32u))));
    let var_1 = vec2<bool>(select(arg_1.e.x, (~u_input.a <= ~32622i) || (arg_1.b < global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_1.a.x), 8u)]), arg_1.e.x), true);
    return u_input.b;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, select(false, false, false), true), vec4<bool>(true, true, true, false)), vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), false, _wgslsmith_dot_vec2_i32(u_input.d.zx, vec2<i32>(arg_1, 49340i)) != min(-10065i, -51764i)), _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(22164u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], 1429f, global0[_wgslsmith_index_u32(u_input.b, 8u)]) - arg_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, arg_0.x, arg_0.x, arg_0.x) + arg_0))), Struct_1(vec4<u32>(u_input.b, ~0u, abs(u_input.b), ~12305u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * global0[_wgslsmith_index_u32(u_input.b, 8u)]))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(31368u, u_input.b, u_input.b), vec3<u32>(5044u, 1u, u_input.b)), ~vec3<u32>(4294967295u, u_input.b, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f * -913f)), vec2<bool>(all(vec2<bool>(true, false)), true)), -571f));
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = Struct_2(!select(!vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, select(false, arg_0, arg_0), false, false), vec4<bool>(u_input.c < u_input.c, u_input.a != u_input.d.x, arg_0, true)), vec3<bool>(true, !arg_0, !arg_0 & (true & all(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(abs(func_2(Struct_2(vec4<bool>(true, true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec4<f32>(-438f, -236f, global0[_wgslsmith_index_u32(0u, 8u)], -521f), Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), global0[_wgslsmith_index_u32(0u, 8u)], 0u, -795f, vec2<bool>(false, arg_0)), global0[_wgslsmith_index_u32(49350u, 8u)]), Struct_1(vec4<u32>(1u, 7374u, u_input.b, 1u), global0[_wgslsmith_index_u32(5376u, 8u)], u_input.b, global0[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(true, false)), 30887u, u_input.d)), 8u)], _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(8815u, 8u)], 157f))), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 8u)], -278f, arg_0))), global0[_wgslsmith_index_u32(66271u, 8u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1023f, global0[_wgslsmith_index_u32(29956u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(8655u, 8u)]), vec4<f32>(1119f, global0[_wgslsmith_index_u32(u_input.b, 8u)], -590f, -1000f))), vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], 602f), !vec4<bool>(true, false, arg_0, true))))), Struct_1(vec4<u32>(max(u_input.b, _wgslsmith_mod_u32(u_input.b, 10410u)), func_2(Struct_2(vec4<bool>(false, arg_0, arg_0, true), vec3<bool>(arg_0, true, true), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], 181f), Struct_1(vec4<u32>(u_input.b, 46922u, u_input.b, 1u), global0[_wgslsmith_index_u32(1u, 8u)], 50522u, global0[_wgslsmith_index_u32(0u, 8u)], vec2<bool>(false, true)), global0[_wgslsmith_index_u32(1u, 8u)]), Struct_1(vec4<u32>(u_input.b, 1u, u_input.b, 0u), -1000f, 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 8u)], vec2<bool>(true, arg_0)), 0u, countOneBits(u_input.d)), _wgslsmith_add_u32(~33951u, u_input.b), select(u_input.b >> (90360u % 32u), ~4294967295u, any(vec3<bool>(true, arg_0, arg_0)))), _wgslsmith_f_op_f32(floor(1250f)), ~(~u_input.b), global0[_wgslsmith_index_u32(countOneBits(~38324u), 8u)], vec2<bool>(!any(vec3<bool>(false, false, true)), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 8u)], -507f) + global0[_wgslsmith_index_u32(1u, 8u)])))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_mod_i32(u_input.c, u_input.d.x);
    var_0 = _wgslsmith_dot_vec2_i32(~(-_wgslsmith_div_vec2_i32(u_input.d.zz, vec2<i32>(u_input.c, u_input.c))), vec2<i32>(~u_input.c << (0u % 32u), firstTrailingBit(_wgslsmith_mult_i32(u_input.c, 1i)))) | _wgslsmith_clamp_i32(min(u_input.d.x, -1i), -25983i, func_1(false));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 1144f) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 8u)], 1362f, -1005f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1721f, global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec3<f32>(528f, -1765f, global0[_wgslsmith_index_u32(u_input.b, 8u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(31846u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]) - vec3<f32>(-853f, -1079f, -1000f)))), vec3<bool>(true, true, true))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 8u)], 1406f))), global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 8u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], true))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1068f, global0[_wgslsmith_index_u32(u_input.b, 8u)], 1281f)))))));
    let var_2 = Struct_3(Struct_2(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, false)), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, global0[_wgslsmith_index_u32(0u, 8u)], true)) - _wgslsmith_f_op_f32(select(var_1.x, 699f, false))), _wgslsmith_div_f32(-958f, -1096f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-483f - var_1.x), -958f)), global0[_wgslsmith_index_u32(~(u_input.b >> (4294967295u % 32u)), 8u)]), Struct_1(~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u)), global0[_wgslsmith_index_u32(u_input.b, 8u)], u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(50879u, 8u)] * -1589f), _wgslsmith_f_op_f32(-326f * 1311f))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 8u)])), var_1.x, all(vec3<bool>(true, false, true)) | any(vec2<bool>(true, true))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~abs(18796u), 8u)], _wgslsmith_mod_vec3_u32(~(~var_2.a.d.a.www), ~var_2.a.d.a.yxx | (var_2.a.d.a.zxx ^ vec3<u32>(1u, 49508u, var_3.a.d.c))) ^ vec3<u32>(~1u, var_3.a.d.c, var_3.a.d.a.x), abs(firstTrailingBit(1u) ^ select(1u, 4294967295u, var_2.a.d.e.x)) >> (0u % 32u));
}

