struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_3(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-213f)))))) * 667f) + 1380f);
    var var_2 = firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.ww, vec2<i32>(2147483647i, 19425i) ^ u_input.c.zy) & u_input.c.xy, abs(max(~u_input.c.xz, vec2<i32>(-13593i, u_input.a.x)))));
    let var_3 = all(vec2<bool>(all(!(!arg_0.a.a.xx)), true));
    var var_4 = var_1;
    return u_input.e.x;
}

fn func_2() -> Struct_3 {
    global0 = array<vec3<bool>, 31>();
    let var_0 = vec4<u32>(u_input.e.x, ~23032u >> ((_wgslsmith_div_u32(func_3(Struct_3(Struct_1(vec3<bool>(false, false, true)))), 1u << (u_input.e.x % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), ~u_input.e)) % 32u), 0u, 1u);
    var var_1 = Struct_1(select(select(global0[_wgslsmith_index_u32(37150u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], any(vec2<bool>(false, true))), select(select(select(global0[_wgslsmith_index_u32(1u, 31u)], vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 31u)]), !all(vec3<bool>(true, true, true))));
    var_1 = Struct_1(!vec3<bool>(all(select(vec3<bool>(var_1.a.x, var_1.a.x, true), global0[_wgslsmith_index_u32(u_input.e.x, 31u)], false)), -2147483647i > u_input.a.x, var_1.a.x));
    var var_2 = u_input.d;
    return Struct_3(Struct_1(vec3<bool>(false, var_1.a.x, all(vec4<bool>(true, false, false, true)))));
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<vec3<bool>, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(558f * -246f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(544f)) - -1465f))), _wgslsmith_f_op_f32(trunc(134f))));
    let var_1 = func_2();
    var var_2 = Struct_1(select(!func_2().a.a, vec3<bool>((0i ^ u_input.a.x) == (i32(-1i) * -16148i), var_1.a.a.x, all(!vec4<bool>(true, true, var_1.a.a.x, var_1.a.a.x))), var_1.a.a.x));
    var var_3 = abs(func_3(var_1));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-538f, _wgslsmith_f_op_f32(trunc(1394f)), !var_2.a.x)))) - _wgslsmith_f_op_f32(trunc(var_0.x))) - var_0.x);
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(select(!(!select(global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), select(!(!global0[_wgslsmith_index_u32(4294967295u, 31u)]), global0[_wgslsmith_index_u32(u_input.b.x, 31u)], vec3<bool>(1u == u_input.b.x, any(vec2<bool>(false, false)), true)), func_2().a.a));
    var var_1 = Struct_1(func_2().a.a);
    let var_2 = Struct_3(Struct_1(select(var_0.a, var_0.a, var_1.a.x)));
    var var_3 = select(var_2.a.a, !vec3<bool>(var_0.a.x, var_2.a.a.x, true), all(!select(!vec4<bool>(var_0.a.x, true, true, var_0.a.x), select(vec4<bool>(true, false, var_1.a.x, true), vec4<bool>(var_1.a.x, true, var_2.a.a.x, false), false), vec4<bool>(var_1.a.x, false, var_0.a.x, var_1.a.x))));
    var var_4 = func_2();
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_1 = (1i < _wgslsmith_div_i32(i32(-1i) * -1i, u_input.a.x)) && (all(vec2<bool>(true, u_input.d != 0u)) || (((-18496i | u_input.a.x) < (i32(-1i) * -14330i)) || any(vec2<bool>(true, true))));
    global0 = array<vec3<bool>, 31>();
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1343f, 209f, 1213f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -407f, 262f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1606f, -316f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, -1000f, 230f) + vec3<f32>(-1919f, -356f, -1401f))))), u_input.e.x, Struct_1(!vec3<bool>(var_1, true, var_1)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1477f, _wgslsmith_f_op_f32(func_1(-24890i))))), Struct_1(vec3<bool>(false, var_1, !any(vec4<bool>(false, var_1, var_1, var_1)))));
    let var_3 = Struct_1(!func_2().a.a);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.a)) + vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.x)), var_2.a.x, 526f))), vec3<i32>(countOneBits(u_input.a.x & _wgslsmith_sub_i32(u_input.c.x, 1i)), u_input.a.x, abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, -16566i), -u_input.c.wy))));
}

