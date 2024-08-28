struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, false, false, false, true, true, false);

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(1i, -1i, -28501i), vec3<i32>(52195i, -19105i, -1i), vec3<i32>(-71466i, 0i, i32(-2147483648)), vec3<i32>(-1i, 1i, 16010i), vec3<i32>(-1i, -10299i, 20060i), vec3<i32>(0i, 0i, -27766i), vec3<i32>(0i, -14029i, 2147483647i), vec3<i32>(15469i, -1i, -96626i), vec3<i32>(-62858i, 2147483647i, -34388i), vec3<i32>(-1316i, 0i, -8323i), vec3<i32>(-1i, -12234i, 0i), vec3<i32>(48341i, 0i, 2147483647i), vec3<i32>(14202i, -23700i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 460i), vec3<i32>(6088i, -29604i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -7852i), vec3<i32>(2147483647i, -41891i, -43888i), vec3<i32>(0i, i32(-2147483648), 15304i), vec3<i32>(i32(-2147483648), -72333i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 5956i), vec3<i32>(25772i, 1427i, -1i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(-15392i, 0i, -15989i), vec3<i32>(1i, 27524i, 0i), vec3<i32>(474i, 2147483647i, -11207i), vec3<i32>(25833i, 2147483647i, 1i), vec3<i32>(0i, -29140i, 0i), vec3<i32>(21150i, i32(-2147483648), -7455i), vec3<i32>(-1i, 3277i, -6818i), vec3<i32>(32002i, 1i, -15353i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-724f * 1354f), _wgslsmith_f_op_f32(-107f * -626f), true)) - arg_2) - arg_2)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 9>();
    global1 = array<vec3<i32>, 30>();
    global0 = array<bool, 9>();
    var var_0 = Struct_1(abs(29775u), -146f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1098f * -1239f))));
    var var_1 = !all(!select(select(vec2<bool>(arg_3.b, var_0.b), vec2<bool>(false, arg_3.b), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return _wgslsmith_mod_u32(var_0.a, arg_2.a);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = abs(~(u_input.d & ~(~u_input.d)));
    let var_1 = ~vec4<i32>(~(-abs(-2147483647i)), 1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), countOneBits(1i));
    var var_2 = (countOneBits(~u_input.c) ^ var_0.x) >> (_wgslsmith_clamp_u32(var_0.x, reverseBits(u_input.d.x), abs(1u)) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-429f, -1602f, 121f, 1961f), vec4<f32>(258f, -145f, -582f, 1488f)), vec4<f32>(-551f, -688f, 423f, 510f), false)), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.c, false), 4294967295u, -534f, vec4<i32>(var_1.x, var_1.x, -2147483647i, var_1.x))), -2541f, _wgslsmith_f_op_f32(773f * -1241f), 445f))))));
    let var_4 = !vec3<bool>(true, !(arg_1.x != arg_2) && ((17114u >> (1u % 32u)) >= var_0.x), true);
    return Struct_1(_wgslsmith_add_u32(select(func_3(var_1.yz, u_input.d.yx, Struct_1(var_0.x, arg_0), Struct_1(var_0.x, true)), ~(~var_0.x), var_4.x), 115020u), !global0[_wgslsmith_index_u32(~var_0.x, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1201f, -250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1053f * -1000f), -585f, true))))), 1389f, -1015f, -1768f);
    global0 = array<bool, 9>();
    var var_1 = -vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, -2147483647i), -1i)), 37366i, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -49323i, -1i), ~(-22806i))), 0i);
    let var_2 = func_1(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.c), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, u_input.e), 1u)), 9u)], vec3<bool>(true, false, global0[_wgslsmith_index_u32(~countOneBits(~1u), 9u)]), 4294967295u <= _wgslsmith_dot_vec3_u32(min(min(u_input.d.yxz, u_input.d.wzz), u_input.d.xxy), ~(u_input.d.yyw >> (u_input.d.wzw % vec3<u32>(32u)))));
    var_1 = vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(max(_wgslsmith_div_i32(var_1.x, -30265i), select(-23535i, -9004i, var_2.b)) << (u_input.a.x % 32u), var_1.x), var_1.x, var_1.x);
    global0 = array<bool, 9>();
    var var_3 = func_1((any(vec3<bool>(global0[_wgslsmith_index_u32(var_2.a, 9u)], true, false)) | !global0[_wgslsmith_index_u32(var_2.a & 0u, 9u)]) | all(vec2<bool>(true, var_2.b == global0[_wgslsmith_index_u32(16318u, 9u)])), vec3<bool>((var_2.b == true) & true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(22034u >> (u_input.d.x % 32u), _wgslsmith_sub_u32(var_2.a, var_2.a), var_2.a) & (_wgslsmith_sub_u32(0u, u_input.e) >> (~u_input.d.x % 32u)), 9u)], any(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(var_2.a, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.a) ^ vec2<u32>(var_2.a, 1u), reverseBits(vec2<u32>(1u, var_2.a)) << ((u_input.a >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.d.xw), vec2<u32>(~26804u, 1u), select(true, global0[_wgslsmith_index_u32(u_input.d.x, 9u)], false)), vec3<i32>(17732i, ~1i << (_wgslsmith_sub_u32(47361u, 94333u & u_input.c) % 32u), firstTrailingBit(var_1.x)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(54302i, -19360i, _wgslsmith_mult_i32(1i, -45279i)), select(global1[_wgslsmith_index_u32(4294967295u, 30u)], ~global1[_wgslsmith_index_u32(0u, 30u)], !global0[_wgslsmith_index_u32(u_input.c, 9u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_3.a, 9u)], false)), vec3<i32>(-2147483647i, -var_1.x, select(-1i, -1i, var_2.b))), _wgslsmith_f_op_f32(-761f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1402f)), _wgslsmith_f_op_f32(393f * var_0.x), !var_3.b))))), u_input.d);
}

