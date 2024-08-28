struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 0u);

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(233f, 683f, 459f), vec3<f32>(-272f, 164f, 1296f), vec3<f32>(838f, -519f, -620f), vec3<f32>(-115f, -573f, -887f), vec3<f32>(-1824f, 2825f, -989f), vec3<f32>(2661f, 443f, 515f), vec3<f32>(154f, -607f, -359f), vec3<f32>(2053f, 733f, 774f), vec3<f32>(-699f, 1834f, 908f), vec3<f32>(547f, -765f, 241f), vec3<f32>(1813f, -1061f, 499f), vec3<f32>(1843f, 195f, 550f), vec3<f32>(911f, 1017f, 613f), vec3<f32>(-2098f, 282f, 212f), vec3<f32>(-679f, 900f, -1518f), vec3<f32>(-1047f, 1083f, 613f));

var<private> global2: array<f32, 26>;

var<private> global3: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = Struct_3(Struct_1(~_wgslsmith_dot_vec2_u32(~global0.xx, vec2<u32>(u_input.a, u_input.a)), true, vec3<f32>(arg_1, _wgslsmith_f_op_f32(-423f - global2[_wgslsmith_index_u32(3327u, 26u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(87209u), 26u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 26u)]), 1i), Struct_2(vec2<i32>(~min(-43080i, 2147483647i), abs(0i)), -(~vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(0u, arg_0.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(global1[_wgslsmith_index_u32(56535u, 16u)], vec3<f32>(arg_1, -1018f, global2[_wgslsmith_index_u32(global0.x, 26u)]))))), _wgslsmith_f_op_f32(-arg_1), ~(-1i) >> (firstLeadingBit(u_input.b) % 32u)), !arg_0.x, ~min(vec3<u32>(52592u, global0.x, 0u), vec3<u32>(55503u, global0.x, global0.x)) | select(~vec3<u32>(u_input.b, global0.x, 46429u), _wgslsmith_mod_vec3_u32(vec3<u32>(17808u, 23325u, 54699u), vec3<u32>(u_input.a, u_input.b, 1u)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(!any(vec3<bool>(false, arg_0.x, false)), arg_0.x, arg_0.x), 0u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~countOneBits(~vec3<u32>(global0.x, global0.x, global0.x)), min(vec3<u32>(global0.x, u_input.b, ~global0.x), vec3<u32>(global0.x, reverseBits(global0.x), _wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(32683u, 10787u))))), 6u)]);
    var var_1 = Struct_4(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global0.x, u_input.a) & vec2<u32>(5626u, 55866u), ~vec2<u32>(var_0.a.a, u_input.b)), ~_wgslsmith_div_vec2_u32(global0.xz, var_0.b.e.xz)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, u_input.b, global0.x), ~vec4<u32>(u_input.a, u_input.a, var_0.b.e.x, 45909u))), -((-var_0.a.e ^ _wgslsmith_div_i32(var_0.b.a.x, 2147483647i)) << (firstTrailingBit(var_0.b.e.x) % 32u)), -_wgslsmith_div_i32(var_0.a.e, -2147483647i), _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-27377i, 3084i, 15212i), vec3<i32>(-2147483647i, -2147483647i, -1i), var_0.b.b.xxx) >> (min(vec3<u32>(u_input.a, 4294967295u, 28397u), vec3<u32>(var_0.b.c.a, 39695u, var_0.a.a)) % vec3<u32>(32u))), var_0.b.b.ywy), !arg_0.x);
    let var_2 = u_input.c;
    let var_3 = var_0;
    global3 = array<vec4<bool>, 6>();
    return _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_3.d, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -3570f)) < arg_1;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = firstLeadingBit(vec2<i32>(-1i, ~1i));
    let var_1 = select(vec3<bool>(true, true, func_3(vec3<bool>(true, arg_1.x <= 0u, false), global2[_wgslsmith_index_u32(4294967295u, 26u)])), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), arg_0 <= -1277f), all(vec2<bool>(true, true))), select(vec3<bool>(true, false, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !vec3<bool>(75589u <= arg_1.x, false, true), vec3<bool>(all(vec2<bool>(true, true)), select(true, true, u_input.b > global0.x), any(vec3<bool>(false, false, true)) | (-754f < arg_0))));
    var var_2 = Struct_3(Struct_1(arg_1.x << (global0.x % 32u), var_1.x && false, vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(599f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_1.x, 1u, global0.x), vec4<u32>(global0.x, arg_1.x, arg_1.x, 43654u)), 26u)] * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, global2[_wgslsmith_index_u32(u_input.b, 26u)])))))), var_0.x), Struct_2(vec2<i32>(-1i) * -var_0, countOneBits(~abs(vec4<i32>(11361i, -49677i, -2147483647i, var_0.x))), Struct_1(4294967295u, all(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.xy)), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(arg_1.x, 26u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 26u)]), 982f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.x, 26u)], 454f) + 1975f), max(var_0.x, var_0.x)), abs(global0.x << (28001u % 32u)) == firstLeadingBit(1u), vec3<u32>(arg_1.x, global0.x, global0.x)), var_1, _wgslsmith_dot_vec2_u32(arg_1.yx, vec2<u32>(_wgslsmith_sub_u32(4294967295u, global0.x), firstTrailingBit(arg_1.x)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 55149u), countOneBits(vec2<u32>(93111u, global0.x)), reverseBits(vec2<u32>(21833u, u_input.a)))), !global3[_wgslsmith_index_u32(min(48464u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_1.x, u_input.a, 27521u), vec4<u32>(1u, arg_1.x, arg_1.x, 0u))), 6u)]);
    var var_3 = !vec4<bool>(var_1.x & false, var_2.c.x, true, any(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_2.a.b, true), true)));
    let var_4 = var_2.a.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.c.yy * var_2.b.c.c.xy) + vec2<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_1.x, 26u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(12173u, 26u)], arg_0, var_1.x)))))));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2(global2[_wgslsmith_index_u32(reverseBits(90966u), 26u)], vec3<u32>(_wgslsmith_mult_u32(0u, global0.x) | ~u_input.c, ~abs(53703u), 8148u)))));
    global0 = ~vec3<u32>(_wgslsmith_mult_u32(global0.x ^ u_input.b, ~(~u_input.b)), ~40549u, ~u_input.b);
    let var_1 = 614f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(u_input.a | global0.x), 26u)], -1854f) + 905f);
    return vec3<bool>(true, all(select(select(vec4<bool>(var_1, var_1, false, false), global3[_wgslsmith_index_u32(1u, 6u)], var_1), vec4<bool>(false, var_1, var_1, var_1), var_1)) || var_1, var_1);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_2(-(~min(arg_0.d.yz, vec2<i32>(arg_1.e, arg_1.e))), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.e, arg_1.e, 35508i, arg_1.e), vec4<i32>(2147483647i, -77124i, 1i, arg_0.c)), vec4<i32>(firstTrailingBit(arg_1.e), 0i, 1i, _wgslsmith_mod_i32(arg_0.b, -28801i)))), arg_1, select(true, !arg_1.b | arg_0.e, arg_0.e), firstTrailingBit(_wgslsmith_div_vec3_u32(~(vec3<u32>(52109u, 4294967295u, u_input.c) << (vec3<u32>(4294967295u, u_input.a, 43717u) % vec3<u32>(32u))), ~(~vec3<u32>(0u, 40552u, 0u)))));
    global3 = array<vec4<bool>, 6>();
    let var_1 = ~(~var_0.b);
    var var_2 = arg_1;
    global1 = array<vec3<f32>, 16>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-198i, 27485i), -vec2<i32>(1i, 37016i), abs(vec2<i32>(-1i, 1i))), abs(max(vec2<i32>(-2147483647i, 8199i), vec2<i32>(64516i, -26245i)))), (1i << (u_input.c % 32u)) | 1i, max(firstTrailingBit(~vec3<i32>(-1i, 2147483647i, 1i)), select(abs(vec3<i32>(9435i, 2147483647i, -14261i)), ~vec3<i32>(0i, 2147483647i, 2147483647i), func_1())), all(global3[_wgslsmith_index_u32(min(max(u_input.c, global0.x), global0.x), 6u)])), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0.x, 18029u, 37462u), vec4<u32>(1u, 90163u, global0.x, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 0u, 48406u, u_input.c), vec4<u32>(1u, 0u, u_input.c, 4294967295u))), any(func_1().xx) | all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), vec3<f32>(623f, _wgslsmith_div_f32(2094f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(22957u, 26u)])) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(138625u, 26u)] - global2[_wgslsmith_index_u32(123501u, 26u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1155f))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -555f), ~vec3<u32>(global0.x, u_input.b, 14986u))).x), i32(-1i) * -_wgslsmith_clamp_i32(22068i, 40563i, 0i)));
    global3 = array<vec4<bool>, 6>();
    let var_1 = false;
    let var_2 = global1[_wgslsmith_index_u32(0u, 16u)];
    var var_3 = ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(24517i, -2147483647i)) ^ select(-vec2<i32>(var_0.c, -278i), select(var_0.d.yy, var_0.d.yx, var_1), !vec2<bool>(var_0.e, var_1)), ~_wgslsmith_add_vec2_i32(var_0.d.zx | vec2<i32>(var_0.b, -2147483647i), func_4(Struct_4(var_0.a, 53853i, var_0.d.x, var_0.d, true), Struct_1(4294967295u, false, global1[_wgslsmith_index_u32(4294967295u, 16u)], 1405f, 59461i)).d.yz));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(vec4<u32>(var_0.a, u_input.a, u_input.b, u_input.b) >> (vec4<u32>(var_0.a, 558u, 82010u, 1u) % vec4<u32>(32u))) & abs(select(vec4<u32>(1u, 36604u, 64692u, 0u), vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u), global3[_wgslsmith_index_u32(var_0.a, 6u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global2[_wgslsmith_index_u32(var_0.a, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], 1027f)))));
}

