struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = min(13999u, 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * 573f) - 400f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(748f * arg_1.a.x));
    var var_3 = Struct_2(-abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 1i, 1i, 0i), vec4<i32>(u_input.b, 12339i, u_input.b, u_input.b)), countOneBits(vec4<i32>(-26239i, -20881i, -2147483647i, 22175i)))));
    var var_4 = all(vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), true)), false));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, min((4960u & u_input.c) << (select(u_input.c, 72041u, false) % 32u), 49017u), _wgslsmith_mult_u32(~firstLeadingBit(u_input.a.x), ~firstTrailingBit(u_input.a.x))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 30292u, 35724u), vec3<u32>(4294967295u, 18895u, 112749u)), vec3<u32>(1u, 15942u, 42413u)) >> (_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.a.x, u_input.c, u_input.a.x)), vec3<u32>(74314u, 55930u, countOneBits(u_input.c))) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, -253f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-564f, 1020f, arg_0) + vec3<f32>(-395f, arg_0, -388f)))))));
    let var_1 = !vec4<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, false))), select(select(true, true, true), false, all(vec3<bool>(true, false, false))) || all(vec4<bool>(true, true, true, true)), false, true);
    var var_2 = (-firstLeadingBit(vec4<i32>(2147483647i, 12486i, u_input.b, 1i)) << (vec4<u32>(func_3(var_0, var_0, -733f) | ~u_input.c, 4294967295u << (_wgslsmith_mult_u32(u_input.c, 35853u) % 32u), 60991u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), max(1u, 1u))) % vec4<u32>(32u))) >> (vec4<u32>(~_wgslsmith_mult_u32(u_input.c ^ u_input.a.x, u_input.c), 4294967295u, ~u_input.c, u_input.c) % vec4<u32>(32u));
    var_2 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-30417i, 2147483647i, ~u_input.b, _wgslsmith_mult_i32(u_input.b, var_2.x))) | select(vec4<i32>(var_2.x, 10198i, i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.b, 10581i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-44110i, var_2.x, 2147483647i, u_input.b), vec4<i32>(var_2.x, -2147483647i, var_2.x, -2147483647i), true), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, var_2.x, 0i, u_input.b), vec4<i32>(var_2.x, u_input.b, u_input.b, var_2.x))), var_1.x), ~vec4<i32>(-23522i, select(u_input.b, -7910i, false), ~1i, abs(-var_2.x)));
    var var_3 = !vec3<bool>(true, var_1.x || select(select(var_1.x, var_1.x, true), u_input.c != u_input.c, false || var_1.x), true);
    return vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 1047f), -1390f, var_0.a.x);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(-574f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(614f, 1532f, 1411f)))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, -488f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1512f - -1000f), _wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) + _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-712f, 401f, true))), _wgslsmith_f_op_vec3_f32(-var_0.a))))));
    let var_2 = true;
    var_1 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(max(-397f, _wgslsmith_f_op_f32(trunc(var_0.a.x))));
    return var_0.a.x;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> StorageBuffer {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1055f)), _wgslsmith_f_op_f32(min(-1000f, arg_1.x)), all(vec3<bool>(arg_0, arg_0, true)))))));
    let var_1 = countOneBits((vec4<i32>(firstTrailingBit(u_input.b), u_input.b, -54079i, u_input.b) >> (select(select(vec4<u32>(4294967295u, 7674u, 4294967295u, u_input.c), vec4<u32>(28624u, u_input.c, u_input.a.x, 1u), arg_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, 32017u, 1u), vec4<u32>(4294967295u, 64832u, 0u, u_input.a.x), vec4<u32>(46765u, u_input.c, 68549u, u_input.c)), vec4<bool>(arg_0, arg_0, false, false)) % vec4<u32>(32u))) >> (select(abs(~vec4<u32>(1u, 1u, 40325u, 4294967295u)), abs(vec4<u32>(u_input.c, u_input.a.x, u_input.c, 10693u)) ^ ~vec4<u32>(u_input.c, u_input.c, 20244u, u_input.a.x), false) % vec4<u32>(32u)));
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.c, 30842u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.a.x, 9650u, 0u, 1u)), vec4<u32>(~u_input.c, ~1u, ~u_input.c, ~u_input.a.x)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(arg_1)), u_input.b, Struct_2(-vec4<i32>(var_1.x, 1i, -1i, -1i)), Struct_2(var_1));
    var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(var_0.a.zx)), -1i >> (var_2.x % 32u), var_3.c, var_3.d);
    return StorageBuffer(1000f, var_1.zxw, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1231f - arg_1.x)), _wgslsmith_f_op_f32(-var_3.a.x), true)), -110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(u_input.c)), _wgslsmith_div_f32(-1000f, 1339f))) - _wgslsmith_f_op_f32(-666f + -1229f)), _wgslsmith_f_op_f32(abs(799f))));
}

