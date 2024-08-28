struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(200f, 617f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), arg_3.a.x));
    let var_0 = vec3<i32>(abs(u_input.b.x), 1i, ~1i);
    global0 = vec2<f32>(arg_2, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-1779f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1616f)) - -321f)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_3.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(196f, global0.x) + arg_3.a))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, arg_3.a.x))))));
    var var_1 = Struct_1(vec2<bool>(any(vec4<bool>(u_input.a != 8418i, all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true)), true)), true && (reverseBits(arg_3.b) <= _wgslsmith_add_i32(var_0.x, -2147483647i))), 45653i, _wgslsmith_f_op_f32(select(1864f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -133f), 744f)), _wgslsmith_f_op_f32(func_2(7569i, Struct_5(vec3<f32>(arg_2, arg_3.a.x, global0.x), Struct_3(arg_3.a, 0i, vec3<u32>(arg_3.c.x, arg_3.c.x, arg_3.c.x)), Struct_2(Struct_1(vec2<bool>(false, true), -5944i, 589f, arg_3.c, vec3<f32>(187f, -1408f, arg_2)), arg_3.c, vec3<bool>(false, false, true), true), vec2<f32>(global0.x, -315f))))), !any(vec4<bool>(false, true, false, true)))), (vec3<u32>(arg_3.c.x, ~arg_3.c.x, arg_3.c.x & arg_3.c.x) << (vec3<u32>(14750u, countOneBits(arg_3.c.x), min(72483u, arg_3.c.x)) % vec3<u32>(32u))) & vec3<u32>(29585u, max(1u, _wgslsmith_clamp_u32(0u, arg_3.c.x, arg_3.c.x)), ~_wgslsmith_mult_u32(0u, 14956u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1296f, _wgslsmith_f_op_f32(sign(-1539f)), _wgslsmith_f_op_f32(abs(arg_2))))));
    return !select(select(select(select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, true, true), true), !vec4<bool>(var_1.a.x, var_1.a.x, true, true)), select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.a.x, true, false, var_1.a.x), var_1.a.x), var_1.a.x && var_1.a.x), select(select(vec4<bool>(true, true, true, var_1.a.x), vec4<bool>(false, true, true, var_1.a.x), true), !vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true))), vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(any(vec2<bool>(var_1.a.x, var_1.a.x)), var_1.a.x, all(vec4<bool>(var_1.a.x, false, var_1.a.x, false)), _wgslsmith_f_op_f32(1409f - -3397f) >= arg_3.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2, arg_1)) * _wgslsmith_f_op_f32(abs(2047f))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(-502f)), global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_3.c, 949f), -790f));
    var var_0 = arg_1.b;
    let var_1 = !select(vec4<bool>(all(arg_0.yz), true, arg_1.c.c.x, true), vec4<bool>(!all(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_0.x, false)), false, ~1u >= arg_1.c.b.x, true), vec4<bool>(!(var_0.a.x == 1218f), any(!vec4<bool>(arg_3.a.x, true, true, false)), true, arg_1.c.a.a.x));
    var var_2 = !any(vec2<bool>(false, !arg_3.a.x));
    return ~_wgslsmith_div_u32(~4294967295u & abs(abs(arg_1.c.b.x)), _wgslsmith_clamp_u32(34437u, 1u, ~4294967295u));
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = func_4(func_3(~(~2147483647i), select(vec2<i32>(-21114i, -27784i), ~u_input.b.yx, select(vec2<bool>(arg_1, arg_2), vec2<bool>(true, arg_0.c.a.a.x), arg_0.c.c.xz)), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(func_2(2147483647i, arg_0)))), arg_0.b), Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1138f, -1539f, global0.x), arg_0.c.a.e)))), arg_0.b, Struct_2(Struct_1(vec2<bool>(arg_0.c.c.x, arg_1), 38642i, arg_0.b.a.x, arg_0.b.c, arg_0.c.a.e), vec3<u32>(arg_0.c.b.x, 2860u, arg_0.c.a.d.x), !vec3<bool>(false, true, arg_2), arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a.x, 1000f) * arg_0.a.yx))), _wgslsmith_clamp_i32(-5134i, _wgslsmith_add_i32(u_input.a, -28958i) << (1u % 32u), -1i), Struct_1(arg_0.c.c.xz, -(arg_0.b.b ^ 1i), arg_0.b.a.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.b.c.x, arg_0.b.c.x), _wgslsmith_add_vec3_u32(arg_0.b.c, arg_0.c.a.d), arg_0.b.c), vec3<f32>(1f, -142f, arg_0.d.x))) | reverseBits(_wgslsmith_sub_u32(~arg_0.b.c.x, arg_0.c.a.d.x));
    global0 = arg_0.c.a.e.xz;
    let var_1 = min(arg_0.b.c.xz, arg_0.b.c.yz);
    var var_2 = _wgslsmith_div_vec3_u32(select(reverseBits(vec3<u32>(arg_0.b.c.x ^ arg_0.c.a.d.x, var_1.x, var_1.x)), ~vec3<u32>(arg_0.c.b.x, arg_0.b.c.x, ~20242u), arg_0.c.c), vec3<u32>(countOneBits(var_1.x), _wgslsmith_add_u32(1u, ~var_1.x), var_1.x | (~var_1.x | var_1.x)));
    var var_3 = 16833u;
    return 62799u;
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = select(!vec4<bool>(arg_1, true, false, select(arg_1 & arg_1, arg_1, arg_1)), !select(!(!vec4<bool>(true, true, arg_1, arg_1)), func_3(-arg_0.x, arg_3.yz, -680f, Struct_3(vec2<f32>(global0.x, global0.x), arg_3.x, vec3<u32>(arg_2, arg_2, arg_2))), vec4<bool>(true, arg_1, func_3(23559i, arg_3.xz, global0.x, Struct_3(vec2<f32>(global0.x, -613f), 54786i, vec3<u32>(arg_2, 21822u, arg_2))).x, all(vec2<bool>(false, arg_1)))), any(vec4<bool>(true, true, false, !arg_1)));
    var var_1 = Struct_5(vec3<f32>(-1653f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1358f)), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, -2413f)), vec2<f32>(global0.x, 1830f), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(120f, 1153f))))), _wgslsmith_add_i32(-1i, arg_0.x), ~vec3<u32>(arg_2, _wgslsmith_mod_u32(arg_2, arg_2), 0u)), Struct_2(Struct_1(vec2<bool>(arg_1 && arg_1, select(arg_1, arg_1, false)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(809f, 1176f)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2) << (vec3<u32>(4294967295u, 13363u, arg_2) % vec3<u32>(32u)), vec3<u32>(arg_2, 66806u, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 2317f, -407f) + vec3<f32>(-488f, global0.x, 377f)))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_2, 4294967295u, 4294967295u)), vec3<u32>(50988u, arg_2, 9948u) << (countOneBits(vec3<u32>(1u, arg_2, 4294967295u)) % vec3<u32>(32u))), select(!select(var_0.wwx, vec3<bool>(arg_1, var_0.x, var_0.x), true), select(vec3<bool>(var_0.x, true, true), select(var_0.zxw, vec3<bool>(var_0.x, arg_1, arg_1), var_0.yzx), true || arg_1), any(!var_0.xyy)), func_3(~u_input.b.x | -26194i, max(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_0.zx), -arg_0.yx), global0.x, Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -287f))), _wgslsmith_mod_i32(arg_3.x, arg_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 0u, arg_2), vec3<u32>(arg_2, arg_2, 0u)))).x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), 1f)))));
    global0 = vec2<f32>(-431f, _wgslsmith_f_op_f32(-var_1.b.a.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(select(var_1.c.a.e.x, global0.x, true)))))));
    var_1 = Struct_5(var_1.c.a.e, var_1.b, var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.a.e.xz) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.c.a.e.zx), vec2<f32>(var_1.c.a.e.x, global0.x))) + var_1.c.a.e.zx)));
    return !select(select(!var_1.c.c, func_3(_wgslsmith_mult_i32(21367i, var_1.b.b), vec2<i32>(arg_0.x, 0i), _wgslsmith_f_op_f32(var_1.a.x * 253f), var_1.b).yyz, func_3(arg_0.x, -u_input.b.zy, global0.x, var_1.b).zyy), var_1.c.c, (arg_3.x ^ _wgslsmith_dot_vec3_i32(arg_0, u_input.b)) > -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_5(min(u_input.b, u_input.b), true, func_1(Struct_5(vec3<f32>(global0.x, global0.x, 666f), Struct_3(vec2<f32>(-881f, 352f), -1i, vec3<u32>(35472u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(false, false), u_input.b.x, global0.x, vec3<u32>(38827u, 308u, 1u), vec3<f32>(global0.x, global0.x, -781f)), vec3<u32>(0u, 22872u, 4294967295u), vec3<bool>(false, true, true), true), vec2<f32>(-1000f, global0.x)), true, true), u_input.b));
    var var_1 = ~1u;
    let var_2 = Struct_1(var_0.zx, 5130i ^ u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-139f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - -902f), _wgslsmith_f_op_f32(2000f + global0.x))), var_0.x))), reverseBits(~(~vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2352f, global0.x, _wgslsmith_f_op_f32(global0.x - 1096f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, -784f), vec3<f32>(global0.x, -393f, global0.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1328f, global0.x), vec3<f32>(global0.x, global0.x, -703f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_f_op_f32(func_2(-14574i, Struct_5(vec3<f32>(-629f, global0.x, 585f), Struct_3(vec2<f32>(global0.x, global0.x), 7689i, vec3<u32>(0u, 102949u, 68139u)), Struct_2(Struct_1(vec2<bool>(true, false), u_input.b.x, global0.x, vec3<u32>(52261u, 0u, 4294967295u), vec3<f32>(global0.x, 818f, global0.x)), vec3<u32>(0u, 4294967295u, 4294967295u), var_0, var_0.x), vec2<f32>(-874f, 790f)))), _wgslsmith_f_op_f32(-global0.x))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(41689i, ((2902i << (var_3.d.x % 32u)) & -35474i) ^ ((var_2.b << (var_3.d.x % 32u)) >> (~0u % 32u))));
}

