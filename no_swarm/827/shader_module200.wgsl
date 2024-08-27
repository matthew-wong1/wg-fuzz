struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-2584i, 0i, 53975i), vec3<i32>(-15617i, 1i, 17386i), vec3<i32>(i32(-2147483648), -17434i, 2147483647i), vec3<i32>(-60140i, 2147483647i, -49715i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-4961i, 10496i, 32663i), vec3<i32>(10611i, 1i, 0i), vec3<i32>(0i, 1i, -55954i), vec3<i32>(27096i, 1i, 2147483647i));

var<private> global1: array<i32, 30>;

var<private> global2: array<u32, 9>;

var<private> global3: vec3<f32> = vec3<f32>(1000f, -162f, 748f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(17300u, abs(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)] & arg_1.c.x, u_input.d.x)), ~78735u));
    return 1i;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(u_input.c & vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, u_input.c.x), _wgslsmith_clamp_vec2_i32(arg_3.a, vec2<i32>(-78i, u_input.b), vec2<i32>(-6338i, global1[_wgslsmith_index_u32(1u, 30u)])) & u_input.c)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-219f, global3.x), arg_1.xw)))))), select(vec4<u32>(~_wgslsmith_sub_u32(103404u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16777u, 9u)], 9u)], 9u)]), 1u, _wgslsmith_clamp_u32(u_input.d.x, arg_0, ~0u), _wgslsmith_add_u32(~4294967295u, arg_0)), vec4<u32>(_wgslsmith_div_u32(53600u, global2[_wgslsmith_index_u32(u_input.d.x, 9u)]), ~0u | firstTrailingBit(4294967295u), 26848u, global2[_wgslsmith_index_u32(1u, 9u)]), -463f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), true);
    let var_1 = _wgslsmith_clamp_i32(i32(-1i) * -(_wgslsmith_div_i32(-15028i, var_0.a.x) ^ -29218i), -11524i, 1i ^ -((arg_3.a.x & u_input.c.x) ^ u_input.c.x));
    return arg_0;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = ~u_input.e;
    var var_1 = Struct_1(-(~(vec2<i32>(-9990i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 9u)], 30u)]) ^ -vec2<i32>(-2147483647i, 0i))), vec2<f32>(_wgslsmith_div_f32(-612f, global3.x), -859f), vec4<u32>(7880u, _wgslsmith_mod_u32(10573u, min(4294967295u, ~45655u)), ~func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_0.x, global2[_wgslsmith_index_u32(1u, 9u)]), vec3<u32>(var_0.x, u_input.d.x, u_input.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1133f, global3.x, 263f)), _wgslsmith_f_op_f32(global3.x + global3.x), Struct_1(u_input.c, global3.zx, arg_0, false)), ~var_0.x), false);
    global2 = array<u32, 9>();
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) + _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)))), -1000f, global3.x);
    let var_3 = Struct_1(-(~vec2<i32>(1i, 1i)), var_1.b, vec4<u32>(~abs(func_3(var_0.x, vec4<f32>(-744f, global3.x, -1644f, -3792f), global3.x, Struct_1(var_1.a, var_2.zy, vec4<u32>(0u, var_1.c.x, arg_0.x, var_1.c.x), var_1.d))), 4294967295u, arg_0.x, var_1.c.x), var_1.d);
    return Struct_1(abs(vec2<i32>(var_1.a.x, _wgslsmith_mult_i32(-1i, 1i))), var_2.xz, _wgslsmith_add_vec4_u32(~(arg_0 ^ var_1.c), ~firstTrailingBit(arg_0)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<i32>(-(~func_1(vec3<i32>(33913i, -2147483647i, -2147483647i), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), global3.yy, vec4<u32>(u_input.e.x, 1u, u_input.e.x, 1u), true))), -19454i));
    global2 = array<u32, 9>();
    let var_1 = func_2(~u_input.d);
    var var_2 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_1.d), !vec2<bool>(false, var_1.d))), vec2<bool>(any(!vec3<bool>(var_1.d, false, true)), any(!select(vec3<bool>(var_1.d, var_1.d, true), vec3<bool>(var_1.d, var_1.d, false), true))), var_1.d);
    global0 = array<vec3<i32>, 9>();
    global3 = vec3<f32>(global3.x, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * 1078f))))));
    let var_3 = max(81988u, _wgslsmith_mult_u32(1u, 0u) & func_3(_wgslsmith_dot_vec3_u32(~var_1.c.yyz, vec3<u32>(var_1.c.x, global2[_wgslsmith_index_u32(5333u, 9u)], 12364u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, global3.x, -418f, global3.x), vec4<f32>(global3.x, var_1.b.x, -2117f, -671f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -246f, global3.x, global3.x) - vec4<f32>(-1148f, var_1.b.x, -287f, 1860f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(-global3.x)), func_2(u_input.d)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1409f)) * var_1.b.x), -974f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(global3.x * var_1.b.x)), _wgslsmith_f_op_f32(138f * 1336f)), _wgslsmith_div_f32(-1574f, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

