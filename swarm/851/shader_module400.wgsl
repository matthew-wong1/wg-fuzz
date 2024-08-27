struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<bool, 24> = array<bool, 24>(false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, true, false, true, true, true, false, false, true, false);

var<private> global3: array<f32, 13>;

var<private> global4: array<f32, 25> = array<f32, 25>(-1639f, 1815f, 1328f, 542f, -473f, -422f, 245f, 1283f, -151f, -369f, 1849f, 403f, -326f, 321f, -867f, -243f, -1166f, -1635f, -1000f, -153f, 359f, -270f, 764f, 497f, -1427f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(3956u, ~u_input.c, ~u_input.a), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.c, 1u), arg_0.x) & vec3<u32>(u_input.c, 74794u, u_input.c)), select(~(vec3<u32>(u_input.c, u_input.a, 0u) >> (vec3<u32>(u_input.a, 16293u, u_input.c) % vec3<u32>(32u))) ^ ~(~vec3<u32>(u_input.a, u_input.c, u_input.a)), reverseBits(countOneBits(vec3<u32>(u_input.c, u_input.c, 10745u))), all(!arg_0.yzw)));
    var var_1 = -869f;
    global0 = array<i32, 32>();
    let var_2 = Struct_2(u_input.b.x | -2147483647i, arg_1);
    var var_3 = var_2;
    return global3[_wgslsmith_index_u32(var_0.x, 13u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 24u)], false), arg_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 13u)]) + -358f))));
    var var_1 = Struct_2(~(~(-(u_input.b.x >> (u_input.c % 32u)))), Struct_1(!select(!vec3<bool>(true, arg_0.a.x, false), vec3<bool>(arg_0.a.x, false, true), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, arg_2.a.x)), firstTrailingBit(_wgslsmith_div_vec3_i32(~arg_2.b, ~arg_2.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, global3[_wgslsmith_index_u32(7338u, 13u)]) - arg_1) * _wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(arg_1 + arg_1)))));
    global0 = array<i32, 32>();
    var_1 = Struct_2(_wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec2_i32(-var_1.b.b.yy, -arg_2.b.yx)), var_1.b.b.x, ~arg_2.b.x), Struct_1(vec3<bool>(true, false, var_1.b.a.x), select(var_1.b.b & vec3<i32>(arg_2.b.x, u_input.b.x, 3704i), -vec3<i32>(0i, var_1.b.b.x, 21734i), !arg_2.a) & -var_1.b.b));
    return !arg_2.a;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(!(!(!func_2(global1[_wgslsmith_index_u32(3850u, 23u)], vec3<f32>(1789f, global3[_wgslsmith_index_u32(33824u, 13u)], 645f), global1[_wgslsmith_index_u32(u_input.c, 23u)], global4[_wgslsmith_index_u32(65980u, 25u)]))), vec3<i32>(1i, 2147483647i & global0[_wgslsmith_index_u32(~u_input.c, 32u)], -u_input.b.x));
    global0 = array<i32, 32>();
    let var_1 = Struct_2(0i, Struct_1(vec3<bool>(true, true, !global2[_wgslsmith_index_u32(u_input.a, 24u)]), var_0.b));
    global3 = array<f32, 13>();
    var var_2 = !(!func_2(Struct_1(var_0.a, reverseBits(var_0.b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-599f, global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(1u, 13u)]) * vec3<f32>(1335f, global3[_wgslsmith_index_u32(0u, 13u)], -508f)))), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 24u)], false, var_0.a.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], var_1.b.b.x, global0[_wgslsmith_index_u32(26642u, 32u)])), global4[_wgslsmith_index_u32(abs(58163u), 25u)]));
    return Struct_2(18060i, Struct_1(vec3<bool>(true, true, ~4294967295u > (u_input.c | u_input.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.b.b, _wgslsmith_mult_vec3_i32(var_1.b.b, vec3<i32>(u_input.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_mod_vec3_i32(~var_1.b.b, var_0.b))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    global3 = array<f32, 13>();
    global1 = array<Struct_1, 23>();
    let var_0 = -1000f;
    global3 = array<f32, 13>();
    var var_1 = ~arg_1;
    return select(arg_2.b.b, vec3<i32>(min(_wgslsmith_add_i32(i32(-1i) * -26965i, ~global0[_wgslsmith_index_u32(1u, 32u)]), ~arg_2.b.b.x >> (~0u % 32u)), arg_0.x, u_input.b.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], !(u_input.a > u_input.a), false), max(_wgslsmith_div_vec3_i32(~(vec3<i32>(24959i, u_input.b.x, global0[_wgslsmith_index_u32(0u, 32u)]) | vec3<i32>(19385i, -43843i, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, ~global0[_wgslsmith_index_u32(43403u, 32u)])), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -8660i, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(3647i, 0i, u_input.b.x, -22654i), vec4<i32>(-2813i, 2147483647i, u_input.b.x, u_input.b.x))), ~firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.a)), func_1(), u_input.b)));
    var var_1 = var_0;
    let var_2 = Struct_2(var_1.b.x, var_0);
    global2 = array<bool, 24>();
    let var_3 = _wgslsmith_f_op_f32(round(1067f));
    let var_4 = var_2.b.a.zx;
    global1 = array<Struct_1, 23>();
    let var_5 = all(!(!func_1().b.a));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(3437u, 1u, u_input.c, u_input.c), vec4<u32>(u_input.a, u_input.c, u_input.c, 4294967295u)), abs(vec4<u32>(u_input.c, 21577u, 17686u, u_input.a)))), -func_1().b.b, -250f, -2262f);
}

