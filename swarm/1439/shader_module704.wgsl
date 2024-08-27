struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-677f + 1528f), 603f)), 462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2351f * _wgslsmith_f_op_f32(-671f - -664f)))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, 139f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(119f + -2482f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1246f * _wgslsmith_f_op_f32(1000f - 995f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f - 330f)))), 2147483647i);
    let var_1 = Struct_2(Struct_1(!var_0.b.a, vec2<f32>(-1759f, _wgslsmith_f_op_f32(var_0.b.c + var_0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.c - 1528f))))), var_0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c, -25305i, var_0.c, 2147483647i)), -vec4<i32>(1i, u_input.c, u_input.b, 0i)) >> (abs(~vec4<u32>(59536u, u_input.a.x, 22213u, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(-67203i, 12601i), -4830i, firstTrailingBit(-9286i >> (u_input.a.x % 32u)), -u_input.c)));
    var var_2 = !select(var_1.b.a, vec2<bool>(all(!vec4<bool>(false, var_0.a.a.x, false, var_0.a.a.x)), true), var_1.a.a);
    var var_3 = Struct_2(var_1.b, Struct_1(vec2<bool>(true, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a.b))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b.x, var_0.b.c), vec2<f32>(2580f, var_1.b.b.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c))), u_input.c);
    var var_4 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.a.x), u_input.d, reverseBits(~u_input.a.x), u_input.d), _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(0u, 58279u, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(13522u, u_input.d, 1u, u_input.a.x), firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.d, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 14178u, 48275u, u_input.a.x), vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.a.x), vec4<u32>(28744u, u_input.d, u_input.a.x, 1u)))));
    return 885f;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2378f, -220f) * vec2<f32>(835f, -1030f)))) - vec2<f32>(_wgslsmith_f_op_f32(func_3()), -668f)), _wgslsmith_f_op_f32(335f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1359f) + _wgslsmith_f_op_f32(f32(-1f) * -567f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(777f - 437f), _wgslsmith_f_op_f32(floor(-2943f))) - -902f));
    var var_1 = vec2<bool>(true, all(vec2<bool>(all(var_0.a), true)));
    let var_2 = Struct_2(Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(776f))), _wgslsmith_div_f32(-837f, _wgslsmith_div_f32(var_0.d, 1456f))), var_0.b.x, -1344f), Struct_1(!vec2<bool>(true != var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0.b.x) * 1043f)), -925f), _wgslsmith_dot_vec3_i32(select(~(~vec3<i32>(u_input.b, u_input.b, 14813i)), vec3<i32>(u_input.b, 56521i >> (u_input.a.x % 32u), u_input.b), select(any(vec4<bool>(false, var_1.x, var_0.a.x, true)), false, var_1.x)), max(_wgslsmith_add_vec3_i32(vec3<i32>(13938i, -2147483647i, u_input.c), select(vec3<i32>(-827i, -17079i, u_input.c), vec3<i32>(u_input.c, 18377i, u_input.b), var_1.x)), vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(17676i, u_input.c, -2147483647i, 2147483647i), vec4<i32>(30759i, -1i, u_input.c, 20670i)), -63377i))));
    var var_3 = Struct_2(Struct_1(var_2.b.a, var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d + var_2.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_2.a.c))) + _wgslsmith_f_op_f32(f32(-1f) * -109f))), var_2.a, ~_wgslsmith_clamp_i32(-5585i, u_input.b, -(~2147483647i)));
    var_0 = var_2.a;
    return 1550f;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    let var_0 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(func_3())) <= -678f) | true;
    return _wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(f32(-1f) * -1068f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-539f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(152f)), 397f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-643f, -114f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-107f, _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), -1i)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f + 1000f)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-976f, -1458f))) - -1000f), _wgslsmith_f_op_f32(var_1 + 307f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_2 = false;
    let var_3 = _wgslsmith_div_vec4_i32(~vec4<i32>(i32(-1i) * -2147483647i, ~(-32712i), -39782i, abs(2147483647i)), countOneBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(15632i, u_input.c, -2442i, 1i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<bool>(false, false, true, true)), -vec4<i32>(0i, -25396i, u_input.c, -2147483647i)))) << (vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, select(abs(u_input.d), u_input.d, true)), ~(~u_input.d) >> (4294967295u % 32u), u_input.d, u_input.a.x) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(abs(var_1));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-871f, var_1, var_1, var_1), vec4<f32>(var_1, -717f, 2419f, var_1)))))))));
    var var_5 = Struct_1(vec2<bool>(false, true), var_4.xw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f - _wgslsmith_f_op_f32(-var_4.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -441f))) + _wgslsmith_f_op_f32(-var_1)), 317f);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1i, _wgslsmith_dot_vec4_i32(select(var_3, var_3, vec4<bool>(true, var_5.a.x, var_5.a.x, var_5.a.x)), _wgslsmith_sub_vec4_i32(var_3, var_3)), u_input.b), vec3<i32>(~(u_input.c << (29766u % 32u)), -_wgslsmith_sub_i32(var_3.x, 1i), 18086i) | firstLeadingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_3.x), vec3<i32>(var_3.x, -39686i, 1i))));
}

