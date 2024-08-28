struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: array<i32, 27>;

var<private> global2: i32;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<i32, 27>();
    let var_0 = true;
    var var_1 = arg_2;
    let var_2 = arg_1;
    return select(!vec4<bool>(global3.x, var_0, true, !(!global3.x)), !select(vec4<bool>(false, var_0, global3.x, !var_0), !vec4<bool>(true, false, var_0, var_0), select(!vec4<bool>(var_0, global3.x, global3.x, true), !vec4<bool>(true, var_0, var_0, global3.x), select(vec4<bool>(var_0, var_0, var_0, global3.x), vec4<bool>(false, var_0, true, false), vec4<bool>(true, global3.x, true, global3.x)))), (var_2.b << (~(~arg_2.d.x) % 32u)) < ~_wgslsmith_div_u32(~1501u, 4294967295u));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<vec4<u32>, 4>();
    global2 = -global1[_wgslsmith_index_u32(11938u, 27u)] | -u_input.e.x;
    let var_0 = true;
    var var_1 = Struct_1(~vec3<i32>(select(-57867i, firstLeadingBit(u_input.c), false), -firstTrailingBit(7381i), select(_wgslsmith_add_i32(-12162i, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), -global1[_wgslsmith_index_u32(u_input.b.x, 27u)], var_0)), reverseBits(~(~u_input.b.x)), -36433i, u_input.b, -u_input.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1080f, arg_0)) * vec2<f32>(arg_0, 630f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2656f, arg_0), vec2<f32>(897f, 2010f))), vec2<f32>(arg_0, arg_0)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, 105f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-361f, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-366f, -410f))))))));
    return Struct_1(countOneBits(var_1.a) | -(~(~vec3<i32>(44191i, var_1.c, 36725i))), u_input.b.x, _wgslsmith_sub_i32(~(-1i), u_input.c), vec4<u32>(var_1.d.x, firstTrailingBit(29373u), 4294967295u, ~(~_wgslsmith_sub_u32(0u, var_1.d.x))), i32(-1i) * -1i);
}

fn func_1() -> Struct_1 {
    global3 = vec4<bool>(false, !(u_input.b.x != u_input.b.x), all(vec4<bool>(global3.x != (global3.x || global3.x), select(true, global3.x, true) && true, true, true)), false);
    global2 = global1[_wgslsmith_index_u32(0u, 27u)];
    let var_0 = 1i;
    let var_1 = func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2297f - 1000f)))))), select(vec4<bool>(false, global3.x, !global3.x && !global3.x, any(vec4<bool>(false, global3.x, false, true))), select(select(select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(false, global3.x, true, global3.x), global3.x), func_2(4294967295u, Struct_1(u_input.e, u_input.b.x, u_input.d.x, vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), global1[_wgslsmith_index_u32(1u, 27u)]), Struct_1(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), u_input.b.x, var_0, vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x), 73899i)), global3.x), select(!vec4<bool>(true, false, global3.x, false), func_2(4294967295u, Struct_1(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), u_input.b.x, -2147483647i, u_input.b, u_input.c), Struct_1(vec3<i32>(0i, var_0, -2147483647i), 43539u, var_0, vec4<u32>(1u, u_input.b.x, 24616u, 34634u), -15069i)), !vec4<bool>(false, global3.x, false, global3.x)), false), true));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> vec2<i32> {
    let var_0 = vec3<i32>(-2147483647i, -(~(select(-7347i, -43647i, global3.x) >> (~arg_1.x % 32u))), _wgslsmith_mult_i32(~_wgslsmith_add_i32(-29803i, 0i) >> ((1u ^ _wgslsmith_div_u32(43744u, u_input.b.x)) % 32u), u_input.d.x));
    global1 = array<i32, 27>();
    var var_1 = arg_2;
    let var_2 = firstLeadingBit(72584u);
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(-1i, abs(u_input.d.x)), 17177i, ~func_3(1549f, vec4<bool>(global3.x, true, true, global3.x)).a.x << ((_wgslsmith_mod_u32(u_input.b.x, 47747u) & (arg_1.x << (0u % 32u))) % 32u)), 4309u, -1i, (~(~vec4<u32>(0u, 57442u, arg_0.d.x, 0u)) | vec4<u32>(~0u, 0u, 51037u, firstTrailingBit(21542u))) << (vec4<u32>(_wgslsmith_clamp_u32(~22465u, ~4294967295u, 4294967295u), u_input.b.x, ~(~u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 0u, u_input.b.x), vec4<u32>(39617u, var_2, arg_1.x, 0u)) << (10309u % 32u)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(max(arg_1.x, 1u), 27u)]);
    return vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_2, 27u)] & func_1().e, _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(2147483647i, u_input.c)), global1[_wgslsmith_index_u32(max(~23749u, 4294967295u), 27u)])), -6326i | (_wgslsmith_mult_i32(1i, 0i) >> (u_input.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.yz, func_4(func_1(), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(-686f * 184f))) & _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, u_input.d.x), u_input.c >> (47707u % 32u)), firstTrailingBit(vec2<i32>(71118i, 0i))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -1i), ~u_input.e.zy) & u_input.e.yx);
    var var_0 = _wgslsmith_f_op_f32(143f - -677f);
    global2 = _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(~_wgslsmith_add_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -2147483647i), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 27u)]), -u_input.a ^ 31477i));
    global3 = select(vec4<bool>(!(global3.x == global3.x), !all(vec2<bool>(true, true)), true, any(select(!vec4<bool>(global3.x, global3.x, false, global3.x), select(vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, true, false, global3.x)), any(global3.ww)))), !select(vec4<bool>(global3.x | false, true, all(vec2<bool>(global3.x, global3.x)), true), !vec4<bool>(global3.x, true, global3.x, false), true), select(select(select(vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global3.x, true, global3.x, true), global3.x || false), vec4<bool>(any(global3.xz), global3.x | false, select(global3.x, global3.x, global3.x), u_input.b.x != 75677u), vec4<bool>(true, true, true, global3.x | false)), func_2(u_input.b.x, func_1(), Struct_1(u_input.e, u_input.b.x, -2147483647i, firstTrailingBit(u_input.b), func_4(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(55742u, 27u)], u_input.c, 48075i), u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.b, -2147483647i), vec4<u32>(u_input.b.x, 44816u, u_input.b.x, u_input.b.x), -186f).x)), vec4<bool>(global3.x, true && global3.x, true, false)));
    let var_1 = 1f;
    let var_2 = Struct_1(firstLeadingBit(u_input.d), u_input.b.x, u_input.d.x, u_input.b, 2147483647i);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(612f, var_3.d);
}

