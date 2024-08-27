struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-178f, -288f, 1020f, -1596f, 755f, 734f, 216f, 1372f, 967f, -950f, -259f, -886f, -399f, -1062f, 1000f, 1000f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = Struct_5(arg_0.a, arg_0.a);
    let var_1 = arg_0.e;
    let var_2 = u_input.a.x;
    let var_3 = Struct_1(select(vec4<bool>(false & !var_0.b.a.x, any(!vec3<bool>(true, true, arg_0.e.a.x)), arg_0.d, all(var_1.a)), vec4<bool>(all(!vec3<bool>(var_0.b.a.x, arg_0.d, false)), arg_0.b < _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c.x, 16u)])), false, var_0.b.a.x), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, var_0.b.a.x, arg_0.a.a.x), vec4<bool>(true, var_0.a.a.x, false, false)), vec4<bool>(var_1.a.x, true, var_1.a.x, arg_0.d), arg_0.d)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-132f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 16u)])))), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 16u)] * arg_0.c.x)) + global0[_wgslsmith_index_u32(~min(61365u, 0u), 16u)])), true);
    global0 = array<f32, 16>();
    return arg_0.e.a.xz;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(select(vec3<bool>(any(func_3(Struct_3(Struct_2(vec3<bool>(true, false, arg_1.a.a.x), arg_1.a.b), 1000f, arg_1.c, arg_1.d, arg_1.a))), true, any(vec2<bool>(arg_1.a.a.x, arg_1.a.a.x))), arg_1.e.a, false), arg_1.a.b);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(37496u, 30324u, u_input.c.x, 4294967295u) ^ vec4<u32>(59891u, 16760u, 11235u, u_input.c.x)) & ~(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x) & vec2<u32>(1u, u_input.c.x)), ~u_input.c.x, u_input.c.x, _wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~u_input.c.x)));
    let var_1 = func_2(~1306i, Struct_3(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))), global0[_wgslsmith_index_u32(~u_input.c.x, 16u)], !func_3(Struct_3(arg_3, 223f, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(67326u, 16u)]), false, Struct_2(vec3<bool>(false, arg_3.a.x, false), vec3<i32>(-16468i, u_input.b, -25944i)))).x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 2196f, 477f))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(32626u, 16u)], 378f, 1582f), vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(37683u, 16u)])), vec3<f32>(global0[_wgslsmith_index_u32(37253u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))), arg_1, Struct_2(select(!vec3<bool>(false, true, arg_3.a.x), !arg_0.a, select(vec3<bool>(arg_0.a.x, arg_2, false), vec3<bool>(arg_3.a.x, arg_0.a.x, true), vec3<bool>(true, true, arg_1))), ~arg_3.b | vec3<i32>(18530i, -17i, -3258i))));
    global0 = array<f32, 16>();
    var var_2 = arg_3.a.x;
    var_2 = !(true & (arg_0.a.x || true));
    return _wgslsmith_dot_vec3_i32(abs(u_input.a.ywx), select(~vec3<i32>(~43274i, ~(-49858i), -16643i << (u_input.c.x % 32u)), _wgslsmith_mod_vec3_i32(var_1.b, var_1.b), func_2(~var_1.b.x, Struct_3(var_1, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 16u)], vec3<f32>(382f, -183f, -1445f), arg_1, Struct_2(arg_0.a, vec3<i32>(arg_0.b.x, 2147483647i, 15456i)))).a));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<f32, 16>();
    var var_0 = vec4<i32>(_wgslsmith_add_i32(~(-74395i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b, max(arg_0.x, u_input.b), i32(-1i) * -29847i), func_4(Struct_2(vec3<bool>(true, true, false), u_input.a.yyx), any(vec4<bool>(true, true, false, true)), true, func_2(u_input.d, Struct_3(Struct_2(vec3<bool>(false, false, false), vec3<i32>(35003i, u_input.a.x, -2147483647i)), 752f, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 277f, global0[_wgslsmith_index_u32(27407u, 16u)]), false, Struct_2(vec3<bool>(true, true, true), vec3<i32>(arg_0.x, u_input.a.x, 9174i))))))), func_2(-6689i, Struct_3(Struct_2(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(u_input.a.wxw, u_input.a.xyz, vec3<bool>(true, true, false))), 1458f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(542f, 1013f, 332f)))), true, func_2(~arg_0.x, Struct_3(Struct_2(vec3<bool>(true, false, true), vec3<i32>(arg_0.x, -2147483647i, -14621i)), 1000f, vec3<f32>(global0[_wgslsmith_index_u32(58139u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 1504f), false, Struct_2(vec3<bool>(false, false, false), arg_0))))).b.x, -min(-abs(arg_0.x), 1i), max(-9470i, _wgslsmith_sub_i32(abs(9644i << (u_input.c.x % 32u)), -1i)));
    var var_1 = u_input.c.x;
    var var_2 = u_input.c.x | _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x) ^ _wgslsmith_mult_u32(u_input.c.x, 4294967295u), 64837u), _wgslsmith_mod_u32(~u_input.c.x >> (_wgslsmith_clamp_u32(1u, 8361u, 4294967295u) % 32u), _wgslsmith_div_u32(u_input.c.x, u_input.c.x ^ 0u)));
    var var_3 = Struct_3(Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), u_input.a.xwy), global0[_wgslsmith_index_u32(~u_input.c.x, 16u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1551f, 1545f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<f32>(-318f, global0[_wgslsmith_index_u32(28479u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -916f, -256f), vec3<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, 1000f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<f32>(929f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<bool>(true, true, false))))))), true, func_2(~u_input.d | -abs(var_0.x), Struct_3(func_2(-u_input.d, Struct_3(Struct_2(vec3<bool>(true, false, true), var_0.zyx), 153f, vec3<f32>(2555f, 1000f, 1550f), false, Struct_2(vec3<bool>(true, true, true), var_0.xzw))), global0[_wgslsmith_index_u32(2605u, 16u)], _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1439f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)])))), true, Struct_2(vec3<bool>(true, true, true), u_input.a.xyx))));
    return Struct_1(!(!select(vec4<bool>(var_3.a.a.x, var_3.e.a.x, var_3.d, true), select(vec4<bool>(false, false, var_3.d, var_3.a.a.x), vec4<bool>(true, var_3.d, var_3.e.a.x, false), vec4<bool>(var_3.a.a.x, true, false, var_3.a.a.x)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], var_3.c.x, -1523f) + vec3<f32>(var_3.c.x, global0[_wgslsmith_index_u32(69784u, 16u)], 597f))))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(322u, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 39105u, u_input.c.x), vec3<u32>(88627u, 22453u, u_input.c.x))) < u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), -u_input.a.wzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))) * 1042f) + global0[_wgslsmith_index_u32(~u_input.c.x, 16u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(0u, 16u)], -972f, 570f)))), vec3<f32>(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 16u)], 1139f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))))), false, Struct_2(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), u_input.a.wwy));
    let var_1 = func_1(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_0.e.b.x, u_input.a.x) << (_wgslsmith_sub_u32(52943u, u_input.c.x) % 32u), _wgslsmith_mod_i32(i32(-1i) * -8377i, i32(-1i) * -8175i), ~0i & reverseBits(u_input.a.x)), u_input.a.zxw));
    global0 = array<f32, 16>();
    var_0 = Struct_3(var_0.e, var_0.b, vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(651f, -649f) + _wgslsmith_f_op_f32(max(var_0.b, var_1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -137f), 215f), any(var_1.a.yw), func_2(select(_wgslsmith_add_i32(-var_0.e.b.x, -2147483647i << (0u % 32u)), var_0.e.b.x, _wgslsmith_f_op_f32(exp2(var_0.c.x)) >= _wgslsmith_f_op_f32(ceil(-1226f))), Struct_3(Struct_2(var_1.a.wwy, abs(vec3<i32>(-32994i, -4883i, -2147483647i))), _wgslsmith_f_op_f32(round(-1587f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(730f, var_1.b.x, 1480f))), !(!var_1.a.x), Struct_2(func_1(var_0.a.b).a.wzy, _wgslsmith_mod_vec3_i32(vec3<i32>(-12857i, -1i, 0i), var_0.a.b)))));
    var var_2 = Struct_1(var_1.a, vec3<f32>(-137f, -857f, var_0.c.x), true);
    let var_3 = Struct_5(var_0.e, func_2(u_input.b, Struct_3(func_2(~1i, Struct_3(var_0.e, -1000f, vec3<f32>(var_0.c.x, 191f, 227f), true, var_0.a)), _wgslsmith_f_op_f32(-var_1.b.x), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], _wgslsmith_div_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -104f)), true, var_0.e)));
    var var_4 = !all(var_0.e.a);
    var_2 = func_1(vec3<i32>(-firstTrailingBit(func_4(var_0.e, var_2.c, false, var_0.a)), firstTrailingBit(1i << (reverseBits(0u) % 32u)), u_input.d));
    var_0 = Struct_3(Struct_2(select(select(var_3.b.a, vec3<bool>(true, true, true), var_2.c & false), var_0.e.a, _wgslsmith_f_op_f32(var_2.b.x + 689f) < _wgslsmith_f_op_f32(floor(-773f))), min(vec3<i32>(var_3.a.b.x, _wgslsmith_add_i32(u_input.b, u_input.d), 2147483647i), abs(var_3.b.b))), var_0.b, _wgslsmith_div_vec3_f32(var_2.b, _wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(trunc(-183f)), _wgslsmith_f_op_f32(499f * -306f)))), var_2.a.x, Struct_2(!select(vec3<bool>(var_1.c, var_3.b.a.x, var_2.c), !var_3.a.a, true), var_0.a.b >> (~_wgslsmith_div_vec3_u32(vec3<u32>(49773u, 69123u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 56585u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 11078u, 1u, u_input.c.x) & vec4<u32>(35011u, 4294967295u, u_input.c.x, 51485u), ~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x) << (firstLeadingBit(vec4<u32>(53453u, 37568u, 7934u, 60764u)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 41527u), _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 110820u), vec3<u32>(113498u, 0u, u_input.c.x)) >> (_wgslsmith_clamp_u32(18345u, u_input.c.x, 0u) % 32u), ~u_input.c.x, ~select(4294967295u, u_input.c.x, var_1.a.x))), -154f, vec2<u32>(~_wgslsmith_add_u32(firstLeadingBit(u_input.c.x), ~u_input.c.x), ~u_input.c.x), -min(-func_2(u_input.d, Struct_3(var_3.b, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], vec3<f32>(var_2.b.x, global0[_wgslsmith_index_u32(1u, 16u)], 1704f), false, var_0.a)).b, _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(var_3.b.b.x, -6285i, var_0.e.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 1i, var_3.b.b.x), vec3<i32>(6528i, 19705i, 1i)), abs(vec3<i32>(var_3.b.b.x, 1i, -13122i)))));
}

