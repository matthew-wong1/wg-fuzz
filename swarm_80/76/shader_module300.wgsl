struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<bool>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global1 = array<vec2<bool>, 14>();
    var var_0 = arg_0;
    let var_1 = vec3<bool>(var_0.b.d.x >= ~28928u, true, true);
    let var_2 = select(0i, ~arg_0.b.c, any(select(select(vec3<bool>(false, var_0.b.a.x, true), vec3<bool>(true, false, false), var_0.b.a.x), !(!vec3<bool>(false, false, var_0.b.e)), var_1.x)));
    let var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(52469u, 42393u), u_input.b.x, 0u, ~9792u), reverseBits(vec4<u32>(27589u, 62832u, 301u, u_input.b.x))), abs(vec4<u32>(8681u, max(_wgslsmith_add_u32(0u, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 4294967295u)), select(~43171u, arg_0.e, true | var_1.x), ~arg_0.c)));
    return !select(!vec2<bool>(true & arg_0.b.a.x, var_0.b.a.x), vec2<bool>(any(var_0.b.a), arg_0.b.a.x), arg_0.b.a.ww);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = arg_0.b.a.x;
    var var_1 = vec2<bool>(false, select(any(func_3(arg_0)), all(!vec3<bool>(arg_0.b.e, false, arg_0.b.e)), 270f == _wgslsmith_f_op_f32(-arg_0.b.b.x)));
    var_0 = all(!(!vec3<bool>(true, var_1.x, arg_0.b.e))) | !(true || (arg_0.b.a.x && arg_0.b.a.x));
    var var_2 = firstTrailingBit(firstLeadingBit(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-22302i, 2147483647i, 27530i, u_input.a), vec4<i32>(arg_1, -2147483647i, -39992i, arg_0.b.c)), arg_1 & arg_1, max(arg_0.b.c, -11078i)))));
    global0 = 2602u << (~(~(~arg_0.c) | arg_0.e) % 32u);
    return _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-620f, -193f)) * _wgslsmith_f_op_f32(f32(-1f) * -399f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, -450f))), _wgslsmith_f_op_f32(-arg_0.a))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> vec2<f32> {
    let var_0 = (2187u | _wgslsmith_sub_u32(arg_1.b.d.x, ~1u)) & (~arg_0.d.x >> (59910u % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(660f, -537f, arg_0.b.x, 742f))) - vec4<f32>(arg_1.a, 1004f, 664f, arg_1.b.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-495f, -1000f, arg_1.b.e)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3)) * vec4<f32>(-1489f, _wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(min(240f, 918f)), -136f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(396f, -329f, 1f, _wgslsmith_f_op_f32(-arg_1.b.b.x))))), !arg_0.a));
    global0 = ~(~(~(~var_0 << (1u % 32u))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_div_u32(4268u, 4294967295u)), 0u);
    let var_2 = arg_1.b;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(_wgslsmith_f_op_f32(step(arg_3, arg_1.a)), _wgslsmith_f_op_f32(var_1.x + -1603f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b)), arg_0.b)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = ~u_input.a;
    var var_1 = select(vec4<bool>(!arg_2, func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -450f), Struct_1(vec4<bool>(arg_2, arg_2, arg_2, false), vec2<f32>(651f, arg_0.x), 1i, vec2<u32>(u_input.b.x, u_input.b.x), false), u_input.b.x, arg_1, 34965u)).x, true, true), select(select(vec4<bool>(true, arg_2, true, arg_2), select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(arg_2, false, false, arg_2), !vec4<bool>(arg_2, arg_2, false, arg_2)), !(arg_0.x <= -881f)), select(select(vec4<bool>(false, true, false, arg_2), select(vec4<bool>(false, true, false, arg_2), vec4<bool>(true, true, true, arg_2), vec4<bool>(true, true, arg_2, arg_2)), !vec4<bool>(arg_2, arg_2, true, arg_2)), !select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2)), select(!vec4<bool>(arg_2, arg_2, arg_2, true), !vec4<bool>(arg_2, arg_2, arg_2, true), select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), true))), select(!vec4<bool>(false, true, false, arg_2), select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(false, arg_2, false, true), vec4<bool>(arg_2, true, false, false)), any(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, arg_2), true)))), !vec4<bool>(true, true, select(u_input.b.x > 36321u, arg_2 || true, true), arg_2));
    var var_2 = -reverseBits(vec2<i32>((8610i >> (u_input.b.x % 32u)) << (~u_input.b.x % 32u), max(_wgslsmith_mult_i32(u_input.c, -30814i), _wgslsmith_add_i32(1282i, u_input.c))));
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(var_0, 0i, u_input.c, u_input.a) & vec4<i32>(1i, 59493i, var_0, -1i)), reverseBits(vec4<i32>(u_input.c, 8362i, var_0, var_0))) | -(vec4<i32>(-31874i, -2147483647i, var_2.x, 17192i) | (vec4<i32>(-1i, 1i, var_0, -1i) | vec4<i32>(var_0, u_input.c, 1774i, u_input.a))), firstLeadingBit(_wgslsmith_mult_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 91861i, -82790i, 54070i), vec4<i32>(-40478i, var_0, -47497i, var_2.x), vec4<i32>(u_input.a, -1i, 1i, 16795i)), reverseBits(vec4<i32>(2147483647i, -1i, -2147483647i, var_2.x))), vec4<i32>(-var_2.x, ~1i, select(var_2.x, -8619i, arg_2), -23180i))));
    let var_4 = -abs(reverseBits(select(var_2.x, ~0i, all(vec2<bool>(var_1.x, arg_2)))));
    return Struct_2(_wgslsmith_f_op_f32(trunc(1356f)), Struct_1(!select(vec4<bool>(false, true, arg_2, arg_2), !vec4<bool>(false, var_1.x, arg_2, true), !vec4<bool>(arg_2, var_1.x, true, arg_2)), arg_0.xx, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-8850i, var_2.x), ~u_input.a), var_3.zz), u_input.b, true), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(arg_0.x, 744f)) + _wgslsmith_f_op_vec2_f32(-arg_0.zx)))), arg_3);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec3<i32> {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, arg_0.b.b.x, arg_0.a)))))), _wgslsmith_f_op_vec2_f32(func_4(arg_0.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), Struct_1(vec4<bool>(false, arg_0.b.a.x, true, arg_1), _wgslsmith_f_op_vec2_f32(-arg_0.b.b), i32(-1i) * -39180i, u_input.b, true), 51138u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b.x, -498f)))), 12568u), select(_wgslsmith_mult_vec3_u32(vec3<u32>(49477u, u_input.b.x, 13482u), vec3<u32>(36071u, 0u, arg_0.c)), vec3<u32>(9162u, arg_0.b.d.x, ~98910u), !(arg_0.b.a.x & arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(arg_0.d.x, Struct_1(vec4<bool>(arg_0.b.a.x, arg_1, true, true), vec2<f32>(arg_0.b.b.x, arg_0.a), u_input.c, arg_0.b.d, true), 4294967295u, arg_0.d, 4294967295u), -2147483647i, vec3<f32>(244f, -794f, arg_0.b.b.x))))))), false, ~_wgslsmith_dot_vec3_u32(vec3<u32>(39668u, 26525u, arg_0.c) << (vec3<u32>(51525u, 4294967295u, 24882u) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(113331u, 4294967295u, u_input.b.x))));
    return ~vec3<i32>(-2147483647i, countOneBits(_wgslsmith_add_i32(1i, 1i)), countOneBits(1i)) ^ vec3<i32>(abs(arg_2), arg_0.b.c, ~(-15875i));
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~firstTrailingBit(arg_1 & 0u), ~(~63767u), 0u, _wgslsmith_add_u32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-100f, -1000f, 1147f) - vec3<f32>(-641f, 1986f, -796f)), vec2<f32>(197f, -434f), true, _wgslsmith_add_u32(arg_2.x, arg_3)).b.d.x, max(~46328u, arg_3))), reverseBits(select(vec4<u32>(0u, _wgslsmith_mod_u32(70823u, arg_3), 0u >> (arg_2.x % 32u), _wgslsmith_div_u32(arg_3, 4294967295u)), vec4<u32>(_wgslsmith_div_u32(0u, 31817u), ~arg_1, arg_2.x, 0u), true)));
    let var_0 = Struct_1(func_5(vec3<f32>(-597f, func_5(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1045f, 1285f) - vec2<f32>(2158f, -1641f)), true, reverseBits(u_input.b.x)).b.b.x, func_5(vec3<f32>(-1079f, 810f, 775f), vec2<f32>(1f, 1f), all(vec2<bool>(true, false)), 1u).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-271f, -740f), vec2<f32>(-614f, -248f)))), !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(81132u, arg_2.x), ~2037u) | arg_1).b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-594f - -1080f), -625f) + func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1202f, 922f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, 254f)), u_input.b.x < 50059u, ~arg_2.x).b.b) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-196f, -1017f), vec2<f32>(-1550f, -425f)))), vec2<f32>(_wgslsmith_f_op_f32(128f * 828f), 1f)))), u_input.a, select(~vec2<u32>(~arg_3, ~u_input.b.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, 0u), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 5979u))), false), !any(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, -296f, 448f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1128f, 1158f)), any(vec3<bool>(false, true, false)), ~arg_3).b.a));
    global0 = ~(~_wgslsmith_mult_u32(arg_2.x, _wgslsmith_clamp_u32(arg_2.x, 38472u, ~45996u)));
    var var_1 = -1000f;
    global0 = 87933u;
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.b.x)))), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 904f) + vec2<f32>(976f, -1272f))), ~(func_5(vec3<f32>(-1338f, 464f, var_0.b.x), var_0.b, false, arg_2.x).b.c & _wgslsmith_mult_i32(-13937i, -1i)), ~min(var_0.d, min(u_input.b, vec2<u32>(arg_3, arg_2.x))), !all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)) & any(func_3(Struct_2(265f, var_0, var_0.d.x, var_0.b, arg_1)))), max(reverseBits(~var_0.d.x), _wgslsmith_mod_u32(var_0.d.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, _wgslsmith_f_op_f32(floor(1099f)))))), ~(~max(_wgslsmith_div_u32(45570u, 32092u), 74236u >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(firstLeadingBit(_wgslsmith_add_vec3_i32(-func_1(Struct_2(-1553f, Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(1845f, -192f), 48510i, u_input.b, true), 27860u, vec2<f32>(1411f, -547f), 1u), true, -1056i), select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 41698i), vec3<bool>(false, true, false)) & reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)))), 6864u, firstLeadingBit(~(vec2<u32>(u_input.b.x, 46741u) | ~vec2<u32>(u_input.b.x, 23274u))), u_input.b.x);
    var var_1 = vec2<bool>(var_0.b.a.x, true);
    let var_2 = func_6(-((vec3<i32>(21779i, 39310i, var_0.b.c) & firstLeadingBit(vec3<i32>(var_0.b.c, -30564i, 12573i))) | -_wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, u_input.a), vec3<i32>(10043i, 0i, u_input.a))), ~59545u, ~(var_0.b.d & ((vec2<u32>(var_0.e, u_input.b.x) >> (var_0.b.d % vec2<u32>(32u))) << (var_0.b.d % vec2<u32>(32u)))), countOneBits(countOneBits(select(0u, 1u, true) ^ ~1u)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + var_2.a))), -1388f)), var_2.b, 21375u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(func_4(func_5(vec3<f32>(892f, -562f, var_0.b.b.x), var_2.d, true, 17643u).b, var_2, ~vec3<u32>(1u, var_2.b.d.x, 1u), _wgslsmith_f_op_f32(round(var_0.d.x)))).x), var_2.d)), _wgslsmith_add_u32(~var_2.b.d.x, _wgslsmith_mult_u32(34722u ^ u_input.b.x, u_input.b.x)));
    let var_3 = Struct_2(1387f, func_5(vec3<f32>(1871f, _wgslsmith_f_op_f32(-var_2.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b.x, -278f) + _wgslsmith_div_f32(1132f, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_2.b.b.x)), all(func_3(var_2)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(14138u, 65931u), 50781u)).b, func_6(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -43825i), vec3<i32>(-2147483647i, var_2.b.c, 69514i)), ~abs(19867u), vec2<u32>(~u_input.b.x, var_0.b.d.x), firstLeadingBit(firstTrailingBit(16131u))).e & 0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x))) + _wgslsmith_div_f32(-962f, _wgslsmith_f_op_f32(var_2.a - 310f))), _wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_add_u32(var_0.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, var_2.e) << (vec3<u32>(var_0.c, var_0.e, 53083u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, var_0.c, var_2.e) >> (vec3<u32>(u_input.b.x, u_input.b.x, var_0.c) % vec3<u32>(32u)), vec3<u32>(var_0.b.d.x, 4294967295u, 1u)))));
    let var_4 = ~vec2<i32>(u_input.a, abs(var_2.b.c));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.b.b.x)) + var_3.b.b.x), func_6(select(select(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(var_4.x, 2147483647i, var_0.b.c), !vec3<bool>(false, var_0.b.a.x, false)), _wgslsmith_add_vec3_i32(vec3<i32>(-47744i, var_0.b.c, -19059i), max(vec3<i32>(u_input.a, var_0.b.c, 0i), vec3<i32>(1i, var_4.x, 5196i))), _wgslsmith_f_op_f32(abs(var_3.b.b.x)) != _wgslsmith_f_op_f32(step(var_2.a, 353f))), _wgslsmith_sub_u32(45869u, ~var_3.c | _wgslsmith_add_u32(var_3.b.d.x, 0u)), countOneBits(vec2<u32>(~1u, ~var_2.c)), var_2.e).b, ~(_wgslsmith_sub_u32(~var_2.b.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15326u, var_3.c, var_2.e, var_3.c), vec4<u32>(u_input.b.x, var_2.e, u_input.b.x, var_2.b.d.x))) >> (0u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f))), var_3.a), func_6(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.a, var_4.x, -28731i)) | countOneBits(vec3<i32>(16671i, -31065i, u_input.c)), vec3<i32>(0i, ~u_input.c, var_0.b.c)), 4294967295u, var_3.b.d, ~1u).c);
    var var_6 = var_3.b;
    var var_7 = _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1923f, 724f)), var_5.d.x), Struct_1(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, -654f, var_3.b.b.x) * vec3<f32>(752f, var_5.a, var_5.b.b.x)), _wgslsmith_f_op_vec2_f32(var_0.d * var_2.d), !var_5.b.a.x, 740u).b.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1275f, var_2.d.x))))), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.c, var_5.b.c, var_2.b.c), vec3<i32>(var_2.b.c, -1i, -2147483647i)), var_2.b.d, !var_1.x), firstTrailingBit(min(var_3.c & 1u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(var_2.b.b + var_6.b), _wgslsmith_div_u32(var_3.e | 14123u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_5.b.d.x, var_3.b.d.x, 0u, var_0.c) | vec4<u32>(0u, 67783u, 17183u, 1u), ~vec4<u32>(5091u, 42141u, var_2.b.d.x, 88503u)))), -11027i << (_wgslsmith_mod_u32(countOneBits(var_2.b.d.x), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1382f, var_5.a, -634f)), _wgslsmith_f_op_vec2_f32(ceil(var_5.b.b)), var_4.x < 0i, ~var_3.b.d.x).b.d.x) % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(959f, var_0.b.b.x, -104f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.d.x + var_0.a), 795f, _wgslsmith_f_op_f32(586f + var_5.a)) * vec3<f32>(-807f, var_0.b.b.x, -1689f))), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_6.d.x, var_3.e, ~(1u << (1u % 32u))), vec3<u32>(var_2.c, var_0.b.d.x, 108044u & ~var_6.d.x)), -(~var_5.b.c), var_5.b.b.x, ~2147483647i);
}

