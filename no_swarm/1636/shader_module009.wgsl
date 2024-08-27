struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<u32>(~7870u, arg_1.b.d, ~(~max(_wgslsmith_clamp_u32(1u, 34682u, 1u), 0u)));
    var var_1 = vec4<i32>(i32(-1i) * -2147483647i, abs(u_input.b), 1i, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, 1i), u_input.a)));
    var_1 = -countOneBits(vec4<i32>(var_1.x >> (arg_3.b.d % 32u), max(-2147483647i, -2147483647i), u_input.b, _wgslsmith_mod_i32(arg_3.c.x, var_1.x))) & select(min(firstLeadingBit(-vec4<i32>(7932i, -1i, u_input.b, var_1.x)), firstLeadingBit(vec4<i32>(41929i, arg_3.c.x, 0i, var_1.x))), vec4<i32>(20700i, 1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(33042u, 56816u, 1u), vec3<u32>(var_0.x, 1u, 23963u)) % 32u), var_1.x, arg_1.c.x), select(arg_0, !(!arg_3.a), arg_3.a));
    let var_2 = arg_1.b;
    var var_3 = Struct_3(vec2<i32>(-(arg_1.c.x << (4294967295u % 32u)), -countOneBits(arg_3.c.x)));
    return select(firstLeadingBit(_wgslsmith_dot_vec3_u32((var_0 & vec3<u32>(1u, 1u, arg_1.b.d)) ^ firstTrailingBit(vec3<u32>(arg_1.b.d, 4294967295u, var_2.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 74760u), vec3<u32>(arg_1.b.d, arg_1.b.d, 3780u)))), 0u, !any(!select(arg_3.a.zyw, arg_0.wwy, arg_0.x)));
}

fn func_2() -> Struct_5 {
    let var_0 = !all(select(vec4<bool>(u_input.a < 0i, true, true, true), vec4<bool>(true, false, all(vec3<bool>(false, false, true)), false), vec4<bool>(true, false, all(vec3<bool>(false, true, false)), true)));
    let var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(func_3(vec4<bool>(false, false, var_0, true), Struct_2(vec4<bool>(var_0, var_0, false, var_0), Struct_1(vec2<f32>(-289f, 1000f), var_0, var_0, 30790u), vec2<i32>(-11635i, -2147483647i), true, false), var_0, Struct_2(vec4<bool>(var_0, var_0, true, false), Struct_1(vec2<f32>(-783f, 169f), var_0, true, 16759u), vec2<i32>(u_input.a, u_input.b), var_0, true)), ~17994u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(39136u, 0u), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mod_u32(34714u, 11029u) & firstTrailingBit(38106u)), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(min(~firstLeadingBit(vec3<u32>(0u, 4294967295u, 42372u)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~54408u, max(0u, 76413u), _wgslsmith_div_u32(30311u, 19825u))), vec3<u32>(firstLeadingBit(~4294967295u), 65223u, _wgslsmith_sub_u32(~7014u, _wgslsmith_clamp_u32(4294967295u, 33770u, 29695u)))));
    let var_2 = Struct_2(!(!(!(!vec4<bool>(false, var_0, true, var_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(667f)), -347f))), true, any(vec3<bool>(false, var_0, false && var_0)), var_1.x), vec2<i32>(min(u_input.a, -19360i), -(-1i << (min(1u, 4294967295u) % 32u))), min(abs(u_input.a), ~(i32(-1i) * -17131i)) != _wgslsmith_div_i32(u_input.a, max(u_input.b, -1i)), all(select(!(!vec2<bool>(var_0, var_0)), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(true, true)), vec2<bool>(!var_0, false))));
    let var_3 = Struct_3(abs(vec2<i32>(-u_input.b, 0i)));
    let var_4 = 67595u;
    return Struct_5(_wgslsmith_mult_vec2_i32(var_3.a, countOneBits(vec2<i32>(~0i, _wgslsmith_clamp_i32(-2147483647i, 1i, u_input.b)))), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, abs(-28443i ^ var_2.c.x), abs(0i), var_3.a.x >> (4294967295u % 32u)), vec4<i32>(reverseBits(u_input.b), var_2.c.x, var_2.c.x, u_input.b) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(19074u, var_1.x, 30858u, 18865u), vec4<u32>(1u, var_1.x, 20805u, 1u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> Struct_5 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.xz);
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.wx * arg_1.yx);
    var var_2 = any(select(!vec3<bool>(select(false, true, false), any(vec2<bool>(true, true)), false), vec3<bool>(false && all(vec4<bool>(true, false, true, true)), true, true), !vec3<bool>(false, true, arg_0 == arg_0)));
    let var_3 = vec3<i32>(max(var_0.a.x, _wgslsmith_dot_vec2_i32(func_2().a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_0.a.x), var_0.a))), 23995i, var_0.a.x);
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, 683f, -1037f)))));
    let var_1 = Struct_4(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec2<bool>(true, true))), vec2<bool>(false, true), any(vec2<bool>(true, true))), countOneBits(arg_0 | _wgslsmith_div_i32(0i, arg_0)) | -2147483647i);
    var var_2 = Struct_5(-arg_1.a, -(~(~(var_1.b & 0i))), func_2().c);
    let var_3 = Struct_2(!vec4<bool>(!(var_1.a.x && true), !all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false)), var_1.a.x, all(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, false, false, true), vec4<bool>(false, var_1.a.x, var_1.a.x, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)), !(var_1.a.x && select(false, false, false)), var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(32569u, _wgslsmith_add_u32(1u, 0u), 45284u, ~21264u), firstTrailingBit(max(vec4<u32>(0u, 1u, 3164u, 24065u), vec4<u32>(41076u, 4294967295u, 4655u, 47949u))))), vec2<i32>(arg_1.c >> (~1u % 32u), abs(var_2.a.x)), !any(vec3<bool>(true, var_1.a.x, var_0.x != -291f)), true);
    var_2 = Struct_5(vec2<i32>(arg_0, 2147483647i ^ (0i ^ (arg_1.c & var_2.b))), var_2.a.x << ((var_3.b.d >> (~func_3(vec4<bool>(var_1.a.x, var_1.a.x, false, true), var_3, var_1.a.x, var_3) % 32u)) % 32u), 4342i);
    return _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(var_3.b.d, var_3.b.d, var_3.b.d) | reverseBits(vec3<u32>(4294967295u, 21021u, var_3.b.d)))), vec3<u32>(var_3.b.d, _wgslsmith_sub_u32(~1u, ~43006u) ^ var_3.b.d, abs(36018u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_4(u_input.a >> (5774u % 32u), func_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, 787f, 115f, 410f)), u_input.b | -5463i)));
    let var_1 = Struct_2(!vec4<bool>(true || all(vec4<bool>(true, false, true, false)), ~5197u == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5141u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u)), false, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(508f, -441f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(588f, 2203f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-657f, 334f), vec2<f32>(1425f, -568f))))), all(vec3<bool>(all(vec3<bool>(true, false, true)), true, select(false, false, true))), true, ~1u), abs(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, 41597i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-38320i, 25287i), vec2<i32>(-34490i, u_input.b)))), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), any(vec2<bool>(true, true)) && true);
    let var_2 = !any(vec3<bool>(true, false, var_1.e));
    var var_3 = Struct_4(vec2<bool>(any(vec2<bool>(false, var_2)), true), func_2().c);
    var_0 = firstLeadingBit(14273u);
    var var_4 = firstTrailingBit(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(113f)), _wgslsmith_mod_u32(reverseBits(var_1.b.d), 1u >> ((var_1.b.d >> (var_1.b.d % 32u)) % 32u)));
}

