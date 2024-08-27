struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec3<i32> = vec3<i32>(-11695i, 11046i, 0i);

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = Struct_2(!global0.a, global0.e.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(global0.d, vec2<u32>(35626u, arg_2), vec2<u32>(arg_2, 4983u)), global0.d) > 1u, vec2<u32>(~(9980u ^ (arg_2 | 6528u)), _wgslsmith_clamp_u32(0u << ((global0.d.x << (global0.d.x % 32u)) % 32u), 0u, ~global0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.e)) + arg_1.d));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * -1229f));
    global2 = _wgslsmith_div_vec3_i32(min(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.a.x, global2.x)), abs(u_input.a << (vec3<u32>(global0.d.x, 1u, arg_2) % vec3<u32>(32u)))), vec3<i32>(u_input.b, _wgslsmith_div_i32(global2.x, ~u_input.b), ~select(u_input.a.x, 1i, arg_1.a.x))), u_input.a);
    let var_1 = Struct_2(!select(vec4<bool>(any(vec2<bool>(true, true)), false, all(global3.wy), global0.b <= 1013f), global0.a, select(global0.a, select(global0.a, vec4<bool>(false, global0.c, global0.a.x, arg_0.x), global0.a), select(global3.x, global3.x, global3.x))), -513f, !arg_1.a.x, vec2<u32>(~_wgslsmith_add_u32(select(0u, global0.d.x, false), ~arg_2), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, global0.d.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.d.x, arg_2, 4294967295u), vec3<u32>(arg_2, 12913u, arg_2), vec3<u32>(arg_2, arg_2, arg_2))), firstTrailingBit(vec3<u32>(arg_2, 0u, 4294967295u)))), vec3<f32>(_wgslsmith_div_f32(global0.e.x, -878f), 1419f, _wgslsmith_f_op_f32(-560f + -1000f)));
    var var_2 = u_input.a.x;
    return global2.x;
}

fn func_2() -> vec4<f32> {
    global2 = vec3<i32>(-2147483647i, _wgslsmith_mult_i32(firstLeadingBit(2147483647i), 2147483647i), func_3(!global0.a.xwz, Struct_1(global0.a.yxx, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-660f, -1333f, global3.x))), _wgslsmith_f_op_vec3_f32(floor(global0.e))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(82353u, global0.d.x, global0.d.x), vec3<u32>(1u, 57483u, 26309u)), _wgslsmith_mod_vec3_u32(vec3<u32>(32008u, 42513u, 1u), vec3<u32>(global0.d.x, 32760u, 66469u))) >> ((global0.d.x >> (global0.d.x % 32u)) % 32u)));
    let var_0 = ~vec4<u32>(~global0.d.x, global0.d.x & global0.d.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(~48537u, select(0u, global0.d.x, false))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.d.x, global0.d.x), 1u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2225f - -550f), 743f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)), 1369f))));
    var var_2 = ~1401u << ((select(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 4294967295u), vec2<u32>(global0.d.x, 80285u)), 1u, global3.x & any(vec4<bool>(true, false, true, false))) >> (~_wgslsmith_mod_u32(4294967295u, firstLeadingBit(43966u)) % 32u)) % 32u);
    var_2 = _wgslsmith_sub_u32(var_0.x, global0.d.x);
    return vec4<f32>(-1672f, _wgslsmith_div_f32(global0.e.x, global0.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.e.x, 752f, all(!global0.a.xyx))), global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.e.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    global3 = select(select(select(global0.a, select(select(arg_1.a, arg_1.a, global0.c), !arg_1.a, !arg_1.a), arg_1.a), select(global0.a, arg_1.a, global3.x), global0.a), !(!(!vec4<bool>(global0.a.x, arg_1.c, true, global0.c))), global0.e.x >= _wgslsmith_f_op_f32(-global0.e.x));
    var var_0 = arg_1.e;
    var var_1 = select(vec4<bool>(true, global0.a.x, true, arg_1.a.x), !select(vec4<bool>(global3.x, all(vec4<bool>(false, false, global0.a.x, global3.x)), arg_1.c || arg_1.c, true), vec4<bool>(any(vec4<bool>(global0.c, false, false, false)), all(vec4<bool>(global3.x, global3.x, true, true)), global0.e.x < 871f, global0.c), !(!global0.a.x)), arg_1.a);
    var var_2 = abs(select(~firstTrailingBit(vec4<u32>(arg_1.d.x, global0.d.x, 1u, 17553u)), countOneBits(vec4<u32>(global0.d.x, 0u, global0.d.x, arg_1.d.x)) & ~vec4<u32>(global0.d.x, arg_1.d.x, 4294967295u, 82974u), select(arg_1.a, select(global0.a, arg_1.a, true), !arg_1.c)) << (vec4<u32>(firstTrailingBit(arg_1.d.x) << ((arg_1.d.x >> (global0.d.x % 32u)) % 32u), 1u, _wgslsmith_mod_u32(4294967295u, abs(arg_1.d.x)), _wgslsmith_mod_u32(84644u, ~1u)) % vec4<u32>(32u)));
    global3 = vec4<bool>(!(!(true | !arg_1.a.x)), ~global0.d.x <= ~(~15839u), all(global0.a.wwx), any(vec4<bool>(!(!global0.a.x), true, arg_1.a.x, true | all(vec2<bool>(false, global0.a.x)))));
    return Struct_2(vec4<bool>(global0.c, global0.b != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e.x * 1501f), _wgslsmith_f_op_f32(-216f - arg_0.x))), true, any(vec3<bool>(global0.a.x | false, any(global0.a.wy), all(arg_1.a)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x * _wgslsmith_f_op_f32(select(-291f, -1618f, true))))), select(!all(var_1.wzx), true, any(global0.a)), var_2.zw, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.e.x, -176f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0.b, arg_0.x) - arg_0.zxx)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, arg_0.x, -1708f, arg_0.x)))))), Struct_2(global0.a, _wgslsmith_f_op_f32(round(arg_0.x)), false, vec2<u32>(global0.d.x, 6336u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.e)))))));
    global1 = firstLeadingBit(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.b, 2147483647i) ^ vec2<i32>(u_input.b, -1i)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-8082i, global2.x), vec2<i32>(global2.x, -27678i)), global2.xz))));
    global3 = vec4<bool>(false, false, true, abs(_wgslsmith_mod_i32(global2.x, u_input.a.x)) > -25571i);
    var var_1 = Struct_1(var_0.a.yxz, !global3.x, _wgslsmith_f_op_f32(-arg_0.x), global0.e);
    let var_2 = Struct_2(vec4<bool>(all(func_4(vec4<f32>(918f, arg_0.x, -1275f, -170f), var_0).a), _wgslsmith_div_i32(0i, -1i) >= _wgslsmith_add_i32(_wgslsmith_sub_i32(global2.x, 29410i), abs(1i)), true, false), global0.b, true, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.d.x, arg_1) << (global0.d % vec2<u32>(32u)), global0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, arg_0.x, -430f) - arg_0));
    return var_0;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global2 = firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(i32(-1i) * -1i, 0i & (2147483647i & u_input.a.x), _wgslsmith_mod_i32(u_input.b, 26900i) ^ _wgslsmith_mod_i32(-2147483647i, u_input.a.x))));
    global3 = arg_0.a;
    let var_0 = Struct_2(vec4<bool>(!any(func_4(vec4<f32>(-1041f, -255f, 184f, arg_0.e.x), arg_0).a.zwy), !arg_0.c, global2.x != _wgslsmith_mod_i32(firstLeadingBit(u_input.b), abs(-66450i)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(global0.b + global0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.x, arg_0.b)))), any(vec3<bool>(global0.a.x, true, !(arg_0.a.x & false))), global0.d, _wgslsmith_f_op_vec3_f32(-arg_0.e));
    let var_1 = Struct_2(select(vec4<bool>(all(!global0.a), !(global0.a.x && false), false, global3.x), !vec4<bool>(true, any(global0.a.wxz), var_0.d.x > var_0.d.x, arg_0.a.x), select(select(vec4<bool>(var_0.c, global3.x, global3.x, arg_0.c), var_0.a, all(global0.a.xxw)), vec4<bool>(var_0.c || true, arg_0.a.x, arg_0.c, var_0.b == -1297f), true)), global0.b, true, ~(~vec2<u32>(~1u, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), -1445f, var_0.e.x) * var_0.e));
    global2 = -vec3<i32>(_wgslsmith_div_i32(-1i, global2.x), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) ^ ~(-2147483647i)) >> (~(~(~(~vec3<u32>(var_1.d.x, var_1.d.x, 0u)))) % vec3<u32>(32u));
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, var_0.e.x, var_0.e.x, var_0.e.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e.x, 617f, global0.b, -1930f), vec4<f32>(-308f, global0.b, global0.b, -812f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, arg_0.b, var_0.e.x, -1918f), vec4<f32>(-143f, -2144f, -893f, global0.b)))))), Struct_2(!vec4<bool>(true, true, arg_0.d.x != 32012u, !var_1.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.b, var_0.e.x)))), var_0.c, arg_0.d, _wgslsmith_f_op_vec4_f32(func_2()).zyw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.e, vec3<f32>(1000f, global0.e.x, -223f), vec3<bool>(true, global3.x, global3.x))))), ~global0.d.x));
    let var_1 = u_input.a.x;
    var var_2 = vec2<bool>(true, var_0.a.x);
    let var_3 = vec3<u32>(~(global0.d.x << (var_0.d.x % 32u)), ~_wgslsmith_sub_u32(126424u, func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -1633f, var_0.b, -496f), vec4<f32>(global0.b, -997f, -646f, global0.b)), func_4(vec4<f32>(global0.b, -213f, -241f, 1000f), Struct_2(global0.a, 1000f, false, global0.d, vec3<f32>(-836f, 530f, 1923f)))).d.x), var_0.d.x);
    var var_4 = min(abs(~(~u_input.a)), vec3<i32>(~(-global2.x), -3372i, select(var_1, min(-25989i, -1i), var_0.b < 1000f) | (i32(-1i) * -global2.x)));
    var var_5 = true;
    global3 = var_0.a;
    var var_6 = func_1(vec3<f32>(270f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -584f))), global0.e.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.d.x, global0.d.x), 1u) & 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_4.x, -1i, var_4.x) << (vec3<u32>(53694u, 1u, var_0.d.x) % vec3<u32>(32u)), ~(~vec3<i32>(0i, var_4.x, -16148i))), global2.x >> (1u % 32u), countOneBits(u_input.a.x), -1i), ~min(~(vec4<i32>(u_input.a.x, var_1, var_1, -8313i) << (vec4<u32>(var_6.d.x, 25441u, 0u, 1168u) % vec4<u32>(32u))), reverseBits(-vec4<i32>(9248i, var_1, var_4.x, 1i))), _wgslsmith_sub_vec2_u32(firstTrailingBit(~(~vec2<u32>(var_6.d.x, 1u))), max(_wgslsmith_clamp_vec2_u32(~global0.d, ~var_3.zz, _wgslsmith_mult_vec2_u32(var_3.yy, vec2<u32>(var_0.d.x, 27432u))), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(0u, var_6.d.x)), min(vec2<u32>(4294967295u, var_6.d.x), vec2<u32>(0u, 15909u)), vec2<u32>(var_6.d.x, var_3.x)))), global0.e.x);
}

