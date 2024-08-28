struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<i32> {
    var var_0 = any(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true))) && true;
    let var_1 = firstTrailingBit(-(-(vec3<i32>(0i, 0i, u_input.a) >> (vec3<u32>(arg_0, 48790u, 45627u) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, arg_0), vec3<u32>(4294967295u, 0u, arg_0)), ~vec3<u32>(arg_0, arg_0, arg_0), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(4294967295u, 33779u, arg_0))) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-600f)))))))));
    var_0 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - vec2<f32>(531f, 158f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(209f, -1693f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-190f)), _wgslsmith_f_op_f32(-253f + -228f), true)))))));
    return abs(vec3<i32>((1i ^ abs(arg_1)) << (34598u % 32u), ~u_input.a, ~select(_wgslsmith_add_i32(var_1.x, arg_1), u_input.a << (43016u % 32u), all(vec3<bool>(false, false, true)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(-638f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f * 143f) - 2066f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(470f - 772f) * -250f) + 1000f))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a, u_input.a, -1i), -vec3<i32>(u_input.a, u_input.a, u_input.a), func_3(38518u, -24402i)), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(-28978i), -u_input.a, arg_1.a), vec3<i32>(1i, u_input.a, arg_1.a) & -vec3<i32>(arg_1.a, u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(ceil(-1568f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, _wgslsmith_f_op_f32(trunc(-1711f)), var_2));
    var_1 = arg_1;
    return !select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true, !any(vec3<bool>(false, true, true)), select(true, all(vec4<bool>(true, true, true, false)), true)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), func_2(34637u, arg_2), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), func_2(0u, var_0), true), vec4<bool>(true, true, true, true), any(func_2(45993u, arg_0).xy))), vec4<bool>(!select(any(vec2<bool>(false, true)), true, true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), true, !func_2(~0u, Struct_1(arg_1)).x), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false)))) || (true & (select(arg_1, arg_0.a, true) == ~16470i)));
    let var_2 = var_0;
    let var_3 = -_wgslsmith_sub_i32(arg_1, arg_0.a);
    var var_4 = vec2<bool>((true & any(var_1.zy)) & true, !var_1.x);
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(1i), -51020i, Struct_1(u_input.a), -vec2<i32>(-1i, 0i));
    let var_1 = Struct_1(~2147483647i);
    let var_2 = !vec2<bool>(all(vec3<bool>(any(vec3<bool>(true, false, false)), true, true)), any(vec3<bool>(true, true, true)));
    let var_3 = var_1;
    var var_4 = var_3.a;
    let var_5 = _wgslsmith_f_op_f32(step(-1388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1964f))))))));
    let var_6 = var_3;
    let var_7 = vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(max(_wgslsmith_add_u32(15548u, 0u), ~9381u), ~1u, ~(~1u), ~9460u), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(0i, min(0i, -2147483647i), 1i, i32(-1i) * -28098i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(~vec3<i32>(u_input.a, 23807i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, var_0.a), vec3<i32>(u_input.a, -12551i, 25948i)), func_2(var_7.x, Struct_1(var_6.a)).wyy), ~select(vec3<i32>(2147483647i, 2996i, -6332i), vec3<i32>(u_input.a, var_6.a, -2147483647i), vec3<bool>(var_2.x, false, true)), (vec3<i32>(33023i, var_6.a, u_input.a) | vec3<i32>(1i, 0i, -2147483647i)) << (~vec3<u32>(30044u, var_7.x, var_7.x) % vec3<u32>(32u))), ~(vec3<i32>(u_input.a, -45859i, 23478i) ^ vec3<i32>(var_1.a, var_0.a, var_3.a)) ^ -_wgslsmith_mod_vec3_i32(vec3<i32>(-24835i, var_0.a, 24379i), vec3<i32>(u_input.a, var_1.a, var_1.a))));
}

