struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = any(!vec3<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), false));
    var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -923f) >= _wgslsmith_f_op_f32(round(-1952f)));
    var var_1 = Struct_2(-(~select(vec2<i32>(2147483647i, 38913i), vec2<i32>(-19979i, -5903i), vec2<bool>(false, false)) | -min(vec2<i32>(0i, -24543i), vec2<i32>(-19906i, 0i))), 1u, Struct_1(vec3<bool>(true, true, true), any(vec3<bool>(false, any(vec2<bool>(true, true)), select(true, true, false))), 2147483647i));
    let var_2 = Struct_3(Struct_1(vec3<bool>(any(vec4<bool>(true, var_1.c.a.x, var_1.c.b, var_1.c.a.x)) | var_1.c.a.x, true, true), u_input.a.x <= (u_input.b.x << (~7325u % 32u)), _wgslsmith_add_i32(var_1.c.c, min(~var_1.a.x, var_1.a.x))), Struct_2(abs(vec2<i32>(-7195i, i32(-1i) * -2147483647i)), u_input.b.x, var_1.c), var_1.c, var_1.c, var_1.c);
    let var_3 = all(vec3<bool>(all(select(select(vec4<bool>(true, var_1.c.b, true, false), vec4<bool>(true, true, true, true), var_1.c.b), vec4<bool>(var_2.d.b, false, var_2.e.b, true), select(vec4<bool>(var_1.c.a.x, false, false, var_1.c.b), vec4<bool>(true, true, var_2.a.b, var_2.e.b), vec4<bool>(var_1.c.b, false, true, false)))), false | !var_1.c.b, _wgslsmith_mult_i32(reverseBits(var_1.a.x), -10555i) >= var_1.a.x));
    return arg_0;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1471f, -151f) - vec2<f32>(740f, -315f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, 832f)) * _wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-849f, 1448f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1093f)), -1740f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -442f)))))));
    var_0 = vec2<f32>(656f, var_0.x);
    var var_1 = Struct_1(!vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), true, true), true, -(_wgslsmith_clamp_i32(-4787i, ~0i, 1i) << (~min(1231u, 54864u) % 32u)));
    let var_2 = all(vec3<bool>(!(!select(true, true, var_1.a.x)), var_1.b, 19231u <= (u_input.a.x << ((u_input.b.x | 29850u) % 32u))));
    let var_3 = min(-16764i, -2147483647i);
    return var_0.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> bool {
    let var_0 = reverseBits(0u) << (u_input.b.x % 32u);
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var_1 = -915f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * arg_1);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(695f * _wgslsmith_f_op_f32(-657f - 1055f)) - arg_0.x) * arg_1));
    return any(vec2<bool>(false, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -831f))) != arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -251f);
    var var_1 = Struct_2(vec2<i32>(2147483647i, 2147483647i), ~258u, Struct_1(vec3<bool>(true, true, true), select(all(vec2<bool>(true, true)), func_1(vec3<f32>(var_0, -221f, var_0), 856f) || false, !all(vec3<bool>(true, false, false))), -1i << (u_input.b.x % 32u)));
    var var_2 = Struct_3(var_1.c, Struct_2(min(_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1.a.x, var_1.a.x), vec2<i32>(var_1.a.x, 30307i), var_1.c.a.x), reverseBits(vec2<i32>(var_1.a.x, 0i))), _wgslsmith_clamp_vec2_i32(max(var_1.a, vec2<i32>(0i, 35554i)), vec2<i32>(-1i, 10210i), var_1.a)), (1u | (var_1.b << (0u % 32u))) >> (4294967295u % 32u), var_1.c), var_1.c, Struct_1(var_1.c.a, all(select(!vec4<bool>(var_1.c.a.x, true, false, false), vec4<bool>(true, false, false, var_1.c.b), select(vec4<bool>(var_1.c.a.x, false, var_1.c.a.x, var_1.c.b), vec4<bool>(false, var_1.c.a.x, var_1.c.b, false), vec4<bool>(true, var_1.c.a.x, false, false)))), -835i), Struct_1(vec3<bool>(true, false, true), !all(var_1.c.a), max(-1i, -1i)));
    var var_3 = true;
    var_2 = Struct_3(var_2.d, Struct_2(~vec2<i32>(_wgslsmith_mod_i32(2147483647i, var_1.a.x), ~(-1i)), var_2.b.b, var_2.d), Struct_1(select(vec3<bool>(true, true, 21294u <= var_2.b.b), !vec3<bool>(true, var_2.b.c.a.x, true), select(select(var_2.c.a, vec3<bool>(var_2.c.b, var_2.a.b, var_2.c.b), var_1.c.a), !vec3<bool>(false, false, var_2.e.b), select(vec3<bool>(var_1.c.b, true, true), var_1.c.a, var_2.c.a.x))), !(var_2.e.a.x && true), _wgslsmith_mod_i32(var_1.c.c, firstTrailingBit(1i))), Struct_1(var_1.c.a, var_2.c.b, var_1.c.c << (var_1.b % 32u)), Struct_1(vec3<bool>(!var_2.d.a.x, _wgslsmith_div_i32(var_1.a.x, var_1.c.c) > _wgslsmith_mod_i32(var_2.d.c, var_2.a.c), true), all(!vec4<bool>(var_1.c.a.x, var_1.c.b, true, true)), max(-109i, _wgslsmith_mod_i32(var_1.c.c, -23207i))));
    var_2 = Struct_3(Struct_1(select(var_2.e.a, select(select(vec3<bool>(false, var_2.c.a.x, var_1.c.a.x), var_2.a.a, var_2.d.a.x), vec3<bool>(false, false, false), vec3<bool>(var_1.c.a.x, true, false)), select(select(var_1.c.a, var_1.c.a, var_2.c.b), !var_2.e.a, var_2.e.a)), func_1(vec3<f32>(-1546f, _wgslsmith_f_op_f32(1205f + -1000f), _wgslsmith_f_op_f32(-var_0)), -1078f), var_1.c.c), var_2.b, Struct_1(!var_2.c.a, ~_wgslsmith_mult_i32(-37828i, -3083i) >= var_1.c.c, 0i), var_1.c, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

