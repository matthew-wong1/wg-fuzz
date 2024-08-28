struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(~select(select(select(vec2<i32>(u_input.b, -43387i), vec2<i32>(u_input.b, u_input.b), true), vec2<i32>(43920i, u_input.c.x), false), u_input.c, vec2<bool>(true, true)), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), -2147483647i, false, arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -581f))));
    var var_1 = Struct_1(vec2<i32>(-2147483647i, u_input.c.x), abs(-1i >> (countOneBits(~u_input.a.x) % 32u)), 1i, any(select(!(!vec3<bool>(false, var_0.d, false)), vec3<bool>(false, false, all(vec2<bool>(true, false))), select(!vec3<bool>(true, var_0.d, var_0.e), select(vec3<bool>(var_0.e, var_0.e, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, var_0.e), vec3<bool>(var_0.d, false, true), vec3<bool>(true, true, var_0.e))))), var_0.e);
    var var_2 = _wgslsmith_mod_u32(countOneBits(abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1, 10603u, u_input.d), vec4<u32>(arg_1, 42219u, 34546u, u_input.d))))), 498u);
    var var_3 = Struct_1(var_1.a, _wgslsmith_div_i32(2147483647i, -2147483647i), _wgslsmith_clamp_i32(var_1.c, 2936i, ~u_input.b) ^ ~(abs(var_1.b) & -20345i), var_0.d, false);
    let var_4 = !select(vec2<bool>(false && var_3.e, select(true, false, true)), select(select(!vec2<bool>(var_1.e, false), vec2<bool>(true, true), vec2<bool>(false, var_1.d)), !select(vec2<bool>(true, var_1.e), vec2<bool>(true, var_0.e), vec2<bool>(var_3.e, false)), select(select(vec2<bool>(false, true), vec2<bool>(var_1.e, var_0.e), vec2<bool>(false, true)), vec2<bool>(var_1.d, true), select(vec2<bool>(false, var_0.e), vec2<bool>(false, false), var_1.e))), select(vec2<bool>(all(vec3<bool>(true, var_0.e, var_1.d)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return ~_wgslsmith_div_u32(arg_1, ~u_input.d);
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(vec2<i32>(abs(_wgslsmith_sub_i32(~8769i, i32(-1i) * -27430i)), _wgslsmith_div_i32(-_wgslsmith_mod_i32(30774i, u_input.b), countOneBits(u_input.c.x ^ u_input.b))), 12514i, 2147483647i >> (u_input.d % 32u), false, ~(~4294967295u << (u_input.a.x % 32u)) <= func_3(_wgslsmith_f_op_f32(1f + -1248f), _wgslsmith_add_u32(u_input.d, u_input.d)));
    let var_1 = select(!vec4<bool>(true, true, _wgslsmith_add_i32(var_0.c, u_input.b) > -u_input.c.x, any(!vec2<bool>(var_0.d, false))), select(vec4<bool>(!any(vec2<bool>(true, var_0.d)), true, false, var_0.d), vec4<bool>(!(var_0.e & true), any(select(vec3<bool>(var_0.e, false, var_0.d), vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(true, true, true))), true, !(!var_0.e)), any(vec4<bool>(false, any(vec4<bool>(var_0.d, var_0.e, false, var_0.d)), var_0.e, true))), select(select(vec4<bool>(!var_0.d, var_0.d, select(var_0.d, true, true), all(vec3<bool>(false, true, var_0.d))), select(select(vec4<bool>(true, false, true, var_0.d), vec4<bool>(false, true, true, var_0.d), true), vec4<bool>(true, false, var_0.d, true), vec4<bool>(var_0.e, var_0.d, var_0.e, var_0.e)), any(select(vec4<bool>(false, var_0.d, false, var_0.d), vec4<bool>(true, var_0.e, true, var_0.d), vec4<bool>(false, var_0.e, false, false)))), vec4<bool>(true, (var_0.b << (4294967295u % 32u)) > -35881i, all(!vec3<bool>(var_0.e, true, var_0.d)), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)));
    let var_2 = var_0.a.x == var_0.b;
    let var_3 = -52748i;
    var var_4 = firstLeadingBit(u_input.a.x);
    return countOneBits(firstTrailingBit(-vec3<i32>(_wgslsmith_mult_i32(1i, var_0.b), -var_0.a.x, ~(-11196i))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = firstTrailingBit(min(~(-func_2()), max(max(vec3<i32>(u_input.b, 0i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c.x), vec3<i32>(u_input.b, u_input.c.x, u_input.c.x))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.b, 2147483647i)), vec3<i32>(1i, -2147483647i, 0i)))));
    var var_1 = !select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), !(!any(vec2<bool>(true, false))));
    var_1 = select(select(select(select(!vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), select(!vec3<bool>(var_1.x, false, false), !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, false, 1i < var_0.x)), !(!vec3<bool>(true, var_1.x, var_1.x)), all(select(!vec3<bool>(true, var_1.x, false), !vec3<bool>(var_1.x, false, false), !vec3<bool>(var_1.x, true, var_1.x)))), vec3<bool>(any(!(!vec3<bool>(var_1.x, var_1.x, var_1.x))), true, !(!var_1.x & !var_1.x)), any(select(select(vec2<bool>(false, false), vec2<bool>(var_1.x, false), var_1.yz), !vec2<bool>(var_1.x, true), var_1.x)) || (all(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)) | true));
    var_1 = vec3<bool>(arg_1.x != -1000f, var_1.x && var_1.x, true);
    let var_2 = Struct_1(var_0.yy, var_0.x ^ u_input.c.x, -18350i, var_1.x | (_wgslsmith_div_i32(0i, firstTrailingBit(u_input.c.x)) > ~u_input.b), !all(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, false, var_1.x, true))) != any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(-911f)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(45258u, 32523u, u_input.a.x), vec3<u32>(u_input.d, 1u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2573f) - vec2<f32>(747f, 1683f)))))));
    var_0 = !(124f <= _wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(444f)) - -1015f)));
    var var_1 = Struct_1(-firstTrailingBit(u_input.c), _wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(countOneBits(-2147483647i), u_input.c.x, u_input.b)), 572i), func_2().x, !select(true, all(vec2<bool>(true, false)), !any(vec4<bool>(true, true, true, true))), !(!all(vec2<bool>(false, true)) | !select(false, true, true)));
    var var_2 = Struct_1(var_1.a, 1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b, -u_input.c.x, -var_1.a.x), vec3<i32>(_wgslsmith_div_i32(var_1.c, var_1.c), -u_input.b, countOneBits(u_input.c.x)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(42006u, u_input.a.x, u_input.a.x), vec3<u32>(22268u, u_input.a.x, u_input.d)) % vec3<u32>(32u))), var_1.d, true != all(!vec3<bool>(var_1.e, true, var_1.d)));
    var var_3 = 803f;
    var_2 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-22388i, -abs(u_input.b)), u_input.b), -firstLeadingBit(var_1.b) >> (func_3(_wgslsmith_div_f32(376f, -1000f), abs(u_input.a.x)) % 32u), ~abs(max(-var_2.b, countOneBits(var_1.b))), true, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x);
}

