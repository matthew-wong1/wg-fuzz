struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, false, true, false, false, false, false, false, true, false, false, true, false, true, false, false, false, true, true, false, false, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec4<u32> {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = ~(-34459i);
    let var_1 = Struct_3(2147483647i, Struct_1(-421f, vec2<u32>(0u, ~u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.zyx), u_input.a.x, ~22196u), u_input.a.zzx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 - vec4<f32>(-1122f, arg_3.x, -361f, arg_3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_2.x, 2232f))) + arg_3)), ~(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), u_input.a.x) & 1u), any(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_0, true, false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(3001u, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(arg_0, true, arg_0, false)), select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(56755u, 25u)], global0[_wgslsmith_index_u32(13500u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), vec4<bool>(true, false, false, false)), true), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(3844u, 25u)], arg_0, arg_0), vec4<bool>(true, true, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false, true, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(40753u, 25u)], true, true, arg_0), vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), arg_0), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false, arg_0), u_input.a.x != u_input.a.x))));
    return select(u_input.a, u_input.a, select(31952i != _wgslsmith_add_i32(var_0, arg_1.x), false, !global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 25u)]));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_4(arg_2, Struct_1(-1555f, ~arg_2.d.c.xy, countOneBits(~func_3(true, arg_2.c.xx, arg_2.d.e, vec4<f32>(arg_2.d.e.x, 1532f, -1593f, 534f))), reverseBits(vec3<u32>(24625u, 55160u, arg_2.d.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.d.e.x + arg_1.x), _wgslsmith_f_op_f32(arg_2.d.e.x + -201f), _wgslsmith_f_op_f32(821f + -1466f), _wgslsmith_f_op_f32(-1061f - -833f)))), vec3<bool>(true, any(vec3<bool>(true, arg_2.a | global0[_wgslsmith_index_u32(18204u, 25u)], true)), false));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_1 = arg_2;
    var_0 = Struct_4(var_0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))), var_1.d.c.yx, _wgslsmith_div_vec4_u32(var_1.d.c | _wgslsmith_add_vec4_u32(vec4<u32>(19900u, u_input.a.x, 2806u, 4294967295u), vec4<u32>(0u, 3404u, u_input.a.x, 0u)), _wgslsmith_add_vec4_u32(var_0.b.c, vec4<u32>(u_input.a.x, 27283u, u_input.a.x, var_0.a.d.c.x)) >> ((vec4<u32>(4294967295u, arg_2.d.b.x, arg_2.d.c.x, 4294967295u) << (vec4<u32>(0u, 46119u, 0u, arg_2.d.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(_wgslsmith_sub_vec3_u32(~var_0.a.d.c.xww, arg_2.d.d)), arg_2.d.e), select(var_0.c, var_0.c, select(select(!var_0.c, select(vec3<bool>(var_0.a.a, false, false), var_0.c, true), !var_0.c.x), select(!var_0.c, select(var_0.c, vec3<bool>(true, true, arg_2.a), false), arg_2.a || false), vec3<bool>(var_0.a.a, !var_0.a.a, true))));
    return _wgslsmith_add_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.b.x, var_0.b.c.x), u_input.a.xx) & vec2<u32>(9105u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.d.d.x, var_1.d.c.x), vec3<u32>(4294967295u, arg_2.d.b.x, var_0.b.b.x)))), var_0.b.d.yy);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<bool> {
    global0 = array<bool, 25>();
    let var_0 = 17783i >> (_wgslsmith_add_u32(1u, arg_1) % 32u);
    let var_1 = u_input.a.yz;
    let var_2 = Struct_1(389f, _wgslsmith_add_vec2_u32(reverseBits(abs(var_1)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zw, vec2<u32>(0u, 4294967295u)), func_2(1i, vec2<f32>(854f, 1090f), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], vec4<f32>(-1273f, -100f, 785f, 784f), vec4<i32>(-67721i, -23682i, var_0, var_0), Struct_1(853f, vec2<u32>(arg_1, u_input.a.x), u_input.a, u_input.a.yzw, vec4<f32>(-401f, 1000f, -2363f, 500f)))))) >> (var_1 % vec2<u32>(32u)), u_input.a, ~(~(vec3<u32>(19530u, 390u, arg_1) << (u_input.a.wyy % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(412f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-154f, 537f))), -1000f, -1305f)));
    global0 = array<bool, 25>();
    return vec3<bool>(arg_0, all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 25u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(27527u, 25u)]), vec2<bool>(arg_0, true)), vec2<bool>(global0[_wgslsmith_index_u32(103062u, 25u)], arg_0), global0[_wgslsmith_index_u32(~var_1.x, 25u)])) && global0[_wgslsmith_index_u32(firstLeadingBit(~var_1.x), 25u)], global0[_wgslsmith_index_u32(46919u, 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(select(countOneBits(select(vec3<i32>(u_input.c, u_input.c, 43714i) ^ vec3<i32>(-8300i, u_input.b, u_input.b), -vec3<i32>(u_input.b, 16001i, 29871i), !global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), vec3<i32>(~abs(u_input.b), firstTrailingBit(1i), -6679i), func_1(any(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(u_input.a.x | 76992u, 7396u ^ u_input.a.x))));
    var var_1 = !global0[_wgslsmith_index_u32(abs(u_input.a.x), 25u)];
    var_1 = global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 25u)];
    let var_2 = Struct_4(Struct_2(select(true, global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 25u)], !global0[_wgslsmith_index_u32(1u, 25u)]) && global0[_wgslsmith_index_u32(~u_input.a.x << (min(4294967295u, u_input.a.x) % 32u), 25u)], vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-549f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -536f), -1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -159f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1782f)) - -1708f)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0.x, -10441i, u_input.b, u_input.b), vec4<i32>(var_0.x, 0i, u_input.b, u_input.b), vec4<bool>(false, true, true, false)), ~vec4<i32>(1i, var_0.x, -15151i, var_0.x)) << (u_input.a % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1134f)))), ~firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(min(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a), (vec3<u32>(u_input.a.x, u_input.a.x, 8948u) ^ u_input.a.www) >> (vec3<u32>(u_input.a.x, 4294967295u, 0u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(549f, -1121f, 168f, -364f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1129f, _wgslsmith_f_op_f32(f32(-1f) * -814f)))), u_input.a.zy, ~vec4<u32>(~39454u, firstTrailingBit(u_input.a.x), u_input.a.x, 1u), vec3<u32>(~49127u, ~u_input.a.x & ~36150u, _wgslsmith_div_u32(4294967295u, ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1988f, 818f, 524f, 853f)))), func_1(all(vec4<bool>(!global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(~u_input.a.x, 25u)], select(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false, false), 3049u >= u_input.a.x)), u_input.a.x << ((_wgslsmith_clamp_u32(0u, 0u, 20876u) & u_input.a.x) % 32u)));
    global0 = array<bool, 25>();
    var var_3 = var_2.a;
    var_1 = false;
    let var_4 = ~26677u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d.e.xzx);
}

