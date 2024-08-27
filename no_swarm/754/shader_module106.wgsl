struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = !vec3<bool>(!(!(arg_0 == 1529f)), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -38305i, -u_input.b.x >> ((11972u << (u_input.a % 32u)) % 32u)) << (countOneBits(4294967295u) % 32u), u_input.b.x);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(select(vec4<bool>(!all(vec2<bool>(false, false)), true, false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), !vec4<bool>(any(vec4<bool>(false, false, false, true)), false, true, true), vec4<bool>(u_input.c.x < 1u, true, true, (u_input.a > 3665u) | true)));
    let var_1 = max(vec3<u32>(u_input.a, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.c.x, u_input.a, u_input.c.x))), ~u_input.c.x | 23479u) ^ firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.c.x), vec3<u32>(17513u, 1u, u_input.c.x)))), select((abs(vec3<u32>(u_input.c.x, u_input.c.x, 100210u)) >> (vec3<u32>(u_input.a, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) & vec3<u32>(15371u, countOneBits(0u), ~u_input.c.x), reverseBits(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 77638u), ~0u, u_input.c.x)), vec3<bool>(all(var_0.a.yzz), !(!var_0.a.x), true)));
    var var_2 = reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~20815u), ~(abs(vec2<u32>(var_1.x, var_1.x)) | var_1.zz), var_1.zx));
    var_2 = u_input.c;
    var_0 = Struct_3(vec4<bool>(true, true, -753f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_div_f32(-300f, 685f))), true | (abs(u_input.b.x) < _wgslsmith_mod_i32(u_input.b.x, 40395i))));
    return !var_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -376f);
    var_0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var_0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    return Struct_3(func_3());
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1776f + 1984f), _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_1 = arg_1.a.x == (!(!(arg_1.a.x && false)) && all(arg_1.a.wx));
    let var_2 = max(4665i, select(~7994i, 0i, arg_1.a.x) >> (arg_0.x % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1675f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))))));
    let var_4 = arg_1.a.zyw;
    return var_0;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec4<bool>(!(-29123i == u_input.b.x), arg_1.x, any(func_3().xyy), arg_1.x));
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(17825u, 4294967295u, _wgslsmith_clamp_u32(u_input.c.x ^ 13588u, u_input.c.x, select(56538u, u_input.c.x, true)), _wgslsmith_clamp_u32(u_input.c.x, u_input.a, ~u_input.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 350u, 0u), vec3<u32>(u_input.a, u_input.c.x, u_input.a)), vec3<u32>(0u, 1u, 1u)), 0u, u_input.c.x, 26293u)), vec4<u32>(u_input.a, 6786u, _wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_clamp_u32((u_input.a << (34025u % 32u)) << (u_input.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 40441u, u_input.a, u_input.a), vec4<u32>(57391u, 38360u, u_input.c.x, u_input.a)) << (u_input.a % 32u), u_input.c.x)));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f * arg_2.a.x))) + _wgslsmith_f_op_f32(sign(arg_2.a.x)));
    var_3 = -471f;
    return Struct_1(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 3224u;
    var var_1 = all(!(!vec2<bool>(select(false, true, false), any(vec3<bool>(false, true, false)))));
    var var_2 = func_5(abs(func_1(-116f)), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), func_4(~((vec4<u32>(109394u, u_input.c.x, u_input.a, var_0) | vec4<u32>(u_input.a, u_input.c.x, 67414u, 10187u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, var_0, 104739u, u_input.a), vec4<u32>(4990u, 76213u, 42727u, 0u))), func_2(Struct_2(vec4<bool>(false, false, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1557f, 400f))))), vec4<u32>(~u_input.a & var_0, 77227u, 66911u, ~u_input.a ^ ~u_input.a), ~(-vec3<i32>(2147483647i, 0i, u_input.b.x))));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(u_input.b, -u_input.b), 0i), u_input.b << (~abs(~vec3<u32>(u_input.c.x, var_0, var_0)) % vec3<u32>(32u)));
    var var_4 = true;
    let var_5 = 1239f;
    var var_6 = u_input.b.zz;
    var_1 = all(select(func_2(Struct_2(vec4<bool>(true, false, false, false)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a))).a.yx, func_3().zx, !func_3().zx));
    let x = u_input.a;
    s_output = StorageBuffer(517f);
}

