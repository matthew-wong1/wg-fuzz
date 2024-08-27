struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-676f, 860f, -423f), vec3<f32>(-330f, 1000f, -366f), vec3<f32>(-235f, 132f, 227f), vec3<f32>(-1181f, -1000f, -1187f));

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<u32>, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    global1 = Struct_1(-_wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(global1.b, global1.b, -4387i, -26592i)), min(global1.a, u_input.e) | select(vec4<i32>(u_input.d, -36370i, -2147483647i, global1.a.x), vec4<i32>(global1.b, 2147483647i, global1.b, global1.a.x), vec4<bool>(true, false, false, true))), _wgslsmith_add_i32(~global1.a.x, _wgslsmith_clamp_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, global1.b)), u_input.d >> (global1.c % 32u)), countOneBits(~(-1i)), -25295i)), firstTrailingBit(1u), true);
    var var_0 = Struct_1(vec4<i32>(1i, u_input.c, reverseBits(-2147483647i), u_input.d), select(u_input.b.x, abs(-2147483647i), !global1.d), 30463u, global1.d);
    global1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-48574i, global1.a.x, u_input.e.x, global1.b), u_input.e), ~u_input.d, 19649u, true);
    let var_1 = Struct_1(u_input.e, abs(~var_0.a.x), 1u, true);
    var var_2 = min(var_0.c, global2.x) & countOneBits(~_wgslsmith_sub_u32(firstTrailingBit(1u), u_input.a << (var_0.c % 32u)));
    return vec4<i32>(1i, -2147483647i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.a.wz | var_0.a.ww, vec2<i32>(2147483647i, global1.b) | vec2<i32>(0i, global1.a.x)), ~1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(~var_1.a.zx), u_input.b.yz), 2147483647i, -_wgslsmith_mod_i32(abs(0i), global1.b << (0u % 32u))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 4u)];
    let var_1 = !(!vec2<bool>(global1.d, true));
    let var_2 = -2239f;
    var var_3 = Struct_1(~_wgslsmith_add_vec4_i32(u_input.e, func_3() & abs(vec4<i32>(global1.b, 0i, u_input.c, -1i))), u_input.e.x, reverseBits(global2.x), all(!var_1));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-921f, -164f, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(-1153f))))))));
    return Struct_1(var_3.a, -1i, global2.x, !(!all(vec4<bool>(false, false, true, var_1.x))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> vec4<bool> {
    global1 = func_2(arg_2);
    global3 = array<vec4<u32>, 27>();
    global3 = array<vec4<u32>, 27>();
    let var_0 = func_2(arg_2);
    global3 = array<vec4<u32>, 27>();
    return !(!(!select(vec4<bool>(false, false, false, var_0.d), !vec4<bool>(false, arg_1, true, arg_1), !var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_add_vec2_i32(-vec2<i32>(1i, -2147483647i), global1.a.xy));
    global3 = array<vec4<u32>, 27>();
    var_0 = u_input.e.wy;
    var var_1 = select(!vec2<bool>(~1u != firstTrailingBit(42466u), true && (33282i >= global1.b)), !(!(!(!vec2<bool>(true, global1.d)))), any(vec4<bool>(true, true, true, true)) & !(all(vec2<bool>(global1.d, global1.d)) != global1.d));
    let var_2 = select(vec4<bool>(!all(vec3<bool>(var_1.x, var_1.x, var_1.x)), -_wgslsmith_div_i32(global1.b, 33378i) >= -global1.b, any(select(select(vec4<bool>(false, false, global1.d, var_1.x), vec4<bool>(var_1.x, false, true, global1.d), global1.d), !vec4<bool>(var_1.x, global1.d, false, false), vec4<bool>(var_1.x, true, false, true))), global1.d), vec4<bool>(global1.a.x <= -2147483647i, true, _wgslsmith_add_i32(_wgslsmith_sub_i32(global1.b, 5517i), -15525i) != 16888i, all(func_1(global2.x | 27322u, false, ~vec3<u32>(24744u, 30611u, 46063u)))), !select(!select(vec4<bool>(true, false, true, global1.d), vec4<bool>(false, global1.d, global1.d, false), var_1.x), vec4<bool>(var_1.x, true, func_2(vec3<u32>(1u, 3227u, 1u)).d, var_1.x), select(vec4<bool>(true, true, false, true), vec4<bool>(global1.d, false, global1.d, true), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b >> (~countOneBits(vec3<u32>(28156u, u_input.a, 1u)) % vec3<u32>(32u))), _wgslsmith_add_i32(var_0.x, var_0.x));
}

