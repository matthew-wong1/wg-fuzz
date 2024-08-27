struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-81345i, -1i, 1i, i32(-2147483648)), vec4<i32>(9599i, 0i, 0i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -4368i, 2607i), vec4<i32>(-10621i, 2147483647i, 39690i, 9351i), vec4<i32>(-24330i, -21791i, 24468i, -1i), vec4<i32>(2147483647i, 2147483647i, -104301i, -1i), vec4<i32>(-1i, -48459i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 15031i, 3111i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 0i, -22473i), vec4<i32>(24727i, 8887i, -37877i, 6975i), vec4<i32>(-1i, -36046i, 1i, -4111i), vec4<i32>(-15124i, -8765i, 2147483647i, 15714i), vec4<i32>(0i, -1i, 41256i, 670i), vec4<i32>(-1i, 0i, -1i, 42684i), vec4<i32>(-52019i, 44130i, -1i, i32(-2147483648)));

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    let var_0 = vec4<i32>(abs(1i), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -22904i, u_input.a), vec3<i32>(global1.b.a, 71597i, u_input.a) >> (global1.b.c.xzy % vec3<u32>(32u))) ^ arg_1.b), ~32142i, reverseBits(global1.c.a));
    global1 = arg_2;
    var var_1 = var_0.yzx;
    var var_2 = 643f;
    var var_3 = abs(-(~u_input.a));
    return 1i << (u_input.b.x % 32u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_2(~(-49974i), global1.c, Struct_1(max(-1i, select(global1.a, -31201i, true)), global1.c.b, select(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.b.c, global1.c.c, global1.b.c), _wgslsmith_add_vec4_u32(vec4<u32>(global1.c.b, u_input.b.x, u_input.b.x, u_input.b.x), global1.c.c)), ~vec4<u32>(1u, arg_0.x, global1.c.b, u_input.b.x), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))));
    var var_1 = Struct_3(726f, i32(-1i) * -4482i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1084f, 438f, true))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_1), global1.b.b == 1u)), arg_1) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-618f - 1272f), arg_2)))), ((min(var_0.c.a, 13967i) >= global1.a) & false) | !all(vec3<bool>(true, true, true)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(99231u, arg_0.x, arg_0.x, u_input.b.x), vec4<u32>(1u, 1u, u_input.b.x, global1.c.c.x), _wgslsmith_sub_vec4_u32(var_0.b.c, vec4<u32>(4294967295u, 512u, arg_0.x, u_input.b.x))) | global1.c.c));
    var_1 = Struct_3(_wgslsmith_f_op_f32(select(1308f, arg_3, true || all(select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, true), var_1.d)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -2147483647i), ~(-var_0.b.a & var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_1.a * arg_2), _wgslsmith_f_op_f32(f32(-1f) * -653f), arg_2))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_1.c))))))), var_1.d, abs(countOneBits(vec4<u32>(_wgslsmith_mult_u32(41822u, 24691u), 0u, 67594u, global1.c.b))));
    global0 = array<vec4<i32>, 15>();
    var_0 = Struct_2(func_2(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), Struct_3(arg_3, -1i, var_1.c, all(select(vec4<bool>(var_1.d, var_1.d, true, var_1.d), vec4<bool>(var_1.d, true, true, var_1.d), false)), min(vec4<u32>(1u, 19118u, 1u, 4294967295u) & var_1.e, max(var_1.e, global1.b.c))), Struct_2(u_input.a, Struct_1(1i, 4294967295u, var_0.b.c), var_0.b)), global1.b, global1.c);
    return 7696u;
}

fn func_1() -> Struct_2 {
    let var_0 = 1947f;
    let var_1 = ~(_wgslsmith_sub_i32(u_input.a, min(func_2(false, Struct_3(-279f, u_input.a, vec3<f32>(var_0, 1000f, var_0), false, vec4<u32>(global1.b.b, u_input.b.x, 24082u, 4294967295u)), Struct_2(u_input.a, global1.c, global1.b)), min(u_input.a, -24385i))) ^ global1.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(280f, var_0, var_0, 1269f)))))), vec4<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1259f, -1343f)))), -618f, _wgslsmith_f_op_f32(411f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_0))), 372f), true));
    var var_3 = Struct_4(firstTrailingBit((global0[_wgslsmith_index_u32(func_3(global1.b.c.wzy, -236f, var_2.x, var_2.x), 15u)] ^ _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(57490u, 15u)])) & vec4<i32>(-22320i, var_1 >> (global1.b.c.x % 32u), max(u_input.a, global1.c.a), 40790i)), 35699u, Struct_2(abs(u_input.a), global1.b, Struct_1(~(-7734i), ~1u, _wgslsmith_mult_vec4_u32(global1.c.c, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 44659u, global1.b.c.x), global1.b.c)))));
    global0 = array<vec4<i32>, 15>();
    return var_3.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = vec2<i32>(~(~firstTrailingBit(~global1.b.a)), -1i);
    var_0 = vec2<i32>(708i, u_input.a);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-673f, -736f)), _wgslsmith_f_op_f32(f32(-1f) * -1466f)))))), global1.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-540f, 831f, 1416f)), vec3<f32>(-1672f, 1164f, 1008f))))), arg_0.x, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(abs(global1.b.c), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), _wgslsmith_mult_u32(4294967295u, global1.b.c.x), 0u, ~u_input.b.x)), arg_1.b.c));
    var var_2 = arg_1.b.c.x;
    global0 = array<vec4<i32>, 15>();
    return vec2<i32>(_wgslsmith_mult_i32(37714i, max(~1810i, -(~2178i))), u_input.a);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))));
    global0 = array<vec4<i32>, 15>();
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b.x >> (_wgslsmith_clamp_u32(20979u, ~(~(global1.c.c.x >> (52906u % 32u))), 4294967295u) % 32u), 15u)];
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, -153f, _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(f32(-1f) * -883f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(select(-249f, 1118f, false)), _wgslsmith_div_f32(373f, 833f), _wgslsmith_f_op_f32(abs(729f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(274f, 684f, 901f, -780f) * vec4<f32>(391f, 1710f, 972f, -296f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, -925f, 366f, -2215f) - vec4<f32>(-836f, 1011f, -1718f, 730f))), vec4<f32>(_wgslsmith_f_op_f32(549f + 286f), 1508f, 824f, _wgslsmith_div_f32(1817f, 685f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, -169f, -195f, -1622f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(314f, 863f, -1392f, -1319f), vec4<f32>(775f, 726f, 246f, -820f), vec4<bool>(true, false, var_0.x, false)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1789f, -1331f, 602f, 707f), vec4<f32>(1468f, -1364f, 543f, 1323f)))))));
    let var_3 = u_input.b.x;
    return select(arg_1.x ^ _wgslsmith_dot_vec2_i32(var_1.wx, var_1.wx ^ vec2<i32>(u_input.a, arg_1.x)), -1i, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global1.c.c.zzy;
    global0 = array<vec4<i32>, 15>();
    var var_1 = Struct_3(1000f, func_5(_wgslsmith_mod_vec2_i32(vec2<i32>(~global1.a, ~u_input.a), func_4(vec3<bool>(true, true, true), func_1())), vec2<i32>(1i, _wgslsmith_mod_i32(u_input.a, global1.c.a)) >> (countOneBits(max(var_0.zy, var_0.yy)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -1579f, -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(312f, -425f, -1954f))))))), any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false), global1.c.b < 39246u), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, _wgslsmith_mult_u32(global1.b.c.x, u_input.b.x), 18078u >> (u_input.b.x % 32u), ~0u)), vec4<u32>(var_0.x, ~50011u, 4294967295u, func_3(vec3<u32>(var_0.x, 0u, u_input.b.x) >> (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(1098f)), _wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_div_f32(880f, 630f)))));
    global1 = func_1();
    var var_2 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.a, 1751f);
}

