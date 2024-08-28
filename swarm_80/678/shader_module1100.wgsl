struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec2<f32>, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global2 = array<vec2<f32>, 5>();
    let var_0 = -vec4<i32>(15179i, ~_wgslsmith_div_i32(1i, ~arg_0.x), arg_0.x, 0i);
    global2 = array<vec2<f32>, 5>();
    let var_1 = ~(~min(global0.zxx, vec3<u32>(_wgslsmith_mod_u32(52776u, u_input.a.x), ~arg_1, ~global0.x)));
    var var_2 = select(2440u, ~1u, true);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(ceil(-115f)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(1i, 1i, 1i), u_input.a.x, global1[_wgslsmith_index_u32(~global0.x, 12u)]))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), ~reverseBits(vec4<i32>(6508i, 0i, 29882i, 5388i))), abs(vec4<i32>(-14379i, _wgslsmith_add_i32(countOneBits(-75643i), _wgslsmith_mult_i32(-10582i, -1i)), _wgslsmith_add_i32(select(22746i, 1580i, false), -1i), ~_wgslsmith_mod_i32(-1i, 60311i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1535f, 828f, arg_0, var_1) * vec4<f32>(var_0.a, arg_0, 1781f, -201f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1, -893f, var_1))))));
    let var_4 = global1[_wgslsmith_index_u32(u_input.a.x & 13135u, 12u)];
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1632f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-503f);
    let var_1 = !vec4<bool>(false, false, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec4<i32>(1i, -31015i, 1i, 2147483647i)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(34073u, global0.x, global0.x, 15919u), abs(vec4<u32>(global0.x, global0.x, 51416u, 1u))) % vec4<u32>(32u)), global0.zw, -(~vec2<i32>(~2147483647i, 1i)));
}

