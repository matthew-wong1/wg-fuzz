struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-784f, 1000f), vec2<f32>(337f, 1503f), vec2<f32>(-425f, -1010f), vec2<f32>(-1219f, 111f), vec2<f32>(2008f, 1000f), vec2<f32>(1580f, -362f), vec2<f32>(1999f, -128f), vec2<f32>(-1399f, 180f), vec2<f32>(459f, 1314f), vec2<f32>(-2908f, -862f), vec2<f32>(2125f, 310f), vec2<f32>(1141f, 2616f));

var<private> global1: array<f32, 23> = array<f32, 23>(1846f, -1791f, -287f, -225f, -1000f, -1530f, 858f, 2001f, 908f, 867f, -1605f, -251f, 149f, -245f, -586f, -933f, 209f, -503f, -291f, -783f, 394f, 1000f, -1000f);

var<private> global2: array<u32, 22>;

var<private> global3: array<f32, 28> = array<f32, 28>(1002f, -179f, 192f, -887f, -1688f, 1176f, 1422f, -670f, -2176f, 714f, -1288f, -496f, 723f, -1203f, -1387f, 2118f, -1140f, 154f, -1177f, 1896f, 692f, -919f, -879f, -1239f, -792f, 788f, -1050f, -371f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-31881i), u_input.a.x | u_input.c.x, var_0.c.x | -2848i), ~vec3<i32>(var_0.c.x, u_input.c.x, arg_0.b)), _wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(45119i, arg_0.b, var_0.b, 2147483647i) ^ u_input.c, u_input.a));
    var var_2 = arg_0;
    return ~37025u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = ~arg_3.d.x;
    var var_2 = vec2<bool>(((!var_0 & true) && !arg_1) | arg_1, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_3(arg_2, 1u, vec3<bool>(true, true, true), false), 28u)]) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -203f), arg_0)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(var_1, 12u)]))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(27397u, 28u)], global1[_wgslsmith_index_u32(u_input.d, 23u)])), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(arg_3.d.x, 12u)])))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 23u)]), 2689f, var_2.x)) + global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(arg_2.d.x), ~58846u), 23u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, ~0u), 28u)] - _wgslsmith_f_op_f32(ceil(arg_0)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_2.d.x, 23u)]) + var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(round(-764f)), var_2.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(arg_0, -1701f))))), var_3.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 28u)])) * vec4<f32>(-662f, global3[_wgslsmith_index_u32(min(min(32718u & var_1, ~var_1), abs(firstLeadingBit(41470u))), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(250f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 28u)])) * global3[_wgslsmith_index_u32(func_3(arg_2, ~arg_2.d.x, !vec3<bool>(var_2.x, true, true), !var_2.x), 28u)])));
    return vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, ~u_input.a.x), _wgslsmith_mod_i32(~u_input.a.x, firstTrailingBit(arg_3.a) | ~(-17075i))), -14699i);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_1(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(func_2(-1532f, true, Struct_1(27841i, u_input.c.x, u_input.a.yy, vec2<u32>(arg_1.x, 20278u)), Struct_1(46165i, 1i, u_input.a.zz, vec2<u32>(21214u, arg_1.x))), vec2<i32>(u_input.a.x, u_input.a.x)), ~abs(0i))), u_input.a.x, ~select(max(vec2<i32>(u_input.c.x, u_input.c.x), u_input.a.xx), -vec2<i32>(u_input.c.x, u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 13620u), arg_1.yy));
    let var_1 = 3226i;
    global1 = array<f32, 23>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(612f))), _wgslsmith_f_op_f32(f32(-1f) * -1794f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~arg_1, vec4<u32>(arg_1.x, var_0.d.x, 13932u, var_0.d.x)), 23u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1132u, 28u)]) + global3[_wgslsmith_index_u32(firstLeadingBit(50507u), 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(48225u, 23u)], -333f)), _wgslsmith_f_op_f32(min(arg_0, global3[_wgslsmith_index_u32(arg_1.x, 28u)])))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.b, 28u)])))))));
    let var_3 = max(2147483647i, var_0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -945f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 28>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -227f), vec4<u32>(u_input.b, u_input.d, 0u, 40462u)))))), global3[_wgslsmith_index_u32(~25855u, 28u)]);
    let var_1 = Struct_1(1i, -2147483647i, -u_input.a.yw, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~63754u, abs(1u)), _wgslsmith_mod_u32(~u_input.b, global2[_wgslsmith_index_u32(reverseBits(97851u), 22u)])), 4294967295u));
    var var_2 = select(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))), vec4<bool>(true, select(true, (var_0.x > var_0.x) || true, all(vec2<bool>(true, true))), !all(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)))), !((var_1.a != var_1.b) | true) || all(vec3<bool>(true, var_1.d.x < global2[_wgslsmith_index_u32(var_1.d.x, 22u)], true)));
    let var_3 = vec3<i32>(-1i) * -u_input.c.zyz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec2<i32>(-var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, 0i, var_3.x) & -u_input.a, u_input.a)));
}

