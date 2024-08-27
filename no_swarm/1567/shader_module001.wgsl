struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32;

var<private> global2: array<Struct_4, 5>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = vec3<bool>(!all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), (~(-57472i) | (16656i ^ (u_input.a.x >> (0u % 32u)))) <= -15924i, false);
    var var_1 = 1i;
    var var_2 = true & var_0.x;
    let var_3 = Struct_4(max(u_input.a.wxx, vec3<i32>(40758i, max(1i, global0.a.x), 0i ^ select(-2147483647i, 20677i, var_0.x))));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f * _wgslsmith_f_op_f32(f32(-1f) * -831f))), var_3.a.x), Struct_2(-608f, -1i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-151f))), ~0i), 14387i);
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec3<u32>(_wgslsmith_add_u32(global3.x, 0u), select(_wgslsmith_div_u32(global3.x, 1u), select(119677u, u_input.c.x, true), true) | select(global3.x & global3.x, global3.x, all(vec4<bool>(true, false, true, false))), 0u), u_input.b, all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))));
    var var_1 = ~global0.a.x;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1505f * _wgslsmith_f_op_f32(f32(-1f) * -1257f)), func_3());
    let var_3 = max(u_input.c.wyy, ~(~vec3<u32>(1u, 4294967295u, 14994u))) << ((vec3<u32>(var_0.x, abs(1u), ~4294967295u) << (~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.x, u_input.e, var_0.x), vec3<u32>(var_0.x, u_input.c.x, 12755u), select(u_input.c.xww, u_input.c.xxw, vec3<bool>(false, false, true))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = ~u_input.c.xww;
    return Struct_2(1483f, u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = func_2();
    var var_1 = ~(_wgslsmith_mult_u32(abs(0u) ^ (u_input.b.x & u_input.c.x), arg_0.d) << (abs(~_wgslsmith_div_u32(9141u, u_input.d.x)) % 32u));
    let var_2 = ~(~53805u);
    var_1 = ~(min(abs(var_2), 1905u) | 48837u);
    let var_3 = vec4<u32>(26218u >> (~_wgslsmith_div_u32(_wgslsmith_clamp_u32(global3.x, 24037u, arg_1.b.x), 13350u) % 32u), u_input.e, u_input.e, _wgslsmith_clamp_u32(32477u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global3.x, 0u), 15212u), ~4294967295u));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-(i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-936f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -300f))), 463f, _wgslsmith_f_op_f32(f32(-1f) * -1403f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1417f, 295f, -1225f, -546f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -261f, -109f))), ~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1194f) + _wgslsmith_div_f32(658f, -916f)), _wgslsmith_dot_vec2_u32(vec2<u32>(76750u, 15094u), _wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(global3.x, u_input.b.x)))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), (vec2<u32>(u_input.c.x, 1u) >> (u_input.d % vec2<u32>(32u))) & ~u_input.d, -1116f, ~u_input.e), ~firstLeadingBit(-23i), u_input.a)));
    global2 = array<Struct_4, 5>();
    global2 = array<Struct_4, 5>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), var_1.x, var_1.x, 817f), all(vec2<bool>(true, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1, var_1)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, 571f, var_1.x))))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 46148u, 66718u, u_input.e) & u_input.c, reverseBits(vec4<u32>(u_input.e, 1u, u_input.d.x, global3.x))), 33847u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(var_1.x, 310f)))), select(global3.x, abs(12538u), var_0 < global0.a.x) << (1u % 32u));
    let var_3 = i32(-1i) * -12142i;
    let var_4 = Struct_3(func_2(), func_2(), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * -343f)), 397f), u_input.a.x), max(-2147483647i, _wgslsmith_mult_i32(1i, -4016i & _wgslsmith_dot_vec4_i32(vec4<i32>(-17913i, var_3, -10234i, 1i), u_input.a))));
    let var_5 = vec3<u32>(~(~_wgslsmith_add_u32(1u, firstTrailingBit(1u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.e, global3.x)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, global3.x), var_2.b.x ^ 4294967295u)), ~(~(~4294967295u))), ~firstTrailingBit(_wgslsmith_div_u32(0u, ~58156u)));
    let var_6 = !all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)) && any(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(-var_4.d, 1i)), _wgslsmith_add_i32(abs(global0.a.x), -7333i & var_4.b.b)), -(-u_input.a | ~u_input.a) << (countOneBits(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global3.x, 0u, var_5.x, var_2.d)) >> (select(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 1u), vec4<u32>(1u, global3.x, var_5.x, var_5.x), vec4<bool>(var_6, var_6, var_6, true)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.a.wxx)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -576f, -694f) * var_1.wxz)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -961f, 130f))) - vec3<f32>(1235f, var_2.c, var_2.c)), var_1.wwz)))));
}

