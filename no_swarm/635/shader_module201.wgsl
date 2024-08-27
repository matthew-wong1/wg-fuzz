struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(1000f, -665f), Struct_2(vec2<bool>(false, false), Struct_1(-1738f, 67027u, vec2<i32>(2147483647i, 2147483647i), vec2<u32>(47311u, 156896u), vec4<f32>(1048f, -428f, -1373f, -760f)), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 58710i), i32(-2147483648), -1i));

var<private> global1: i32 = -448i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = vec2<i32>(arg_1.x, arg_1.x);
    var var_1 = _wgslsmith_div_vec2_f32(global0.b.b.e.zy, global0.b.b.e.yy);
    let var_2 = global0.a.x;
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-913f, arg_0.x)) - var_1.x), _wgslsmith_div_f32(arg_0.x, 531f)), global0.b);
    let var_3 = Struct_2(vec2<bool>(global0.b.a.x || global0.b.a.x, global0.b.a.x), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -258f) + -1000f))), global0.b.b.b, vec2<i32>(var_0.x, arg_1.x), vec2<u32>(u_input.a, abs(~11324u)), _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(-843f, -399f, var_1.x, var_1.x))), !(!vec4<bool>(false, global0.b.a.x, true, global0.b.a.x))))), vec4<i32>(select(abs(global0.b.d), global0.b.c.x, true) & 25825i, -_wgslsmith_dot_vec2_i32(~global0.b.c.zw, vec2<i32>(6125i, 22987i)), global0.b.b.c.x, _wgslsmith_div_i32(~global0.b.c.x, -2147483647i)), _wgslsmith_div_i32(~_wgslsmith_mult_i32(min(var_0.x, 1i), ~(-2147483647i)), arg_1.x), global0.b.d);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.e.x, _wgslsmith_f_op_f32(-var_3.b.a)) * vec2<f32>(global0.b.b.a, var_3.b.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-329f - var_3.b.e.x), _wgslsmith_f_op_f32(2168f * 848f)))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-721f, arg_0.b.b.a, arg_0.a.x, 554f), vec4<f32>(global0.a.x, global0.a.x, arg_0.a.x, global0.a.x))))), countOneBits(vec3<i32>(~arg_0.b.d, _wgslsmith_div_i32(global0.b.b.c.x, global0.b.e), global0.b.b.c.x)))), Struct_2(!vec2<bool>(any(arg_0.b.a), arg_0.b.a.x), arg_0.b.b, ~vec4<i32>(_wgslsmith_add_i32(-35231i, 32295i), 4560i, 1i, -2147483647i), ~(~(20551i & global0.b.c.x)), ~_wgslsmith_clamp_i32(arg_0.b.d, 33844i, 2147483647i)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a.x, -1000f))) + _wgslsmith_div_vec2_f32(global0.b.b.e.yw, vec2<f32>(-2504f, arg_0.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, 1000f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, -489f), _wgslsmith_f_op_vec2_f32(arg_0.b.b.e.zy - vec2<f32>(arg_0.b.b.e.x, arg_0.a.x)), vec2<bool>(arg_0.b.a.x, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b.e.x, 103f) * global0.a)))), global0.b);
    let var_1 = vec2<bool>(any(select(!select(arg_3, vec3<bool>(true, false, global0.b.a.x), arg_2), !vec3<bool>(arg_0.b.a.x, false, true), vec3<bool>(all(vec3<bool>(var_0.b.a.x, false, true)), true, true))), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.a)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global0.a, arg_0.b.b.e.ww))));
    var var_3 = ~firstLeadingBit(~(~(var_0.b.b.d & var_0.b.b.d)));
    return arg_0.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = select(abs(firstLeadingBit(arg_0.b)), 4294967295u, arg_0.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-654f, -498f))));
    var var_1 = vec4<bool>(!global0.b.a.x, false, true, arg_0.e.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e.x))) + -1363f));
    global0 = arg_1;
    return func_2(Struct_3(global0.b.b.e.wy, global0.b), 1u, ~_wgslsmith_sub_u32(global0.b.b.d.x, 1u) == (_wgslsmith_clamp_u32(~11838u, 0u, ~arg_0.b) >> (arg_0.b % 32u)), select(!var_1.zxw, !(!select(var_1.wzy, vec3<bool>(var_1.x, global0.b.a.x, true), var_1.zyy)), var_1.xyz));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = global0.b.c.yx;
    let var_1 = ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, -2677i), select(vec3<i32>(5857i, -1i, var_0.x), global0.b.c.wxx, arg_1)), 0i));
    global0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_div_f32(-727f, _wgslsmith_f_op_f32(-arg_0.b.b.b.e.x))), vec2<f32>(global0.b.b.e.x, global0.b.b.e.x)), global0.b);
    global0 = arg_0.b;
    var var_2 = vec4<i32>(var_1, ~global0.b.b.c.x, -23199i, -1i);
    return Struct_4(select(1u, (_wgslsmith_add_u32(u_input.a, 4294967295u) ^ ~68925u) ^ ~min(4294967295u, arg_0.a.b), arg_1.x), arg_0.a, vec4<u32>(global0.b.b.d.x, arg_0.b.b.b.d.x, u_input.a, _wgslsmith_mult_u32(0u, arg_0.b.b.b.b | u_input.a) << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e.x)) - _wgslsmith_f_op_f32(trunc(global0.b.b.e.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32) -> vec2<i32> {
    var var_0 = func_5(Struct_5(func_4(func_2(Struct_3(vec2<f32>(1000f, global0.a.x), global0.b), ~39439u, arg_1.b.a.x, !vec3<bool>(true, global0.b.a.x, true)), arg_1, vec2<i32>(firstTrailingBit(77122i), arg_2)), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.b.e.xy * global0.a), _wgslsmith_f_op_vec2_f32(-arg_1.a)), Struct_2(vec2<bool>(global0.b.a.x, arg_1.b.a.x), func_2(arg_1, arg_1.b.b.b, true, vec3<bool>(false, false, global0.b.a.x)), vec4<i32>(26067i, -2147483647i, -19143i, arg_0.x), -2147483647i, 0i))), vec3<bool>(!any(vec4<bool>(true, arg_1.b.a.x, true, false)), (reverseBits(u_input.a) & countOneBits(global0.b.b.b)) < global0.b.b.b, arg_1.b.a.x | global0.b.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1181f, global0.a.x)) + vec2<f32>(771f, _wgslsmith_f_op_f32(-509f + global0.a.x))) - arg_1.a) * global0.a);
    global1 = -(~(~(~(arg_1.b.e | -7042i))));
    let var_2 = arg_1.b.c.xyy;
    var var_3 = _wgslsmith_mod_vec4_i32(global0.b.c, arg_1.b.c);
    return select(var_0.b.c, reverseBits(abs(-(~arg_0.zx))), global0.b.a.x);
}

fn func_6(arg_0: Struct_5, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global0.b.b.e.x)), _wgslsmith_f_op_f32(min(arg_0.a.e.x, -1399f)))))), global0.b);
    let var_1 = global0.b.b;
    var var_2 = Struct_4(1u, func_4(Struct_1(func_4(Struct_1(1000f, u_input.a, var_0.b.c.xx, vec2<u32>(0u, 85080u), arg_0.b.b.b.e), Struct_3(vec2<f32>(arg_0.b.b.b.a, -301f), Struct_2(vec2<bool>(false, global0.b.a.x), arg_0.b.b.b, vec4<i32>(-2147483647i, arg_1, var_0.b.e, var_1.c.x), global0.b.b.c.x, 2147483647i)), ~vec2<i32>(582i, arg_0.b.b.c.x)).a, _wgslsmith_clamp_u32(0u, 20823u, 4294967295u) | var_1.d.x, var_0.b.b.c, _wgslsmith_clamp_vec2_u32(global0.b.b.d, vec2<u32>(0u, 107713u), vec2<u32>(4294967295u, var_1.b)) ^ ~var_1.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global0.b.b.e.x, -1000f, 512f)))), Struct_3(vec2<f32>(1525f, _wgslsmith_f_op_vec2_f32(func_3(arg_0.a.e, vec3<i32>(arg_1, 1i, arg_1))).x), global0.b), var_0.b.b.c), vec4<u32>(5048u, ~(~(~var_0.b.b.d.x)), ~u_input.a, _wgslsmith_sub_u32(arg_0.b.b.b.d.x, arg_0.a.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.b.a))));
    return Struct_2(vec2<bool>(!any(!vec2<bool>(arg_0.b.b.a.x, arg_0.b.b.a.x)), -var_0.b.c.x <= _wgslsmith_mult_i32(arg_1, 47981i)), func_4(func_5(Struct_5(var_2.b, Struct_3(var_0.a, Struct_2(vec2<bool>(true, arg_0.b.b.a.x), global0.b.b, vec4<i32>(-2147483647i, var_0.b.c.x, global0.b.b.c.x, arg_0.a.c.x), -7104i, global0.b.b.c.x))), !vec3<bool>(var_0.b.a.x, false, var_0.b.a.x)).b, arg_0.b, arg_0.b.b.c.xz << ((~var_0.b.b.d >> (select(arg_0.a.d, var_2.b.d, vec2<bool>(arg_2.x, var_0.b.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), vec4<i32>(-(abs(global0.b.d) ^ (-1i | global0.b.d)), -2147483647i, _wgslsmith_mult_i32(1i >> (var_2.c.x % 32u), var_2.b.c.x), _wgslsmith_div_i32(arg_1, abs(_wgslsmith_dot_vec3_i32(var_0.b.c.xyy, vec3<i32>(-2147483647i, var_2.b.c.x, arg_0.b.b.b.c.x))))), 44971i, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(global0.b.e);
    global1 = -350i;
    let var_0 = Struct_3(vec2<f32>(global0.b.b.e.x, _wgslsmith_f_op_f32(f32(-1f) * -128f)), func_6(Struct_5(Struct_1(542f, 74336u, func_1(global0.b.c.wzw, Struct_3(global0.b.b.e.wz, global0.b), 1682i), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 50542u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-global0.b.b.e)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(185f, global0.a.x) + global0.a), Struct_2(global0.b.a, Struct_1(global0.a.x, 4294967295u, global0.b.b.c, global0.b.b.d, global0.b.b.e), vec4<i32>(11991i, -2147483647i, global0.b.c.x, global0.b.b.c.x), -2147483647i, global0.b.b.c.x))), global0.b.d, vec3<bool>(!any(vec4<bool>(false, global0.b.a.x, false, false)), !(global0.b.b.c.x <= 1i), global0.b.a.x)));
    global1 = -_wgslsmith_div_i32(i32(-1i) * -var_0.b.c.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(19704i, var_0.b.b.c.x), ~var_0.b.e)) & func_1(countOneBits(countOneBits(-global0.b.c.zwx)), var_0, var_0.b.e | (var_0.b.b.c.x & 0i)).x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_0.b.b.d), global0.b.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.b.e.wyy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.b.e.xxz, vec3<f32>(-2011f, -522f, 269f), vec3<bool>(true, true, false))) + vec3<f32>(-618f, var_0.b.b.e.x, global0.b.b.a))), _wgslsmith_f_op_vec3_f32(var_0.b.b.e.xzx - vec3<f32>(_wgslsmith_f_op_f32(-global0.b.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(floor(-439f))))), var_0.b.b.a, 47639i >> (var_0.b.b.d.x % 32u));
}

