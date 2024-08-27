struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 28>;

var<private> global3: array<i32, 10> = array<i32, 10>(-1i, -48101i, 0i, 1i, -1i, -1i, -1i, -47234i, 32222i, 1i);

var<private> global4: array<bool, 3>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> vec2<f32> {
    global2 = array<vec4<i32>, 28>();
    global0 = arg_0;
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(var_2.c.zx * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.c.xx, var_2.c.xx)) - _wgslsmith_f_op_vec2_f32(-arg_1.zx)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1064f, global0.c.x), -748f))) + _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.a | 3293u, !global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, -873f, global0.c.x, -723f))), vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(min(226f, 1285f)), _wgslsmith_f_op_f32(-global0.c.x)), u_input.a.x)))));
    global1 = 0u;
    var var_1 = vec2<f32>(796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) - _wgslsmith_f_op_f32(select(arg_1.c.x, var_0.x, any(!vec2<bool>(arg_1.b, global4[_wgslsmith_index_u32(global0.a, 3u)]))))));
    let var_2 = Struct_1(u_input.a.x, true || !all(!vec3<bool>(true, arg_1.b, global0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1854f), _wgslsmith_f_op_f32(select(-181f, arg_1.c.x, -37744i != arg_0.x)), 394f, -1192f)));
    global0 = Struct_1(~(~max(arg_1.a, arg_1.a) | ~26177u), !(!global4[_wgslsmith_index_u32(~max(u_input.a.x, 1u), 3u)]), global0.c);
    return Struct_1(var_2.a, !var_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1327f, 1000f, global0.c.x, var_2.c.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, 399f, var_0.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_0;
    global0 = arg_0;
    global1 = arg_2.x;
    global0 = func_2(vec3<i32>(11519i, global3[_wgslsmith_index_u32(~4576u, 10u)], ~(-_wgslsmith_add_i32(global3[_wgslsmith_index_u32(9630u, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)]))), func_2(abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(global3[_wgslsmith_index_u32(arg_2.x, 10u)], 0i, 1i), vec3<i32>(38238i, 0i, -36457i) & vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], 1i, 32054i))), Struct_1(abs(1u) | _wgslsmith_mult_u32(arg_2.x, arg_2.x), true, vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), -573f, _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), 441f))));
    global4 = array<bool, 3>();
    return -211f;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(func_4(func_2(vec3<i32>(-1i & arg_1.x, min(4308i, -1i), -2147483647i), Struct_1(global0.a >> (4294967295u % 32u), true, _wgslsmith_f_op_vec4_f32(-global0.c))), !vec2<bool>(all(vec2<bool>(false, arg_0)), true), vec4<u32>(~(~u_input.a.x), ~(~8729u), _wgslsmith_mod_u32(~1u, 1u), firstLeadingBit(32418u)))));
    var var_1 = vec3<i32>(-1i) * -(~(-arg_1.zwy));
    global0 = func_2(vec3<i32>(_wgslsmith_sub_i32(~var_1.x, -(global3[_wgslsmith_index_u32(u_input.a.x, 10u)] & -16266i)), global3[_wgslsmith_index_u32(reverseBits(37816u), 10u)] << (u_input.a.x % 32u), 2147483647i), Struct_1(~_wgslsmith_dot_vec3_u32(~u_input.a.xyz, vec3<u32>(global0.a, global0.a, 53600u) >> (vec3<u32>(0u, global0.a, global0.a) % vec3<u32>(32u))), !(!(!arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-235f, 1000f))), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - global0.c.x)), _wgslsmith_f_op_f32(max(-132f, global0.c.x)))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x << (u_input.a.x % 32u), ~11059u, ~1u)), func_2(max(min(-vec3<i32>(var_1.x, arg_1.x, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), countOneBits(vec3<i32>(var_1.x, global3[_wgslsmith_index_u32(global0.a, 10u)], -1i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.yzz, arg_1.yyy), vec3<i32>(var_1.x, arg_1.x, -42777i))), func_2(~vec3<i32>(var_1.x, arg_1.x, var_1.x), Struct_1(4294967295u, any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1132f, 326f, 1374f, -636f) - vec4<f32>(-825f, global0.c.x, 1712f, global0.c.x))))).b, _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.c.x, global0.c.x, 782f, global0.c.x)) - _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global0.c.x, 301f, global0.c.x, 1250f))), global0.c))));
    global1 = _wgslsmith_mult_u32(1u, var_2.a);
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, abs(52594u | global0.a)), firstLeadingBit(func_2(arg_1.yzy, var_2).a ^ 0u)), !(!any(select(vec2<bool>(arg_0, global4[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<bool>(global4[_wgslsmith_index_u32(var_2.a, 3u)], var_2.b), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_2.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, -599f), vec4<f32>(-1122f, var_2.c.x, -1000f, global0.c.x)))) * var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xw, min(reverseBits(vec2<u32>(4294967295u, global0.a)), _wgslsmith_clamp_vec2_u32(u_input.a.yz, vec2<u32>(76211u, 16751u), u_input.a.zx))), 3u)], ~abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-10765i, -1i, global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec4<i32>(global3[_wgslsmith_index_u32(72514u, 10u)], 24268i, -21665i, global3[_wgslsmith_index_u32(global0.a, 10u)]))));
    global2 = array<vec4<i32>, 28>();
    global4 = array<bool, 3>();
    var var_1 = func_1(true, global2[_wgslsmith_index_u32(func_2(select(_wgslsmith_sub_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(23806u, 10u)], global3[_wgslsmith_index_u32(14855u, 10u)], -1i), select(vec3<i32>(0i, -1i, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 2147483647i, -2147483647i), true)), vec3<i32>(global3[_wgslsmith_index_u32(33711u, 10u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 10u)], 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 348i, global3[_wgslsmith_index_u32(u_input.a.x, 10u)])), -15994i), select(!vec3<bool>(global4[_wgslsmith_index_u32(global0.a, 3u)], var_0.b, true), vec3<bool>(var_0.b, global4[_wgslsmith_index_u32(var_0.a, 3u)], global0.b), var_0.b | false)), func_1(global4[_wgslsmith_index_u32(func_1(global4[_wgslsmith_index_u32(0u, 3u)], vec4<i32>(global3[_wgslsmith_index_u32(0u, 10u)], 54737i, global3[_wgslsmith_index_u32(106038u, 10u)], -3823i)).a ^ global0.a, 3u)], ~vec4<i32>(global3[_wgslsmith_index_u32(global0.a, 10u)], global3[_wgslsmith_index_u32(global0.a, 10u)], 17632i, 6839i))).a, 28u)]);
    global1 = var_0.a;
    global1 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

