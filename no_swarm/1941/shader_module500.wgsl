struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return Struct_1(~(u_input.b & _wgslsmith_div_vec2_i32(~vec2<i32>(1i, -2147483647i), abs(u_input.b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = -abs(~((vec4<i32>(-2147483647i, arg_1.a.x, arg_1.a.x, 2147483647i) & vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 2147483647i)) >> (vec4<u32>(24832u, 27807u, 1u, 1u) % vec4<u32>(32u))));
    let var_1 = (reverseBits(~vec2<u32>(41826u, 26037u)) & vec2<u32>(~29819u & u_input.a, arg_0)) << (~max(firstTrailingBit(vec2<u32>(0u, arg_0) << (vec2<u32>(arg_0, 0u) % vec2<u32>(32u))), ~vec2<u32>(1u, 22443u)) % vec2<u32>(32u));
    var_0 = -select(vec4<i32>(arg_1.a.x, -34099i, var_0.x, 1i) ^ select(vec4<i32>(-2147483647i, u_input.b.x, 60085i, -4797i), vec4<i32>(var_0.x, -1i, u_input.c, var_0.x), vec4<bool>(false, true, true, false)), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.a.x, var_0.x, 2147483647i, arg_1.a.x), ~vec4<i32>(-1i, 1i, -19890i, u_input.b.x)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)))) >> (abs(_wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.a, u_input.d, arg_0, arg_0) & vec4<u32>(1u, var_1.x, u_input.d, var_1.x)), vec4<u32>(0u, 12484u, u_input.a, 4294967295u) >> (~vec4<u32>(u_input.d, 1u, arg_0, 19892u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = false;
    var var_3 = ~reverseBits(~(_wgslsmith_clamp_u32(0u, 0u, arg_0) << (~5087u % 32u)));
    return vec3<bool>(true, true, var_2);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = max(~(~countOneBits(vec4<u32>(arg_2, arg_2, 24386u, 18080u))), vec4<u32>(6772u, u_input.d, reverseBits(_wgslsmith_mult_u32(9791u, 21336u)), 67399u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(671f - -141f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1783f, 297f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -439f)))) + vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1426f))));
    let var_2 = -u_input.b;
    var var_3 = arg_1;
    var var_4 = u_input.c;
    return Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, var_2.x), (var_2 << (~var_0.yx % vec2<u32>(32u))) << (~var_0.yx % vec2<u32>(32u))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_u32(~abs(select(vec4<u32>(u_input.a, 2550u, u_input.d, u_input.a) >> (vec4<u32>(u_input.d, 52160u, 53034u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(41606u, u_input.a, 69623u, u_input.d), all(vec4<bool>(true, true, false, false)))), select(vec4<u32>(~(~0u), _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(1u, u_input.d)), 4294967295u, 1u), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(16843u, 30908u, 83311u), vec3<u32>(u_input.d, 1u, 50232u)), reverseBits(0u), 0u, 0u), select(vec4<bool>(true, u_input.c < -82237i, true, func_3(7756u, arg_1).x), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)))));
    let var_1 = any(vec2<bool>(false, !(~0i == (u_input.c & -84740i))));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(211f, arg_0.x))))), _wgslsmith_f_op_vec2_f32(trunc(arg_0.xz)))));
    var var_4 = vec4<f32>(-804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(var_3.x, var_3.x))))), 432f, var_3.x);
    return Struct_1(max(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -5434i, var_2.a.x), vec3<i32>(1i, -1i, arg_1.a.x)), 1i)), select(vec2<i32>(var_2.a.x & 0i, var_2.a.x), min(var_2.a, vec2<i32>(2147483647i, 0i) >> (var_0.xz % vec2<u32>(32u))), false)));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec2<i32>(~(-u_input.c), -u_input.c & -u_input.c) >> (vec2<u32>(u_input.a, 10640u) % vec2<u32>(32u)));
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(-765f, _wgslsmith_f_op_f32(-2229f - -230f), false)), _wgslsmith_f_op_f32(round(-2298f)), 1785f))), func_4(func_3(~u_input.d ^ 0u, func_2()), vec2<bool>(any(vec3<bool>(true, true, true)), true), ~0u));
    let var_1 = func_4(vec3<bool>(false, !all(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), false))), !vec2<bool>(true, true && all(vec4<bool>(false, false, true, false))), ~36141u);
    var var_2 = func_2();
    var var_3 = vec3<u32>(reverseBits(u_input.d), u_input.d, 0u);
    return _wgslsmith_f_op_f32(trunc(-989f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1786f + -806f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f + 1422f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) - -666f)) * 1519f);
    var_0 = 1185f;
    var var_1 = 1u <= (~u_input.a | firstTrailingBit(~u_input.a));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-43608i));
}

