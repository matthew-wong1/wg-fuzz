struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, false, false, false, false, true, false, true, false, false, false, true, true, true, false, true, false, true, false, false, false, false, false);

var<private> global1: Struct_2 = Struct_2(-728f, vec3<bool>(false, true, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = Struct_1(vec2<bool>(!global0[_wgslsmith_index_u32(~u_input.b, 25u)], false), 0i, select(true, all(select(vec2<bool>(false, arg_1.b.x), select(vec2<bool>(true, true), arg_1.b.zx, global1.b.xy), vec2<bool>(global1.b.x, global0[_wgslsmith_index_u32(67698u, 25u)]))), -51239i <= firstTrailingBit(-arg_0.b)));
    global1 = arg_1;
    global1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-612f + 1701f))), vec3<bool>(false, min(abs(u_input.a.x), 1i) < ~0i, true));
    let var_1 = !(!(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(27104u, 25u)], true, false, arg_0.c)))));
    var var_2 = -1659f;
    return _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b ^ (4294967295u >> (0u % 32u)), 57354u & _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 2518u), vec2<u32>(1u, arg_2)), vec2<u32>(arg_2, 0u) ^ vec2<u32>(1u, 49825u))), ~(~max(firstLeadingBit(9341u), ~30210u)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = vec2<u32>(19366u, ~func_3(Struct_1(vec2<bool>(false, arg_0), _wgslsmith_mod_i32(0i, 2147483647i), global1.b.x), Struct_2(_wgslsmith_f_op_f32(-global1.a), !global1.b), _wgslsmith_mod_u32(~11607u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 0u)))));
    var var_1 = Struct_2(-358f, !vec3<bool>(arg_0, all(vec2<bool>(global1.b.x, arg_0)), global0[_wgslsmith_index_u32(~(~48049u), 25u)]));
    var_1 = Struct_2(_wgslsmith_f_op_f32(step(1257f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))))))), !vec3<bool>(all(select(vec4<bool>(global0[_wgslsmith_index_u32(28765u, 25u)], global0[_wgslsmith_index_u32(63760u, 25u)], global1.b.x, false), vec4<bool>(var_1.b.x, arg_0, false, false), vec4<bool>(false, false, var_1.b.x, false))), true, !select(global1.b.x, arg_0, true)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a)) + var_1.a), select(false || arg_0, true, false)))), var_1.b);
    let var_2 = vec4<u32>(4294967295u, u_input.b, (abs(abs(u_input.b)) ^ var_0.x) ^ 65100u, 20155u);
    return min(_wgslsmith_div_i32(-u_input.a.x, u_input.a.x) ^ _wgslsmith_add_i32(-abs(u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yz, u_input.a.xy), min(u_input.a.zx, vec2<i32>(2147483647i, u_input.a.x)))), ~u_input.a.x);
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2(global1.b.x);
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_1 = global1.b.x;
    global0 = array<bool, 25>();
    return ~firstLeadingBit(-(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(func_1(), -u_input.a, global1.b.x | global0[_wgslsmith_index_u32(u_input.b ^ u_input.b, 25u)]);
    var var_1 = -(~u_input.a.x);
    var_1 = 2147483647i;
    var_0 = reverseBits(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + global1.a), _wgslsmith_f_op_f32(-824f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1036f + global1.a))))) - _wgslsmith_f_op_f32(exp2(global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b) ^ select(vec4<u32>(u_input.b, 64261u, u_input.b, 30732u), vec4<u32>(u_input.b, u_input.b, 26448u, u_input.b), false))), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(-2471i, var_0.x, 1i, -7416i), vec4<i32>(57497i, var_0.x, var_0.x, -51369i) ^ select(vec4<i32>(2566i, 1i, -2147483647i, 0i), vec4<i32>(1i, -14198i, u_input.a.x, 1i), vec4<bool>(global0[_wgslsmith_index_u32(68181u, 25u)], true, false, false))), u_input.a);
}

