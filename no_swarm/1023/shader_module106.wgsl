struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, true, true, false, true, false, false, true, false, false, true, false, true, true, true);

var<private> global1: array<u32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = u_input.a.x;
    global1 = array<u32, 30>();
    let var_1 = arg_2.a;
    let var_2 = arg_2.a.b;
    let var_3 = !vec3<bool>(var_1.c, false, !arg_2.a.e.x);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.b.x, -232f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1046f)), _wgslsmith_f_op_f32(arg_2.a.b.x * -1000f))))), _wgslsmith_f_op_vec2_f32(round(var_1.b)), false));
}

fn func_2(arg_0: i32) -> Struct_5 {
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    let var_0 = u_input.a.x <= -(~arg_0);
    global0 = array<bool, 16>();
    return Struct_5(vec4<i32>(arg_0, select(0i, _wgslsmith_add_i32(~arg_0, 0i << (1u % 32u)), any(select(vec4<bool>(var_0, var_0, false, global0[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(var_0, true, false, true), vec4<bool>(var_0, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78962u, 30u)], 30u)], 30u)], 16u)], var_0, var_0)))), (u_input.a.x | arg_0) | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -9860i, 12255i), abs(vec3<i32>(46876i, u_input.a.x, 1906i))), -1i), Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 0u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55760u, 30u)], 30u)], 30u)]), vec2<u32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)])), firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 0u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, arg_0), vec3<i32>(0i, 24184i, arg_0)), false, Struct_3(Struct_1(13871u, vec2<f32>(1187f, -439f), false, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 30u)], 30u)], vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56901u, 30u)], 16u)]))))), vec2<f32>(_wgslsmith_f_op_f32(sign(-748f)), _wgslsmith_f_op_f32(-910f + -1000f)))), true, max(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)] ^ 0u, 30u)]), 4294967295u), vec2<bool>(true, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(29111u, 30u)]), 16u)])), all(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, false), vec2<bool>(true, global0[_wgslsmith_index_u32(29298u, 16u)]), true)), !select(vec2<bool>(global0[_wgslsmith_index_u32(19004u, 16u)], true), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true)), select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 16u)], var_0), vec2<bool>(false, global0[_wgslsmith_index_u32(22721u, 16u)]), false), select(vec2<bool>(false, var_0), vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true), var_0)))));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(1521f));
    let var_1 = arg_0;
    let var_2 = !select(vec2<bool>(all(arg_0.xz), !(u_input.a.x > u_input.a.x)), arg_0.wy, false);
    let var_3 = func_2(-u_input.a.x & _wgslsmith_div_i32(-1i, u_input.a.x | -u_input.a.x));
    let var_4 = -(1i >> (~(~var_3.b.d ^ ~4294967295u) % 32u));
    return -471f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1984f, -370f)))), -795f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14825u, 30u)], 30u)], 30u)], 16u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78721u, 30u)], 30u)], 30u)], 30u)], 16u)], false))), _wgslsmith_f_op_f32(floor(-588f)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78359u, 30u)], 30u)], 30u)] < 1u))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) + -702f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1115f, 1532f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) * -1619f))));
    global1 = array<u32, 30>();
    let var_1 = Struct_3(Struct_1(4294967295u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(8764u, 30u)], 1u) << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global1[_wgslsmith_index_u32(57744u, 30u)]) % vec2<u32>(32u)), vec2<u32>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(56503u, 30u)]) << (vec2<u32>(81523u, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz)), all(vec3<bool>(false, 25019i == u_input.a.x, global0[_wgslsmith_index_u32(min(13081u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)]), 16u)])), ~countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(3724u, 30u)]), 30u)]), select(vec2<bool>(true, any(vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 16u)]))), select(func_2(3200i).b.e, vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 16u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45552u, 30u)], 16u)], true, global0[_wgslsmith_index_u32(16023u, 16u)]))), false)));
    var var_2 = Struct_2(Struct_1(~(~(var_1.a.a << (0u % 32u))), var_0.xz, true | var_1.a.c, ~global1[_wgslsmith_index_u32(100874u, 30u)], var_1.a.e), global1[_wgslsmith_index_u32(0u, 30u)]);
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(1u & func_2(u_input.a.x).b.d, _wgslsmith_mult_u32(var_2.a.a, 4294967295u)), ~39076u, _wgslsmith_mult_u32(var_2.a.d, ~var_2.b));
    let var_4 = ~(~abs(-(u_input.a.x | u_input.a.x)));
    var var_5 = global0[_wgslsmith_index_u32(var_3.x, 16u)] | (false & func_2(2147483647i).b.c);
    var var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(50426u, reverseBits(var_1.a.d), var_1.a.a & var_6.a), vec3<u32>(global1[_wgslsmith_index_u32(0u, 30u)], var_3.x, global1[_wgslsmith_index_u32(25465u, 30u)])), ~abs(26488u), ~global1[_wgslsmith_index_u32(var_2.b, 30u)], var_1.a.a), reverseBits(reverseBits(vec3<i32>(-28277i, u_input.a.x, _wgslsmith_sub_i32(var_4, var_4)))));
}

