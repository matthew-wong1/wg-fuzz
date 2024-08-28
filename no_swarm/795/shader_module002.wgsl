struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a.x >> (u_input.b.x % 32u);
    var_0 = -79012i;
    return Struct_2(!(!(!any(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)) - 1f)), Struct_1(abs(vec3<i32>(~u_input.a.x, i32(-1i) * -2147483647i, -12227i))), Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -2147483647i))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = !func_2().a;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(199f, _wgslsmith_f_op_f32(arg_0.b * 728f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, false))))), _wgslsmith_f_op_f32(f32(-1f) * -801f)), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(abs(arg_0.b))) < _wgslsmith_f_op_f32(-arg_0.b))));
    var var_2 = ~select(vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(1i, -23379i), arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.a.x), arg_0.c.a)) >> ((vec4<u32>(0u, u_input.b.x, 1u, arg_2.x) | ~arg_2) % vec4<u32>(32u)), vec4<i32>(~u_input.a.x, max(68563i, 10817i), -arg_0.d.a.x, 4715i) | -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.a.x, -37928i, -24957i, -30254i), vec4<i32>(arg_0.c.a.x, arg_1.a.x, arg_1.a.x, u_input.a.x)), true);
    var var_3 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_0.d.a.x, _wgslsmith_mod_i32(0i, arg_1.a.x)), reverseBits(arg_0.c.a.x)) & -2147483647i, -14115i, var_2.x, countOneBits(~9126i));
    var var_4 = Struct_3(func_2().c, _wgslsmith_clamp_i32(max(firstLeadingBit(select(arg_1.a.x, arg_1.a.x, var_0)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.a.x), vec2<i32>(-72610i, u_input.a.x))), var_2.x, -20493i), var_0, Struct_2(arg_0.a, arg_0.b, func_2().c, Struct_1(_wgslsmith_clamp_vec3_i32(var_2.zwx, -vec3<i32>(-1i, 2147483647i, -18960i), ~var_2.yxz)), vec2<i32>(u_input.a.x, ~_wgslsmith_clamp_i32(64217i, -1i, -1i))));
    return func_2().c;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(any(select(vec4<bool>(true, true, false, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), true)), 1f, Struct_1(-vec3<i32>(29731i, u_input.a.x | u_input.a.x, 2147483647i << (u_input.b.x % 32u))), func_3(func_2(), Struct_1(vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 0i, 5649i), -3539i >> (u_input.b.x % 32u))), u_input.b), vec2<i32>(29964i, ~u_input.a.x));
    var var_1 = Struct_3(var_0.c, reverseBits(1i), var_0.a, func_2());
    var_0 = func_2();
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(vec3<i32>(reverseBits(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), u_input.a.x, _wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1622i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -32032i, u_input.a.x, -1i)), _wgslsmith_add_i32(0i, u_input.a.x)))), i32(-1i) * -40357i, (u_input.b.x == u_input.b.x) | false, func_1());
    var_0 = Struct_3(Struct_1(vec3<i32>(-1i) * -vec3<i32>(1i, var_0.d.d.a.x, 39685i)), _wgslsmith_mod_i32(1235i, u_input.a.x), !var_0.d.a, Struct_2(true || (var_0.c == var_0.c), _wgslsmith_f_op_f32(ceil(var_0.d.b)), func_1().d, Struct_1(select(var_0.a.a, vec3<i32>(-1i, var_0.a.a.x, 2147483647i), vec3<bool>(true, var_0.c, var_0.c)) & var_0.d.d.a), max(~func_1().d.a.zy, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b), vec2<i32>(-37282i, -50938i)), u_input.a.x))));
    var_0 = Struct_3(var_0.a, 0i, _wgslsmith_f_op_f32(max(-159f, _wgslsmith_div_f32(var_0.d.b, var_0.d.b))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) - var_0.d.b))), func_2());
    let var_1 = u_input.b.wz;
    var var_2 = Struct_3(Struct_1(var_0.d.d.a), u_input.a.x, all(vec2<bool>(true != !var_0.d.a, -9985i != var_0.a.a.x)), Struct_2(select(var_1.x >= abs(u_input.b.x), true, false), var_0.d.b, func_3(func_1(), func_3(Struct_2(false, var_0.d.b, Struct_1(var_0.a.a), var_0.a, u_input.a), var_0.a, vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, u_input.b.x)), ~(~vec4<u32>(u_input.b.x, var_1.x, 0u, 55570u))), func_2().d, func_3(var_0.d, func_1().d, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, u_input.b.x, 29798u, var_1.x), u_input.b, u_input.b)).a.xz));
    let var_3 = select(!vec3<bool>(any(!vec4<bool>(var_0.d.a, true, var_0.d.a, var_2.c)), !func_1().a, var_0.d.a), select(vec3<bool>(true, true, false), vec3<bool>(all(vec2<bool>(false, var_0.c)) | true, var_1.x == var_1.x, func_2().a), all(vec2<bool>(var_2.c, all(vec2<bool>(var_0.c, var_2.d.a))))), !vec3<bool>(any(vec2<bool>(true, true)), var_2.a.a.x >= -8953i, _wgslsmith_f_op_f32(-var_0.d.b) < _wgslsmith_f_op_f32(floor(var_0.d.b))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f - var_2.d.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f))));
    var var_5 = ~(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 39892u), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b);
}

