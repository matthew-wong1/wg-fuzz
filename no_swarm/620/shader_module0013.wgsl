struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(2486f, 736f, -673f, -1940f, -2113f, -453f, 641f, -796f, -205f, -917f, 1407f, 1798f, 1000f, -1387f, -2141f, -599f, 3266f, -539f, 933f, 1576f, -847f);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<f32, 21>();
    var var_0 = _wgslsmith_div_f32(444f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~(~12418u), 21u)])) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 40142u, 34891u), ~vec3<u32>(23800u, 0u, 4294967295u)) << (3110u % 32u), 21u)]));
    global1 = array<Struct_1, 18>();
    let var_1 = arg_1;
    global1 = array<Struct_1, 18>();
    return vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i | u_input.a.x, -54644i), u_input.a.yz, !arg_1.a.xx), _wgslsmith_div_vec2_i32(select(abs(u_input.a.yx), max(vec2<i32>(1i, u_input.b), vec2<i32>(0i, u_input.a.x)), all(vec2<bool>(arg_1.a.x, arg_0.a.x))), u_input.a.zx)), 40053i, 2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, true, false));
    var_0 = Struct_1(!var_0.a);
    global0 = array<f32, 21>();
    let var_1 = !select(select(var_0.a, var_0.a, any(var_0.a.xx)), !(!(!vec3<bool>(var_0.a.x, var_0.a.x, true))), select(!var_0.a, var_0.a, var_0.a));
    let var_2 = -func_3(Struct_1(vec3<bool>(true, var_1.x, !var_0.a.x)), global1[_wgslsmith_index_u32(3397u, 18u)]);
    return Struct_1(var_1);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = func_2();
    global1 = array<Struct_1, 18>();
    var var_1 = false;
    var var_2 = func_2();
    var var_3 = 271f;
    return Struct_1(!var_0.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 18>();
    var var_0 = func_4(58787u, func_2(), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 4294967295u), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(1u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(43004u, 4207u))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(398u, 12233u, 19688u), vec3<u32>(13675u, 3809u, 47004u), vec3<bool>(false, false, arg_1.a.x)) & abs(vec3<u32>(4294967295u, 5245u, 0u)), vec3<u32>(1u, 1u, ~1u))), 21u)], -335f);
    var_0 = arg_2;
    global0 = array<f32, 21>();
    let var_1 = func_4(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_clamp_u32(~1u, 109349u, 1u)), Struct_1(vec3<bool>(arg_1.a.x, !any(vec4<bool>(var_0.a.x, true, var_0.a.x, true)), func_2().a.x)), 256f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(select(select(vec4<u32>(44357u, 11268u, 35354u, 51007u), vec4<u32>(6030u, 26171u, 25492u, 73811u), vec4<bool>(arg_1.a.x, arg_2.a.x, false, false)), ~vec4<u32>(13068u, 0u, 142313u, 1u), select(vec4<bool>(true, false, arg_1.a.x, var_0.a.x), vec4<bool>(arg_2.a.x, true, true, false), vec4<bool>(arg_1.a.x, arg_2.a.x, false, false))), vec4<u32>(1u, 1u, 1u, 1u), var_0.a.x)), 21u)]);
    return 1u;
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    global0 = array<f32, 21>();
    var var_0 = true;
    let var_1 = func_4(~0u, func_4(~((0u << (arg_1.x % 32u)) & _wgslsmith_clamp_u32(arg_1.x, 5756u, 4294967295u)), global1[_wgslsmith_index_u32(arg_1.x, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(75737u, 21u)], global0[_wgslsmith_index_u32(arg_1.x, 21u)], true)))), 538f), -1864f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, 27852u ^ arg_1.x), 21u)]);
    let var_2 = !(!(!select(vec4<bool>(var_1.a.x, false, false, var_1.a.x), select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_1.a.x, false), var_1.a.x), false)));
    var_0 = func_4(arg_1.x | arg_1.x, var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, arg_1.x), 21u)], global0[_wgslsmith_index_u32(arg_1.x, 21u)], !var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -878f))), _wgslsmith_div_f32(341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(197f)) * _wgslsmith_f_op_f32(290f + global0[_wgslsmith_index_u32(0u, 21u)])))).a.x == false;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(599f, global0[_wgslsmith_index_u32(17298u, 21u)], global0[_wgslsmith_index_u32(51744u, 21u)], global0[_wgslsmith_index_u32(63554u, 21u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 1556f, -1740f, 881f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-418f, -2973f), var_0.x, _wgslsmith_f_op_f32(abs(-271f)), _wgslsmith_f_op_f32(f32(-1f) * -2400f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(683f, var_0.x, var_0.x, global0[_wgslsmith_index_u32(1u, 21u)]), vec4<f32>(869f, 1378f, -2265f, -686f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], -1257f, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(47025u, 21u)], 196f, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), true))))))));
    var var_1 = vec4<i32>(-1i, ~func_5(_wgslsmith_dot_vec3_i32(-u_input.a, -u_input.a), vec3<u32>(~0u, _wgslsmith_mod_u32(1u, 1u), func_1(u_input.a.x, Struct_1(vec3<bool>(true, false, true)), global1[_wgslsmith_index_u32(0u, 18u)]))), u_input.b, ~(-_wgslsmith_add_i32(38476i, 37002i) ^ ~u_input.a.x));
    var var_2 = 17355i;
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(select(~vec4<u32>(23181u, 0u, 23371u, 3072u), ~vec4<u32>(27917u, 0u, 0u, 4294967295u), select(var_3.a.x, false, true)))), global0[_wgslsmith_index_u32(~1u, 21u)], u_input.b, -2147483647i);
}

