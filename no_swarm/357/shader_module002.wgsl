struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), 1u, vec3<i32>(0i, -1704i, 1i)), 794f);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), 30719u, vec3<i32>(-1i, 6234i, -6451i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = global0.a;
    var var_0 = ~_wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(-global1.c.yx, global0.a.c.xz), max(u_input.a.zx, global0.a.c.yx) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-15246i, u_input.e), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -22459i), global0.a.c.yx)));
    var var_1 = global1.c.x != _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global1.c.zx, u_input.a.yy), _wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(1i, var_0.x), vec2<i32>(-1i, -50860i))), global1.c.yy);
    let var_2 = vec2<u32>(~_wgslsmith_mult_u32(countOneBits(global0.a.b), global0.a.b), global1.b);
    let var_3 = vec4<u32>(~(~103233u), _wgslsmith_dot_vec2_u32(~(~(~var_2)), select(~(vec2<u32>(0u, 10100u) | vec2<u32>(global0.a.b, var_2.x)), ~vec2<u32>(96343u, 0u) ^ select(var_2, vec2<u32>(u_input.d.x, 0u), global0.a.a.x), global0.a.a)), 4294967295u, max(1607u, var_2.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2275f)))), 630f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * -935f), global0.b)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(!select(vec2<bool>(false, global0.a.a.x), global0.a.a, select(global1.a.x, global0.a.a.x, global0.a.a.x)), abs(global1.b), countOneBits(global1.c >> ((u_input.d | u_input.d) % vec3<u32>(32u)))), -565f);
    var var_1 = _wgslsmith_f_op_f32(865f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b)))))));
    var_1 = _wgslsmith_f_op_f32(func_3());
    global0 = Struct_2(Struct_1(vec2<bool>(true, global0.a.a.x), _wgslsmith_mod_u32(global0.a.b, _wgslsmith_add_u32(abs(global0.a.b), ~var_0.a.b)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(global1.c.x, 10467i, u_input.e)), ~vec3<i32>(-47639i, global0.a.c.x, global0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.b)), var_0.b))));
    var_0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f - var_0.b)))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.d, vec3<u32>(global0.a.b, 66370u, u_input.d.x), vec3<bool>(false, global1.a.x, var_0.a.a.x)), u_input.d), ~vec3<u32>(56089u, u_input.d.x, 41848u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, global1.b), vec3<u32>(var_0.a.b, 0u, global0.a.b)))), _wgslsmith_sub_vec3_u32(~firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(20484u, global0.a.b, 0u))), u_input.d));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.b - -574f), _wgslsmith_f_op_f32(global0.b - arg_2), _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, 690f)) * vec3<f32>(1000f, -556f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(400f, -1913f, -722f) * vec3<f32>(global0.b, global0.b, arg_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1165f, -2220f, 375f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(308f, global0.b, arg_2) * vec3<f32>(870f, arg_2, global0.b)))))), _wgslsmith_div_vec3_f32(vec3<f32>(2044f, -1064f, global0.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, arg_2, global0.b))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(625f, -215f, arg_2))))))), arg_1.a.x));
    var var_1 = u_input.d.yx;
    var var_2 = _wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(exp2(var_0.x)));
    global1 = global0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, global0.b), vec2<f32>(1324f, -2376f)))))))))));
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_i32(func_4(global0.a.b, global0.a, 511f, vec4<bool>(global0.a.a.x, func_2() >= select(0u, global1.b, global1.a.x), global0.a.a.x, true)), _wgslsmith_dot_vec2_i32(~u_input.a.yz, ~u_input.a.zw << (u_input.d.xy % vec2<u32>(32u))));
    let var_1 = Struct_2(Struct_1(!select(!global0.a.a, arg_0.a, global1.b < 43928u), ~(_wgslsmith_clamp_u32(arg_0.b, global1.b, global0.a.b) & 24363u), vec3<i32>(u_input.c, _wgslsmith_add_i32(_wgslsmith_div_i32(30516i, u_input.b), -26768i), _wgslsmith_mult_i32(-global1.c.x, u_input.b))), _wgslsmith_f_op_f32(global0.b - arg_2.b));
    let var_2 = arg_0;
    var var_3 = Struct_1(var_1.a.a, global0.a.b, _wgslsmith_sub_vec3_i32(~vec3<i32>(-38391i, func_4(31056u, var_2, var_1.b, vec4<bool>(global1.a.x, var_1.a.a.x, var_2.a.x, false)), 16941i), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, 22417i, -1i) ^ global0.a.c, global1.c), max(firstLeadingBit(var_1.a.c), vec3<i32>(u_input.a.x, -2147483647i, -58171i)))));
    return max(func_2(), ~1u);
}

fn func_5(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(max(abs(min(firstLeadingBit(vec4<i32>(global0.a.c.x, -55918i, global1.c.x, -1i)), abs(u_input.a))), vec4<i32>(firstTrailingBit(-1i), ~1i, global0.a.c.x, global0.a.c.x)), select(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.a.c.xy, -vec2<i32>(-13083i, global0.a.c.x)), ~(global1.c.x << (global0.a.b % 32u)), func_4(global1.b, global0.a, global0.b, vec4<bool>(true, global1.a.x, global0.a.a.x, true)) >> (_wgslsmith_clamp_u32(47035u, 112292u, arg_1) % 32u), reverseBits(-30477i)), u_input.a, !select(vec4<bool>(true, global1.a.x, true, false), !vec4<bool>(global0.a.a.x, global0.a.a.x, true, global0.a.a.x), !vec4<bool>(false, true, false, global0.a.a.x))));
    global1 = global0.a;
    global1 = Struct_1(vec2<bool>(true, global0.a.a.x), u_input.d.x, abs(vec3<i32>(min(-2147483647i, u_input.e), 10010i, ~(-24499i))) & vec3<i32>(u_input.e, -2147483647i, ~global0.a.c.x));
    return global0.a;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = global0.a;
    var var_2 = !global0.a.a;
    let var_3 = var_0.a;
    global1 = func_5(~reverseBits(~_wgslsmith_mod_u32(40228u, u_input.d.x)), arg_0.a.b);
    return Struct_1(vec2<bool>(arg_0.a.a.x, true), func_5(~_wgslsmith_clamp_u32(~u_input.d.x, u_input.d.x, reverseBits(u_input.d.x)), ~global0.a.b).b, -reverseBits(-(~vec3<i32>(var_3.c.x, var_0.a.c.x, 1i))));
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(-u_input.c | func_5(global1.b, 4294967295u).c.x, -func_6(Struct_2(Struct_1(global0.a.a, u_input.d.x, u_input.a.yxx), global0.b)).c.x)), firstTrailingBit(-(global1.c.x << (4294967295u % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 553f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1281f, 1259f) * vec2<f32>(259f, -520f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2278f, arg_0.b)), global0.a.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b, -593f)))), all(!vec3<bool>(global1.a.x, arg_0.a.a.x, true))))));
    global0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(618f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))));
    global0 = arg_0;
    var var_2 = global0.a;
    return Struct_2(func_6(Struct_2(func_6(Struct_2(global0.a, 2513f)), 739f)), _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(Struct_2(Struct_1(select(global1.a, global1.a, global1.a), 0u, firstTrailingBit(vec3<i32>(global0.a.c.x, u_input.a.x, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(194f * global0.b) + _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(trunc(959f)), func_6(Struct_2(func_5(func_1(global0.a, vec4<f32>(global0.b, global0.b, -2074f, global0.b), Struct_2(Struct_1(vec2<bool>(global0.a.a.x, true), u_input.d.x, global0.a.c), 489f)), 1u), global0.b)), vec2<bool>((all(vec3<bool>(global1.a.x, true, global1.a.x)) && global1.a.x) & true, !global0.a.a.x || (false & func_6(Struct_2(global0.a, global0.b)).a.x)));
    global1 = func_7(Struct_2(Struct_1(!vec2<bool>(false, global0.a.a.x), 0u, ~_wgslsmith_mult_vec3_i32(global0.a.c, global0.a.c)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-180f * global0.b), func_7(func_7(func_7(Struct_2(global0.a, 1007f), _wgslsmith_f_op_f32(f32(-1f) * -1118f), Struct_1(global1.a, global0.a.b, global1.c), !global1.a), -1056f, global0.a, !vec2<bool>(true, global1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.b)))))), func_6(func_7(func_7(Struct_2(global0.a, global0.b), 211f, Struct_1(vec2<bool>(global1.a.x, global0.a.a.x), u_input.d.x, vec3<i32>(-2147483647i, -2147483647i, global0.a.c.x)), global1.a), _wgslsmith_f_op_f32(sign(global0.b)), func_7(Struct_2(global0.a, 1234f), global0.b, Struct_1(vec2<bool>(false, global0.a.a.x), 0u, global0.a.c), global0.a.a).a, global1.a)), global1.a).a, select(!func_5(min(global0.a.b, 1u), global0.a.b).a, !(!func_7(Struct_2(global0.a, -1068f), -2258f, global0.a, vec2<bool>(global1.a.x, global1.a.x)).a.a), !func_6(func_7(Struct_2(global0.a, 598f), 160f, global0.a, global1.a)).a)).a;
    let var_0 = func_6(Struct_2(global0.a, _wgslsmith_f_op_f32(-global0.b)));
    var var_1 = Struct_2(var_0, global0.b);
    let var_2 = !(!vec3<bool>(func_5(global1.b & var_0.b, ~1u).a.x, var_1.a.a.x, !(false | global0.a.a.x)));
    global1 = func_6(Struct_2(Struct_1(var_0.a, var_1.a.b, vec3<i32>(func_4(global0.a.b, Struct_1(vec2<bool>(global0.a.a.x, var_1.a.a.x), global0.a.b, vec3<i32>(var_1.a.c.x, 2147483647i, global1.c.x)), var_1.b, vec4<bool>(true, var_2.x, false, global0.a.a.x)), _wgslsmith_add_i32(-58276i, var_0.c.x), var_1.a.c.x)), global0.b));
    global0 = Struct_2(func_6(Struct_2(func_5(~0u, ~global0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - global0.b) * -787f))), global0.b);
    let var_3 = vec2<bool>((global1.b ^ (global0.a.b >> (func_1(var_1.a, vec4<f32>(375f, var_1.b, -983f, -1156f), Struct_2(global0.a, global0.b)) % 32u))) != ~var_0.b, true);
    let var_4 = vec3<i32>(~global0.a.c.x, _wgslsmith_mult_i32(~(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-27929i, -32789i, var_1.a.c.x, global1.c.x))), u_input.b), -24180i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec4<i32>(26430i, max(var_0.c.x, reverseBits(global1.c.x)), _wgslsmith_sub_i32(~var_1.a.c.x << (7233u % 32u), 70879i << (var_1.a.b % 32u)), ~(var_0.c.x >> (_wgslsmith_div_u32(40440u, global0.a.b) % 32u))));
}

