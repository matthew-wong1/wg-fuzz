struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(vec2<bool>(false, false), vec2<bool>(all(vec4<bool>(false, true, false, true)), !any(vec3<bool>(false, false, false))), vec2<bool>(true, true)), all(vec2<bool>(true, abs(u_input.b.x) > u_input.b.x)));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1255f))), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-261f + -1549f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-120f, 705f, -844f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-1554f)), -1229f, -654f))))));
    var_0 = vec2<bool>(var_0.x, !all(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), false)));
    var_1 = !(_wgslsmith_f_op_f32(1761f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_2.x)), -204f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1006f))) * -755f));
    return var_2.yx;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = Struct_2(-1449f, _wgslsmith_f_op_f32(var_0.x - var_0.x), arg_0, true, _wgslsmith_f_op_f32(round(-122f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, 164f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b, -1047f))))), u_input.b.x > ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))));
    var var_2 = select(!vec4<bool>(var_1.c, var_1.c || arg_0, any(vec4<bool>(true, arg_0, var_1.d, var_1.d)), false), select(select(select(select(vec4<bool>(arg_0, false, true, false), vec4<bool>(var_1.d, arg_0, arg_0, false), vec4<bool>(var_1.c, true, arg_0, arg_0)), !vec4<bool>(var_1.c, var_1.c, false, true), false), select(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(false, false, var_1.d, arg_0), arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, var_1.c, false)), _wgslsmith_div_f32(var_0.x, 1000f) >= _wgslsmith_f_op_f32(-var_1.a)), select(!select(vec4<bool>(arg_0, var_1.d, false, var_1.d), vec4<bool>(arg_0, var_1.d, false, arg_0), vec4<bool>(false, var_1.d, true, arg_0)), select(!vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, var_1.d, true, false), var_1.c), arg_0), arg_0), (max(~u_input.b.x, 1u) & _wgslsmith_clamp_u32(~1u, u_input.b.x | 2684u, 1u)) > 1276u);
    let var_3 = any(!(!(!(!var_2.yw))));
    return -62282i;
}

fn func_1() -> f32 {
    var var_0 = countOneBits(vec3<i32>(func_2(true), _wgslsmith_clamp_i32(~firstLeadingBit(u_input.a.x), reverseBits(~u_input.c), ~(u_input.a.x >> (22922u % 32u))), u_input.a.x));
    var_0 = vec3<i32>(_wgslsmith_add_i32(1268i, _wgslsmith_mod_i32(var_0.x, select(var_0.x, -var_0.x, true))), _wgslsmith_add_i32(var_0.x, _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yw | vec2<i32>(u_input.c, u_input.d)), -vec2<i32>(var_0.x, var_0.x))), firstLeadingBit(930i));
    var_0 = _wgslsmith_sub_vec3_i32(u_input.a.wyy, vec3<i32>(-((1i ^ var_0.x) << ((u_input.b.x << (4294967295u % 32u)) % 32u)), var_0.x, u_input.c));
    var_0 = select(~u_input.a.zzw, min(u_input.a.yyz, u_input.a.wyx), 27371i > _wgslsmith_sub_i32(select(u_input.d, u_input.d, false), 0i));
    var var_1 = Struct_1(abs((_wgslsmith_mod_vec3_i32(u_input.a.zyx, vec3<i32>(-1i, var_0.x, u_input.a.x)) ^ (u_input.a.wwz | u_input.a.xwz)) & u_input.a.wwx), vec4<f32>(-428f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -703f), -832f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -1146f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_vec2_f32(func_3()).x, true | all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, 1361f)), -1434f)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x))), 200f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(248f, var_1.b.x)))), _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)), any(vec4<bool>(true, var_1.a.x >= var_0.x, select(false, false, true), var_1.b.x < -1551f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1f, -1016f, true, !(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)) || true), _wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1276f * 1f)))), var_0.e, all(select(!select(vec3<bool>(false, true, var_0.d), vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(var_0.c, true, var_0.d)), select(!vec3<bool>(var_0.c, var_0.d, var_0.d), !vec3<bool>(var_0.c, false, var_0.c), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, false), var_0.c)), vec3<bool>(all(vec4<bool>(true, false, var_0.c, var_0.d)), !var_0.c, !var_0.c))), var_0.c, 1845f);
    var var_1 = !(!select(vec4<bool>(false, true, u_input.d == u_input.d, true), select(select(vec4<bool>(var_0.d, false, var_0.d, false), vec4<bool>(var_0.d, true, true, var_0.c), vec4<bool>(true, var_0.c, var_0.c, var_0.c)), select(vec4<bool>(var_0.c, var_0.c, var_0.d, var_0.d), vec4<bool>(true, false, true, true), vec4<bool>(false, false, var_0.d, var_0.d)), true), var_0.d));
    var_1 = select(!vec4<bool>(var_0.c, all(select(var_1.zz, var_1.yw, false)), any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), var_0.c), select(select(!vec4<bool>(var_1.x, var_0.c, false, true), vec4<bool>(var_0.b <= var_0.b, true, true, true), vec4<bool>(all(vec4<bool>(var_0.d, true, true, true)), var_1.x & var_0.d, true, true)), select(vec4<bool>(var_1.x, true, true, true), select(vec4<bool>(true, var_0.d, true, true), select(vec4<bool>(var_0.d, true, true, true), vec4<bool>(var_1.x, true, true, true), var_1.x), false), var_0.d), false), vec4<bool>(!var_0.d, select(true, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), true), var_1.x, !var_0.d));
    var var_2 = Struct_1(vec3<i32>(firstTrailingBit(~3148i), abs(u_input.d), _wgslsmith_sub_i32(~(-27344i) >> (u_input.b.x % 32u), _wgslsmith_sub_i32(u_input.d, _wgslsmith_mod_i32(u_input.c, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, -2881f)) + -423f), _wgslsmith_f_op_f32(max(var_0.e, _wgslsmith_f_op_f32(round(var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -747f)));
    let var_3 = var_2.a.xx;
    let var_4 = select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.d, var_0.d, true, var_0.d), max(23616i, u_input.c) != _wgslsmith_add_i32(u_input.a.x, var_3.x)), !select(!vec4<bool>(true, var_0.c, false, true), vec4<bool>(false, -2147483647i != var_3.x, var_1.x, var_2.b.x == 1027f), vec4<bool>(false, true, any(var_1.xww), !var_1.x)), select(select(vec4<bool>(all(var_1.xwy), var_0.d, false, any(var_1.wxx)), select(!vec4<bool>(true, var_0.c, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, true), !var_0.c), false), select(vec4<bool>(true, all(vec4<bool>(true, var_0.c, var_0.c, var_0.d)), any(var_1.yy), true), select(vec4<bool>(true, var_0.d, false, var_0.c), select(vec4<bool>(false, var_0.c, var_1.x, true), vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, true, var_0.d, true)), !var_1.x), select(select(vec4<bool>(false, var_1.x, var_1.x, var_0.d), vec4<bool>(true, true, false, false), var_0.d), vec4<bool>(true, false, true, var_0.c), var_3.x > u_input.d)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-vec3<i32>(abs(u_input.a.x), 12458i, -1i ^ var_2.a.x), countOneBits(vec3<i32>(u_input.c << (u_input.b.x % 32u), reverseBits(var_3.x), _wgslsmith_clamp_i32(-10554i, 22456i, 0i)))), abs(var_2.a.yy) & var_2.a.yy);
}

