struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 1> = array<u32, 1>(0u);

var<private> global2: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = Struct_2(vec3<u32>(~u_input.a, ~(u_input.a | ~global1[_wgslsmith_index_u32(1u, 1u)]), 4294967295u), Struct_1(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(47375u, u_input.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-363f, 1464f, -482f, -1874f), vec4<f32>(-517f, -151f, 1577f, 1000f))))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(23944i, var_0), vec2<i32>(global0.x, 0i)), ~_wgslsmith_add_vec2_i32(vec2<i32>(60193i, var_0), vec2<i32>(arg_0.x, arg_0.x))), 32688u), 935f);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c * var_1.b.b.x))))))), -1149f);
    var var_3 = countOneBits(vec4<u32>(var_1.b.a.x, u_input.a, ~(~var_1.b.a.x), ~global1[_wgslsmith_index_u32(~(~var_1.b.a.x), 1u)]));
    let var_4 = ~_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x << (11047u % 32u), ~var_1.a.x) << (var_3.zw % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_clamp_u32(max(global1[_wgslsmith_index_u32(var_1.a.x, 1u)], var_3.x), 0u | global1[_wgslsmith_index_u32(0u, 1u)], min(1u, 4294967295u))));
    return _wgslsmith_f_op_f32(-var_1.c);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> f32 {
    global1 = array<u32, 1>();
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), -375f);
    let var_0 = select(select(vec3<bool>(arg_1, _wgslsmith_div_f32(arg_0.b.b.x, -2417f) == _wgslsmith_f_op_f32(226f - -1171f), !all(vec4<bool>(true, false, arg_1, arg_1))), !select(vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, arg_1), vec3<bool>(true, true, arg_1)), arg_1), true), select(!vec3<bool>(arg_1, !arg_1, 35156u >= u_input.a), !vec3<bool>(false, !arg_1, arg_1), select(vec3<bool>(arg_1, true, true), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, true, arg_1), true), arg_1)), !(!arg_1 || false));
    var var_1 = arg_0.b.b.x;
    var var_2 = Struct_1(countOneBits(arg_0.a.zz), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0.b.b))), _wgslsmith_f_op_vec4_f32(arg_0.b.b - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-141f, arg_0.b.b.x, 878f, arg_0.c), vec4<f32>(arg_0.c, 805f, -1292f, 612f)))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.c)), _wgslsmith_f_op_f32(arg_0.b.b.x - arg_0.c), _wgslsmith_f_op_f32(trunc(arg_0.c)), _wgslsmith_f_op_f32(arg_0.c + 159f)))), _wgslsmith_mult_vec2_i32(global0.xz | vec2<i32>(arg_0.b.c.x, 42248i), firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(arg_0.b.c.x, -1i), reverseBits(21906i)))), global1[_wgslsmith_index_u32(0u, 1u)]);
    return var_2.b.x;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(global0.x, -2147483647i) & vec2<i32>(0i, global0.x))) - _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 13218u), Struct_1(vec2<u32>(4763u, u_input.a), vec4<f32>(-426f, arg_0, 763f, 1387f), vec2<i32>(-1i, 46401i), 53637u), arg_0), true, u_input.a)))));
    global1 = array<u32, 1>();
    let var_0 = global0.ywx;
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1603f, _wgslsmith_f_op_f32(step(-363f, arg_0)))) - 294f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(global0.x, 31521i))) + _wgslsmith_f_op_f32(-2349f + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1682f - 583f)))), _wgslsmith_div_i32(var_0.x, _wgslsmith_add_i32(~global0.x, ~50777i) << (4294967295u % 32u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var_0 = global0.x | _wgslsmith_add_i32(min(_wgslsmith_div_i32(global0.x, global0.x) >> (83574u % 32u), 1i), _wgslsmith_mod_i32(24457i, global0.x));
    let var_1 = vec2<u32>(110900u, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 1u)]);
    var_0 = global0.x;
    let var_2 = 84361u;
    let x = u_input.a;
    s_output = func_1(-859f);
}

