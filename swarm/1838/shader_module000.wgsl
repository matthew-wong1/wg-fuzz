struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_4 = Struct_4(vec4<i32>(9205i, 1i, 11428i, -26533i), vec2<u32>(22492u, 0u), 13823u);

var<private> global2: Struct_3 = Struct_3(54736u, 1000f, vec2<f32>(137f, -938f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global2 = Struct_3(_wgslsmith_div_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(global2.a, global2.a), 0u), global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.e.x), arg_0.b.a, false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global2.c))) - vec2<f32>(_wgslsmith_f_op_f32(abs(global2.c.x)), global2.b)), _wgslsmith_f_op_vec2_f32(exp2(arg_0.e.xy))));
    return global1.a.x;
}

fn func_2() -> bool {
    var var_0 = -_wgslsmith_mod_vec3_i32(global1.a.zxx, reverseBits(-select(vec3<i32>(global1.a.x, 1i, global1.a.x), global1.a.yxw, false)));
    var var_1 = 1583f;
    var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, -18236i), -(global1.a.x ^ global1.a.x)), func_3(Struct_2(var_0.x, Struct_1(579f, 4294967295u, vec2<u32>(u_input.a.x, 4294967295u), global2.a, vec3<u32>(u_input.a.x, u_input.a.x, global2.a)), vec4<bool>(true, global0.x, false, global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.c, 87580u), vec3<u32>(1u, global1.c, 0u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.c.x, global2.c.x) - vec3<f32>(global2.b, global2.b, 1829f)))), global1.a.x) ^ _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, _wgslsmith_mod_i32(1i, var_0.x), -39139i), global1.a.wwx);
    var var_2 = Struct_4(firstLeadingBit(~(~(global1.a | global1.a))), ~u_input.a.yy, u_input.a.x);
    global1 = Struct_4(global1.a, u_input.a.yx, ~(~(~(~20470u))));
    return any(vec4<bool>(global2.a <= _wgslsmith_mult_u32(u_input.a.x >> (var_2.c % 32u), ~var_2.c), global0.x, false, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.c.x), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 43378u), global1.b ^ global1.b)), vec2<u32>(~abs(6401u), 38779u), 17907u >> (max(global2.a, _wgslsmith_mult_u32(firstLeadingBit(0u), 0u)) % 32u), ~vec3<u32>(global1.c, global1.b.x, 0u));
    var var_1 = _wgslsmith_div_i32(func_3(Struct_2(0i, var_0, vec4<bool>(true, global0.x, true, arg_1.x), vec3<u32>(38079u, 0u, global2.a), vec3<f32>(var_0.a, -298f, 671f))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 95957u), ~var_0.e.zy) % 32u), func_3(Struct_2(global1.a.x, Struct_1(423f, ~1u, u_input.a.xx, global2.a, vec3<u32>(u_input.a.x, 19211u, arg_0.x)), vec4<bool>(arg_2 >= global1.a.x, arg_1.x, !global0.x, arg_1.x), ~_wgslsmith_clamp_vec3_u32(u_input.a, var_0.e, vec3<u32>(arg_0.x, 49571u, var_0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -540f, global2.b))))));
    let var_2 = ~reverseBits(-(countOneBits(global1.a) | abs(global1.a)));
    let var_3 = Struct_3(_wgslsmith_add_u32(global1.b.x << (u_input.a.x % 32u), ~(~u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.e.x, 25676u, 39065u), vec4<u32>(0u, 0u, 7239u, 4294967295u) | vec4<u32>(global2.a, 4294967295u, 65167u, var_0.b)) % 32u)), _wgslsmith_f_op_f32(round(691f)), global2.c);
    var_1 = 2147483647i;
    return Struct_3(var_3.a, var_3.b, vec2<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a * var_0.a)));
}

fn func_1() -> f32 {
    let var_0 = func_4(~u_input.a, vec3<bool>(false, !func_2(), global2.c.x > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, global2.c.x))), _wgslsmith_sub_i32(-37172i, global1.a.x));
    global2 = Struct_3(firstLeadingBit(8153u), _wgslsmith_f_op_f32(max(2605f, -245f)), vec2<f32>(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(ceil(-1000f)), !global0.x))), var_0.c.x));
    var var_1 = -(reverseBits(-(~vec2<i32>(global1.a.x, global1.a.x))) & global1.a.zz);
    var var_2 = min(~(~u_input.a), abs(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.a, u_input.a.x, var_0.a), ~u_input.a))));
    var_2 = vec3<u32>(0u, func_4(~vec3<u32>(1u, global2.a, var_2.x) | ~u_input.a, !select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, global0.x)), ~select(global1.a.x, 2147483647i, false)).a, firstTrailingBit(max(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, global2.a, global1.b.x), vec4<u32>(global2.a, global1.c, 131u, var_2.x))))) | ~u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * 256f);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    var var_0 = min(countOneBits(global1.a), vec4<i32>(firstLeadingBit(select(global1.a.x, global1.a.x, false)), 5992i, -80051i | abs(global1.a.x), ~_wgslsmith_clamp_i32(-2147483647i, global1.a.x, global1.a.x))) | vec4<i32>(-11370i, -2147483647i, global1.a.x ^ 0i, -20693i);
    var_0 = ~global1.a;
    let var_1 = global1.a.x;
    var var_2 = arg_3;
    var var_3 = Struct_2(2147483647i, Struct_1(var_2.b, ~(~func_4(u_input.a, vec3<bool>(true, true, global0.x), 1i).a), _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(var_2.a), global2.a | global1.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.a, u_input.a.x) ^ global1.b, countOneBits(vec2<u32>(33370u, global1.b.x)))), min(var_2.a, reverseBits(~global2.a)), _wgslsmith_add_vec3_u32(~u_input.a, u_input.a)), arg_0, vec3<u32>(u_input.a.x, 29050u, func_4(countOneBits(vec3<u32>(u_input.a.x, 1655u, global1.b.x)), arg_0.yxy, 0i).a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(336f, global2.c.x, arg_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -1000f, -653f) - vec3<f32>(arg_3.c.x, 2207f, global2.c.x)) * vec3<f32>(arg_1, global2.c.x, arg_1))))));
    return func_4(u_input.a, vec3<bool>(false, false, all(select(global0.zy, arg_0.wz, var_3.c.x))), var_3.a);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> vec2<u32> {
    global2 = Struct_3(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1615f + arg_0.b) + arg_0.c.x) + global2.b) + global2.c.x), vec2<f32>(_wgslsmith_f_op_f32(select(global2.c.x, 511f, arg_2.a.x <= -1i)), -703f));
    var var_0 = arg_0.b;
    return countOneBits(~u_input.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(select(global1.a, vec4<i32>(abs(-24369i) | _wgslsmith_add_i32(global1.a.x, global1.a.x), global1.a.x, -44795i, 2147483647i), !(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), func_6(func_5(!vec4<bool>(false, false, true, global0.x), _wgslsmith_f_op_f32(func_1()), all(vec2<bool>(global0.x, true)), func_4(~vec3<u32>(4294967295u, 0u, global1.b.x), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, false), true), global1.a.x | -10787i)), select(global1.a.x, reverseBits(_wgslsmith_sub_i32(1i, -1i)), !(global1.a.x > global1.a.x)), Struct_4(-(~vec4<i32>(global1.a.x, 16296i, 24105i, global1.a.x)), vec2<u32>(~42677u, 1u), 1625u), func_4(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(7074u, 33875u, 0u), u_input.a), _wgslsmith_add_vec3_u32(u_input.a, u_input.a)), vec3<bool>(!global0.x, global2.a > 91877u, true), global1.a.x)), firstLeadingBit(4294967295u));
    let var_0 = -2147483647i;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(-1i, -(_wgslsmith_add_i32(global1.a.x, global1.a.x) >> (38653u % 32u))), _wgslsmith_add_i32(global1.a.x ^ (-2147483647i >> (~global2.a % 32u)), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, global1.a.x, var_0, global1.a.x), vec4<i32>(var_0, global1.a.x, var_0, -3232i), global1.a), vec4<i32>(var_0, -1i, 1i, 2147483647i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 1i, -2147483647i), vec4<i32>(global1.a.x, global1.a.x, var_0, var_0), global1.a))), _wgslsmith_sub_i32(~select(global1.a.x, -82964i, true), -global1.a.x) >> (42731u % 32u), _wgslsmith_mod_i32(-23077i, -(~1092i)));
    global1 = Struct_4(global1.a & global1.a, ~(u_input.a.xz & ~select(global1.b, vec2<u32>(120085u, u_input.a.x), global0.xx)), 12617u);
    let var_2 = select(!vec3<bool>(all(vec3<bool>(global0.x, true, false)), global2.c.x < _wgslsmith_f_op_f32(ceil(global2.b)), global0.x), !(!select(vec3<bool>(true, true, false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false), false), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, global0.x), true))), global0.x);
    global0 = select(vec3<bool>(false, global0.x, -1796f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1050f - global2.b), -225f)), select(var_2, select(vec3<bool>(true, any(vec4<bool>(global0.x, false, global0.x, var_2.x)), global1.a.x >= -1i), vec3<bool>(true, !var_2.x, true), true), !global0.x), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c.x, global2.c.x, -340f), vec3<f32>(395f, global2.c.x, -167f), var_2)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(999f, global2.b, 508f), vec3<f32>(global2.b, -1633f, global2.c.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global2.c.x, -784f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, global2.b, global2.b)))))), _wgslsmith_f_op_f32(sign(728f)), vec4<u32>(~global2.a, ~104243u, 69079u, reverseBits(select(1u, global2.a, true))));
}

