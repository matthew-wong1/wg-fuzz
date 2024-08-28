struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec4<u32> = vec4<u32>(5300u, 23833u, 12906u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    global0 = array<Struct_1, 32>();
    global1 = ~select(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global1.x, global1.x, 2998u, global1.x) & u_input.c), u_input.c), u_input.c, !((global1.x != u_input.c.x) || true));
    var var_0 = -24923i;
    var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i & arg_2, firstLeadingBit(~(-2147483647i))), reverseBits(-select(u_input.d, u_input.b.x, false)), arg_2 >> (32051u % 32u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(-1022f, -202f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-157f * _wgslsmith_f_op_f32(arg_1.a.x - arg_1.b)))));
    return _wgslsmith_f_op_f32(exp2(var_1.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(39743u, 32u)];
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(var_0.b + -679f), _wgslsmith_f_op_f32(floor(-934f))) - _wgslsmith_f_op_vec4_f32(sign(arg_0.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, -238f) + var_0.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(u_input.b.yz, Struct_1(var_0.a, var_0.b), u_input.d)))), -991f)))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-func_2(func_2(func_2(Struct_1(vec4<f32>(-961f, arg_0.b, arg_0.a.x, arg_0.a.x), 620f)))).a), arg_0.b);
    let var_1 = Struct_1(var_0.a, arg_0.a.x);
    let var_2 = arg_0.a.x;
    var_0 = arg_0;
    let var_3 = vec4<u32>(min(min(1u, select(0u, 4294967295u | u_input.c.x, false)), global1.x), u_input.c.x, select(firstTrailingBit(2386u), 49738u, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))), u_input.c.x);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -526f))), 670f, _wgslsmith_f_op_f32(func_2(func_2(global0[_wgslsmith_index_u32(24554u, 32u)])).b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + var_1.b))), _wgslsmith_f_op_f32(round(-604f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(vec4<f32>(arg_2, 584f, 1120f, 800f), -1061f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1148f), 722f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_vec4_f32(func_4(arg_0)).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1054f, -1474f) - _wgslsmith_f_op_f32(arg_2 + arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
    let var_1 = arg_1.x;
    global0 = array<Struct_1, 32>();
    var var_2 = u_input.c.xxx;
    var var_3 = global0[_wgslsmith_index_u32(~29130u, 32u)];
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 4294967295u)), max(((global1.x ^ global1.x) << (global1.x % 32u)) ^ global1.x, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global1.x, 0u)), u_input.c.yy >> (global1.wy % vec2<u32>(32u)))));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = true;
    global1 = u_input.c;
    var var_3 = 0u;
    var var_4 = global0[_wgslsmith_index_u32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(465f, var_1.b, var_1.b, var_1.a.x) - _wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_1.a.x, 297f, 856f, var_1.b))) - _wgslsmith_f_op_vec4_f32(-var_1.a)), _wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(floor(288f)))))), vec4<u32>(1u, 4294967295u, ~abs(u_input.c.x) << ((~u_input.c.x << (u_input.c.x % 32u)) % 32u), var_0), var_1.b), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1288f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b, -134f)), var_1.b), var_4.a.xww)), u_input.b.x);
}

