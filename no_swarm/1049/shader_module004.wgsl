struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(min(-1i, u_input.c), -2147483647i, arg_1 >> (4294967295u % 32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(12232i, arg_1, 0i), vec3<i32>(0i, u_input.c, -2147483647i)) >> (_wgslsmith_div_vec3_u32(select(u_input.b, vec3<u32>(1u, 1u, 4937u), arg_0.x), u_input.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32((vec3<i32>(arg_1, 0i, u_input.c) >> (vec3<u32>(u_input.a, 5333u, u_input.a) % vec3<u32>(32u))) | (vec3<i32>(0i, -32634i, arg_1) | vec3<i32>(u_input.c, arg_1, arg_1)), firstTrailingBit(vec3<i32>(u_input.c, 0i, u_input.c)))));
    var var_1 = Struct_3(select(vec4<bool>(true, !arg_0.x | true, select(!arg_0.x, true, arg_0.x != true), all(arg_0.yx)), vec4<bool>(arg_0.x && false, select(true, true && arg_0.x, true), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), arg_0.x), arg_0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-144f + 2215f), _wgslsmith_f_op_f32(trunc(1175f)), _wgslsmith_f_op_f32(step(-1108f, -298f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1134f, -893f, arg_0.x)), -551f, _wgslsmith_f_op_f32(select(824f, -320f, var_1.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-238f, 570f, -978f), vec3<f32>(-799f, 931f, -1107f), false))), vec3<f32>(_wgslsmith_f_op_f32(-899f - 151f), -1690f, _wgslsmith_f_op_f32(274f * -616f)), var_1.a.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1464f)) * _wgslsmith_f_op_f32(-var_2.x)), 1231f, _wgslsmith_f_op_f32(f32(-1f) * -484f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x, -346f)))));
    let var_3 = select(!(!(!select(var_1.a, vec4<bool>(arg_0.x, var_1.a.x, var_1.a.x, arg_0.x), var_1.a))), select(!vec4<bool>(true, true, var_1.a.x, true), vec4<bool>(!var_1.a.x, false, var_1.a.x, true), (-arg_1 ^ var_0.x) >= min(39776i, -4012i)), select(var_1.a, select(var_1.a, vec4<bool>(true, arg_0.x, any(vec4<bool>(var_1.a.x, var_1.a.x, arg_0.x, false)), var_2.x != -186f), true), !any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(var_1.a.x, false), vec2<bool>(var_1.a.x, var_1.a.x)))));
    return vec2<i32>(u_input.c, abs(arg_1)) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1, u_input.c), ~var_0.zz) << (u_input.b.x % 32u), ~(var_0.x & u_input.c));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = ~select(~((vec2<i32>(-26652i, u_input.c) << (u_input.b.yx % vec2<u32>(32u))) ^ firstTrailingBit(vec2<i32>(-1132i, u_input.c))), func_3(vec3<bool>(true, false, var_0), ~67647i), !vec2<bool>(false, var_0));
    var_1 = ~vec2<i32>(7793i, 17960i);
    var_1 = min(vec2<i32>(-30260i, ~(u_input.c ^ var_1.x)), ~vec2<i32>(firstLeadingBit(u_input.c), u_input.c)) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u));
    var var_2 = Struct_2(!select(!(!vec2<bool>(false, var_0)), vec2<bool>(var_0, false), all(vec4<bool>(var_0, true, true, var_0))), var_0);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1906f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(810f - -209f), -371f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-371f, -451f))), u_input.c);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = 125575u;
    var var_1 = false;
    let var_2 = Struct_4(vec2<i32>(i32(-1i) * -12781i, _wgslsmith_sub_i32(~(~(-1i)), func_2().b)), ~u_input.b, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(vec3<bool>(false, any(vec2<bool>(true, false)), true))), arg_2, vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), !((arg_1.b < 1i) & false), all(vec2<bool>(arg_1.a < -1817f, true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f - 1752f) - 619f) + arg_1.a)));
    var var_4 = arg_2.x;
    return Struct_4(vec2<i32>(~min(arg_0.x | arg_0.x, -arg_1.b), ~(-16921i)), vec3<u32>(var_2.b.x, var_0, ~(~(~var_2.b.x))), !(!var_2.c), vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x))), 1000f), var_2.e);
}

fn func_1() -> f32 {
    let var_0 = firstLeadingBit(u_input.a);
    let var_1 = func_4(_wgslsmith_div_vec3_i32(~(vec3<i32>(u_input.c, u_input.c, 4078i) & vec3<i32>(63951i, u_input.c, -2147483647i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(31297i, -2147483647i, u_input.c), vec3<i32>(-19015i, u_input.c, -32771i)), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, 47297i, 47625i), firstTrailingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)))), func_2(), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(-184f)), _wgslsmith_f_op_f32(max(290f, 627f)), _wgslsmith_f_op_f32(f32(-1f) * -292f)))))));
    var var_2 = Struct_2(var_1.e.yy, !var_1.c.x);
    var_2 = Struct_2(vec2<bool>(!(!select(true, var_2.b, true)), !(!var_1.e.x)), !any(select(!var_1.e, !vec3<bool>(var_2.a.x, false, var_2.a.x), true)));
    var_2 = Struct_2(vec2<bool>(var_1.c.x, var_2.a.x), all(func_4(vec3<i32>(_wgslsmith_sub_i32(var_1.a.x, 2147483647i), -2147483647i & u_input.c, var_1.a.x), Struct_1(-503f, _wgslsmith_add_i32(1i, 1675i)), _wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_div_vec3_f32(var_1.d, var_1.d), vec3<bool>(true, true, false)))).e));
    return _wgslsmith_f_op_f32(-var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(any(vec3<bool>(true, true, true)), ~_wgslsmith_mult_i32(-23615i, 1i) != u_input.c), ~u_input.a == 22242u);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1194f))))) != _wgslsmith_f_op_f32(sign(307f));
    let var_2 = !select(vec3<bool>(_wgslsmith_mult_i32(u_input.c, u_input.c) == ~1i, false, var_0.b), select(vec3<bool>(1i > u_input.c, var_0.a.x && var_0.b, false), vec3<bool>(false, true, any(vec4<bool>(var_0.a.x, var_0.b, true, var_0.b))), vec3<bool>(any(var_0.a), false, !var_0.a.x)), vec3<bool>(all(select(vec4<bool>(var_0.b, true, true, false), vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.b, var_0.b))), all(var_0.a), false));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(func_4(select(vec3<i32>(u_input.c, -2147483647i, 0i), vec3<i32>(5169i, -22150i, u_input.c), false), Struct_1(432f, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(360f, -653f, 399f) * vec3<f32>(1684f, -709f, -910f))).d.x * 1568f) <= _wgslsmith_f_op_f32(-1276f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1266f * 764f), -791f)), true);
    var_1 = all(vec3<bool>(var_2.x, var_3.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.c, 1i, u_input.c, u_input.c)), ~vec4<i32>(-44238i, -3560i, u_input.c, u_input.c) | ~vec4<i32>(u_input.c, -2147483647i, u_input.c, -1i)), ~u_input.a, u_input.a);
}

