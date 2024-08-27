struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -776f);
    var var_1 = Struct_5(abs(min(vec2<u32>(u_input.a, 20363u), vec2<u32>(51001u, u_input.a)) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)));
    let var_2 = Struct_2(false, Struct_1(true & any(vec3<bool>(false, false, false))));
    var_1 = Struct_5(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(33882u, u_input.a), var_1.a.x & 25060u), vec2<u32>(~u_input.a, min(u_input.a, 88161u)), var_1.a) >> (~_wgslsmith_clamp_vec2_u32(var_1.a, _wgslsmith_sub_vec2_u32(vec2<u32>(24444u, u_input.a), vec2<u32>(4294967295u, 10225u)), var_1.a) % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(177f - 557f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-928f + _wgslsmith_f_op_f32(-819f + 1146f)))))));
    return ~vec2<i32>(reverseBits(_wgslsmith_add_i32(1i, -34057i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(17376i, -2358i, -1i, -1i)), vec4<i32>(~(-47698i), firstTrailingBit(-7640i), -2147483647i, 1i)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> Struct_5 {
    let var_0 = u_input.a;
    let var_1 = func_3();
    let var_2 = reverseBits(var_1.x);
    let var_3 = min(_wgslsmith_mult_i32(i32(-1i) * -1i, var_1.x), firstTrailingBit(max(~var_2, 60625i)));
    var var_4 = ~0i;
    return Struct_5(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 0u >> (0u % 32u)), reverseBits(vec2<u32>(arg_2, 971u) | vec2<u32>(4294967295u, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 66717u), vec2<u32>(4294967295u, var_0))), vec2<u32>(u_input.a, var_0)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_5) -> Struct_3 {
    var var_0 = vec4<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_2.a.x == arg_2.a.x)), true, !all(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, arg_2.a.x > 0u)));
    var_0 = !(!(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    let var_1 = arg_2;
    var_0 = select(select(select(vec4<bool>(var_0.x, var_0.x, false, all(vec3<bool>(var_0.x, false, false))), vec4<bool>(false, all(vec4<bool>(var_0.x, true, true, var_0.x)), true || var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false))), select(vec4<bool>(false, !var_0.x, var_0.x || var_0.x, arg_2.a.x == arg_2.a.x), !(!vec4<bool>(var_0.x, false, true, var_0.x)), var_1.a.x == 2662u), vec4<bool>(var_0.x, all(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, false, var_0.x, false), false)), all(!vec4<bool>(true, true, true, var_0.x)), !var_0.x)), !select(select(!vec4<bool>(true, false, var_0.x, true), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, true, true), var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true)), vec4<bool>(arg_1 >= arg_1, var_0.x | true, true, !var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(-2532f)), arg_0.x, arg_0.x) - arg_0) * arg_0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * -530f), -243f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-289f, arg_0.x))), 1120f));
    return Struct_3(vec2<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, arg_1, -50950i, arg_1), vec4<i32>(-10796i, -2147483647i, -63798i, 2147483647i)), vec4<i32>(arg_1, 32397i, arg_1, 7581i))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstLeadingBit(arg_1), arg_1), reverseBits(arg_1))), Struct_2(!(var_2.x <= _wgslsmith_f_op_f32(step(-450f, arg_0.x))), Struct_1(false | !var_0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    let var_0 = true || arg_0.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(411f, -2059f, 662f, 123f), vec4<f32>(1124f, -381f, 317f, 413f), arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -250f, -1233f, 305f)))))));
    var var_2 = min(-firstTrailingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(4705i, 0i, 0i), vec3<i32>(arg_3.x, 20999i, 2986i))), select(_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a.x, 1i, arg_2.a.x), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x))), ~vec3<i32>(arg_2.a.x, arg_3.x, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.a.x, 35324i, 186i) | (vec3<i32>(arg_2.a.x, -1i, arg_2.a.x) >> (vec3<u32>(0u, u_input.a, 101725u) % vec3<u32>(32u))), select(vec3<i32>(arg_2.a.x, 0i, arg_3.x), vec3<i32>(1i, 65970i, arg_2.a.x) >> (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(arg_1.x, arg_0.a, arg_2.b.a))), !(!vec3<bool>(arg_2.b.b.a, arg_0.a, arg_1.x))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -464f)));
    var_2 = vec3<i32>(var_2.x, _wgslsmith_div_i32(func_3().x, 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(~vec4<i32>(17998i, 10571i, var_2.x, var_2.x), ~vec4<i32>(2147483647i, 29265i, var_2.x, 0i)), vec4<i32>(i32(-1i) * -1i, ~(-13590i), -2147483647i, abs(var_2.x))), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, 56388i) ^ vec3<i32>(arg_2.a.x, arg_3.x, arg_3.x), firstLeadingBit(vec3<i32>(-2147483647i, arg_2.a.x, arg_3.x))), -firstLeadingBit(arg_3.x), _wgslsmith_div_i32(-9464i, ~44491i))));
    return _wgslsmith_sub_i32(firstLeadingBit(13784i), ~_wgslsmith_div_i32(-1i, ~(-arg_3.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(func_5(Struct_1(true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1779f, arg_0, 554f)), _wgslsmith_mod_i32(-5165i, 1i), func_2(false, vec2<f32>(arg_0, arg_0), u_input.a, arg_0)), firstTrailingBit(vec2<i32>(-1i, 12901i))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -187f, 1794f, arg_0))), 0i, func_2(any(vec4<bool>(true, false, false, false)), vec2<f32>(-550f, arg_0), _wgslsmith_dot_vec3_u32(arg_1.xwz, arg_1.wyx), -229f)).a.x, -5846i), vec3<i32>(i32(-1i) * -11333i, _wgslsmith_mult_i32(-2147483647i, func_5(Struct_1(false), vec2<bool>(true, true), func_4(vec4<f32>(-1067f, arg_0, 677f, arg_0), 0i, Struct_5(arg_1.xw)), vec2<i32>(1i, 1i))), _wgslsmith_dot_vec3_i32(vec3<i32>(~63876i, _wgslsmith_dot_vec4_i32(vec4<i32>(-5217i, 16650i, 2380i, 20279i), vec4<i32>(1i, 15413i, 1i, -1i)), firstLeadingBit(-12335i)), vec3<i32>(1i, 1i, 1i))));
    var_0 = _wgslsmith_div_i32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -285f, arg_0, -1556f))), ~func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, arg_0, -805f) * vec4<f32>(arg_0, 1000f, arg_0, -1891f)), _wgslsmith_add_i32(-2147483647i, 26279i), func_2(true, vec2<f32>(-276f, -2271f), arg_1.x, arg_0)).a.x, func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, arg_0)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, arg_0)))), ~(~13337u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))).a.x, func_3().x);
    var var_1 = _wgslsmith_div_f32(arg_0, -402f);
    var_1 = 2597f;
    var_0 = _wgslsmith_dot_vec3_i32(select(-vec3<i32>(i32(-1i) * -1i, -25894i, func_3().x), _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, 42068i, -50069i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, 25252i), vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(-52993i, -2147483647i, -6353i)), ~vec3<i32>(0i, 22593i, 2147483647i)) | vec3<i32>(0i, _wgslsmith_div_i32(0i, 5098i), 14893i), all(vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec3_i32(firstLeadingBit((vec3<i32>(-24021i, 8172i, -26332i) << (vec3<u32>(105926u, u_input.a, u_input.a) % vec3<u32>(32u))) << (arg_1.zyy % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-4658i, -30412i, 41107i)) << (arg_1.yyy % vec3<u32>(32u))));
    return ~(~arg_1.zwz) ^ (~(~vec3<u32>(0u, 54513u, arg_1.x)) << (vec3<u32>(u_input.a | arg_1.x, u_input.a, u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), arg_1.yz)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 78091u, 46206u) & vec3<u32>(u_input.a, 34165u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) & vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, u_input.a), select(select(func_1(-1192f, vec4<u32>(0u, 4294967295u, 8961u, u_input.a)), ~vec3<u32>(29349u, 73035u, 4294967295u), vec3<bool>(true, true, true)), ~(vec3<u32>(1u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 1u, u_input.a)), vec3<bool>(true, true, true))), max(~(~vec3<u32>(4294967295u, u_input.a, 91202u)) ^ firstTrailingBit(vec3<u32>(44434u, u_input.a, 1074u) ^ vec3<u32>(873u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 31441u, _wgslsmith_div_u32(reverseBits(41383u), 1u))));
    var var_1 = Struct_4(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -250f, -1053f, -793f) - vec4<f32>(1160f, -2612f, 233f, 490f)), _wgslsmith_div_vec4_f32(vec4<f32>(-797f, 288f, 506f, 596f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(915f, 540f, 1083f, 410f))), true)), -20430i, func_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(827f, -1028f), vec2<f32>(545f, 1045f), true))), ~3832u, _wgslsmith_f_op_f32(811f + _wgslsmith_f_op_f32(f32(-1f) * -2297f)))), !vec2<bool>(select(all(vec2<bool>(false, false)), true, true), false));
    var var_2 = ~36965u;
    var var_3 = -178f;
    var var_4 = Struct_5(vec2<u32>(_wgslsmith_div_u32(u_input.a, var_0.x) ^ reverseBits(4294967295u), max(_wgslsmith_sub_u32(u_input.a, 4294967295u), max(10732u, var_0.x))) << ((~select(var_0.xx, var_0.zx, true) & ~func_2(var_1.b.x, vec2<f32>(-930f, -1468f), var_0.x, 407f).a) % vec2<u32>(32u)));
    var_1 = Struct_4(func_4(vec4<f32>(_wgslsmith_f_op_f32(round(-752f)), _wgslsmith_f_op_f32(ceil(1207f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(591f + 2113f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-143f)), 1f)), -1161i & _wgslsmith_add_i32(-2147483647i, var_1.a.a.x), Struct_5(select(~vec2<u32>(4294967295u, u_input.a), countOneBits(vec2<u32>(28163u, u_input.a)), select(vec2<bool>(false, true), var_1.b, var_1.a.b.a)))), !vec2<bool>(var_1.a.b.a | true, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(1u, _wgslsmith_mult_u32(77314u, u_input.a), ~u_input.a | (u_input.a ^ u_input.a), var_4.a.x)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1634f)), 987f)), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(-181f + -2064f))), 1291f));
}

