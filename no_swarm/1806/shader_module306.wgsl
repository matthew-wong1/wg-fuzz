struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(761f))), _wgslsmith_div_f32(arg_3.a, arg_3.a))), select(arg_2.wy, arg_2.xy, (reverseBits(u_input.a) <= arg_0.x) || arg_2.x), arg_3, select(!select(!vec3<bool>(true, arg_2.x, arg_2.x), select(arg_2.xzx, vec3<bool>(arg_2.x, arg_2.x, true), true), !vec3<bool>(arg_2.x, arg_2.x, true)), vec3<bool>(any(arg_2.zzz), arg_2.x, arg_2.x), !((-1845f != arg_3.a) & all(arg_2.zyw))));
    let var_1 = var_0.c.b;
    var_0 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.a.x)), _wgslsmith_f_op_f32(abs(var_0.c.a)), var_0.a.a.x)), vec2<bool>(all(select(vec4<bool>(true, false, var_0.d.x, arg_2.x), vec4<bool>(true, true, var_0.d.x, arg_2.x), false)) || true, arg_2.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), var_0.c.a)), arg_3.b), !(!select(select(var_0.d, arg_2.zzy, var_0.b.x), var_0.d, var_0.d.x)));
    var_0 = Struct_4(var_0.a, select(arg_2.yx, !(!select(arg_2.ww, var_0.b, arg_2.xy)), vec2<bool>(true, false)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f * arg_3.a) + 169f), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 11825u), vec2<u32>(arg_3.b.x, arg_1))), vec3<bool>(true, !(arg_1 >= select(var_0.c.b.x, var_0.c.b.x, false)), arg_2.x));
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_f_op_f32(261f + -435f)))) * -1529f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(498f, 793f))) + _wgslsmith_f_op_f32(-arg_3.a)));
}

fn func_2() -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1457f, 307f, -438f)) + vec3<f32>(-333f, -411f, -282f))), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a, u_input.a), 4294967295u, vec4<bool>(false, false, false, false), Struct_1(-1101f, vec2<u32>(47875u, 4294967295u)))), _wgslsmith_f_op_f32(func_3(vec2<i32>(-28273i, u_input.a), 0u, vec4<bool>(true, false, false, true), Struct_1(-879f, vec2<u32>(45365u, 29755u))))), _wgslsmith_f_op_f32(-499f - _wgslsmith_div_f32(722f, 1779f))), firstTrailingBit(vec2<u32>(1u, 4294967295u)) << (vec2<u32>(23945u, 50772u) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = !select(vec3<bool>(!(arg_3 | arg_3), arg_3, false), !select(select(arg_2.yzz, vec3<bool>(true, false, true), arg_3), vec3<bool>(false, arg_2.x, true), arg_3), false);
    let var_1 = reverseBits(~countOneBits(abs(-vec4<i32>(u_input.a, -1439i, u_input.a, arg_1.x))));
    let var_2 = _wgslsmith_div_f32(arg_0.a.x, -1000f);
    let var_3 = arg_2;
    var var_4 = func_2();
    return var_4.d;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = vec3<u32>(abs(arg_3.b.x), 1u, max(arg_3.b.x, _wgslsmith_mult_u32(max(_wgslsmith_mod_u32(arg_3.b.x, 8429u), 1u), 24427u)));
    var var_1 = 64636u;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(1514f * 751f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-562f * 1296f)), _wgslsmith_f_op_f32(-633f - _wgslsmith_div_f32(arg_0.a.x, -936f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -1000f) * _wgslsmith_f_op_f32(arg_3.a * arg_0.a.x)), _wgslsmith_f_op_f32(floor(-1047f)), -303f)));
    let var_3 = u_input.a;
    let var_4 = arg_2;
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(-1587f, _wgslsmith_div_f32(arg_0, -1983f));
    var var_1 = any(!select(select(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), vec3<bool>(false, false, false), !vec3<bool>(true, arg_1.x, arg_1.x)), select(!vec3<bool>(true, false, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, false), !vec3<bool>(false, arg_1.x, arg_1.x)), false));
    var_1 = any(select(select(!vec2<bool>(arg_1.x, false), arg_1, true), arg_1, vec2<bool>(true == arg_1.x, (u_input.a != u_input.a) && (true & arg_1.x))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(select(-111f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false))), _wgslsmith_div_f32(-754f, -720f))), true)));
    var_1 = any(select(select(select(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, false), false), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, false), vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(arg_1.x, false, false)), vec3<bool>(arg_0 > -1290f, arg_1.x, true), !select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), select(!select(vec3<bool>(true, false, arg_1.x), vec3<bool>(false, true, true), arg_1.x), !(!vec3<bool>(arg_1.x, false, true)), arg_1.x), !(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x))));
    return Struct_3(vec3<f32>(725f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) * _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(abs(123f))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -824f), vec2<bool>(func_4(Struct_3(vec3<f32>(-1516f, 422f, -768f)), var_0, !(var_0 | var_0), func_1(Struct_3(vec3<f32>(-165f, 646f, 435f)), max(vec4<i32>(0i, -47499i, 1i, 1i), vec4<i32>(-2147483647i, 20393i, u_input.a, 2147483647i)), select(vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, var_0, var_0, var_0)), var_0)), !(!(!var_0))));
    var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + func_5(var_1.a.x, vec2<bool>(var_0, true)).a.x)) * 1862f), !vec2<bool>(var_0, _wgslsmith_clamp_u32(0u, 66431u, 41229u) != 1u));
    let var_2 = vec2<u32>(abs(select(firstTrailingBit(10474u), max(18850u, 4294967295u), any(vec4<bool>(false, false, var_0, var_0))) & 4294967295u), _wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(~42740u, 1u)));
    let var_3 = 6731u;
    var_1 = func_5(-2549f, select(!vec2<bool>(any(vec2<bool>(var_0, var_0)), !var_0), select(select(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), func_2().c, all(vec2<bool>(false, false)) & (var_0 & true)), func_2().b));
    var var_4 = vec2<bool>(!var_0, false);
    var var_5 = firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(681f, select(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, 0i, -39936i, 2147483647i), abs(vec4<i32>(u_input.a, -26929i, -2147483647i, -1i)) & ~vec4<i32>(-2147483647i, -2147483647i, 1563i, 1i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-9504i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, -67963i, u_input.a, -13634i), vec4<bool>(var_4.x, var_0, true, var_4.x)), select(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1i), var_0)), abs(vec4<i32>(-37168i, -16473i, 10838i, u_input.a) << (vec4<u32>(0u, 4294967295u, 15763u, var_2.x) % vec4<u32>(32u))), abs(-vec4<i32>(30348i, -4214i, u_input.a, -2147483647i))), true));
}

