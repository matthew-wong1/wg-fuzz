struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(arg_1.a, Struct_1(select(arg_1.a, select(vec2<bool>(arg_1.c, false), !vec2<bool>(arg_1.a.x, false), arg_1.a.x & true), all(vec3<bool>(arg_1.a.x, false, false))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(arg_1.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(195f, arg_1.b.x, 1086f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(983f, -1642f, arg_1.b.x)))))), firstTrailingBit(u_input.b.x) >= u_input.b.x, vec2<i32>(_wgslsmith_mult_i32(u_input.a, 29079i), _wgslsmith_mod_i32(-1i, u_input.a))));
    let var_1 = -2041f;
    var var_2 = var_0.b;
    var_2 = arg_1;
    var_2 = arg_1;
    return _wgslsmith_f_op_f32(147f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 546f))))) != _wgslsmith_f_op_f32(-arg_1.b.x);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    return Struct_2(vec2<bool>(!func_3(~u_input.b, Struct_1(vec2<bool>(true, true), vec3<f32>(arg_0, arg_1, arg_1), true, vec2<i32>(1i, u_input.a))), true), Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, any(vec2<bool>(false, true)))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-655f - 184f), _wgslsmith_f_op_f32(arg_1 - arg_0))), 597f), true, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a), min(-15622i, -15234i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 17453i), countOneBits(vec2<i32>(-28264i, -5894i))), reverseBits(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = ~(~max(u_input.b.yw | u_input.b.yx, abs(u_input.b.xz)));
    let var_1 = any(select(vec4<bool>(arg_0.a.x, true != !arg_0.b.c, any(select(vec4<bool>(false, arg_0.a.x, arg_2.c, arg_2.a.x), vec4<bool>(arg_2.c, false, true, true), true)), any(vec3<bool>(true, true, true))), vec4<bool>(true || (arg_0.b.b.x != arg_2.b.x), !arg_2.c, false, false), true));
    var var_2 = !select(vec4<bool>(var_1, (arg_0.a.x | arg_0.b.c) || !arg_1.x, all(vec3<bool>(false, arg_2.c, var_1)), false), select(select(!vec4<bool>(true, true, arg_0.a.x, false), select(vec4<bool>(arg_1.x, true, arg_0.b.a.x, arg_2.a.x), vec4<bool>(arg_0.b.c, true, arg_2.a.x, false), vec4<bool>(false, var_1, false, false)), true), !select(vec4<bool>(arg_0.b.a.x, true, arg_2.c, true), vec4<bool>(arg_0.a.x, false, false, false), true), select(!vec4<bool>(false, true, arg_0.a.x, true), select(vec4<bool>(arg_2.a.x, false, false, false), vec4<bool>(true, true, var_1, arg_2.a.x), false), vec4<bool>(arg_1.x, arg_0.a.x, var_1, false))), arg_1.x);
    var_0 = _wgslsmith_add_vec2_u32(abs(u_input.b.yw | _wgslsmith_mod_vec2_u32(u_input.b.yw, reverseBits(u_input.b.wy))), u_input.b.xz);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -127f);
    return arg_2.d;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -627f, -1219f)))), true, (vec2<i32>(18589i, u_input.a) ^ vec2<i32>(u_input.a, 45462i)) | func_4(func_2(-855f, -113f), vec2<bool>(true, true), func_2(140f, arg_0.x).b));
    var var_1 = func_2(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(exp2(var_0.b.x))), 538f).b;
    var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), -1040f).b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_0.b.x, func_2(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(356f - var_1.b.x)).b.b.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(-471f, 695f, 326f))) - vec3<f32>(_wgslsmith_f_op_f32(-1777f + -702f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_1.b.x - 455f)))), true, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.d, var_1.d, vec2<i32>(u_input.a, func_4(Struct_2(var_0.a, var_0), vec2<bool>(true, var_1.a.x), Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), vec3<f32>(-454f, 988f, var_1.b.x), true, var_0.d)).x)), min(var_0.d, -vec2<i32>(u_input.a, u_input.a))));
    let var_2 = Struct_2(var_1.a, func_2(var_0.b.x, -921f).b);
    let var_3 = Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1673f, -300f, 529f))))))), false, min(vec2<i32>(2922i, var_1.d.x), var_2.b.d));
    return _wgslsmith_f_op_f32(abs(var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, -978f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1987f, 126f), vec2<f32>(1654f, -1054f)) * vec2<f32>(-411f, -563f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(f32(-1f) * -649f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(220f, 494f), var_0)), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(step(var_0, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0), true))), var_0) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-834f * var_0), var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-932f, 225f)), _wgslsmith_f_op_f32(abs(1113f)))), var_0))));
    var var_2 = all(vec3<bool>(true, true, any(vec3<bool>(true, true, true))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1757f - _wgslsmith_div_f32(-2631f, var_0)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)), var_0, func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, -707f, true)), _wgslsmith_f_op_f32(step(-270f, var_0)))), 1066f).b.b.x);
    var var_3 = select(!(!vec2<bool>(true, func_2(-1000f, 251f).a.x)), vec2<bool>(false, true), func_3(abs(~(~u_input.b)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-var_1.xwx), func_2(_wgslsmith_f_op_f32(-2209f * -1461f), var_1.x).a.x, countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i))))));
    let var_4 = vec2<i32>(-1i) * -(vec2<i32>(~(-55003i), ~u_input.a) << (firstLeadingBit(~u_input.b.yx) % vec2<u32>(32u)));
    let var_5 = min(71382u | (0u >> (u_input.b.x % 32u)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(var_4, -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_4, vec2<i32>(var_4.x, 0i)), vec2<i32>(0i, var_4.x)), var_4), var_4.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, 402f, var_0)))), vec4<i32>(-(u_input.a | u_input.a), reverseBits(select(var_4.x, ~var_4.x, true)), reverseBits(-_wgslsmith_mod_i32(u_input.a, -14605i)), u_input.a), abs(~(-_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-10843i, -2147483647i, -41036i)))));
}

