struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, arg_3.a.a, arg_3.a.a))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-307f, arg_0.x, arg_3.a.b, arg_3.a.a)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1.x, arg_3.a.c, arg_0.x)))), vec4<f32>(arg_3.a.a, -1382f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1051f, arg_1.x))), 604f), !vec4<bool>(any(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, false)), true))));
    let var_1 = Struct_5(Struct_4(~vec2<u32>(19446u, ~4294967295u), vec2<f32>(-155f, -741f)));
    let var_2 = firstTrailingBit(u_input.b.wxx);
    let var_3 = all(vec4<bool>(!(-6754i == arg_3.b) || false, !(!(arg_3.b <= 25350i)), true, false));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-983f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, var_1.a.b.x) + _wgslsmith_div_f32(arg_3.a.b, 1000f)), 979f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x))))), -570f), arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1065f, _wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5(Struct_4(u_input.b.wx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-135f, 1108f) + vec2<f32>(1169f, 606f)))))));
    var var_1 = ~38082u;
    let var_2 = Struct_5(Struct_4(vec2<u32>(u_input.b.x, 42231u), vec2<f32>(_wgslsmith_div_f32(var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.a.b.x)), var_0.a.b.x)));
    var_0 = var_2;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.b.x, 490f) * -958f))));
    return Struct_3(var_2.a.a.x, _wgslsmith_f_op_f32(-var_0.a.b.x) == _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, var_0.a.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-234f * 998f), _wgslsmith_f_op_f32(var_0.a.b.x + var_3.b)), _wgslsmith_mult_i32(~u_input.a.x, 8599i), Struct_2(Struct_1(-435f, 584f, var_3.c), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)))), Struct_2(Struct_1(-1000f, var_2.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), -553f)), 1i), ~(~23694u & _wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.a.a.x, 1u), u_input.b.zzy), ~26733u)), Struct_1(_wgslsmith_f_op_f32(round(var_0.a.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(365f * 1192f), _wgslsmith_f_op_f32(floor(var_2.a.b.x)))), _wgslsmith_f_op_f32(min(627f, _wgslsmith_f_op_f32(exp2(var_2.a.b.x)))), true)), 1000f));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = false;
    let var_2 = abs(u_input.c.x);
    let var_3 = arg_0.c;
    var var_4 = func_2();
    return func_2().c.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~(~select(vec3<u32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x) << (u_input.c.xxx % vec3<u32>(32u)), vec3<u32>(arg_3.a, abs(71060u), _wgslsmith_mult_u32(arg_2.a.a.x, arg_2.a.a.x)), arg_3.b));
    return Struct_3(_wgslsmith_mult_u32(~(~select(var_0.x, u_input.b.x, false)), 0u), !arg_3.b, Struct_2(arg_3.e, -20810i), _wgslsmith_clamp_u32(countOneBits(~arg_3.a) ^ firstLeadingBit(func_2().a), _wgslsmith_add_u32(~abs(arg_2.a.a.x), _wgslsmith_sub_u32(firstLeadingBit(60683u), u_input.b.x >> (41162u % 32u))), _wgslsmith_clamp_u32(~1u << (_wgslsmith_add_u32(arg_2.a.a.x, 9717u) % 32u), max(_wgslsmith_mod_u32(arg_2.a.a.x, arg_2.a.a.x), abs(arg_3.a)), arg_2.a.a.x)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_3(0u, u_input.c.x >= _wgslsmith_div_u32(u_input.c.x, 6201u), Struct_2(Struct_1(1000f, -448f, 396f), u_input.a.x >> (415u % 32u)), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(sign(162f)), -1988f, _wgslsmith_f_op_f32(step(641f, -562f)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-622f))), -808f, -178f)), vec4<i32>((2147483647i ^ u_input.a.x) | func_2().c.b, _wgslsmith_div_i32(~u_input.a.x, min(u_input.a.x, 28592i)), 29327i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -2147483647i), ~vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x))) | vec4<i32>(~(~(-2147483647i)), -1i, -(~u_input.a.x), _wgslsmith_mult_i32(~12394i, u_input.a.x)), Struct_5(Struct_4(u_input.b.zw, vec2<f32>(-2011f, _wgslsmith_f_op_f32(f32(-1f) * -867f)))), func_2());
    var var_1 = Struct_3(var_0.d, true, Struct_2(var_0.e, -u_input.a.x), u_input.c.x << (u_input.c.x % 32u), var_0.c.a);
    var_1 = Struct_3(~u_input.c.x ^ firstTrailingBit((u_input.b.x ^ 0u) << (1u % 32u)), any(vec3<bool>(var_1.b, all(!vec4<bool>(var_1.b, true, false, var_1.b)), false)), Struct_2(func_2().c.a, ~(~(u_input.a.x << (34239u % 32u)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(firstTrailingBit(u_input.c.wx), u_input.b.xx | vec2<u32>(0u, 16171u)), ~u_input.c.ww), 4294967295u), Struct_1(var_1.e.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.a.a * var_0.e.b))) - 1475f), -1220f));
    let var_2 = Struct_4(_wgslsmith_clamp_vec2_u32(~select(u_input.b.wx, u_input.b.yx << (vec2<u32>(39875u, u_input.b.x) % vec2<u32>(32u)), select(true, true, var_0.b)), ~select(vec2<u32>(u_input.c.x, u_input.b.x) >> (u_input.b.xy % vec2<u32>(32u)), u_input.c.zx << (u_input.c.yz % vec2<u32>(32u)), !vec2<bool>(var_0.b, true)), countOneBits(firstTrailingBit(countOneBits(u_input.b.zz)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(538f)), _wgslsmith_f_op_f32(var_1.c.a.c * var_0.e.c)))), vec2<f32>(-1122f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.a.b), _wgslsmith_f_op_f32(f32(-1f) * -182f)))))));
    var_1 = func_2();
    var_1 = func_4(Struct_1(var_2.b.x, func_1(func_2(), vec2<bool>(true, var_0.b), func_1(func_2(), vec2<bool>(var_1.b, var_0.b), var_1.e)).b, func_1(Struct_3(var_2.a.x | var_2.a.x, all(vec3<bool>(true, var_0.b, true)), var_1.c, 21398u << (u_input.c.x % 32u), Struct_1(var_0.e.c, var_1.c.a.c, var_2.b.x)), vec2<bool>(true, true), var_1.c.a).a), abs(firstTrailingBit(_wgslsmith_add_vec4_i32(select(vec4<i32>(0i, var_0.c.b, 2147483647i, 1i), vec4<i32>(10514i, var_0.c.b, var_1.c.b, var_0.c.b), false), vec4<i32>(-1i, -1i, var_0.c.b, -2147483647i) | vec4<i32>(26837i, 27591i, 0i, 0i)))), Struct_5(var_2), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.b, var_1.e.c, -1005f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(695f, var_1.c.a.c, -1000f), vec3<f32>(var_2.b.x, -881f, var_1.e.b))))))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, var_0.a, 4294967295u), u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, 0u, 1863u, var_2.a.x), vec4<u32>(45301u, var_1.d, var_1.d, 1u), u_input.c)), vec4<u32>(0u, _wgslsmith_mod_u32(var_0.a, u_input.b.x), var_2.a.x, u_input.c.x)), vec4<u32>(_wgslsmith_mod_u32(~114943u, _wgslsmith_sub_u32(var_1.d, var_1.a)), ~1u, _wgslsmith_add_u32(~var_2.a.x, var_1.a), var_0.a)));
}

