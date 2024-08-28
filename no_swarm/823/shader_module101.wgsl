struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(2407u, 0u), vec2<u32>(14918u, 6359u), vec2<u32>(26482u, 0u), vec2<u32>(1u, 1u), vec2<u32>(10284u, 90u), vec2<u32>(20765u, 1u), vec2<u32>(22177u, 0u), vec2<u32>(20266u, 49143u), vec2<u32>(6357u, 31941u), vec2<u32>(4294967295u, 54070u), vec2<u32>(1u, 1u), vec2<u32>(1u, 14230u), vec2<u32>(4294967295u, 1u), vec2<u32>(19574u, 15866u), vec2<u32>(89617u, 4294967295u), vec2<u32>(1u, 68181u), vec2<u32>(12226u, 109126u));

var<private> global1: array<f32, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = true;
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    return ~_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(u_input.b.x, 85976u, 4294967295u, u_input.a))), ~vec4<u32>(3094u, u_input.b.x, 1u, u_input.b.x)) <= 29173u;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    let var_0 = 0u;
    global0 = array<vec2<u32>, 17>();
    var var_1 = Struct_1(u_input.b.zy, !arg_2.xxy, select(arg_2.xx, !arg_2.wy, !arg_2.x));
    var var_2 = var_1.a.x;
    let var_3 = _wgslsmith_div_vec2_u32(~select(var_1.a >> (~var_1.a % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_div_u32(0u, var_1.a.x)), all(!vec4<bool>(arg_3, false, false, arg_3))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), ~vec3<u32>(76u, 0u, u_input.b.x)), var_1.a.x));
    return var_3.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(func_4(arg_3.b.x, select(vec4<bool>(true, !arg_3.a.b.x, !arg_3.a.b.x, true), !select(vec4<bool>(false, arg_3.a.b.x, false, false), vec4<bool>(true, arg_3.a.c.x, true, arg_1.a.b.x), arg_3.a.c.x), u_input.a <= 4294967295u), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_3.a.a.x, 22u)] == arg_3.b.x, !arg_3.a.c.x, false, any(arg_3.a.b)), vec4<bool>(arg_1.a.c.x, func_3(), true, true), !(!vec4<bool>(arg_1.a.b.x, true, arg_3.a.b.x, arg_1.a.b.x))), select(all(!vec4<bool>(true, arg_1.a.b.x, false, arg_1.a.c.x)), arg_0.x > arg_0.x, arg_1.a.b.x)), ~_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 44203u)));
    var_0 = _wgslsmith_mod_u32(59649u, arg_1.a.a.x);
    let var_1 = -_wgslsmith_sub_vec2_i32(max(-vec2<i32>(arg_0.x, 2147483647i), abs(abs(vec2<i32>(arg_0.x, -2147483647i)))), vec2<i32>(_wgslsmith_div_i32(arg_0.x, arg_0.x), arg_0.x & arg_0.x) ^ reverseBits(vec2<i32>(arg_0.x, -1i) >> (arg_3.a.a % vec2<u32>(32u))));
    let var_2 = _wgslsmith_div_vec2_u32(arg_1.a.a, vec2<u32>(_wgslsmith_mod_u32(0u, arg_1.a.a.x), select(~arg_3.a.a.x, ~1u, any(vec4<bool>(arg_3.a.c.x, arg_3.a.c.x, false, arg_3.a.c.x)))) | ~(arg_1.a.a & vec2<u32>(arg_3.a.a.x, 41314u)));
    global1 = array<f32, 22>();
    return Struct_2(Struct_1(var_2, select(!arg_3.a.b, select(arg_1.a.b, !vec3<bool>(true, arg_3.a.c.x, arg_1.a.b.x), true), !vec3<bool>(arg_3.a.c.x, arg_3.a.b.x, arg_3.a.b.x)), !arg_1.a.b.yy));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    global1 = array<f32, 22>();
    var var_0 = arg_2;
    let var_1 = ~max(~_wgslsmith_sub_vec2_u32(~u_input.b.yx, vec2<u32>(u_input.a, var_0.a.a.x)), global0[_wgslsmith_index_u32(func_2(~(vec4<i32>(38355i, 1i, -28606i, -2147483647i) >> (vec4<u32>(77390u, arg_2.a.a.x, var_0.a.a.x, var_0.a.a.x) % vec4<u32>(32u))), arg_2, max(arg_2.a.a.x, arg_2.a.a.x), Struct_3(func_2(vec4<i32>(1i, -2147483647i, 45416i, 1i), arg_2, 4294967295u, Struct_3(var_0.a, vec4<f32>(arg_3.x, arg_3.x, arg_0, -1000f))).a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, global1[_wgslsmith_index_u32(0u, 22u)], -144f, -446f))))).a.a.x, 17u)]);
    var_0 = func_2(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -30959i, -27111i, -2147483647i) << (vec4<u32>(32615u, 8836u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(-8681i, 1i, 0i, 2147483647i))), vec4<i32>(0i << (u_input.a % 32u), 0i, ~(-1i), 73004i))), arg_2, ~u_input.b.x, Struct_3(Struct_1(vec2<u32>(var_0.a.a.x, _wgslsmith_sub_u32(arg_2.a.a.x, 1u)), func_2(vec4<i32>(1i, -1i, 2147483647i, -67625i), Struct_2(Struct_1(vec2<u32>(u_input.a, arg_2.a.a.x), var_0.a.b, var_0.a.b.zx)), 55254u, Struct_3(var_0.a, vec4<f32>(-262f, arg_3.x, arg_0, -1488f))).a.b, select(arg_2.a.c, vec2<bool>(false, arg_1.x), !arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(24032u, 22u)], 2030f, arg_0, arg_3.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(668f, -233f, arg_3.x, global1[_wgslsmith_index_u32(10824u, 22u)]) + vec4<f32>(-415f, arg_3.x, global1[_wgslsmith_index_u32(arg_2.a.a.x, 22u)], -612f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, arg_0, global1[_wgslsmith_index_u32(var_0.a.a.x, 22u)], 1588f)))))));
    global1 = array<f32, 22>();
    return ~1u;
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(func_2(vec4<i32>(1i, 1i, 1i, 1i), Struct_2(Struct_1(vec2<u32>(arg_1, arg_2), func_2(vec4<i32>(2147483647i, -1240i, -2910i, 270i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(1901u, 17u)], vec3<bool>(arg_0.x, arg_3.x, arg_3.x), arg_0.zz)), 1u, Struct_3(Struct_1(vec2<u32>(4294967295u, arg_1), vec3<bool>(arg_3.x, false, arg_0.x), vec2<bool>(arg_0.x, true)), vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 22u)], 315f, 1025f, -721f))).a.b, vec2<bool>(false, true))), func_5(_wgslsmith_div_f32(-340f, -1084f), vec2<bool>(true == arg_3.x, 301f > global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), arg_3, arg_3.yy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(646f, 1184f, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<f32>(-702f, -1000f, 1240f)))), Struct_3(Struct_1(global0[_wgslsmith_index_u32(7732u, 17u)], arg_3, func_2(vec4<i32>(-1i, -25836i, 1i, -1i), Struct_2(Struct_1(u_input.b.zx, vec3<bool>(arg_0.x, false, arg_3.x), vec2<bool>(arg_0.x, arg_3.x))), u_input.a, Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], vec3<bool>(false, false, arg_3.x), vec2<bool>(true, true)), vec4<f32>(global1[_wgslsmith_index_u32(1u, 22u)], 1000f, global1[_wgslsmith_index_u32(arg_1, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]))).a.c), vec4<f32>(_wgslsmith_f_op_f32(max(-1186f, global1[_wgslsmith_index_u32(arg_1, 22u)])), global1[_wgslsmith_index_u32(~4033u, 22u)], global1[_wgslsmith_index_u32(11641u, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -122f)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(30336u, 22u)], global1[_wgslsmith_index_u32(47963u, 22u)], -915f, global1[_wgslsmith_index_u32(47581u, 22u)])))))));
    let var_1 = ~(firstLeadingBit(min(_wgslsmith_div_u32(arg_1, u_input.b.x), arg_2)) | 128778u);
    var var_2 = abs(0i);
    var var_3 = reverseBits(min(func_2(min(vec4<i32>(0i, -64792i, 1i, 1i), ~vec4<i32>(2147483647i, 0i, 22121i, 0i)), func_2(min(vec4<i32>(32002i, -17384i, -2147483647i, 1i), vec4<i32>(-16354i, 14578i, 0i, -29343i)), Struct_2(Struct_1(vec2<u32>(u_input.b.x, var_0.a.a.x), arg_3, arg_0.zx)), 25069u, Struct_3(var_0.a, vec4<f32>(507f, global1[_wgslsmith_index_u32(46809u, 22u)], 1421f, var_0.b.x))), max(max(36830u, u_input.b.x), countOneBits(4294967295u)), Struct_3(Struct_1(vec2<u32>(0u, u_input.a), vec3<bool>(arg_3.x, arg_3.x, false), arg_0.zz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(57283u, 22u)], var_0.b.x, var_0.b.x, 413f)))).a.a.x, ~var_1));
    var var_4 = global1[_wgslsmith_index_u32(var_1 << (arg_1 % 32u), 22u)];
    return Struct_2(Struct_1(~var_0.a.a, select(select(!vec3<bool>(true, arg_3.x, arg_3.x), func_2(vec4<i32>(-1i, -32772i, 2147483647i, 1i), Struct_2(Struct_1(vec2<u32>(arg_1, arg_2), vec3<bool>(arg_3.x, false, true), var_0.a.b.yz)), u_input.b.x, var_0).a.b, false), !arg_3, select(var_0.a.b, func_2(vec4<i32>(1i, -1i, 2147483647i, 64147i), Struct_2(Struct_1(vec2<u32>(u_input.a, 61535u), var_0.a.b, vec2<bool>(arg_0.x, true))), 13577u, Struct_3(var_0.a, vec4<f32>(346f, var_0.b.x, 520f, -731f))).a.b, 49397u >= var_1)), arg_3.yx));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<vec2<u32>, 17>();
    let var_0 = func_6(arg_0.b, _wgslsmith_mult_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.b.x, 0u)) ^ 12361u, ~reverseBits(u_input.a), (515f > global1[_wgslsmith_index_u32(arg_0.a.x, 22u)]) & true), func_5(_wgslsmith_f_op_f32(-1197f + -1613f), !arg_0.c, func_2(vec4<i32>(-6090i, 12194i, -1i, -44918i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(15737u, 17u)], arg_0.b, vec2<bool>(arg_0.b.x, arg_0.c.x))), u_input.a, Struct_3(Struct_1(vec2<u32>(u_input.a, u_input.b.x), vec3<bool>(arg_0.c.x, arg_0.c.x, true), arg_0.b.yz), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 653f, 1759f, -578f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(1078u, 22u)]), vec3<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], 306f))) >> (u_input.b.x % 32u)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_0.a.x, 22u)]))) * global1[_wgslsmith_index_u32(countOneBits(~1u), 22u)]), !select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), !vec4<bool>(arg_0.b.x, arg_0.c.x, true, arg_0.b.x)), !vec4<bool>(any(vec3<bool>(arg_0.c.x, false, arg_0.b.x)), arg_0.c.x, global1[_wgslsmith_index_u32(arg_0.a.x, 22u)] <= 1000f, true), true), arg_0.b);
    global0 = array<vec2<u32>, 17>();
    let var_1 = var_0.a;
    global0 = array<vec2<u32>, 17>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 66733u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(0u, 17u)], u_input.b.zz)), 35369u), vec3<bool>(true, true, true), vec2<bool>(true, true)));
    let var_1 = any(vec2<bool>(any(vec4<bool>(!var_0, all(vec4<bool>(var_0, var_0, var_0, true)), true, true)), var_0));
    global1 = array<f32, 22>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 22u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13048u, 22u)]), !vec2<bool>(var_1, var_1), func_6(vec3<bool>(false, var_0, var_1), u_input.a, 35887u, vec3<bool>(var_1, var_0, var_0)), vec3<f32>(652f, -1137f, global1[_wgslsmith_index_u32(1u, 22u)])), 22u)]))));
    global0 = array<vec2<u32>, 17>();
    global1 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(23996i, 1i, 2990i, 79962i)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -163f)), func_5(-1559f, select(select(!vec2<bool>(true, var_0), vec2<bool>(true, true), func_2(vec4<i32>(0i, 0i, 0i, -2147483647i), Struct_2(Struct_1(vec2<u32>(80928u, u_input.a), vec3<bool>(true, var_1, true), vec2<bool>(true, false))), u_input.a, Struct_3(Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<bool>(true, true, false), vec2<bool>(var_1, var_1)), vec4<f32>(global1[_wgslsmith_index_u32(10931u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 794f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))).a.c), func_6(vec3<bool>(true, true, true), 41622u, _wgslsmith_div_u32(20268u, u_input.a), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, true))).a.b.xz, true), func_2(vec4<i32>(1i, abs(41032i), ~3603i, _wgslsmith_div_i32(-12057i, -42968i)), Struct_2(Struct_1(vec2<u32>(10226u, u_input.a), vec3<bool>(false, false, true), vec2<bool>(var_1, true))), 0u, Struct_3(Struct_1(vec2<u32>(76134u, 1u), vec3<bool>(false, true, var_0), vec2<bool>(var_1, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, global1[_wgslsmith_index_u32(4933u, 22u)], 889f, 1052f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 22u)], 893f) * 718f), _wgslsmith_f_op_f32(ceil(-339f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 22u)] + -475f))))));
}

