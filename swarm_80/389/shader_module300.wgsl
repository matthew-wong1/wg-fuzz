struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = vec2<bool>(global0.b, any(vec2<bool>(true, true)));
    var var_1 = ~select(~u_input.a.zy, ~_wgslsmith_div_vec2_u32(reverseBits(u_input.a.xy), u_input.a.xz << (u_input.a.yx % vec2<u32>(32u))), vec2<bool>(true, global0.b));
    var var_2 = global0.a;
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(exp2(global0.a))) * -1060f)), var_0.x, var_0);
    var_1 = min(_wgslsmith_clamp_vec2_u32(~u_input.a.zy ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x) ^ vec2<u32>(u_input.a.x, 22051u), _wgslsmith_mod_vec2_u32(u_input.a.zy, u_input.a.xy)), ~reverseBits(u_input.a.xz), abs(vec2<u32>(~var_1.x, countOneBits(37909u)))), ~u_input.a.yx);
    return global0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(global0.a - 766f))) - arg_1.x), ~1u >= u_input.a.x, vec2<bool>(true != select(true, func_3(arg_2.x), arg_0.c.x), !(arg_0.b != all(vec4<bool>(global0.b, false, false, arg_0.c.x)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(197f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -262f)))), all(arg_0.c), !select(vec2<bool>(true, u_input.a.x > u_input.a.x), vec2<bool>(false, false), _wgslsmith_f_op_f32(round(global0.a)) != arg_1.x));
    global0 = arg_0;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a)))) * _wgslsmith_f_op_f32(-global0.a)), !global0.b, !(!vec2<bool>(arg_0.b, false)));
    var_0 = arg_0;
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.x, 1i), max(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -31499i), vec3<i32>(-1i, -2147483647i, arg_2.x)))), 2147483647i) >> (max(~u_input.a.x, 1u) % 32u);
}

fn func_4(arg_0: i32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -561f), (~(~21691u) & u_input.a.x) <= u_input.a.x, global0.c);
    var var_0 = vec3<bool>(true, !func_3(0i), any(select(select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), !vec3<bool>(false, global0.c.x, true), !global0.b), vec3<bool>(all(vec4<bool>(global0.c.x, false, global0.c.x, global0.b)), false, true), select(select(vec3<bool>(false, global0.b, global0.c.x), vec3<bool>(false, false, global0.c.x), true), !vec3<bool>(global0.c.x, global0.b, global0.c.x), !global0.c.x))));
    var var_1 = Struct_1(global0.a, any(vec2<bool>(global0.c.x, select(global0.c.x, var_0.x && false, all(vec4<bool>(var_0.x, false, true, true))))), vec2<bool>(var_0.x, true));
    let var_2 = Struct_1(var_1.a, !(!global0.c.x), select(select(!vec2<bool>(false, var_1.b), select(vec2<bool>(true, false), select(vec2<bool>(var_0.x, false), var_1.c, false), select(global0.c, vec2<bool>(var_1.c.x, true), global0.c)), vec2<bool>(true, true)), !vec2<bool>(var_0.x, any(vec3<bool>(var_0.x, var_1.c.x, var_0.x))), select(select(!vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, global0.b), true), vec2<bool>(true, true), vec2<bool>(var_0.x, global0.c.x))));
    var var_3 = vec4<i32>(countOneBits(-_wgslsmith_mult_i32(~arg_0, abs(arg_0))), arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(0i), 2147483647i) >> (vec2<u32>(~u_input.a.x, 1u & u_input.a.x) % vec2<u32>(32u)), vec2<i32>(~arg_0, arg_0 | arg_0) << (~select(vec2<u32>(u_input.a.x, 1u), u_input.a.yz, var_2.c) % vec2<u32>(32u))), firstTrailingBit(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(-2147483647i, 55619i)))) ^ arg_0);
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = 26182u;
    let var_1 = !global0.c;
    let var_2 = u_input.a.x;
    var var_3 = vec2<u32>(u_input.a.x, 1u);
    global0 = func_4(func_2(Struct_1(global0.a, var_1.x, vec2<bool>(false, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(443f, -1163f, global0.a, global0.a)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, 10847i)), vec2<i32>(12604i, -51439i) << (vec2<u32>(0u, var_0) % vec2<u32>(32u)))) << ((_wgslsmith_add_u32(var_0, 1u & var_0) & abs(u_input.a.x)) % 32u));
    return Struct_1(_wgslsmith_f_op_f32(-global0.a), var_1.x, func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -13048i), vec2<i32>(0i, -67459i)), select(vec2<i32>(14132i, 15931i), vec2<i32>(7714i, -1i), false)), ~(-vec2<i32>(32976i, -1i)))).c);
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_2;
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), !arg_2.c.x, global0.c);
    return arg_2;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(-747f, _wgslsmith_f_op_f32(max(1251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + -848f) * _wgslsmith_f_op_f32(global0.a + -568f)))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_i32(arg_0.x, arg_0.x)).a + arg_2.a) > _wgslsmith_f_op_f32(-arg_3.a), !(!select(select(vec2<bool>(true, arg_3.c.x), vec2<bool>(true, true), vec2<bool>(true, global0.c.x)), vec2<bool>(global0.b, arg_2.b), vec2<bool>(true, true))));
    global0 = func_4(_wgslsmith_div_i32(-39962i, ~8935i));
    var var_1 = var_0;
    let var_2 = arg_0.x;
    var var_3 = func_4(61891i);
    return func_1().b;
}

fn func_7(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    global0 = func_1();
    global0 = Struct_1(global0.a, all(global0.c), func_4(arg_2 << (arg_0.x % 32u)).c);
    let var_0 = Struct_1(-1597f, func_3(~(-1i)), vec2<bool>(select(~arg_2 <= -8902i, global0.c.x, false), func_4(~(~arg_2)).b));
    let var_1 = func_4(-34489i);
    let var_2 = Struct_1(arg_3.x, !any(!select(arg_1, arg_1, true)), func_5(var_1.c.x, global0.a, var_0).c);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(u_input.a, vec4<bool>(!(_wgslsmith_f_op_f32(-global0.a) >= -1003f), func_6(~vec4<i32>(23622i, 2147483647i, -1i, -2147483647i), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 7762u, 0u)), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 47582u)), func_5(!global0.c.x, -2876f, func_1()), func_5(all(vec3<bool>(false, global0.c.x, true)), -954f, func_5(true, 1717f, Struct_1(474f, global0.b, vec2<bool>(true, true))))), !(!any(vec2<bool>(global0.b, global0.c.x))), 1i <= (1165i << (min(u_input.a.x, 1u) % 32u))), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -476f) * _wgslsmith_f_op_f32(-1339f * global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * 1134f) - _wgslsmith_f_op_f32(-global0.a)), 496f)));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u ^ ~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_div_u32(max(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), 20272u)), u_input.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1004f - global0.a)))), _wgslsmith_f_op_f32(sign(func_4(1i).a)), -1546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_clamp_u32(~firstLeadingBit(~u_input.a.x), 23651u, 106054u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, func_2(Struct_1(377f, false, vec2<bool>(var_0.b, true)), vec4<f32>(373f, 1541f, 1290f, 462f), vec2<i32>(2147483647i, 0i)) >> (4294967295u % 32u), -(i32(-1i) * -11173i)), select(vec3<i32>(-1i) * -vec3<i32>(-9357i, -2147483647i, 10138i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-62628i, 24791i, -8677i), vec3<i32>(24990i, -44200i, -2147483647i)), vec3<bool>(global0.b || true, false | var_0.c.x, false || var_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, global0.a, -649f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, var_0.a)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, var_0.a, -426f), vec3<f32>(var_0.a, global0.a, -2617f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global0.a, var_0.a))))));
}

