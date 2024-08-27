struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_1.c.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(299f, -392f, true))));
    let var_1 = Struct_2(vec3<bool>(!arg_3 | arg_3, !((arg_1.c.c > arg_1.c.c) | arg_1.a), !(_wgslsmith_f_op_f32(-arg_1.c.c) >= 313f)), arg_2.xzy);
    var var_2 = vec4<u32>(~(~(~(~arg_1.d))), arg_2.x, reverseBits(u_input.c.x), 41003u);
    let var_3 = vec3<i32>(arg_0, -arg_0, -2147483647i);
    return !vec4<bool>(all(arg_1.c.e), any(select(var_1.a, vec3<bool>(true, arg_3, arg_3), true)), all(vec3<bool>(arg_3, -319f <= arg_1.c.c, true || arg_3)), true);
}

fn func_2() -> bool {
    return !(!all(select(func_3(-2147483647i, Struct_3(false, false, Struct_1(vec3<u32>(u_input.c.x, 1u, 5954u), 12651u, -478f, true, vec3<bool>(true, true, true)), u_input.b.x), vec4<u32>(u_input.c.x, u_input.b.x, 44068u, u_input.a), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_2(), true, Struct_1(firstTrailingBit((vec3<u32>(u_input.a, 3110u, 1u) | vec3<u32>(1u, u_input.a, 0u)) << (vec3<u32>(75430u, 2944u, u_input.c.x) % vec3<u32>(32u))), abs(~u_input.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2330f - -183f) - _wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_f_op_f32(min(-1017f, -357f)))), true, vec3<bool>(true, true, true)), u_input.c.x);
    var var_1 = vec2<i32>(1i << (_wgslsmith_sub_u32(var_0.d ^ var_0.c.b, 0u) % 32u), 1i);
    var_1 = _wgslsmith_mod_vec2_i32(max(min(max(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(0i, var_1.x)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, 36647i), vec2<i32>(var_1.x, var_1.x))), vec2<i32>(var_1.x, var_1.x) & (vec2<i32>(var_1.x, 12070i) << (vec2<u32>(4294967295u, 40782u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(select(firstTrailingBit(vec2<i32>(var_1.x, var_1.x)), firstLeadingBit(vec2<i32>(-2147483647i, var_1.x)), true), vec2<i32>(~var_1.x, ~var_1.x), reverseBits(vec2<i32>(-65980i, var_1.x) << (u_input.b % vec2<u32>(32u))))) & -firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, -20738i)));
    var_0 = Struct_3(var_0.c.e.x, !(!var_0.a | any(select(var_0.c.e, vec3<bool>(false, var_0.a, var_0.c.d), var_0.c.e))), Struct_1(~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 78691u, var_0.d), var_0.c.a, var_0.c.a), _wgslsmith_sub_vec3_u32(var_0.c.a, var_0.c.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(~89822u, 20406u | var_0.c.a.x, u_input.a), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(var_0.c.a, vec3<u32>(1u, 30688u, var_0.c.b)), countOneBits(vec3<u32>(33559u, 30997u, 1u)))), 875f, var_0.a, var_0.c.e), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(42871u, var_0.d), var_0.c.a.yz, false), ~_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(var_0.d, var_0.d))) | ~17300u);
    var_0 = Struct_3(var_0.b, true, Struct_1(min(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, var_0.c.a.x), ~var_0.c.a), abs(vec3<u32>(13498u, u_input.b.x, var_0.d))), _wgslsmith_div_u32(var_0.d, _wgslsmith_clamp_u32(firstTrailingBit(var_0.c.b), 69280u, 1u << (u_input.a % 32u))), var_0.c.c, var_0.c.e.x, vec3<bool>(all(func_3(var_1.x, Struct_3(var_0.a, true, Struct_1(var_0.c.a, 4294967295u, var_0.c.c, var_0.c.d, var_0.c.e), u_input.a), vec4<u32>(0u, 48467u, var_0.d, 1u), true).wx), func_2(), _wgslsmith_sub_u32(u_input.c.x, 16725u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(2190u, var_0.c.b), u_input.b))), _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(1u), _wgslsmith_mult_u32(u_input.c.x, u_input.a), ~u_input.c.x, 19702u), vec4<u32>(reverseBits(~var_0.d), _wgslsmith_mult_u32(u_input.b.x, 34229u), ~min(4294967295u, u_input.b.x), countOneBits(var_0.c.a.x))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(165f, -1163f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-408f, -1000f, -1268f) * vec3<f32>(1304f, 195f, 258f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(789f, -2019f, 1372f) * vec3<f32>(1720f, -389f, -208f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, 156f, 945f) - vec3<f32>(-1386f, 239f, 810f)))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(987f, -2433f, _wgslsmith_f_op_f32(func_1())))))));
    let var_1 = Struct_3(true, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), -332f) <= _wgslsmith_f_op_f32(exp2(var_0.x))), Struct_1(~(~select(vec3<u32>(u_input.b.x, 29500u, 1u), vec3<u32>(0u, u_input.a, 0u), vec3<bool>(false, true, false))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -435f))), all(vec2<bool>(true, true)), vec3<bool>(true, true, true)), 1u);
    let var_2 = var_1.c;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1502f, 458f, -890f), vec3<f32>(var_1.c.c, -172f, var_0.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2158f, -345f, 404f)))), vec3<f32>(1f, 1815f, -503f))))));
    let var_3 = var_1;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.c, var_3.c.c, 504f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.c)), -804f, var_2.c))));
    var var_4 = Struct_2(!var_2.e, countOneBits(var_1.c.a));
    let var_5 = ((select(~7605i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(70022i, -19864i)), true) & min(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(33585i, 122422i))) & (1i & (2147483647i >> ((u_input.a >> (u_input.c.x % 32u)) % 32u)))) | ~(~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.c.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3.c.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-701f + -1065f), _wgslsmith_f_op_f32(-var_3.c.c)), var_1.c.c != var_2.c))), var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.c, 893f, 548f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-554f, 1326f, var_2.c), vec3<f32>(var_0.x, 1029f, -1358f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.c, 467f) - vec3<f32>(-611f, -203f, var_0.x)), func_3(10794i, Struct_3(true, false, Struct_1(var_3.c.a, 24470u, var_0.x, var_1.c.d, vec3<bool>(false, var_2.e.x, true)), var_4.b.x), vec4<u32>(var_2.b, var_1.c.b, var_3.d, 0u), var_3.b).x)))), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<bool>(var_2.d, var_2.e.x))) * var_0.yy));
}

