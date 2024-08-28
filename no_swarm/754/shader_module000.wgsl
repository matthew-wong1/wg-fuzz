struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<f32, 2> = array<f32, 2>(-151f, -1800f);

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<f32, 2>();
    var var_0 = vec4<u32>(1u >> (~4294967295u % 32u), select(31379u, ~_wgslsmith_clamp_u32(1u, ~arg_0.a.a, 19877u >> (arg_0.a.a % 32u)), all(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), any(global1[_wgslsmith_index_u32(arg_0.a.a, 5u)])))), firstTrailingBit(countOneBits(arg_0.a.a)), ~(~(~arg_0.a.a)));
    let var_1 = Struct_2(Struct_1(arg_0.a.a, max(_wgslsmith_sub_vec2_i32(vec2<i32>(9498i, 18388i), vec2<i32>(-1i, arg_0.b)), vec2<i32>(u_input.a, 1i) << (var_0.zw % vec2<u32>(32u))) >> (~var_0.zy % vec2<u32>(32u))), arg_0.a.b.x);
    var var_2 = !(!all(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, false)));
    let var_3 = Struct_2(Struct_1(~(~arg_0.a.a & 4294967295u), vec2<i32>(-arg_0.a.b.x, -arg_0.b)), ~(i32(-1i) * -_wgslsmith_add_i32(u_input.a, -1065i)));
    return var_1.b;
}

fn func_2() -> bool {
    global1 = array<vec2<bool>, 5>();
    let var_0 = func_3(Struct_2(Struct_1(_wgslsmith_clamp_u32(countOneBits(4294967295u), 4294967295u, countOneBits(89628u)), -vec2<i32>(u_input.a, 1i)), firstTrailingBit(1i)));
    var var_1 = true && all(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global1 = array<vec2<bool>, 5>();
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0, u_input.a, ~(-2147483647i), 1i), _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(-1124i, -1i, u_input.a, -2042i)), -vec4<i32>(15903i, var_0, var_0, 12397i), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-15246i), u_input.a, -62247i, 1i), -(~vec4<i32>(var_0, -2147483647i, var_0, u_input.a)))));
    return true;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(step(-1491f, -972f)));
    let var_1 = any(vec4<bool>(arg_0 | any(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 8532u), 5u)]), func_2(), select(all(vec4<bool>(arg_0, true, true, false)), all(global1[_wgslsmith_index_u32(1u, 5u)]), func_2()) && true, !arg_0));
    var_0 = Struct_3(_wgslsmith_f_op_f32(544f - var_0.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(899f, 637f, 472f, var_0.a)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(55000u, 2u)], -1085f, global0[_wgslsmith_index_u32(35193u, 2u)], var_0.a)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4663u, 2u)], var_0.a, -1967f, global0[_wgslsmith_index_u32(88804u, 2u)])) + vec4<f32>(-888f, var_0.a, global0[_wgslsmith_index_u32(1u, 2u)], -688f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, 759f, -505f)))), true)));
    var var_3 = true;
    return -u_input.a;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_4(Struct_1(arg_2.x, abs(firstTrailingBit(vec2<i32>(-1i, 42003i))) >> (~arg_2.zx % vec2<u32>(32u))));
    var var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(var_1.a, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.b.x, 15483i), -var_0.a.b))), _wgslsmith_dot_vec2_i32(var_0.a.b, vec2<i32>(func_1(true), arg_1) | vec2<i32>(abs(arg_1), _wgslsmith_div_i32(var_0.a.b.x, var_1.b.x))));
    var_0 = Struct_4(Struct_1(0u, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i) | vec2<i32>(var_1.b.x, var_0.a.b.x), vec2<i32>(arg_0, 36205i)), vec2<i32>(-1i, var_0.a.b.x) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))));
    let var_3 = ~vec3<u32>(var_0.a.a, ~28869u, _wgslsmith_sub_u32(var_1.a << (1u % 32u), var_0.a.a));
    return -(~firstTrailingBit(countOneBits(select(vec3<i32>(-1i, u_input.a, var_2.a.b.x), vec3<i32>(var_2.a.b.x, -29938i, -2147483647i), vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(all(select(!global1[_wgslsmith_index_u32(0u, 5u)], !global1[_wgslsmith_index_u32(4294967295u, 5u)], true))), _wgslsmith_div_i32(u_input.a, ~u_input.a ^ -18919i), select(abs(select(vec4<u32>(54858u, 18927u, 2968u, 49269u), abs(vec4<u32>(1u, 4294967295u, 77585u, 16437u)), vec4<bool>(true, true, true, true))), ~(~vec4<u32>(41636u, 4294967295u, 35843u, 7544u)), all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(61179u, 5u)]), select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(92548u, 5u)], true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 2u)])) * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4071u, 2u)]))));
    global1 = array<vec2<bool>, 5>();
    let var_1 = vec4<u32>(36578u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~0u, ~75074u, ~21824u)) << (1u % 32u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

