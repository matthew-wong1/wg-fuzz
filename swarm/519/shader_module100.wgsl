struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    global0 = Struct_3(true, global0.e, Struct_1(~(max(vec3<i32>(arg_3.a.a.x, arg_3.a.a.x, 0i), vec3<i32>(-2147483647i, 2147483647i, -17553i)) << (reverseBits(vec3<u32>(arg_3.a.b.x, u_input.b, 2815u)) % vec3<u32>(32u))), global1.b, arg_1.wy, vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, global1.c.x, global1.c.x), true)), true, false), vec4<f32>(-1472f, _wgslsmith_f_op_f32(-global0.c.e.x), global0.b.e.x, 798f)), global0.d, Struct_1(arg_3.a.a, arg_0.wx, !global0.e.c, vec3<bool>(any(vec3<bool>(arg_1.x, false, global1.d.x)), false, arg_1.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(790f, global1.e.x, 851f, global1.e.x) + global1.e)), arg_3.a.e))));
    var var_0 = select(!vec4<bool>(global1.c.x, any(vec4<bool>(false, global1.d.x, true, arg_1.x)), true, global0.a), select(arg_1, arg_1, true), select(select(arg_3.b, arg_3.b, arg_1), arg_3.b, !arg_3.a.d.x));
    let var_1 = vec2<u32>(arg_3.a.b.x, ~33075u);
    let var_2 = arg_3.a;
    let var_3 = 661f;
    return var_0.www;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = Struct_3(false, Struct_1(vec3<i32>(select(arg_0.x, 76909i, global1.d.x) >> (countOneBits(0u) % 32u), 0i, ~(-2147483647i)), _wgslsmith_mod_vec2_u32(global1.b, abs(countOneBits(vec2<u32>(27381u, global0.e.b.x)))), !vec2<bool>(true, true || global1.c.x), select(global1.d, select(vec3<bool>(global1.d.x, true, global0.e.d.x), global0.e.d, select(global1.d, global0.e.d, global1.c.x)), func_3(vec4<u32>(52027u, u_input.b, global1.b.x, 45602u) >> (vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 30075u) % vec4<u32>(32u)), select(vec4<bool>(global1.d.x, true, global1.c.x, global0.b.c.x), vec4<bool>(global1.c.x, true, true, global1.c.x), false), global0.b.b.x, Struct_2(global0.e, vec4<bool>(global0.e.c.x, true, global0.a, global1.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.e.x * 843f), _wgslsmith_f_op_f32(281f * 1000f), _wgslsmith_f_op_f32(min(600f, 172f)), 289f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e)))), Struct_1(arg_0.xxw, firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(global1.b.x, 26668u, u_input.a.x), _wgslsmith_mod_u32(63887u, 36895u))), vec2<bool>(global1.d.x, true), select(global1.d, func_3(vec4<u32>(1u, 47311u, global1.b.x, global0.c.b.x), vec4<bool>(true, false, global0.a, global1.d.x), u_input.b, Struct_2(Struct_1(vec3<i32>(global1.a.x, -16313i, -5593i), vec2<u32>(global1.b.x, 48520u), global1.c, global0.b.d, global1.e), vec4<bool>(global0.a, false, false, global1.d.x))), global1.d.x), global1.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(124f, -1471f, 536f, global1.e.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.e.x, global0.b.e.x, global0.b.e.x, global1.e.x), vec4<f32>(1242f, -271f, global0.e.e.x, 593f), false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(477f, -854f, global1.e.x, 244f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, global0.d.x, 2330f, -724f), vec4<f32>(global0.e.e.x, global1.e.x, global0.e.e.x, global1.e.x)), any(vec3<bool>(global1.c.x, true, global0.e.d.x)))) * global1.e)), Struct_1(global1.a, firstLeadingBit(vec2<u32>(0u, 1u)), !vec2<bool>(func_3(vec4<u32>(global1.b.x, 0u, 28721u, u_input.a.x), vec4<bool>(false, true, true, true), global0.e.b.x, Struct_2(Struct_1(global1.a, global1.b, vec2<bool>(global1.c.x, global1.c.x), vec3<bool>(true, global0.c.c.x, global0.c.c.x), vec4<f32>(global1.e.x, global1.e.x, global0.e.e.x, -583f)), vec4<bool>(global0.b.d.x, false, global0.e.c.x, global0.c.c.x))).x, true), func_3(abs(~vec4<u32>(u_input.a.x, global1.b.x, 47385u, global0.b.b.x)), select(!vec4<bool>(false, true, global0.a, false), vec4<bool>(global0.b.d.x, true, global0.c.c.x, false), !global1.d.x), 66989u, Struct_2(Struct_1(arg_0.xxw, vec2<u32>(0u, global1.b.x), vec2<bool>(global0.b.c.x, global1.c.x), global1.d, global0.e.e), select(vec4<bool>(global1.d.x, false, global1.d.x, global0.c.c.x), vec4<bool>(false, false, true, false), vec4<bool>(global1.d.x, global1.d.x, false, true)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(floor(988f)), _wgslsmith_f_op_f32(-1119f * -1000f), _wgslsmith_f_op_f32(923f * -637f))))));
    global1 = global0.e;
    let var_0 = 5613u;
    let var_1 = -arg_0.x << (_wgslsmith_clamp_u32(0u, ~_wgslsmith_div_u32(~0u, u_input.b), ~_wgslsmith_div_u32(u_input.a.x, global1.b.x)) % 32u);
    global1 = global0.e;
    return max(~0u, 1u);
}

fn func_4(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = abs(-abs(_wgslsmith_sub_vec2_i32(abs(global0.c.a.zy), global0.b.a.zz ^ vec2<i32>(global1.a.x, global0.e.a.x))));
    var var_1 = Struct_2(Struct_1(~(~vec3<i32>(global0.e.a.x, 2147483647i, -59468i) | select(global1.a, vec3<i32>(global0.b.a.x, global0.b.a.x, var_0.x), true)), select(vec2<u32>(959u, 79779u) << (select(vec2<u32>(0u, 0u), vec2<u32>(55268u, 46057u), global1.d.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.x, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4505u), vec2<u32>(1u, global0.b.b.x))), global1.d.x), vec2<bool>(all(vec4<bool>(true, true, global1.d.x, global1.d.x)) & (global1.d.x || global0.b.c.x), global0.b.e.x > -382f), select(!global0.e.d, global0.b.d, vec3<bool>(false, any(vec4<bool>(false, global0.e.c.x, false, false)), all(global0.b.d))), vec4<f32>(global0.e.e.x, 1261f, global1.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.e.x), -1838f)))), vec4<bool>(global1.d.x, all(global0.b.d), !global0.e.d.x, global0.c.d.x));
    let var_2 = 1984f;
    let var_3 = firstLeadingBit(vec3<i32>(var_0.x, var_0.x, -8575i));
    var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~31063i, global0.e.a.x), vec2<i32>(-1i, var_3.x)), min(global0.e.a.yy, vec2<i32>(-21329i, reverseBits(2147483647i)))) | ~(abs(~var_1.a.a.xy) | vec2<i32>(reverseBits(-2147483647i), min(2828i, 2147483647i)));
    return Struct_3(!global1.d.x, global0.c, Struct_1(-(global0.b.a & var_1.a.a), firstLeadingBit(global1.b), select(select(global1.d.yy, global0.e.d.xz, global1.c.x), func_3(arg_0, select(var_1.b, var_1.b, global0.a), _wgslsmith_mod_u32(global0.c.b.x, 62694u), Struct_2(global0.c, vec4<bool>(global1.c.x, var_1.a.c.x, false, global0.c.d.x))).xy, select(vec2<bool>(false, true), vec2<bool>(var_1.a.d.x, global0.c.c.x), !vec2<bool>(global1.c.x, true))), !global0.c.d, global0.d), global0.c.e, Struct_1(global1.a, var_1.a.b, select(global0.e.c, var_1.b.yx, -2147483647i > global1.a.x), vec3<bool>(any(var_1.a.d), !var_1.b.x, all(vec4<bool>(var_1.b.x, false, global0.a, false))), global1.e));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = func_4(vec4<u32>(_wgslsmith_mod_u32(countOneBits(func_2(vec4<i32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x, 48743i))), func_2(vec4<i32>(2147483647i, global1.a.x, arg_2.a.a.x, global1.a.x) ^ vec4<i32>(global1.a.x, global0.b.a.x, arg_2.a.a.x, 1i))), 4294967295u, 1u, 52196u));
    var var_1 = 54503u;
    return -8239i & -abs(-global0.e.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(~0u, ~(~global1.b.x));
    let var_1 = !vec4<bool>(!(global1.e.x >= 140f) || any(vec3<bool>(global1.d.x, global1.c.x, true)), !global1.c.x, !(_wgslsmith_sub_i32(global0.b.a.x, 0i) <= func_1(global0.c.e.yzy, vec4<u32>(6895u, 1u, 0u, 0u), Struct_2(global0.b, vec4<bool>(false, global1.d.x, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(668f)) - _wgslsmith_f_op_f32(-global1.e.x)) < 999f);
    let var_2 = global0.b.e.x;
    global0 = Struct_3(global0.b.d.x, global0.c, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(func_4(vec4<u32>(50946u, 1u, global0.c.b.x, u_input.b)).e.a.x, -1i, _wgslsmith_add_i32(global1.a.x, 32047i)), select(vec3<i32>(-11521i, global0.b.a.x, 42100i), vec3<i32>(global1.a.x, global0.b.a.x, global0.e.a.x), var_1.zww) << (u_input.a % vec3<u32>(32u))), ~vec2<u32>(func_2(vec4<i32>(0i, global0.b.a.x, global1.a.x, 1i)), global0.e.b.x | var_0.x), !global1.c, vec3<bool>(select(true, global1.c.x, !global1.c.x), func_4(~vec4<u32>(global0.b.b.x, 82578u, global1.b.x, 61542u)).c.c.x, global1.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), 141f, 1000f, 1249f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-337f, -194f, global1.e.x, global1.e.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b.e), global1.e, vec4<bool>(any(vec4<bool>(true, global1.c.x, global0.b.c.x, global1.d.x)), all(vec2<bool>(global0.c.c.x, var_1.x)), func_4(vec4<u32>(u_input.b, var_0.x, u_input.b, global1.b.x)).e.d.x, var_1.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(global0.b.e, _wgslsmith_f_op_vec4_f32(global0.b.e * vec4<f32>(504f, 253f, global0.c.e.x, global0.e.e.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, global1.e.x, -487f, 392f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, 260f, 1591f, -1000f)), !var_1.x)))))), global0.b);
    global1 = global0.b;
    var var_3 = Struct_2(func_4(vec4<u32>(~var_0.x, 4294967295u, ~4294967295u, global1.b.x)).e, select(!vec4<bool>(any(var_1.zw), true, !var_1.x, global0.e.d.x), select(select(select(vec4<bool>(var_1.x, false, true, global1.d.x), var_1, true), vec4<bool>(global1.d.x, global0.b.d.x, true, false), select(vec4<bool>(global0.a, false, global0.c.c.x, global1.d.x), vec4<bool>(var_1.x, global1.c.x, var_1.x, global0.b.d.x), vec4<bool>(true, global0.b.c.x, true, true))), var_1, true), vec4<bool>(true, global0.e.c.x, global0.e.d.x && global0.a, global0.e.c.x)));
    var var_4 = global1.e;
    let var_5 = func_4(_wgslsmith_mult_vec4_u32(select(~select(vec4<u32>(4294967295u, 21364u, 27690u, var_3.a.b.x), vec4<u32>(1u, var_3.a.b.x, 24726u, global1.b.x), global0.c.d.x), vec4<u32>(37210u, 15915u, _wgslsmith_mult_u32(var_0.x, var_0.x), 28737u), !vec4<bool>(false, global1.c.x, false, var_1.x)), select(firstLeadingBit(vec4<u32>(0u, global0.c.b.x, 2955u, 1u)) ^ (vec4<u32>(global1.b.x, global0.c.b.x, var_3.a.b.x, var_3.a.b.x) & vec4<u32>(u_input.b, var_0.x, global1.b.x, 92213u)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(31609u, 159063u, 56158u, 35453u), vec4<u32>(global0.e.b.x, 4294967295u, global1.b.x, var_3.a.b.x))), var_3.b))).e;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(450f, 118f, global1.e.x))), vec4<u32>(global0.c.b.x, 2271u, global1.b.x, 56894u) ^ vec4<u32>(0u, 1u, 1u, 0u), Struct_2(var_5, var_1)), var_3.a.a.x)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-14587i, var_3.a.a.x >> (1u % 32u))), abs(-vec2<i32>(1i, 14849i))), _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(5333i, -2147483647i, 25911i, global0.e.a.x) ^ vec4<i32>(global0.c.a.x, 20497i, global0.e.a.x, 13543i), vec4<i32>(global0.c.a.x, var_3.a.a.x, -1i, 0i)), countOneBits(vec4<i32>(_wgslsmith_mod_i32(1i, var_3.a.a.x), global1.a.x, _wgslsmith_sub_i32(2527i, global0.e.a.x), 30384i))), var_5.e.x, 11846i);
}

