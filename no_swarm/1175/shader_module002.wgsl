struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<u32>(0u, 2603u, 20304u, 0u), vec4<i32>(2147483647i, -5582i, i32(-2147483648), -13179i), 105044u, -4858i, vec3<u32>(13086u, 52201u, 28172u)), Struct_1(vec4<u32>(12846u, 1u, 1814u, 0u), vec4<i32>(-15211i, 1i, 1i, 27263i), 21331u, 2147483647i, vec3<u32>(4294967295u, 1u, 40844u)), Struct_1(vec4<u32>(2003u, 4294967295u, 9936u, 86674u), vec4<i32>(1i, 28261i, -3124i, -56868i), 1u, 0i, vec3<u32>(4294967295u, 4294967295u, 4294967295u)));

var<private> global1: f32 = -303f;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(6553u, 1u, 0u, 14101u), vec4<u32>(4294967295u, 1u, 1u, 0u));

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-929f, true, vec3<bool>(false, true, false)), Struct_3(2292f, false, vec3<bool>(true, false, false)), Struct_3(-838f, false, vec3<bool>(false, true, false)), Struct_3(-750f, false, vec3<bool>(true, false, true)), Struct_3(501f, true, vec3<bool>(true, true, true)), Struct_3(1455f, true, vec3<bool>(false, false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> i32 {
    global3 = array<Struct_3, 6>();
    global0 = array<Struct_1, 3>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) * -1450f);
    let var_0 = arg_1.wwx;
    global3 = array<Struct_3, 6>();
    return -8008i;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<bool>) -> vec2<u32> {
    let var_0 = arg_1.c;
    global3 = array<Struct_3, 6>();
    var var_1 = arg_1.e.a.xxw;
    let var_2 = !(944f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_2.a)) * _wgslsmith_f_op_f32(-arg_0.a))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 919f));
    return arg_1.e.a.yw;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(step(arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, -1269f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(step(arg_1.a, -558f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -527f) * -1567f)))));
    let var_1 = 1268u;
    global3 = array<Struct_3, 6>();
    global0 = array<Struct_1, 3>();
    var var_2 = Struct_2(_wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(5512i, 2147483647i, 8809i) >> (vec3<u32>(29045u, var_1, var_1) % vec3<u32>(32u)), ~vec3<i32>(1i, 13325i, 26051i))), min(vec3<i32>(1i, 1i, 1i), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 7893i, -52783i), vec3<i32>(9794i, 0i, -59006i))))), select(!all(!vec4<bool>(arg_1.c.x, true, arg_1.c.x, true)), false, any(!select(arg_1.c.xz, vec2<bool>(true, arg_1.b), arg_1.b))), arg_2.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(func_2(arg_2.wx, vec4<u32>(u_input.a, 0u, 4294967295u, 0u)), reverseBits(-1i)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, 40629u), vec2<u32>(arg_2.x, 65063u)), func_3(arg_1, Struct_2(vec3<i32>(-2147483647i, 0i, -1i), arg_1.b, vec2<u32>(var_1, u_input.a), vec2<i32>(-3368i, -23110i), Struct_1(vec4<u32>(37725u, 45349u, var_1, 47336u), vec4<i32>(-1i, -6527i, -49141i, -1i), 60015u, -1i, arg_2.yyy)), Struct_3(arg_0.x, true, vec3<bool>(true, true, arg_1.b)), vec3<bool>(true, arg_1.b, arg_1.c.x))) % vec2<u32>(32u)), vec2<i32>(~select(1690i, 44695i, arg_1.b), -2147483647i)), global0[_wgslsmith_index_u32(firstTrailingBit(~select(u_input.a, _wgslsmith_sub_u32(arg_2.x, 69199u), true)), 3u)]);
    return vec3<u32>(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(78496u, var_1), 43809u)) ^ (4294967295u << (_wgslsmith_add_u32(u_input.a & 1u, var_1) % 32u)), ~var_2.c.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(86778u, 92357u, any(vec4<bool>(true, true, false, false)) || true), 0u, u_input.a, 64983u), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 17825u), countOneBits(func_1(vec2<f32>(-566f, -287f), global3[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(0u, 2u)]))), ~(~_wgslsmith_add_u32(u_input.a, u_input.a)), ~u_input.a, abs(firstLeadingBit(23362u))));
    global3 = array<Struct_3, 6>();
    let var_1 = ~min(~vec3<u32>(0u & var_0, abs(u_input.a), 53459u), ~reverseBits(vec3<u32>(var_0, 4294967295u, var_0)));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~27493u ^ func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1036f) + vec2<f32>(-131f, 645f)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(0u, u_input.a)), 6u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]).x), ~0u), 6u)];
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + var_2.a) * _wgslsmith_div_f32(var_2.a, var_2.a)) + 665f)), true, vec3<bool>(false, var_2.b, var_2.b));
    let var_4 = Struct_2(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(min(var_0, 0u) & _wgslsmith_mult_u32(0u, var_0), ~4294967295u, ~1u) % vec3<u32>(32u)), var_2.c.x, vec2<u32>(~(~4294967295u) & u_input.a, _wgslsmith_add_u32(u_input.a, func_3(var_3, Struct_2(vec3<i32>(-37360i, -2147483647i, -20818i), true, var_1.zx, vec2<i32>(-40003i, -2147483647i), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 2u)], vec4<i32>(17601i, 1i, 2147483647i, -4750i), var_0, -2147483647i, var_1)), Struct_3(var_3.a, true, vec3<bool>(false, var_3.c.x, true)), var_3.c).x)), ~(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(0i, 8640i)) >> (var_1.yy % vec2<u32>(32u))), global0[_wgslsmith_index_u32(var_1.x & _wgslsmith_dot_vec2_u32(var_1.xx, var_1.xx), 3u)]);
    global0 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -327f, var_2.a)))))), u_input.a ^ (var_1.x ^ _wgslsmith_mult_u32(~u_input.a, _wgslsmith_sub_u32(var_4.e.c, 72228u))));
}

