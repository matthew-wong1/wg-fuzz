struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(314f, -1000f, -961f, 1836f, 515f, -791f, -1385f, 1921f, -650f, 429f, -263f, -442f, 1151f, 168f, -478f, -733f, 458f, 1517f);

var<private> global1: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = min(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, max(48793u, 0u), (u_input.b & u_input.b) << (~73371u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(11670u, u_input.b, arg_0.a.x), arg_0.a.wyx, arg_0.c), arg_0.c)), arg_0.a), vec4<u32>(u_input.b, arg_0.c.x & u_input.b, _wgslsmith_add_u32(2840u, ~(~12089u)), select(reverseBits(u_input.b), arg_0.c.x & 6311u, !arg_0.d.x) << ((firstLeadingBit(u_input.b) | _wgslsmith_mod_u32(4294967295u, 4294967295u)) % 32u)));
    var var_1 = arg_0;
    let var_2 = abs(-abs(~33760i));
    var var_3 = Struct_1(var_1.a, false, arg_0.a.wzx, !(!vec2<bool>(var_1.d.x || var_1.b, arg_0.d.x && true)));
    let var_4 = reverseBits(_wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, -1i, var_2), abs(vec3<i32>(8234i, var_2, u_input.a.x)))), vec3<i32>(var_2, -77061i, var_2)));
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~0u, ~33955u, select(1u, var_1.a.x, var_1.d.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.x, 6030u), arg_0.a.zwy), u_input.b, max(var_3.a.x, var_3.a.x))) >> (~vec3<u32>(~43000u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 18118u), var_1.a.wx), ~0u) % vec3<u32>(32u)), ~abs(reverseBits(abs(vec3<u32>(var_3.c.x, var_1.c.x, 21690u)))), vec3<u32>(~1u, _wgslsmith_sub_u32(var_0.x, var_1.c.x >> (countOneBits(u_input.b) % 32u)), 10816u));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), countOneBits(arg_1.a.zx)) << (min(~arg_1.a.wx, countOneBits(vec2<u32>(0u, u_input.b))) % vec2<u32>(32u)), ~(~arg_1.a.yx));
    global1 = _wgslsmith_f_op_f32(-1003f * arg_0.x);
    global1 = 830f;
    var_0 = ~_wgslsmith_div_u32(~1u, arg_1.a.x);
    var var_1 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + global0[_wgslsmith_index_u32(20521u, 18u)])), -410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1531f)))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(296f, global0[_wgslsmith_index_u32(42748u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)])))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 18u)], 1116f, 185f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(46965u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)], 810f) + vec3<f32>(-380f, 1000f, global0[_wgslsmith_index_u32(u_input.b, 18u)])), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 18u)], -1000f, -547f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(arg_0, 18u)], 860f)), select(true, false, true))))) - _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1803f, global0[_wgslsmith_index_u32(27230u, 18u)], global0[_wgslsmith_index_u32(arg_0, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)]) * vec4<f32>(-2372f, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)])))), Struct_1(firstTrailingBit(vec4<u32>(0u, 125099u, arg_0, 0u) ^ vec4<u32>(0u, 60982u, u_input.b, 0u)), true, func_3(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), true, vec3<u32>(4294967295u, u_input.b, arg_0), vec2<bool>(false, false))), vec2<bool>(true, any(vec2<bool>(false, true)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 18u)], var_0.x, global0[_wgslsmith_index_u32(25198u, 18u)]), var_0) - _wgslsmith_f_op_vec3_f32(abs(var_0))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 1406f, -743f), var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(759f, -395f, 282f), var_0) + _wgslsmith_f_op_vec3_f32(max(var_0, var_0)))))));
    var var_2 = countOneBits(~(~abs(u_input.a) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(0u, arg_0)), vec2<u32>(1u, 38255u)) % vec2<u32>(32u))));
    var_2 = _wgslsmith_div_vec2_i32(u_input.a, ~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 43080i), u_input.a) ^ vec2<i32>(var_2.x, var_2.x), -(vec2<i32>(-39633i, 40952i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
    global0 = array<f32, 18>();
    return any(select(vec3<bool>(true, select(false, false, false) && false, all(vec4<bool>(true, false, false, false)) & all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), any(vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, false)), var_0.x > -206f, var_1.x < global0[_wgslsmith_index_u32(0u, 18u)]))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    var var_0 = vec4<f32>(-320f, global0[_wgslsmith_index_u32(7372u, 18u)], 1174f, -265f);
    global0 = array<f32, 18>();
    let var_1 = Struct_1(vec4<u32>(u_input.b, u_input.b ^ countOneBits(~arg_2.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(arg_1, 0u) ^ ~arg_2.x), ~(~arg_2.x)), true, arg_2.yzy, vec2<bool>(true || any(vec4<bool>(true, true, true, true)), any(vec3<bool>(arg_2.x == 91497u, true, func_2(25058u)))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -192f, global0[_wgslsmith_index_u32(arg_2.x, 18u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -742f, 349f, global0[_wgslsmith_index_u32(var_1.c.x, 18u)]))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1543f, -1688f, arg_0, global0[_wgslsmith_index_u32(arg_1, 18u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 18u)], arg_0, var_0.x, arg_0) * vec4<f32>(-1834f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-911f, var_0.x, -525f, var_0.x)), vec4<bool>(var_1.b, var_1.d.x, false, true)))))));
    let var_2 = var_1;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.b, ~1u | _wgslsmith_mod_u32(1u, u_input.b)), max(~(~1u) | func_1(1440f, 0u, ~vec4<u32>(u_input.b, 4294967295u, 44661u, 4294967295u)), ~_wgslsmith_add_u32(func_1(global0[_wgslsmith_index_u32(u_input.b, 18u)], u_input.b, vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(4294967295u, u_input.b, 1u)))));
    var_0 = 1u;
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    let var_1 = vec4<u32>(~abs(u_input.b), ~u_input.b, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 18u)])), u_input.b, ~(vec4<u32>(u_input.b, 72344u, 4294967295u, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u))), u_input.b) ^ ~max(vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b, ~38684u, ~u_input.b), ~firstTrailingBit(vec4<u32>(0u, 36548u, u_input.b, 58739u)));
    global0 = array<f32, 18>();
    var var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i) | u_input.a, u_input.a)), var_1.xwy, 1i);
}

