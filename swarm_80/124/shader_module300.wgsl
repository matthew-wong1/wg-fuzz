struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(round(arg_1.b));
    var_0 = min(firstTrailingBit(-14187i ^ (u_input.a.x & 2147483647i)), 1i) ^ -2147483647i;
    var_0 = u_input.a.x;
    var_0 = ~(~u_input.a.x);
    return Struct_3(arg_1, vec4<f32>(-237f, arg_1.b, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) + var_1)), Struct_2(arg_1, arg_1, select(!vec4<bool>(arg_0, arg_1.a.x, true, false), select(vec4<bool>(true, true, arg_0, true), select(vec4<bool>(true, arg_1.a.x, false, false), vec4<bool>(false, arg_1.a.x, false, false), arg_0), any(vec4<bool>(arg_0, arg_0, arg_0, arg_1.a.x))), !(!vec4<bool>(false, true, false, arg_1.d.x)))));
}

fn func_3() -> Struct_1 {
    let var_0 = abs(u_input.c.ywx);
    var var_1 = _wgslsmith_mult_u32(1u, ~86703u);
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(~(~4294967295u), countOneBits(u_input.c.x)) & u_input.b, _wgslsmith_mult_u32(0u, ~(~4294967295u) >> (reverseBits(_wgslsmith_mult_u32(0u, 1u)) % 32u)), reverseBits(101240u), ~25779u);
    let var_3 = false;
    let var_4 = func_2(var_3, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true != var_3, all(vec4<bool>(var_3, var_3, true, false)), false), vec3<bool>(true, var_3, var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f + 266f)), 42506u, !vec2<bool>(1706i < u_input.a.x, var_3))).c;
    return Struct_1(select(select(select(!vec3<bool>(var_4.b.a.x, var_4.b.d.x, true), !var_4.a.a, true), select(vec3<bool>(var_3, false, false), vec3<bool>(var_4.c.x, true, true), !var_4.c.xzz), !(!var_4.c.yyz)), vec3<bool>(any(vec2<bool>(true, var_4.b.d.x)), all(var_4.a.a), true), var_4.c.yzy), 473f, reverseBits(var_0.x), vec2<bool>(50670u == ~(0u | var_0.x), var_3));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c.b;
    var var_1 = arg_1;
    return func_2(!all(func_3().d), Struct_1(arg_1.c.xxz, -1716f, arg_0.c.b.c, func_3().d)).c.b;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_4(func_2(true, Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), _wgslsmith_div_f32(1063f, -405f), u_input.c.x, vec2<bool>(true, true))), func_2(true, func_3()).c, select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), !func_3().a.zy), func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, 324f, 106f, 118f)), vec4<f32>(-753f, -1501f, 708f, -1059f))), vec4<f32>(-1208f, -547f, -1400f, -503f), vec4<bool>(true, false, true, u_input.a.x > u_input.a.x)))), func_2(true || select(false, false, true), func_3()).c);
    let var_1 = func_2(false, func_3()).a.b;
    var var_2 = var_0.c;
    var_0 = Struct_3(var_2.b, vec4<f32>(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(598f + _wgslsmith_f_op_f32(trunc(-132f))))), _wgslsmith_f_op_f32(sign(var_0.b.x)), var_1), var_0.c);
    var var_3 = var_2.b.a;
    return -899f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = u_input.c.yx;
    var_1 = vec2<u32>(0u, min(52224u, var_1.x)) << (max(_wgslsmith_div_vec2_u32(abs(reverseBits(vec2<u32>(u_input.b, 1u))), vec2<u32>(u_input.b, ~12397u)), _wgslsmith_div_vec2_u32(countOneBits(u_input.c.zz), (vec2<u32>(4294967295u, u_input.b) | u_input.c.zx) << ((u_input.c.wy & vec2<u32>(79659u, var_1.x)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_2 = func_2(func_4(Struct_3(func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(103f, var_0, -551f, var_0))) * vec4<f32>(569f, 1582f, -1602f, -972f)), func_2(true, Struct_1(vec3<bool>(true, false, true), -1059f, var_1.x, vec2<bool>(true, true))).c), func_2(false, func_2(any(vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, false), 450f, 0u, vec2<bool>(true, false))).c.b).c, vec2<bool>(func_2(true, Struct_1(vec3<bool>(true, true, true), var_0, 0u, vec2<bool>(true, false))).c.b.d.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), func_2(false, func_2(all(vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, false, true), -600f, 0u, vec2<bool>(true, false))).a).c.b).d.x, Struct_1(!func_4(func_2(true, Struct_1(vec3<bool>(true, true, false), 1542f, 23044u, vec2<bool>(true, false))), func_2(true, Struct_1(vec3<bool>(false, false, false), -174f, 7438u, vec2<bool>(false, true))).c, vec2<bool>(true, true), func_4(Struct_3(Struct_1(vec3<bool>(true, true, true), var_0, 0u, vec2<bool>(false, false)), vec4<f32>(var_0, var_0, 296f, -327f), Struct_2(Struct_1(vec3<bool>(false, false, true), -503f, 1u, vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, true), 714f, 0u, vec2<bool>(false, false)), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), var_0, 4294967295u, vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, false), 985f, 0u, vec2<bool>(false, false)), vec4<bool>(true, false, false, false)), vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, false), 645f, var_1.x, vec2<bool>(false, true)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1086f)) - var_0), u_input.c.x, select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true)) && any(vec4<bool>(true, false, true, false))))).c.b;
    var_1 = ~u_input.c.yy;
    var var_3 = func_2(func_3().d.x, Struct_1(func_4(func_2(select(var_2.a.x, true, var_2.a.x), func_3()), func_2(true, Struct_1(var_2.a, 1405f, 61687u, var_2.d)).c, select(vec2<bool>(var_2.a.x, true), var_2.d, vec2<bool>(var_2.a.x, var_2.a.x)), Struct_1(vec3<bool>(var_2.a.x, var_2.d.x, var_2.d.x), 1038f, ~u_input.c.x, var_2.a.yx)).a, var_2.b, ~(~0u), vec2<bool>(true, max(u_input.a.x, u_input.a.x) < -u_input.a.x))).c;
    var_1 = select(vec2<u32>(func_4(func_2(!var_2.d.x, var_3.a), func_2(!var_3.c.x, func_2(true, var_3.b).a).c, vec2<bool>(false && var_3.b.a.x, all(vec3<bool>(var_2.a.x, var_3.a.a.x, var_3.b.d.x))), var_3.a).c, var_2.c), u_input.c.xz, !vec2<bool>(var_2.a.x, true));
    let var_4 = func_2(func_2(true, func_3()).a.d.x, Struct_1(select(func_3().a, vec3<bool>(false, true, func_3().d.x), false), _wgslsmith_f_op_f32(1092f - _wgslsmith_f_op_f32(-var_0)), 4294967295u, select(var_2.a.zz, var_3.c.yx, var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(reverseBits(0u << (var_3.a.c % 32u)), ~(~0u), !var_4.a.a.x), 4294967295u, ~1u, 1u), var_1.x, -1000f);
}

