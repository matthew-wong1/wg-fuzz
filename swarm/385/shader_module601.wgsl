struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = ~(~firstTrailingBit(u_input.b.x)) ^ 19286u;
    var var_1 = Struct_1(-(~1i) >> (abs(select(~u_input.b.x, 7128u, any(vec2<bool>(false, false)))) % 32u), all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false), true), vec2<bool>(true, true))), vec2<bool>(false, true), u_input.b.yyx);
    var_0 = 46715u;
    let var_2 = vec4<u32>(14684u, firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, min(u_input.b.x & u_input.b.x, ~u_input.b.x))), _wgslsmith_add_u32(var_1.d.x, 0u), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.d.x), u_input.b.zx), vec2<u32>(var_1.d.x, var_1.d.x))));
    let var_3 = reverseBits(u_input.c.wwz);
    return true;
}

fn func_2() -> vec2<f32> {
    var var_0 = vec2<i32>(~(~u_input.c.x) | ~_wgslsmith_clamp_i32(u_input.a, u_input.a & u_input.c.x, 1i), -_wgslsmith_sub_i32(-(u_input.a | u_input.a), -u_input.c.x));
    var var_1 = select(select(vec4<bool>(true, false, select(true, u_input.a <= 0i, all(vec2<bool>(true, false))), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true))), vec4<bool>(func_3(vec3<f32>(807f, -639f, 1569f)), u_input.b.x < u_input.b.x, true, true)), 1u >= _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_div_u32(1u, 19481u))), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(346f)) > _wgslsmith_div_f32(-1072f, -1000f), true, false), vec4<bool>(true, true, true, true)), select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), true), vec4<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false))), select(true, true, true)), false));
    let var_2 = Struct_1(_wgslsmith_div_i32((var_0.x | u_input.a) & -28831i, u_input.a), any(select(select(!vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), select(var_1.wzw, vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false))), select(var_1.zyw, vec3<bool>(var_1.x, false, true), var_1.x), var_1.yzx)), vec2<bool>(false, all(vec4<bool>(false, var_1.x, var_1.x, false)) | any(vec2<bool>(false, false))), u_input.b.wxz);
    var var_3 = Struct_1(-2147483647i, var_2.b, var_2.c, vec3<u32>(var_2.d.x, var_2.d.x, 7695u));
    let var_4 = var_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2274f * -296f))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, -552f), true || !any(vec4<bool>(false, true, true, true)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(264f, -2097f), vec2<f32>(-320f, -615f), vec2<bool>(false, true))) * _wgslsmith_f_op_vec2_f32(func_2())))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(select(35247i, -2147483647i, !all(vec4<bool>(true, false, false, true))), _wgslsmith_dot_vec2_i32(-abs(u_input.c.xw), countOneBits(vec2<i32>(-33572i, 8115i)) << ((u_input.b.zw ^ u_input.b.wy) % vec2<u32>(32u)))), true, select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, false))), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), select(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)), u_input.c.x > ~u_input.c.x, select(true, any(vec2<bool>(false, false)), -39910i > u_input.a))), abs(vec3<u32>(~79107u, ~u_input.b.x, ~51679u) >> (vec3<u32>(_wgslsmith_div_u32(6260u, 60447u), u_input.b.x, 26635u) % vec3<u32>(32u))));
    var_1 = Struct_1(-1021i, any(var_1.c), select(select(vec2<bool>(true, true), select(!vec2<bool>(var_1.c.x, false), !vec2<bool>(var_1.c.x, true), var_1.c), var_1.c.x), !vec2<bool>(true, all(vec2<bool>(var_1.c.x, true))), var_1.c), min(~var_1.d, ~(vec3<u32>(var_1.d.x, 1u, u_input.b.x) | max(var_1.d, u_input.b.zwy))));
    var_1 = Struct_1(var_1.a, !var_1.b, vec2<bool>(!any(select(vec4<bool>(var_1.c.x, false, var_1.b, false), vec4<bool>(false, false, true, true), true)), any(vec4<bool>(true, true, true, true))), reverseBits(vec3<u32>(0u, ~16856u, 1u) << (firstLeadingBit(u_input.b.wxz) % vec3<u32>(32u))));
    var_1 = Struct_1(firstTrailingBit(i32(-1i) * -(1i >> (var_1.d.x % 32u))), select(var_1.b, all(!vec4<bool>(true, true, var_1.c.x, false)), false) && var_1.c.x, !var_1.c, var_1.d);
    return !select(vec2<bool>(any(vec3<bool>(var_1.b, var_1.b, false)), any(!vec3<bool>(var_1.b, false, var_1.c.x))), var_1.c, vec2<bool>(var_1.b & all(vec4<bool>(var_1.c.x, true, false, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = (reverseBits(u_input.c.x) & 14009i) != -_wgslsmith_mult_i32(~(-30718i), u_input.c.x);
    var_0 = !(true | (abs(_wgslsmith_sub_i32(57811i, u_input.a)) == 9791i));
    var_0 = any(vec4<bool>(var_1, !var_1, select(!var_1, false, all(func_1())), var_1));
    var var_2 = Struct_1(_wgslsmith_add_i32(abs(abs(-44877i)), abs(-23565i)) & u_input.c.x, false, vec2<bool>(true, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -41815i) >= 22101i), _wgslsmith_sub_vec3_u32(min(u_input.b.zwx, u_input.b.zwx), ~max(u_input.b.zwx | u_input.b.zwx, reverseBits(vec3<u32>(0u, u_input.b.x, u_input.b.x)))));
    let var_3 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(max(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.a), 73278i, ~var_2.a, 20035i)), ~(firstLeadingBit(~u_input.c) ^ u_input.c));
    var var_4 = Struct_1(_wgslsmith_mod_i32(20144i, _wgslsmith_mult_i32(countOneBits(var_3.x), -29736i)), var_2.b, vec2<bool>(true, var_2.a >= min(_wgslsmith_mod_i32(var_2.a, u_input.a), -28335i)), firstLeadingBit(u_input.b.www));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1179f, 1040f, -1291f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -1890f, 583f)))), !select(vec3<bool>(var_4.b, true, var_4.b), vec3<bool>(true, false, var_1), vec3<bool>(true, var_4.c.x, var_2.c.x)))), vec3<f32>(1369f, -687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-253f)))), vec3<bool>(false, true, !var_1))), vec2<u32>(reverseBits(_wgslsmith_mod_u32(~4294967295u, countOneBits(13460u))), abs(1u)), countOneBits(-vec3<i32>(-u_input.c.x, firstLeadingBit(var_2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, var_3.x, -11874i), vec3<i32>(var_4.a, u_input.c.x, 5599i)))));
}

