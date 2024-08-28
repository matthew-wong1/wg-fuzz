struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: vec4<i32> = vec4<i32>(-11611i, 3432i, 28814i, -58134i);

var<private> global2: bool = true;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 16u)]);
    global0 = array<Struct_1, 16>();
    global1 = -(~abs(~vec4<i32>(0i, var_0.a.a.x, 33214i, u_input.a.x)));
    global0 = array<Struct_1, 16>();
    var var_1 = abs(~1002i);
    return -abs(-(~(-vec4<i32>(18504i, global1.x, 21219i, -12708i))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_0.b;
    global2 = -634f >= _wgslsmith_f_op_f32(-arg_0.d.c);
    var var_1 = -(_wgslsmith_dot_vec4_i32(func_3(), vec4<i32>(1i, countOneBits(var_0.a.a.x), u_input.a.x & global1.x, ~u_input.a.x)) | abs(1i));
    var_1 = u_input.a.x;
    var var_2 = arg_0.d.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-423f, 2662f)) + arg_0.b.a.c)))) - -508f);
}

fn func_1(arg_0: i32) -> bool {
    global1 = vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(abs(u_input.a.x), -12849i), global1.x, -_wgslsmith_div_i32(_wgslsmith_div_i32(-6005i, 2147483647i) & arg_0, ~(~u_input.a.x)));
    var var_0 = Struct_4(vec3<u32>(~_wgslsmith_div_u32(u_input.b, u_input.b), min(u_input.b, u_input.b), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1047f, _wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(18301u, u_input.b, 4294967295u), Struct_2(global0[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(0u, 0u, u_input.b, 0u), Struct_1(u_input.a, vec3<bool>(true, false, true), -649f)), 63064u, vec3<f32>(575f, -1000f, 349f), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-540f, 254f) - vec2<f32>(337f, 1344f)))), vec2<bool>(true, true)))));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.b >> (1u % 32u), 16u)];
    let var_2 = Struct_4(~(~_wgslsmith_div_vec3_u32(~var_0.a, var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(abs(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(15534i, arg_0, -1i), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), -1258f)), vec4<u32>(32168u, 0u, var_0.a.x, 0u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a.x, 17177u), 16u)]), ~u_input.b, vec3<f32>(_wgslsmith_f_op_f32(trunc(-2053f)), _wgslsmith_f_op_f32(var_0.b.x + var_1.c), _wgslsmith_f_op_f32(-var_0.b.x)), !(!vec4<bool>(false, var_1.b.x, true, var_1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1434f)));
    let var_3 = var_1.b.x;
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x);
    var_0 = true;
    global0 = array<Struct_1, 16>();
    global1 = ~vec4<i32>(~2147483647i, i32(-1i) * -35338i, global1.x, _wgslsmith_add_i32(~(-u_input.a.x), global1.x));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(0u, 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(select(14292u, 0u, var_1.a.b.x), ~u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c)))), _wgslsmith_sub_vec3_i32(u_input.a, ~(u_input.a >> (vec3<u32>(3758u, u_input.b, u_input.b) % vec3<u32>(32u))) | -_wgslsmith_div_vec3_i32(global1.yxx, var_1.a.a)), var_1.a.c, _wgslsmith_mult_u32(u_input.b, u_input.b));
}

