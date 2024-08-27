struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), 78023i, vec3<f32>(-202f, 1000f, -605f), vec3<i32>(-1i, -6118i, 0i), vec3<bool>(true, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = Struct_1(global0.a, min(~(global0.d.x >> (~21775u % 32u)), ~(~_wgslsmith_mod_i32(3474i, global0.d.x))), global0.c, ~vec3<i32>(abs(_wgslsmith_div_i32(global0.d.x, global0.b)), global0.d.x, -20713i), global0.a.yzw);
    return !select(!vec4<bool>(var_0.b == -29685i, all(global0.a), true, global0.a.x), select(global0.a, vec4<bool>(false, !var_0.e.x, false, false), global0.a.x), !select(arg_0.b.x, false, true));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = 515f;
    global0 = Struct_1(func_3(Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x - global0.c.x))), select(global0.e.zz, global0.a.wz, global0.e.x))), reverseBits(91290i), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-823f + _wgslsmith_f_op_f32(floor(var_0))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(floor(var_0))), firstTrailingBit(firstLeadingBit(max(vec3<i32>(-4731i, global0.d.x, global0.b), abs(vec3<i32>(global0.b, -27929i, -1i))))), func_3(Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), _wgslsmith_f_op_f32(min(-729f, var_0)))), !vec2<bool>(false, global0.e.x))).wwz);
    var var_1 = Struct_2(Struct_1(vec4<bool>(global0.e.x, true, all(global0.a) && !global0.e.x, true), -29948i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global0.c, vec3<f32>(272f, var_0, global0.c.x)), global0.c)))), vec3<i32>(global0.d.x >> (arg_0 % 32u), -min(global0.b, 2147483647i), global0.b), func_3(Struct_5(-1714f, vec2<bool>(true, global0.e.x))).www), Struct_1(global0.a, ~_wgslsmith_dot_vec2_i32(~global0.d.yz, max(global0.d.zz, global0.d.zz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, var_0, 135f) * vec3<f32>(-1000f, -353f, -234f)))), global0.d, global0.a.wyx), reverseBits(_wgslsmith_add_u32(46658u, u_input.d.x)), Struct_1(!(!func_3(Struct_5(602f, global0.a.ww))), _wgslsmith_add_i32(global0.b, (global0.b | global0.d.x) & (-60050i & global0.d.x)), global0.c, vec3<i32>(global0.b, global0.d.x, firstLeadingBit(select(global0.b, global0.d.x, false))), !global0.e), Struct_1(global0.a, select(countOneBits(global0.b), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-20391i, -37961i), global0.d.x << (121785u % 32u)), all(!global0.a)), global0.c, ~(-min(global0.d, vec3<i32>(global0.b, 8823i, -2147483647i))), global0.a.zyx));
    var var_2 = Struct_3(var_1.d, select(vec2<bool>(false, any(select(global0.e.zz, vec2<bool>(false, false), global0.e.zx))), vec2<bool>(func_3(Struct_5(2927f, vec2<bool>(global0.a.x, true))).x, var_1.d.a.x), all(vec3<bool>(true && global0.a.x, true, false))));
    var_2 = Struct_3(var_2.a, var_1.e.a.ww);
    return true;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(!(!global0.a), -42591i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(663f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1461f, global0.c.x)), _wgslsmith_f_op_f32(global0.c.x - -372f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(global0.c.x - global0.c.x), _wgslsmith_f_op_f32(-global0.c.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, -1654f, -169f)), _wgslsmith_f_op_vec3_f32(global0.c - global0.c))))), -reverseBits(~global0.d), vec3<bool>(true, !(!all(global0.a.wxy)), global0.e.x || global0.a.x));
    global0 = Struct_1(vec4<bool>(global0.e.x, func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(4294967295u, u_input.e.x, 1u))) == (global0.b == global0.d.x), false, !global0.a.x), global0.b, global0.c, max(vec3<i32>(_wgslsmith_clamp_i32(global0.d.x, -80997i, 34127i), global0.b ^ global0.d.x, 1i) << (u_input.b % vec3<u32>(32u)), countOneBits(vec3<i32>(~2147483647i, _wgslsmith_mult_i32(global0.b, 2147483647i), 17977i >> (u_input.e.x % 32u)))), select(!(!select(vec3<bool>(true, global0.e.x, global0.e.x), global0.a.wxy, global0.e)), global0.e, func_2(u_input.d.x)));
    var var_0 = 1u;
    var var_1 = Struct_5(-549f, func_3(Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.x))), global0.e.zz)).yw);
    var var_2 = Struct_1(vec4<bool>(var_1.b.x, all(vec4<bool>(any(global0.e), any(global0.a), var_1.b.x == var_1.b.x, var_1.b.x | var_1.b.x)), true || (var_1.b.x && all(var_1.b)), any(vec4<bool>(var_1.b.x, !global0.a.x, false, true))), countOneBits(global0.d.x), global0.c, vec3<i32>(select(-41890i, abs(1i), true), global0.d.x, 1i), func_3(Struct_5(-703f, func_3(Struct_5(var_1.a, vec2<bool>(false, global0.e.x))).wx)).yzw);
    return Struct_1(vec4<bool>(true, ~1u >= (0u ^ u_input.e.x), true, global0.a.x), ~_wgslsmith_div_i32(~global0.d.x >> (u_input.e.x % 32u), 36250i), var_2.c, min((global0.d ^ ~global0.d) >> (select(u_input.b | vec3<u32>(u_input.e.x, 40752u, 1u), vec3<u32>(0u, u_input.e.x, 0u), vec3<bool>(global0.e.x, true, false)) % vec3<u32>(32u)), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.b, var_2.d.x, global0.d.x, global0.b)), -vec4<i32>(1i, -23410i, global0.d.x, global0.b)), -2147483647i)), !var_2.a.wyz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = !select(any(global0.a), ~(20418i ^ global0.d.x) < -21814i, func_1().a.x);
    let var_1 = global0.e.x;
    let var_2 = vec2<u32>(4294967295u, u_input.b.x);
    let var_3 = global0.e.x;
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x);
}

