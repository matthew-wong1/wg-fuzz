struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(120f, -206f, 457f) * vec3<f32>(-532f, 485f, -104f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1009f, -569f, 1000f) + vec3<f32>(-416f, 515f, -662f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1102f, 2283f, 884f))))));
    let var_1 = arg_1.e;
    var var_2 = ~u_input.b;
    var var_3 = ~(vec4<u32>(arg_1.b, 20674u, arg_1.d, abs(reverseBits(u_input.b))) | _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 45109u, 1u, u_input.b)), vec4<u32>(select(u_input.b, arg_1.c, true), _wgslsmith_clamp_u32(u_input.b, arg_1.a.x, 4294967295u), ~u_input.b, 102639u)));
    var_3 = ~(~(~vec4<u32>(var_3.x, arg_1.c & arg_1.c, arg_1.c, ~u_input.b)));
    return _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - _wgslsmith_f_op_f32(max(1939f, var_0.x))) * 939f) - _wgslsmith_f_op_f32(abs(351f)))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), arg_0.b.yzw), Struct_5(vec2<u32>(arg_0.a, arg_0.a), 0u, 1u, u_input.b, arg_0.b.x)))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.x)) * _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(-1132f))))), select(vec2<i32>(~u_input.a.x, reverseBits(-28139i << (0u % 32u))), u_input.a, !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1403f - arg_0.c.x)))), !vec2<bool>(false, select(false, true, false)), arg_0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f)))), !(!all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-314f)))));
    var var_2 = (max(~firstTrailingBit(arg_0.a), arg_0.a) >> (~select(_wgslsmith_div_u32(1u, arg_0.a), u_input.b >> (1u % 32u), var_0.a >= -835f) % 32u)) << (u_input.b % 32u);
    var_2 = arg_0.d;
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    let var_0 = reverseBits(select(~(~(vec4<u32>(u_input.b, arg_0, 36572u, 37365u) << (vec4<u32>(u_input.b, 1u, 0u, arg_0) % vec4<u32>(32u)))), ~(~vec4<u32>(3736u, 0u, u_input.b, 1u) | ~vec4<u32>(0u, 0u, u_input.b, arg_0)), !vec4<bool>(!arg_3, 1i != u_input.a.x, all(vec2<bool>(false, false)), !arg_3)));
    let var_1 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(32219u, ~4294967295u, max(4294967295u, u_input.b)), var_0.wzw)), reverseBits(arg_0));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -870f) - -2039f)))));
    var var_3 = ~(~var_0.x);
    var var_4 = -_wgslsmith_div_i32(arg_1.x, 31456i);
    return -1900f;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = -933f;
    var var_1 = u_input.a.x;
    let var_2 = !vec3<bool>(any(arg_1), true && !arg_1.x, true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~arg_0.x, select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-23164i, u_input.a.x), arg_1.x) ^ func_2(Struct_4(1u, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 0i), vec4<f32>(arg_2, 1795f, arg_2, arg_2), 1u), vec3<f32>(-214f, 2046f, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, 468f, 321f, arg_2)), false))), -598f, _wgslsmith_f_op_f32(func_3(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 57606i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (~vec3<u32>(arg_0.x, 31448u, arg_3.x) % vec3<u32>(32u))), Struct_5(~(vec2<u32>(arg_3.x, 10818u) << (vec2<u32>(4294967295u, arg_0.x) % vec2<u32>(32u))), 68963u, ~(~arg_0.x), abs(u_input.b), 2147483647i))));
    var var_4 = Struct_3(Struct_1(arg_2), -_wgslsmith_sub_vec2_i32(~(vec2<i32>(11002i, 2147483647i) >> (arg_3.ww % vec2<u32>(32u))), u_input.a), Struct_2(Struct_1(var_3.x), var_2.xy, abs(-(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 2147483647i) << (arg_3 % vec4<u32>(32u)))), Struct_1(-343f)), any(!vec2<bool>(true, all(vec4<bool>(var_2.x, var_2.x, true, var_2.x)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(var_3.x + arg_2)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, 17843i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_5(vec2<u32>(1u, 0u), arg_0.x, u_input.b, 4294967295u, u_input.a.x)))))));
    return min(var_4.c.c.zyx, vec3<i32>(var_4.c.c.x, var_4.b.x << ((firstTrailingBit(arg_3.x) >> (4294967295u % 32u)) % 32u), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, 1i, -2147483647i)), ~vec3<i32>(-1i, -2147483647i, u_input.a.x)), func_1(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(true, true), _wgslsmith_div_f32(1000f, 2575f), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 59804u, u_input.b, u_input.b), vec4<u32>(u_input.b, 56074u, 13841u, 1u)))), max(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, i32(-1i) * -6807i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -20763i, 2147483647i, 1i) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 23655u) % vec4<u32>(32u)), vec4<i32>(-10954i, u_input.a.x, u_input.a.x, u_input.a.x))), -min(vec4<i32>(u_input.a.x, -52974i, -1i, 2147483647i), ~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 60836i))), vec2<f32>(1262f, 332f), _wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, -1i) << (~0u % 32u), (u_input.a.x & u_input.a.x) & u_input.a.x) & -1i);
}

