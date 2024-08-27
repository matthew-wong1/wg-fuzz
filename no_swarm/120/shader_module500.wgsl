struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = !select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), !select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x), true), vec4<bool>(!any(arg_0), arg_0.x, true, u_input.a > u_input.b.x), select(vec4<bool>(true && arg_0.x, true, all(vec3<bool>(true, arg_0.x, arg_0.x)), arg_0.x), vec4<bool>(true, true, arg_0.x, false), !(!vec4<bool>(false, true, arg_0.x, arg_0.x))));
    var var_1 = Struct_1(481f, ~_wgslsmith_add_u32(0u, ~0u));
    var_0 = !select(select(vec4<bool>(false, 1i <= u_input.b.x, any(vec4<bool>(arg_0.x, false, arg_0.x, var_0.x)), any(vec4<bool>(var_0.x, true, arg_0.x, arg_0.x))), !(!vec4<bool>(var_0.x, true, arg_0.x, arg_0.x)), select(!vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(arg_0.x, var_0.x, arg_0.x, false), any(vec2<bool>(var_0.x, true)))), !select(vec4<bool>(var_0.x, arg_0.x, true, var_0.x), vec4<bool>(arg_0.x, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, arg_0.x, var_0.x), vec4<bool>(true, false, arg_0.x, true), false)), -1i > ((-2147483647i << (var_1.b % 32u)) | -60051i));
    var_0 = !select(vec4<bool>(true, arg_0.x, false, arg_0.x), select(vec4<bool>(false, arg_0.x, all(vec3<bool>(arg_0.x, true, arg_0.x)), true), vec4<bool>(arg_0.x, false, false, select(arg_0.x, true, true)), select(!vec4<bool>(var_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, var_0.x, arg_0.x, true), select(vec4<bool>(arg_0.x, arg_0.x, false, var_0.x), vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false)))), vec4<bool>(true, true, false, true));
    var_0 = vec4<bool>(!any(!select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, true))), !select(arg_0.x, !(var_1.b <= 48984u), false), ~39402u != firstTrailingBit((var_1.b & 1u) & var_1.b), all(select(select(vec2<bool>(var_0.x, true), !vec2<bool>(arg_0.x, false), !var_0.x), vec2<bool>(arg_0.x && false, all(vec4<bool>(arg_0.x, true, false, true))), false)));
    return !all(select(select(!var_0.ywy, !vec3<bool>(arg_0.x, false, true), select(vec3<bool>(arg_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true))), select(vec3<bool>(var_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, var_0.x), !var_0.www), any(!vec4<bool>(true, true, arg_0.x, false))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = Struct_4(Struct_3(select(vec4<u32>(arg_0.b, ~72909u, arg_0.b, ~4981u), ~(~vec4<u32>(arg_0.b, 0u, arg_0.b, 1u)), true), Struct_2(-1i, ~_wgslsmith_add_i32(-16097i, -4465i), arg_0, Struct_1(803f, ~4294967295u)), !vec2<bool>(arg_1, arg_1 & arg_1), !(!select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), false))), ~_wgslsmith_div_vec4_i32(vec4<i32>(~30887i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 29424i), u_input.b.yy), 1i, -u_input.b.x), vec4<i32>(-u_input.b.x, countOneBits(u_input.a), -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1686i, u_input.b.x, 40928i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.b.x)))));
    let var_1 = vec2<i32>(-13252i >> (arg_0.b % 32u), 0i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1775f, var_0.a.b.d.a) + vec2<f32>(789f, 213f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1233f, arg_0.a) + vec2<f32>(var_0.a.b.c.a, -759f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), var_0.a.b.d.a))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 672f) * arg_0.a) + _wgslsmith_f_op_f32(trunc(arg_0.a)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * _wgslsmith_f_op_f32(-var_0.a.b.c.a))) + arg_0.a) + _wgslsmith_div_f32(var_0.a.b.c.a, _wgslsmith_f_op_f32(floor(1014f))));
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = !select(!(!select(vec3<bool>(true, arg_0, arg_3), vec3<bool>(false, true, arg_1.d.x), arg_3)), !(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_3), vec3<bool>(arg_3, false, arg_3))), arg_1.d.x);
    let var_1 = _wgslsmith_mult_i32(-firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.b.b, u_input.b.x), _wgslsmith_add_i32(arg_1.b.a, -2147483647i))), max(_wgslsmith_sub_i32(~(-u_input.b.x), i32(-1i) * -9085i), min(_wgslsmith_add_i32(arg_1.b.b, _wgslsmith_sub_i32(u_input.a, u_input.a)), arg_1.b.a)));
    var var_2 = -631f;
    var_0 = vec3<bool>(true, true && !(!arg_0), true);
    let var_3 = true || arg_0;
    return _wgslsmith_f_op_f32(func_4(arg_1.b.c, !(!(!func_3(arg_1.d)))));
}

fn func_1() -> Struct_2 {
    var var_0 = all(vec2<bool>(!(1274f > _wgslsmith_f_op_f32(func_2(false, Struct_3(vec4<u32>(0u, 1u, 93727u, 0u), Struct_2(u_input.b.x, u_input.b.x, Struct_1(2066f, 57996u), Struct_1(-600f, 39889u)), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(-162f, 0u), false))), true));
    var_0 = func_3(vec2<bool>(func_3(vec2<bool>(true, true)) & false, true));
    var var_1 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true));
    var var_2 = _wgslsmith_sub_u32(max(22222u, ~(min(61083u, 0u) >> (_wgslsmith_add_u32(1u, 0u) % 32u))), ~54732u);
    let var_3 = Struct_2(u_input.b.x, _wgslsmith_dot_vec2_i32(~min(-u_input.b.zz, u_input.b.xz), u_input.b.zy), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1706f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1092f + -120f), _wgslsmith_div_f32(-2143f, -739f)))), select(~firstTrailingBit(32321u), 1u, true)), Struct_1(-850f, abs(min(~0u, 1u))));
    return Struct_2(countOneBits(countOneBits(1i & u_input.a)) & u_input.b.x, min(var_3.a, _wgslsmith_sub_i32(u_input.a, -35951i)), var_3.d, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = any(vec3<bool>(var_0.d.a != _wgslsmith_f_op_f32(var_0.c.a + _wgslsmith_f_op_f32(trunc(var_0.d.a))), false, false));
    var_0 = Struct_2(var_0.b, var_0.a, func_1().d, func_1().c);
    var var_2 = Struct_3(vec4<u32>(var_0.d.b, _wgslsmith_mult_u32(var_0.d.b | var_0.d.b, _wgslsmith_dot_vec3_u32(vec3<u32>(34030u, var_0.c.b, 0u), vec3<u32>(5235u, 0u, 87341u))) | reverseBits(0u), 1u, reverseBits(0u)), func_1(), vec2<bool>(any(select(select(vec3<bool>(var_1, false, false), vec3<bool>(false, var_1, true), true), !vec3<bool>(var_1, var_1, var_1), true)), var_1), select(vec2<bool>(true, true), select(vec2<bool>(var_1, var_0.d.b <= var_0.d.b), vec2<bool>(true, true), !vec2<bool>(var_1, var_1)), !select(vec2<bool>(false, false), select(vec2<bool>(var_1, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(var_1, false), vec2<bool>(var_1, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, -285f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -947f))), -29059i);
}

