struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(353f, -849f, -856f), vec3<f32>(-1153f, -935f, -1310f), vec3<f32>(545f, 595f, -813f), vec3<f32>(398f, 610f, 1336f), vec3<f32>(299f, -922f, -1000f), vec3<f32>(2052f, -1959f, 618f), vec3<f32>(1423f, 1902f, 730f), vec3<f32>(3059f, -716f, 943f), vec3<f32>(391f, -1228f, 1538f));

var<private> global1: Struct_1;

var<private> global2: array<u32, 4> = array<u32, 4>(1u, 19691u, 4294967295u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = Struct_1(true, false);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))))));
    global2 = array<u32, 4>();
    let var_2 = countOneBits(~select(firstTrailingBit(vec3<u32>(21793u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], 0u)) >> (~vec3<u32>(23756u, 0u, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(1u, 35585u, u_input.a) | vec3<u32>(global2[_wgslsmith_index_u32(arg_0, 4u)], 38494u, arg_0), vec3<u32>(arg_0, 31429u, 58836u), var_0.b), vec3<bool>(true, any(vec4<bool>(true, true, var_0.a, false)), true)));
    global0 = array<vec3<f32>, 9>();
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1), -1799f);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global2 = array<u32, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, -221f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-495f, 205f)), global1.b))) + vec2<f32>(-811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(19614u))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 132f), all(vec3<bool>(global1.a, false, false)))))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(abs(0u), 4u)], ~(~global2[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, 4294967295u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.a, arg_0.x, 24083u), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31073u, 4u)], 4u)], 4u)], u_input.a, 0u)))), ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 55220u), 4294967295u), ~1u, 1u));
    global1 = Struct_1(false | ((_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)], global2[_wgslsmith_index_u32(28808u, 4u)]) != ~u_input.a) || select(true, var_0.x >= var_0.x, any(vec3<bool>(global1.a, global1.a, global1.b)))), global1.b);
    return 1u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !select(vec3<bool>(all(vec2<bool>(false, false)), global1.a, false), vec3<bool>(global1.b, func_2(vec2<u32>(4294967295u, 60934u)) > u_input.a, global1.a), vec3<bool>(global1.b, true, true));
    global2 = array<u32, 4>();
    var var_1 = ~vec3<i32>(arg_0, (arg_0 >> (4294967295u % 32u)) >> (u_input.a % 32u), 17504i) | vec3<i32>(~max(arg_0, arg_0) | abs(_wgslsmith_mult_i32(arg_0, arg_0)), -1i, _wgslsmith_add_i32(arg_0, arg_0));
    var var_2 = -18413i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, 437f, -729f)) - vec3<f32>(-1245f, -1000f, -1047f)))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, 1000f)) * _wgslsmith_f_op_f32(sign(var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -570f)) > -759f, true);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<vec3<f32>, 9>();
    global1 = func_1(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, -2147483647i, -1i, 1i)) << (~vec4<u32>(1u, 4294967295u, 83800u, global2[_wgslsmith_index_u32(17395u, 4u)]) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(trunc(-3010f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-442f - -1412f))), true, any(select(vec4<bool>(arg_3.b, arg_1.x, global1.b, true), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, arg_1.x))), true), vec4<bool>(false, all(vec3<bool>(false, true, u_input.a != 1u)), arg_2.b, true), select(!vec4<bool>(false, arg_2.b, true, arg_3.b), select(!vec4<bool>(arg_1.x, false, true, false), vec4<bool>(any(vec3<bool>(arg_3.a, global1.a, arg_1.x)), true, true, any(vec4<bool>(true, false, arg_1.x, true))), !vec4<bool>(false, false, false, arg_3.a)), arg_3.a));
    let var_1 = arg_1.x;
    var var_2 = Struct_1(var_0.x, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 5827i, -19072i), ~vec3<i32>(2147483647i, -24350i, 37629i)) & _wgslsmith_div_i32(-2147483647i, -2147483647i)).b);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 9>();
    var var_0 = Struct_1(select(!global1.b & (~global2[_wgslsmith_index_u32(4294967295u, 4u)] >= ~u_input.a), global1.a, true & func_4(u_input.a & 26827u, vec2<bool>(true, global1.a), Struct_1(global1.b, true), func_1(0i))), global1.a);
    let var_1 = Struct_1(any(select(!vec4<bool>(global1.b, false, true, true), vec4<bool>(true, true, true, true), false)) || false, !var_0.a);
    var var_2 = func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-36786i, _wgslsmith_mod_i32(40766i, -12868i), 1i, 348i), vec4<i32>(-2147483647i, abs(_wgslsmith_sub_i32(-2147483647i, -12540i)), 6770i, _wgslsmith_mod_i32(1i, ~2147483647i))));
    var_0 = Struct_1(var_0.b, var_2.b);
    let var_3 = -max(vec3<i32>(_wgslsmith_add_i32(1i, ~(-1i)), _wgslsmith_sub_i32(206i, countOneBits(0i)), (1i >> (u_input.a % 32u)) ^ ~(-30522i)), max(countOneBits(countOneBits(vec3<i32>(333i, -18755i, 5646i))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(25276i, -56121i, 2147483647i), vec3<i32>(1i, 9389i, -16041i)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(10969i), ~(vec3<i32>(var_3.x & var_3.x, 41905i, ~var_3.x) << ((vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 4u)], u_input.a) >> (countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

