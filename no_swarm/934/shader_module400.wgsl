struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = true;
    var var_1 = arg_0;
    return Struct_2(!(!(!arg_0.b.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = func_2(Struct_1(1022f, select(vec4<bool>(!arg_2, false, arg_3.b.x | false, false), select(select(vec4<bool>(arg_2, true, arg_2, true), arg_3.b, arg_3.b), select(arg_1, arg_3.b, arg_3.b.x), all(vec2<bool>(arg_1.x, false))), arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.c)), vec3<i32>(arg_0.x, arg_3.d.x, ~arg_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(911f)))))));
    let var_1 = u_input.c.x;
    var var_2 = arg_3.d;
    var_0 = Struct_2(arg_3.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f - 1000f))));
    var var_3 = vec4<i32>(var_2.x, arg_0.x, ~(26052i ^ max(0i, arg_3.d.x << (var_1 % 32u))), -2147483647i);
    return select(arg_1, !arg_3.b, vec4<bool>(arg_3.c.x > -190f, arg_3.b.x, true, arg_0.x > _wgslsmith_clamp_i32(firstLeadingBit(-50833i), ~(-63165i), _wgslsmith_dot_vec2_i32(var_3.zx, arg_3.d.zy))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_1(-257f, !arg_0.a.b, vec2<f32>(354f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-544f + arg_0.a.a), _wgslsmith_f_op_f32(abs(arg_0.a.a))) - arg_0.a.a)), arg_0.a.d, _wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-753f, _wgslsmith_f_op_f32(step(-623f, -123f))))))));
    var var_1 = arg_0.a;
    var var_2 = Struct_2(false);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-854f * -497f), _wgslsmith_f_op_f32(min(1023f, -2007f))))), !vec4<bool>(var_2.a, all(select(vec4<bool>(var_2.a, false, var_1.b.x, var_0.b.x), var_0.b, true)), !var_0.b.x, !all(arg_0.a.b.zwx)), var_0.c, abs(arg_0.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f)));
    var var_4 = ~14656u;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-233f, _wgslsmith_f_op_f32(-184f - -1358f))) * var_3.a), !vec4<bool>(var_1.b.x, false || arg_0.a.b.x, -844f > var_0.c.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-239f * var_1.e), -1468f)), abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(var_3.d, var_3.d), 1i)), -1000f));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 928f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(757f, 992f, -1986f), vec3<f32>(arg_3.a.c.x, 1127f, arg_3.a.e))))), vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_3.a.c.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + 728f)), select(!arg_3.a.b.yzy, vec3<bool>(arg_3.a.b.x, arg_3.a.b.x, arg_3.a.b.x), arg_3.a.b.xwx)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1481f, arg_0.x, arg_0.x)))))));
    var var_2 = firstTrailingBit(~_wgslsmith_div_vec2_i32(reverseBits(select(vec2<i32>(u_input.d.x, arg_1.x), vec2<i32>(arg_1.x, arg_3.a.d.x), vec2<bool>(false, arg_3.a.b.x))), _wgslsmith_add_vec2_i32(~arg_3.a.d.zx, vec2<i32>(arg_3.a.d.x, u_input.d.x) ^ u_input.d)));
    var var_3 = arg_3;
    let var_4 = vec4<bool>(arg_3.a.b.x, !(!any(select(var_3.a.b.xxx, vec3<bool>(arg_3.a.b.x, false, arg_3.a.b.x), vec3<bool>(arg_3.a.b.x, arg_3.a.b.x, false)))), true, var_3.a.b.x);
    return func_2(func_3(Struct_3(Struct_1(var_1.x, var_3.a.b, _wgslsmith_div_vec2_f32(arg_3.a.c, var_3.a.c), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, var_3.a.d.x), var_3.a.d), _wgslsmith_div_f32(var_1.x, 2396f))), reverseBits(~_wgslsmith_mod_u32(u_input.e.x, u_input.e.x))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-440f)) - _wgslsmith_f_op_f32(f32(-1f) * -313f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -243f))))), vec2<i32>(u_input.d.x, _wgslsmith_div_i32(firstLeadingBit(-u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, -67602i) << ((32630u & u_input.a.x) % 32u))), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), func_3(Struct_3(Struct_1(_wgslsmith_f_op_f32(-1045f - 1449f), func_1(vec3<i32>(-2147483647i, 4647i, -1i), vec4<bool>(false, false, true, false), false, Struct_1(1000f, vec4<bool>(true, true, true, var_0), vec2<f32>(122f, 998f), vec3<i32>(u_input.d.x, -7604i, u_input.d.x), -857f)), vec2<f32>(-1431f, 1875f), firstTrailingBit(vec3<i32>(-62954i, u_input.d.x, u_input.d.x)), _wgslsmith_f_op_f32(min(1266f, -1134f)))), _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(abs(1u), 4294967295u))));
    var var_2 = u_input.e;
    var_2 = firstLeadingBit(_wgslsmith_mod_vec3_u32(max(vec3<u32>(21887u, u_input.c.x, u_input.b), ~u_input.c.yzw) << (countOneBits(vec3<u32>(77442u, 66748u, 1u)) % vec3<u32>(32u)), vec3<u32>(~abs(var_2.x), 1u, reverseBits(u_input.a.x))));
    var_2 = vec3<u32>(abs(~u_input.a.x), _wgslsmith_mult_u32(~(_wgslsmith_clamp_u32(4139u, var_2.x, 16796u) & ~u_input.a.x), var_2.x), u_input.a.x);
    let var_3 = Struct_3(func_3(Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), !vec4<bool>(false, true, false, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(579f, -800f) + vec2<f32>(757f, -1000f)), vec3<i32>(16553i, u_input.d.x, u_input.d.x) ^ vec3<i32>(u_input.d.x, 1i, u_input.d.x), -1255f)), 106478u).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2.zy << (firstLeadingBit(vec2<u32>(u_input.a.x, u_input.c.x)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) * -542f)) - var_3.a.e), u_input.d, abs(firstTrailingBit(~countOneBits(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.d.x)))), ~vec3<u32>(u_input.c.x, 0u, ~22676u));
}

