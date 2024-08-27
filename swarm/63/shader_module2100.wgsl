struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = true;
    var var_1 = Struct_3(Struct_1(1000f, false, _wgslsmith_clamp_vec3_u32(~vec3<u32>(32876u, u_input.a, 1u), ~(~vec3<u32>(65105u, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, u_input.a))), vec3<bool>(true, true, var_0)), all(vec3<bool>(u_input.a < 43567u, true, ~arg_0 != arg_0)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-862f, _wgslsmith_f_op_f32(-1069f * -430f)))), any(vec3<bool>(true, true, true)) == any(vec2<bool>(var_0, var_0)), vec3<u32>(u_input.a, max(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(u_input.a >> (u_input.a % 32u))), !(!(!vec3<bool>(var_0, false, true)))));
    var_1 = Struct_3(var_1.a, select(arg_0, ~1i, var_0) <= 8934i, Struct_1(_wgslsmith_f_op_f32(-var_1.a.a), var_0, var_1.c.c, !vec3<bool>(var_0, var_1.a.d.x, false)));
    var_1 = Struct_3(var_1.a, true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f - var_1.c.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) * var_1.a.a)), true, ~(~var_1.c.c), !var_1.a.d));
    let var_2 = ~(~vec2<i32>(_wgslsmith_clamp_i32(28722i, arg_0, 549i), arg_0)) << (~(~var_1.a.c.xz) % vec2<u32>(32u));
    return true;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, _wgslsmith_div_f32(-620f, -913f), _wgslsmith_f_op_f32(f32(-1f) * -359f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1884f, 770f, -1608f), vec3<f32>(-1000f, -669f, 2987f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2046f) - -228f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1036f)) - -1159f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) + _wgslsmith_f_op_f32(325f * -392f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), 1163f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(604f - -1315f), _wgslsmith_f_op_f32(max(var_0.x, 922f))))) < _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -778f))), countOneBits(vec3<u32>(~29299u, arg_0, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, 70323u), vec2<u32>(0u, 4294967295u), false), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(4294967295u, u_input.a))))), !select(vec3<bool>(any(vec3<bool>(false, true, arg_1)), arg_1, all(vec2<bool>(arg_1, false))), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, true, true), vec3<bool>(arg_1, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, arg_1), arg_1))));
    let var_2 = var_1;
    var var_3 = Struct_3(var_1, var_1.b, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.a)))), -1123f), true, var_2.c, var_2.d));
    var_3 = Struct_3(Struct_1(var_2.a, all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_2.d.x, false, false, false), vec4<bool>(var_3.c.b, true, arg_1, true)), !vec4<bool>(false, false, var_2.b, true), !vec4<bool>(var_1.b, arg_1, var_1.b, false))), ~max(countOneBits(vec3<u32>(var_1.c.x, 19034u, u_input.a)), ~vec3<u32>(1u, u_input.a, 43279u)), var_1.d), any(!var_3.c.d.xx), Struct_1(var_0.x, var_1.d.x, _wgslsmith_mod_vec3_u32(~vec3<u32>(54419u, 30973u, var_1.c.x) & ~var_1.c, ~vec3<u32>(var_3.c.c.x, var_2.c.x, arg_0) >> (vec3<u32>(1u, 42802u, arg_0) % vec3<u32>(32u))), var_3.a.d));
    return select(select(!var_1.d, select(vec3<bool>(true, any(vec2<bool>(arg_1, false)), any(vec2<bool>(var_2.d.x, false))), !select(vec3<bool>(var_1.d.x, true, false), vec3<bool>(false, false, true), true), true), !((var_3.c.d.x | var_3.c.b) | true)), var_1.d, vec3<bool>(all(vec4<bool>(any(vec3<bool>(var_2.b, false, true)), 30084u < arg_0, false, !var_3.c.b)), !(!(!var_3.c.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3.a.a)), _wgslsmith_f_op_f32(round(var_2.a))) > 497f));
}

fn func_2() -> Struct_1 {
    let var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -3691i), vec2<i32>(-1i, countOneBits(16358i))) << (u_input.a % 32u);
    var var_1 = func_4(~0u, !func_3(_wgslsmith_sub_i32(1i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-(~79939i), _wgslsmith_div_i32(-10531i >> (u_input.a % 32u), _wgslsmith_sub_i32(var_0, -2002i)), ~(var_0 << (1u % 32u)), select(_wgslsmith_sub_i32(var_0, 2147483647i), -var_0, true)), vec4<i32>(-1i, _wgslsmith_div_i32(var_0, 2147483647i) & 0i, var_0, var_0)));
    var_1 = !select(!vec3<bool>(u_input.a != 230u, select(var_1.x, true, true), true), func_4(~firstTrailingBit(u_input.a), func_3(2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -9151i, 2147483647i, var_0), abs(vec4<i32>(var_0, var_0, var_0, 1i)))), vec3<bool>(var_1.x, var_1.x, false));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-249f - -1079f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1400f - 630f))))));
    let var_3 = Struct_3(Struct_1(var_2.x, true == (var_0 <= ~0i), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(54519u, u_input.a, 0u) ^ vec3<u32>(84554u, 4294967295u, u_input.a)), !select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, true, false), var_1.x)), false, Struct_1(_wgslsmith_f_op_f32(step(-286f, _wgslsmith_f_op_f32(ceil(var_2.x)))), false, vec3<u32>(1u, ~u_input.a, 1u), vec3<bool>(!(!var_1.x), var_1.x, all(vec4<bool>(false, var_1.x, false, var_1.x)) && true)));
    return var_3.c;
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b && any(select(select(vec4<bool>(var_0.b, true, true, false), vec4<bool>(var_0.b, var_0.d.x, var_0.d.x, var_0.b), var_0.b), !vec4<bool>(false, var_0.b, false, var_0.d.x), var_0.d.x)), select(~min(vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_0.c.x, var_0.c.x), vec3<u32>(u_input.a, var_0.c.x, 60694u))), _wgslsmith_div_vec3_u32(~var_0.c, vec3<u32>(u_input.a, ~1u, firstTrailingBit(u_input.a))), select(vec3<bool>(true, var_0.d.x != var_0.d.x, false), select(vec3<bool>(true, true, true), func_2().d, select(true, var_0.d.x, true)), vec3<bool>(any(vec4<bool>(var_0.d.x, false, var_0.b, true)), var_0.d.x | var_0.d.x, true))), func_2().d);
    var_0 = func_2();
    var var_1 = true;
    var_0 = func_2();
    return select(-2147483647i, -5519i, _wgslsmith_mult_u32(~77879u, var_0.c.x) > u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(_wgslsmith_div_i32(countOneBits(-1i), _wgslsmith_add_i32(reverseBits(-23457i), 1i)), _wgslsmith_clamp_i32(max(abs(1i), func_1()), abs(0i), _wgslsmith_div_i32(max(1i, -2147483647i), ~0i)), 1i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-26684i, -2147483647i, -49228i, -2147483647i)));
    var_0 = abs(~abs(vec3<i32>(var_0.x, 67135i, -2147483647i) >> (vec3<u32>(2503u, 0u, u_input.a) % vec3<u32>(32u)))) >> (reverseBits(~vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, u_input.a)) % vec3<u32>(32u));
    var_0 = vec3<i32>(_wgslsmith_div_i32(-6017i ^ _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, 2442i), var_0.x), abs(~2793i) & countOneBits(var_0.x)), select(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.xz)) << (u_input.a % 32u), firstTrailingBit(_wgslsmith_mult_i32(-4920i, reverseBits(var_0.x))), false), firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, 1i, 0i), true), -vec3<i32>(var_0.x, -1978i, var_0.x)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(-35206i, 0i, 1i), vec3<i32>(var_0.x, -22134i, var_0.x))))));
    var_0 = max(firstTrailingBit(select(select(-vec3<i32>(18211i, 2147483647i, var_0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(51290i, var_0.x, -46114i), vec3<i32>(var_0.x, var_0.x, -2147483647i)), vec3<bool>(false, true, false)), vec3<i32>(var_0.x ^ 1i, _wgslsmith_div_i32(var_0.x, 7751i), countOneBits(var_0.x)), true)), ~(-vec3<i32>(-17458i, var_0.x, -1i) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.x, 0i), vec3<i32>(-1i, -20119i, var_0.x)) >> (firstTrailingBit(vec3<u32>(37144u, u_input.a, 32064u)) % vec3<u32>(32u)))));
    var_0 = min(_wgslsmith_add_vec3_i32(~(-min(vec3<i32>(var_0.x, var_0.x, 2329i), vec3<i32>(var_0.x, -22769i, -2147483647i))), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 30296i, var_0.x), vec3<i32>(2147483647i, 0i, var_0.x))), _wgslsmith_div_vec3_i32(vec3<i32>(-6041i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, var_0.x << (u_input.a % 32u)), _wgslsmith_add_i32(938i, _wgslsmith_add_i32(var_0.x, 1i))), vec3<i32>(-1i) * -vec3<i32>(var_0.x, 12941i, -2900i)));
    var var_1 = -var_0.x;
    var_0 = vec3<i32>(0i, var_0.x, abs(-31035i));
    var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, abs(var_0.x)), abs(var_0.yy)) >> (~1u % 32u), -(i32(-1i) * -2147483647i), ~_wgslsmith_div_i32(-func_1(), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec2<u32>(u_input.a, u_input.a)))), countOneBits(~(~_wgslsmith_mult_u32(1u, u_input.a))), vec4<u32>(1u | _wgslsmith_mod_u32(~50806u, u_input.a ^ 1u), u_input.a, 0u, _wgslsmith_clamp_u32(1283u, ~4294967295u, u_input.a)), ~firstTrailingBit(_wgslsmith_div_u32(u_input.a | u_input.a, _wgslsmith_add_u32(82487u, 1u))));
}

