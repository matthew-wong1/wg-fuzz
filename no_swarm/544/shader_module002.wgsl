struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = vec4<u32>(u_input.a & _wgslsmith_div_u32(min(_wgslsmith_add_u32(u_input.a, 1u), ~19909u), ~4294967295u), _wgslsmith_sub_u32(u_input.a, countOneBits(u_input.a)), min(70562u, u_input.a), abs(~reverseBits(0u)));
    global0 = global1.x;
    var var_1 = Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-353f, arg_0.a, -380f, arg_0.a), vec4<f32>(-729f, arg_0.a, -689f, arg_0.a))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-414f + arg_0.a), -448f, _wgslsmith_f_op_f32(-240f * arg_0.a))), reverseBits(select(var_0.yy, max(var_0.ww, vec2<u32>(var_0.x, 1947u)), true))), var_0);
    let var_2 = Struct_4(select(!select(vec3<bool>(true, false, true), vec3<bool>(global1.x, true, global1.x), global1.x != global1.x), select(!select(vec3<bool>(false, false, global1.x), vec3<bool>(true, global1.x, global1.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, false)), true), vec3<bool>(true, global1.x, false)), vec3<bool>(false, false, any(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, false, global1.x), false)))), var_1.a, Struct_3(187f), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2246f - -1000f)))));
    global1 = select(!(!(!var_2.a)), !vec3<bool>(!global1.x, false, _wgslsmith_f_op_f32(-2652f * -171f) > _wgslsmith_f_op_f32(arg_0.a * -1599f)), select(var_2.a, select(vec3<bool>(true, false, var_2.a.x & var_2.a.x), vec3<bool>(true, true, var_2.a.x), var_2.a), !(!(!var_2.a))));
    return select(-1i, ~(-2147483647i), true) > 2147483647i;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = vec3<bool>(false || arg_1, global1.x, false);
    let var_1 = Struct_1(_wgslsmith_div_u32(1u, 1u), _wgslsmith_f_op_vec4_f32(arg_3 - arg_3), max(_wgslsmith_clamp_vec2_u32(~countOneBits(vec2<u32>(3291u, u_input.a)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(19609u, 0u)), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 1u), ~vec2<u32>(21745u, 1468u)), vec2<u32>(~u_input.a, 1u)), ~(~(~vec2<u32>(u_input.a, 38487u)))));
    let var_2 = vec2<bool>(global1.x, any(!vec4<bool>(arg_2 <= arg_2, true, true, all(vec2<bool>(arg_1, arg_1)))));
    global0 = !var_0.x;
    var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x + arg_3.x))) != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1521f, -154f))), !(!(var_1.c.x == 4294967295u)), !(1f <= var_1.b.x)), !vec3<bool>(var_0.x, func_3(Struct_3(-288f)), !global1.x | func_3(Struct_3(arg_3.x))), any(vec3<bool>(true, true, any(vec4<bool>(var_0.x, false, true, false)) && !global1.x)));
    return var_1.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1510f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(239f - -1000f), _wgslsmith_f_op_f32(trunc(-1754f))))) > arg_0.x;
    global0 = global1.x;
    global0 = !global1.x;
    let var_1 = ~firstLeadingBit(vec4<u32>(arg_2.a, abs(arg_2.a), ~_wgslsmith_clamp_u32(107u, 1u, u_input.a), _wgslsmith_mod_u32(~0u, ~u_input.a)));
    global1 = select(!vec3<bool>(true, false, select(all(vec2<bool>(global1.x, global1.x)), !global1.x, true)), !(!vec3<bool>(true, func_3(Struct_3(arg_2.b.x)), arg_1 < -1i)), global1.x);
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, -1000f)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_5) -> Struct_5 {
    return arg_2;
}

fn func_6(arg_0: Struct_5) -> StorageBuffer {
    global1 = select(func_5(firstTrailingBit(select(vec4<i32>(44378i, 0i, u_input.c, u_input.c), ~vec4<i32>(u_input.b, u_input.b, u_input.b, -37776i), arg_0.a.x)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a.b.x, -330f)), -2147483647i ^ ~u_input.c, arg_0.b.a), arg_0).a.wxy, !arg_0.a.xwy, arg_0.a.xww);
    global0 = !any(arg_0.a.zw);
    var var_0 = arg_0.b.a;
    var var_1 = Struct_4(!(!vec3<bool>(global1.x && global1.x, false, true)), func_5(countOneBits(vec4<i32>(-45191i, 47726i, u_input.b, -1i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 12883i, -18474i, -1i) ^ vec4<i32>(0i, 2147483647i, u_input.c, -52098i), ~vec4<i32>(-2147483647i, -14002i, u_input.b, u_input.c)), Struct_3(var_0.b.x), arg_0).b.a, Struct_3(-925f), Struct_3(1654f));
    global1 = select(var_1.a, vec3<bool>(all(func_5(vec4<i32>(u_input.b, u_input.c, 39499i, u_input.b), Struct_3(480f), arg_0).a) & true, any(arg_0.a.yyz), global1.x), select(!var_1.a, func_5(vec4<i32>(-21250i, max(-2147483647i, -2147483647i), -25133i, min(-12104i, -1i)), Struct_3(_wgslsmith_f_op_f32(-1938f - 756f)), func_5(vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.c), Struct_3(1337f), arg_0)).a.yxz, !vec3<bool>(arg_0.e && var_1.a.x, func_3(Struct_3(var_1.c.a)), false)));
    return StorageBuffer(var_1.d.a);
}

fn func_1() -> StorageBuffer {
    return func_6(func_5(countOneBits(vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.b) ^ -vec4<i32>(-1i, 0i, -85680i, -1i)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-901f, -1202f), vec2<f32>(1431f, 419f), global1.x))), -1026i, Struct_1(u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(-248f, 1988f, 541f, 1815f), vec4<f32>(-1319f, -248f, -675f, 110f)), func_2(482f, false, u_input.b, vec4<f32>(-1114f, 587f, 1000f, -176f)))), Struct_5(select(!vec4<bool>(true, false, true, global1.x), !vec4<bool>(global1.x, true, global1.x, global1.x), global1.x), Struct_2(Struct_1(u_input.a, vec4<f32>(301f, 1000f, 882f, -917f), vec2<u32>(u_input.a, u_input.a)), abs(vec4<u32>(6410u, 4294967295u, 1043u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1136f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), any(vec3<bool>(false, global1.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

