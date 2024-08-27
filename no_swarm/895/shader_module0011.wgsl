struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 27> = array<u32, 27>(4294967295u, 4294967295u, 17119u, 4294967295u, 1u, 4294967295u, 4294967295u, 7573u, 28311u, 1u, 2367u, 4294967295u, 0u, 63832u, 29639u, 1u, 13997u, 18713u, 4294967295u, 4294967295u, 4294967295u, 1u, 43132u, 1500u, 4294967295u, 0u, 42926u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> vec3<i32> {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(u_input.a, arg_0.a.x)), _wgslsmith_add_i32(abs(u_input.a), arg_0.a.x) & ~arg_0.a.x), ~min(i32(-1i) * -2147483647i, select(arg_0.a.x >> (arg_0.b % 32u), ~u_input.a, false)), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1588i, 2147483647i, -1i), ~vec4<i32>(1i, 1i, arg_0.a.x, -48297i))), _wgslsmith_div_vec4_i32(min(~vec4<i32>(-4764i, u_input.a, u_input.a, u_input.a), max(vec4<i32>(1i, arg_0.a.x, -25346i, arg_0.a.x), vec4<i32>(-1i, 46021i, u_input.a, 18149i))), -vec4<i32>(0i, u_input.a, u_input.a, arg_0.a.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-37792i, 20929i, 1i, u_input.a), vec4<i32>(-1i, -11991i, 1i, 1i)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1570f, -579f, -249f, -1000f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-210f, global0.x, 1523f, 1082f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 925f, arg_1, -459f), vec4<f32>(global0.x, global0.x, -1704f, 307f), vec4<bool>(false, false, false, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, -412f, 1000f, global0.x))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -1799f, global0.x, global0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 440f, -1295f, 1003f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), arg_1, arg_1, _wgslsmith_f_op_f32(1540f + -718f)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, global0.x, false)), 629f, -742f, global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, _wgslsmith_f_op_f32(select(global0.x, 244f, true)), arg_1, _wgslsmith_f_op_f32(-283f + global0.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-799f)), -1258f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f), -738f)) + global0.yx);
    return _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -19687i, firstLeadingBit(u_input.a)), ~var_0);
}

fn func_2() -> f32 {
    let var_0 = u_input.c.x;
    global1 = array<u32, 27>();
    var var_1 = abs(firstTrailingBit(~vec3<i32>(-51302i, 2147483647i, u_input.a))) & (vec3<i32>(-1i) * -func_3(Struct_3(vec3<i32>(0i, 2147483647i, -2147483647i), 4294967295u), _wgslsmith_f_op_f32(-global0.x), ~44577u));
    let var_2 = !any(vec2<bool>(true, true));
    let var_3 = -42815i;
    return -1340f;
}

fn func_1() -> vec4<f32> {
    global1 = array<u32, 27>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(1774f + _wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2911f) - -594f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1032f, _wgslsmith_f_op_f32(-global0.x))) + 1931f), global0.x);
    let var_0 = Struct_2(Struct_1(vec2<i32>(-15i, _wgslsmith_mult_i32(11244i, u_input.a)), u_input.a, select(false, true, !any(vec4<bool>(false, true, true, true)))), Struct_1(vec2<i32>(~(22413i | u_input.a), ~(-2147483647i)), _wgslsmith_mult_i32(u_input.a, u_input.a) ^ (_wgslsmith_add_i32(60485i, -1i) | _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), true || ((u_input.c.x << (77014u % 32u)) >= u_input.b)), false, vec2<i32>(abs(u_input.a), -u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global0.x))));
    var var_1 = Struct_3(func_3(Struct_3(vec3<i32>(var_0.d.x, u_input.a, u_input.a), ~(~8637u)), global0.x, 19938u), _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], u_input.b, global1[_wgslsmith_index_u32(64986u, 27u)], u_input.b)), countOneBits(~(~vec4<u32>(3175u, global1[_wgslsmith_index_u32(u_input.b, 27u)], 7505u, global1[_wgslsmith_index_u32(0u, 27u)])))));
    let var_2 = var_0.b.c;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1350f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, var_0.e.x) - _wgslsmith_f_op_f32(global0.x * var_0.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(737f + -1110f))), 452f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1436f))), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-574f)), global0.x));
    let var_0 = false;
    var var_1 = ~(~min(vec3<u32>(u_input.c.x, ~u_input.c.x, global1[_wgslsmith_index_u32(u_input.b, 27u)]), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) & (vec3<u32>(82010u, 65814u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(0u, 27u)], u_input.c.x, u_input.c.x) % vec3<u32>(32u)))));
    global1 = array<u32, 27>();
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, global0.x, global0.x, 498f) + vec4<f32>(-1372f, -1261f, 320f, 313f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, 360f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1202f, -366f, 1499f, global0.x) * vec4<f32>(1601f, 893f, -1851f, global0.x)) + vec4<f32>(global0.x, global0.x, 164f, -1521f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-378f, global0.x, 403f, 1000f) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(310f, global0.x, global0.x, global0.x) * vec4<f32>(494f, -1102f, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -440f, global0.x, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(global0.wyw)), 1000f, ~(~select(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 27u)], 27u)], 1u, false)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1()).x))));
}

