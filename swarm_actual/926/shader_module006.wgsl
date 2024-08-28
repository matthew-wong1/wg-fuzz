struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = reverseBits(u_input.a.x);
    let var_1 = Struct_1(!vec3<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, false)) != any(vec4<bool>(false, false, true, true))), _wgslsmith_sub_u32(~(0u & min(u_input.b, u_input.b)), _wgslsmith_mult_u32(4294967295u, min(0u >> (u_input.b % 32u), 49788u))), _wgslsmith_f_op_f32(-1f));
    var var_2 = var_1;
    var_2 = Struct_1(!(!var_2.a), u_input.b, var_2.c);
    let var_3 = !select(!(!vec4<bool>(false, true, var_1.a.x, var_2.a.x)), !select(!vec4<bool>(true, true, var_1.a.x, var_1.a.x), !vec4<bool>(false, false, var_2.a.x, false), true), !(!select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, true, var_1.a.x), var_1.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * var_1.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = min((vec4<u32>(u_input.b | u_input.b, arg_0.b << (arg_0.b % 32u), reverseBits(arg_0.b), arg_0.b) << (vec4<u32>(u_input.b, 4294967295u, u_input.b, 53495u) % vec4<u32>(32u))) | max(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 9158u, 57317u, 55565u), vec4<u32>(4294967295u, 4294967295u, arg_0.b, u_input.b)), reverseBits(vec4<u32>(4294967295u, u_input.b, u_input.b, 21365u) ^ vec4<u32>(arg_0.b, arg_0.b, arg_0.b, u_input.b))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12302u, 4294967295u, 40212u, arg_0.b) | ~vec4<u32>(u_input.b, arg_0.b, 0u, 4294967295u), ~(~vec4<u32>(arg_0.b, u_input.b, arg_0.b, 25325u))), u_input.b & _wgslsmith_mod_u32(0u, arg_0.b), 138145u, arg_0.b));
    return any(!(!vec2<bool>(all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec3<bool>(true, 1u < _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)), u_input.b), func_4(Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), 1u, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, -966f, 665f) - vec3<f32>(-1138f, -161f, -1187f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1380f, -1188f, 1131f) - vec3<f32>(-2160f, -1573f, -299f)), false)))), u_input.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(194f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-727f)))))));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = var_0.c;
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(select(var_1.b, ~(var_0.b & u_input.b), 0i > _wgslsmith_div_i32(u_input.a.x, 0i)), var_1.b), _wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, 1763u, var_1.b), vec3<u32>(var_1.b, var_0.b, 94080u)) >> (vec3<u32>(1u, 59107u, var_0.b) % vec3<u32>(32u))), ~(~vec3<u32>(78265u, u_input.b, 48912u))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec4<u32>(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(54382u, 3524u, 1u))), 13586u, func_2(), reverseBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, 51031u, 1u), vec4<u32>(u_input.b, u_input.b, 29856u, u_input.b)), abs(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b))))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(11996u, 4294967295u, u_input.b, 4294967295u)), ~vec4<u32>(1u, 1u, 14985u, 0u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u), ~vec4<u32>(4294967295u, 0u, 1u, 0u))) % vec4<u32>(32u));
    var var_1 = Struct_1(vec3<bool>(true, false, false == func_4(Struct_1(vec3<bool>(true, false, true), u_input.b, 1048f), vec3<f32>(-3033f, 185f, -148f))), select(var_0.x, _wgslsmith_mod_u32(u_input.b, _wgslsmith_sub_u32(var_0.x >> (var_0.x % 32u), 0u)), any(vec3<bool>(select(false, true, false), true, any(vec3<bool>(true, false, false))))), -877f);
    let var_2 = 707f;
    var_1 = Struct_1(var_1.a, _wgslsmith_div_u32(var_1.b, func_2()), 729f);
    var_1 = Struct_1(vec3<bool>(abs(min(2147483647i, 1i)) != _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-21610i, u_input.a.x, -2147483647i), vec3<i32>(-5258i, arg_0, 2147483647i)), -vec3<i32>(arg_0, u_input.a.x, arg_0)), -2147483647i >= _wgslsmith_div_i32(arg_0, u_input.a.x), var_1.a.x), 1u, _wgslsmith_f_op_f32(step(508f, var_2)));
    return Struct_1(!(!vec3<bool>(!var_1.a.x, var_1.a.x, false)), min(var_1.b, reverseBits(~_wgslsmith_mod_u32(var_0.x, u_input.b))), -328f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -980f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 431f)))), -(u_input.a.x >> (u_input.b % 32u)) >= _wgslsmith_mult_i32(u_input.a.x, ~(-29061i)), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))), any(vec3<bool>(true, all(vec4<bool>(false, true, true, true)) == (-28471i != u_input.a.x), !(1u < u_input.b))));
    let var_1 = u_input.b;
    let var_2 = func_1(-5524i >> (_wgslsmith_div_u32(abs(u_input.b), var_1) % 32u));
    let var_3 = min(_wgslsmith_clamp_i32(-1i, -28265i, ~u_input.a.x), u_input.a.x);
    let var_4 = firstTrailingBit(vec4<i32>(-(~countOneBits(13316i)), ~(-6247i) << (~(1u & var_1) % 32u), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a)), abs(~firstLeadingBit(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(-1i) * -vec3<i32>(var_4.x, -30861i, var_4.x)), _wgslsmith_add_vec2_u32(vec2<u32>(~(~4294967295u), _wgslsmith_sub_u32(~1u, firstLeadingBit(21468u))), ~((vec2<u32>(75725u, 122998u) ^ vec2<u32>(var_1, var_2.b)) | _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(var_1, var_2.b)))), var_2.c);
}

