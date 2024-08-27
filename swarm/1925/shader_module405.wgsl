struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = arg_0.b.yy;
    var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~firstLeadingBit(arg_2.b.yz >> (vec2<u32>(var_0.x, arg_0.b.x) % vec2<u32>(32u))), arg_0.b.yz), ~arg_2.b.xx);
    let var_1 = arg_2;
    let var_2 = arg_0.c.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.x, arg_2.c.x), vec2<f32>(1000f, -888f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, arg_2.c.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -3279f))) - var_1.c.xz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_2.c.x) + vec2<f32>(_wgslsmith_div_f32(var_2, arg_2.c.x), _wgslsmith_f_op_f32(trunc(-2393f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1655f, var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, arg_2.c.x))), var_1.c.xx))));
    return ~(~(~min(vec4<i32>(-24371i, 1i, 1i, 0i), ~vec4<i32>(8865i, -2147483647i, -1i, -1i))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = select(abs(arg_1.a.xzy), abs(arg_1.a.yww), false);
    var_0 = func_3(Struct_1(min(firstLeadingBit(arg_1.a), firstTrailingBit(arg_1.a) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-14479i, u_input.a.x, -5650i, var_0.x), vec4<i32>(1i, arg_1.d, 10373i, arg_0), arg_1.a)), vec3<u32>(arg_1.b.x, _wgslsmith_sub_u32(26294u, u_input.b), 1u) ^ arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(248f, arg_1.c.x, 184f)))), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(arg_1.d, 1i)) | var_0.x), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, select(false, true, true), true)), arg_1).xyw;
    var var_1 = abs(select(select(vec4<u32>(4294967295u, ~u_input.b, ~u_input.c.x, u_input.b), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.c.x, 1u, 0u, u_input.b), vec4<u32>(arg_1.b.x, u_input.b, 48536u, 0u)), ~vec4<u32>(arg_1.b.x, u_input.b, 11400u, 1u)), true), vec4<u32>(min(20057u, 28677u) >> (1u % 32u), _wgslsmith_mult_u32(0u, arg_1.b.x), ~abs(u_input.c.x), 166u), all(vec4<bool>(true, true, true, true)) & (_wgslsmith_f_op_f32(step(-589f, arg_1.c.x)) > _wgslsmith_f_op_f32(step(-787f, arg_1.c.x)))));
    var var_2 = arg_1.c.x;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f), 1156f), -143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c.x, 764f, true)) + _wgslsmith_f_op_f32(ceil(arg_1.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1.c.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2365f, 1000f), -919f)), 1083f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x, true)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(151f, -321f, arg_1.c.x, 503f), vec4<f32>(arg_1.c.x, arg_1.c.x, 1000f, arg_1.c.x), true)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.x, -651f, arg_1.c.x, arg_1.c.x)))))))));
    return _wgslsmith_dot_vec3_u32((arg_1.b & arg_1.b) ^ vec3<u32>(65714u, u_input.c.x, max(0u, u_input.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(56920u, ~(4294967295u >> (var_1.x % 32u)), var_1.x), reverseBits(vec3<u32>(0u, u_input.c.x, 16245u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-vec4<i32>(u_input.a.x, -27580i, u_input.a.x, u_input.a.x), vec3<u32>(~countOneBits(19191u), 56641u, func_4((-2147483647i << (u_input.b % 32u)) | u_input.a.x, Struct_1(func_3(Struct_1(vec4<i32>(-23899i, u_input.a.x, 12073i, -1i), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<f32>(1149f, 815f, 677f), u_input.a.x), vec3<bool>(false, true, false), Struct_1(vec4<i32>(u_input.a.x, 2147483647i, -35192i, -22138i), vec3<u32>(10248u, 1u, u_input.b), vec3<f32>(798f, 526f, -556f), 5804i)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 49938u, u_input.b), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(4528u, 4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-368f, -967f, -320f))), 1i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(381f + -1617f), 985f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(681f))), _wgslsmith_f_op_f32(-1f))), -437f), firstTrailingBit(u_input.a.x));
    var var_1 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), true, !all(vec4<bool>(true, true, false, false))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = u_input.c << (select(~vec2<u32>(reverseBits(u_input.b), 42363u), reverseBits(var_0.b.yy), any(vec4<bool>(var_0.c.x <= var_0.c.x, var_1.x, !var_1.x, any(vec2<bool>(true, true))))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_mult_i32(countOneBits(-2147483647i), _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 39490i, 0i), u_input.a), u_input.a.x)));
    var_1 = !vec3<bool>(var_0.b.x == 1u, -1371f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -424f), any(select(vec2<bool>(true, var_1.x), select(vec2<bool>(true, false), var_1.zy, var_1.x), select(var_1.xy, vec2<bool>(true, var_1.x), vec2<bool>(true, true)))));
    return Struct_1(abs(var_0.a), countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.x), var_2) << (var_2.x % 32u), ~0u, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(812f, var_0.c.x, var_0.c.x), vec3<f32>(-142f, -870f, -1287f))))))), u_input.a.x);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-587f + var_0.c.x) * -1227f);
    var var_2 = func_2().b;
    var var_3 = var_0.d;
    var_2 = var_0.b;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zx;
    var var_1 = vec3<u32>(~abs(u_input.c.x), 1u, 4294967295u);
    let var_2 = Struct_1(select((vec4<i32>(-1i, var_0.x, u_input.a.x, 7602i) | (vec4<i32>(-6805i, u_input.a.x, 2147483647i, u_input.a.x) ^ vec4<i32>(var_0.x, -1i, u_input.a.x, u_input.a.x))) | (firstLeadingBit(vec4<i32>(-1i, -25491i, -35297i, -25496i)) | vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x)), firstLeadingBit(vec4<i32>(1i, _wgslsmith_sub_i32(var_0.x, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -54844i)), vec4<bool>(92498u >= var_1.x, false, any(vec2<bool>(false, true)) | false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true)))), vec3<u32>(~func_1(-1047f), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, 1u), vec2<u32>(_wgslsmith_div_u32(var_1.x, var_1.x), ~17534u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-628f, -440f, 1182f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(499f, -1017f, -606f)), true)) * vec3<f32>(917f, -1662f, -820f))), var_0.x >> (var_1.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f + var_2.c.x) + _wgslsmith_f_op_f32(trunc(var_2.c.x)))), _wgslsmith_f_op_f32(-var_2.c.x)));
}

