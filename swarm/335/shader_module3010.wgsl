struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1042f, 1000f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 32>;

var<private> global3: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = 26520u;
    let var_1 = all(!select(select(select(vec3<bool>(true, arg_1.x, arg_2), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, arg_1.x)), select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, true, false), false), true), select(!vec3<bool>(arg_1.x, false, arg_2), select(vec3<bool>(arg_1.x, arg_2, arg_1.x), vec3<bool>(true, true, arg_2), vec3<bool>(arg_1.x, true, arg_1.x)), select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, true, false), vec3<bool>(arg_1.x, false, arg_1.x))), true));
    return true;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> u32 {
    global2 = array<Struct_1, 32>();
    global3 = u_input.e;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)))));
    let var_0 = global2[_wgslsmith_index_u32(~(~(~(~(43425u | u_input.d.x)))), 32u)];
    global3 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, abs(u_input.b.x), _wgslsmith_div_i32(arg_0.x, u_input.e.x), global3.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, arg_0.x, global3.x), _wgslsmith_sub_vec3_i32(u_input.b.xxw, vec3<i32>(arg_0.x, -62331i, -1i))), 0i, -(~u_input.e.x), countOneBits(0i)));
    return (u_input.d.x >> (firstLeadingBit(reverseBits(93254u)) % 32u)) | u_input.c.x;
}

fn func_2() -> Struct_1 {
    var var_0 = global3.x;
    global3 = u_input.b;
    global3 = vec4<i32>(-2147483647i, u_input.e.x, global3.x ^ u_input.b.x, u_input.b.x) & (~u_input.b << (min(abs(u_input.d & vec4<u32>(u_input.a.x, 0u, 52898u, 4294967295u)), ~u_input.a) % vec4<u32>(32u)));
    global3 = u_input.e;
    var_0 = u_input.e.x;
    return global2[_wgslsmith_index_u32(func_4(vec4<i32>(u_input.b.x, u_input.e.x, u_input.b.x, -29996i & _wgslsmith_mult_i32(~1i, 1i << (u_input.c.x % 32u))), vec4<bool>(all(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, false, func_3(global1.a, vec2<bool>(true, true), true))), any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -248f)) == _wgslsmith_f_op_f32(select(global0.a.x, global1.a.x, false)))), 32u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = true;
    let var_2 = 1000f;
    global0 = func_2();
    global2 = array<Struct_1, 32>();
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(~25227u, 32u)], 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(794f, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(sign(global1.a.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f - var_1.x) + var_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f + -763f) * _wgslsmith_f_op_f32(-1322f + global0.a.x))), var_0.a.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + global0.a.x), func_2().a.x, var_2.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, var_2.x, var_2.x, -272f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(216f, 1000f, -405f, -1213f), vec4<f32>(var_1.x, global0.a.x, global1.a.x, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1000f, var_2.x, global0.a.x))))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(799f, var_3.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, -1500f))))));
    global1 = var_0;
    var var_5 = vec2<bool>(false, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, var_2.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.a.x)), var_3.x) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_3, var_3), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, 1244f, 953f, global0.a.x)))))), 17486i);
}

