struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0.www;
    var var_1 = ~(-vec2<i32>(~(-1i), arg_2.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, 1328f, 1159f) - vec3<f32>(442f, -716f, -867f)))))));
    let var_3 = arg_3;
    var_1 = select(_wgslsmith_sub_vec2_i32(-firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(37264i, -1862i))), vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(arg_2.a, var_1.x)), -reverseBits(u_input.a))), abs(vec2<i32>(-38093i, u_input.a)) & reverseBits(firstTrailingBit(firstLeadingBit(vec2<i32>(1i, 56407i)))), var_0.yy);
    return var_2.x;
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_2(~_wgslsmith_mult_i32(0i, -abs(u_input.a)));
    var var_1 = Struct_1(reverseBits(~(~vec3<u32>(1u, 654u, 0u))) | select(firstTrailingBit(vec3<u32>(30153u, 0u, 1u)), vec3<u32>(min(1u, 0u), firstTrailingBit(45276u), ~1u), vec3<bool>(true, true, true)));
    let var_2 = 851f;
    var var_3 = var_1.a.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0, arg_0))) + arg_0)))));
    return min(var_0.a, ~(-533i));
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    let var_1 = !select(var_0, true, var_0) & true;
    var var_2 = 1132f;
    var_2 = _wgslsmith_f_op_f32(min(-753f, _wgslsmith_f_op_f32(round(-533f))));
    var var_3 = vec4<i32>(func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(var_1, false, var_1, false), 1u, Struct_2(u_input.a), Struct_1(vec3<u32>(0u, 1u, 4294967295u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(198f)), _wgslsmith_div_f32(1031f, -765f)), 238f)), -2147483647i, -u_input.a, -reverseBits(_wgslsmith_sub_i32(u_input.b, -20140i) & u_input.a));
    return Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(~var_3.x), _wgslsmith_mult_i32(18687i, countOneBits(31232i))), ~(~(vec2<i32>(u_input.a, -2147483647i) >> (vec2<u32>(34286u, 1u) % vec2<u32>(32u))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(vec3<u32>(4294967295u, ~23046u, abs(1u)));
    let var_1 = 1524f;
    var var_2 = -(vec2<i32>(-1i) * -vec2<i32>(u_input.a, _wgslsmith_clamp_i32(-4707i, -55999i, 0i)));
    var var_3 = abs(~var_0.a.x);
    var_2 = firstTrailingBit(~min(~vec2<i32>(arg_2.a, u_input.b) & -vec2<i32>(24209i, 1i), ~_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(u_input.a, 48038i))));
    return 264f;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(!arg_1.xyw, -u_input.a, func_2()))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -913f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)), -1000f);
    var var_1 = ~abs(1u);
    var var_2 = -(~u_input.b);
    var_1 = firstTrailingBit(~(~firstLeadingBit(0u)));
    let var_3 = Struct_1(~vec3<u32>(1u, 23244u, _wgslsmith_add_u32(1u, abs(1u))));
    return any(select(vec4<bool>(!(!arg_1.x), !arg_1.x, !(!arg_1.x), arg_1.x), select(arg_1, arg_1, arg_1.x), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(any(vec2<bool>(true, true)), func_1(Struct_2(u_input.b), vec4<bool>(false, true, true, false))), true));
    var_0 = _wgslsmith_add_u32(reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(9525u, 1u, 0u), vec3<u32>(43856u, 4294967295u, 4294967295u)))), 56316u) == firstLeadingBit(~(~9309u));
    var var_1 = Struct_1(abs(select(vec3<u32>(~14284u, abs(57200u), 63395u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(59002u, 11875u, 32254u, 0u), vec4<u32>(30652u, 69313u, 0u, 35242u)), 3280u << (1u % 32u), select(1u, 0u, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-317f)))), -207f))));
    var_0 = true;
    var_0 = true;
    var_0 = max(-(abs(u_input.b) >> (var_1.a.x % 32u)), firstLeadingBit(1i)) != u_input.b;
    var var_3 = select(!vec4<bool>(select(true, false, false) | false, true, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(!all(vec3<bool>(true, true, true)), !(all(vec3<bool>(true, false, false)) || true), !(1i <= -u_input.b), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true))), any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(234f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-553f * var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1056f + 543f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_2, var_2)), _wgslsmith_f_op_f32(-var_2))))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(49537u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(0u, var_1.a.x, 4294967295u, var_1.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(49726u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(1u, 48767u, 1u, var_1.a.x))) >> (((vec4<u32>(0u, var_1.a.x, 4294967295u, var_1.a.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 0u, 18594u, 87445u), vec4<u32>(59638u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(27120u, var_1.a.x, var_1.a.x, var_1.a.x)) % vec4<u32>(32u))) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, var_1.a.x), vec4<u32>(6730u, 25027u, 11234u, var_1.a.x))) % vec4<u32>(32u)));
}

