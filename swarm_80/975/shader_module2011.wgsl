struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_1(select(select(vec2<bool>(true, arg_0.a.x), vec2<bool>(true, !arg_0.a.x), vec2<bool>(true, all(vec2<bool>(arg_0.a.x, true)))), !select(!arg_0.a, !arg_0.a, arg_0.a.x), !select(select(vec2<bool>(arg_0.a.x, false), arg_0.a, arg_0.a.x), arg_0.a, select(vec2<bool>(arg_0.a.x, false), vec2<bool>(true, true), arg_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1250f, -553f)) * _wgslsmith_f_op_vec2_f32(-arg_0.b))) - _wgslsmith_f_op_vec2_f32(max(arg_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(arg_0.b.x, arg_0.b.x))))))), -1i, _wgslsmith_mult_vec3_i32(~arg_0.d, vec3<i32>(min(arg_0.d.x, arg_0.d.x), firstTrailingBit(-21340i), firstLeadingBit(2147483647i))), ~abs(34327u));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x)));
    return select(select(vec2<bool>(any(vec2<bool>(true, false)), true), !arg_0.a, vec2<bool>(false, true & var_0.a.x)), !(!vec2<bool>(var_0.a.x, true)), var_0.a);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(!vec2<bool>(0i >= _wgslsmith_clamp_i32(-1i, -48940i, -60294i), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2058f)))), 1i, abs(~vec3<i32>(39127i, 40464i, -1i)), 4294967295u ^ u_input.a.x);
    var var_1 = Struct_1(!(!(!(!var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b.x)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b))))), var_0.d.x, vec3<i32>(var_0.c, select(2147483647i, -(~var_0.c), any(!vec4<bool>(false, true, var_0.a.x, false))), _wgslsmith_dot_vec2_i32((var_0.d.zz | var_0.d.zz) << (vec2<u32>(11773u, var_0.e) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(43881i, var_0.c) & vec2<i32>(var_0.c, 11285i), var_0.d.yx))), u_input.a.x);
    var_1 = Struct_1(func_3(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b))), 28909i ^ _wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(var_0.d.x, -30083i, -2147483647i)), var_0.d, 4574u), var_1.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(var_0.b.x, 651f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1555f, var_0.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_1.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(var_1.b.x, var_1.b.x)) - vec2<f32>(var_0.b.x, var_0.b.x)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b), vec2<f32>(var_0.b.x, var_1.b.x)))), !func_3(Struct_1(var_0.a, vec2<f32>(-489f, var_0.b.x), -53397i, var_1.d, var_0.e), ~u_input.a.x))), 33439i, min(vec3<i32>(_wgslsmith_mult_i32(-var_0.c, ~17148i), 1i, (25762i >> (var_1.e % 32u)) >> (0u % 32u)), max(var_0.d, select(vec3<i32>(908i, 797i, -1i), _wgslsmith_mult_vec3_i32(var_1.d, vec3<i32>(-10138i, -1i, 1i)), any(vec4<bool>(true, arg_1, arg_1, true))))), ~select(var_1.e, 4294967295u, false));
    let var_2 = _wgslsmith_clamp_i32(-97522i << (_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1u) % 32u), _wgslsmith_mult_i32(var_1.c, -1i), var_0.c) ^ _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, var_1.d.x, i32(-1i) * -1i, _wgslsmith_clamp_i32(var_0.d.x, -3544i, -38458i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c, var_0.d.x, -27175i, var_0.c), vec4<i32>(var_1.c, var_0.c, var_0.d.x, var_1.d.x)), vec4<bool>(var_0.a.x & arg_1, arg_1, func_3(Struct_1(vec2<bool>(false, arg_0), var_1.b, 1i, var_0.d, var_1.e), 1u).x, !arg_0)), ~(reverseBits(vec4<i32>(var_1.d.x, var_0.d.x, var_1.d.x, var_0.c)) | (vec4<i32>(1i, 42492i, -30102i, var_0.d.x) | vec4<i32>(var_0.c, var_1.c, var_1.d.x, var_0.c))));
    var_0 = Struct_1(!(!(!var_1.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + 883f), var_0.b.x))), _wgslsmith_f_op_vec2_f32(-var_1.b))), 9535i, firstLeadingBit(-vec3<i32>(var_1.d.x, i32(-1i) * -2147483647i, reverseBits(var_0.d.x))), ~_wgslsmith_sub_u32(47863u, var_1.e));
    return Struct_1(func_3(Struct_1(vec2<bool>(var_1.b.x >= 558f, arg_1), var_1.b, var_0.c, _wgslsmith_mult_vec3_i32(var_1.d, abs(vec3<i32>(-1i, var_1.c, 85326i))), ~(~73928u)), select(_wgslsmith_div_u32(var_0.e, ~4294967295u), abs(90168u), false)), _wgslsmith_f_op_vec2_f32(step(var_0.b, var_1.b)), _wgslsmith_sub_i32(1890i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.c, 0i, var_2), -var_0.d), min(var_2, -var_2))), var_1.d, var_0.e);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = select(select(vec4<bool>(!arg_1.a.x, true, true, true), !(!select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, true), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(false, false, false, arg_1.a.x))), arg_1.a.x), vec4<bool>(arg_1.a.x, false, false & (func_3(Struct_1(arg_1.a, vec2<f32>(arg_3.x, -925f), arg_1.d.x, vec3<i32>(arg_2.x, 26035i, arg_2.x), 104200u), u_input.a.x).x && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-870f))))), select(select(vec4<bool>(false, false, arg_1.a.x || arg_1.a.x, !arg_1.a.x), vec4<bool>(true, -1128f == arg_3.x, arg_1.a.x, all(vec3<bool>(false, true, true))), select(select(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x), vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), arg_1.a.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, true), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), vec4<bool>(true, arg_1.a.x, false, arg_1.a.x)), all(vec4<bool>(true, false, false, true)))), select(vec4<bool>(true & arg_1.a.x, all(vec2<bool>(false, arg_1.a.x)), !arg_1.a.x, true), select(vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), !vec4<bool>(false, arg_1.a.x, arg_1.a.x, false)), !vec4<bool>(true, false, arg_1.a.x, arg_1.a.x)), !(!(42891i < arg_1.c))));
    global0 = any(vec2<bool>(!var_0.x, var_0.x));
    global0 = arg_2.x > -arg_1.d.x;
    global0 = true;
    let var_1 = arg_1;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_3(Struct_1(func_3(func_2(all(vec4<bool>(false, arg_1.a.x, arg_0.a.x, true)), arg_1.a.x), 1u), arg_1.b, firstTrailingBit(arg_1.c), _wgslsmith_sub_vec3_i32(vec3<i32>(56897i, arg_1.c, arg_0.d.x) << (vec3<u32>(60339u, u_input.a.x, 0u) % vec3<u32>(32u)), vec3<i32>(-70569i, arg_0.c, arg_0.d.x)) & vec3<i32>(-31627i, arg_1.d.x >> (u_input.a.x % 32u), arg_1.d.x), arg_0.e), firstTrailingBit(arg_1.e)).x;
    let var_1 = ~(39801u ^ _wgslsmith_div_u32(~(~4294967295u), arg_0.e));
    global0 = any(arg_0.a);
    var var_2 = func_4(arg_1.b.x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2205f))), Struct_1(select(vec2<bool>(false, true), !arg_1.a, arg_0.a.x && true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_0.b.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.d.xz, arg_1.d.xy), arg_1.d.xz), min(vec3<i32>(-2147483647i, arg_1.d.x, arg_0.d.x), abs(arg_1.d)), 24381u), vec3<i32>(countOneBits(-arg_1.d.x), 2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_1.d.yz, vec2<i32>(-47958i, arg_0.d.x)), -arg_1.c)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.b)))))), vec3<i32>(-19562i, 1i, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(16431i, 0i, arg_1.c), arg_0.d)), vec3<i32>(arg_1.c, arg_1.d.x, -9951i) | arg_1.d)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b)))));
    var_0 = func_3(arg_1, 28995u).x;
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = countOneBits(u_input.a.xxy);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_0, ~var_0), func_5(func_4(366f, func_2(arg_0.a.x, false), vec3<i32>(arg_2.c, arg_0.d.x, -22646i) & _wgslsmith_mult_vec3_i32(arg_0.d, vec3<i32>(-35846i, arg_2.d.x, arg_2.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b.x, 392f))))), arg_2), u_input.a.x, func_5(func_2(arg_1, arg_0.a.x), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -980f)), func_2(!arg_1, false), vec3<i32>(i32(-1i) * -3725i, arg_2.c, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-572f, 418f)))))));
    global0 = true;
    global0 = (abs(countOneBits(1u)) == arg_2.e) && true;
    global0 = arg_0.a.x & arg_2.a.x;
    return vec2<u32>(0u, var_1.x);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = arg_1.a.x;
    var var_1 = 1i;
    var_1 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.d.x, -func_4(1000f, Struct_1(arg_1.a, vec2<f32>(-1000f, arg_1.b.x), 16242i, arg_1.d, 1u), arg_1.d, vec2<f32>(-116f, arg_1.b.x)).c), -2147483647i >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e, arg_2.x, 73182u), u_input.a.wwz)) % 32u), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3057f * arg_1.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -757f)), func_4(-584f, arg_1, vec3<i32>(1i, -1i, arg_1.c), func_4(arg_1.b.x, Struct_1(vec2<bool>(false, true), vec2<f32>(arg_1.b.x, arg_1.b.x), -1i, vec3<i32>(arg_1.c, 18794i, arg_1.c), arg_0.x), vec3<i32>(2147483647i, arg_1.c, arg_1.c), arg_1.b).b), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 18228i, arg_1.c), vec3<i32>(arg_1.c, arg_1.c, 23055i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b))).d.x), reverseBits(func_4(-152f, arg_1, -arg_1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) + _wgslsmith_f_op_vec2_f32(arg_1.b + arg_1.b))).c));
    var var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(206f, arg_1, arg_1.d, _wgslsmith_f_op_vec2_f32(arg_1.b * arg_1.b)).b.x, 301f)), func_2(any(select(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(var_0, var_0, arg_1.a.x), false), vec3<bool>(var_0, var_0, true))), _wgslsmith_f_op_f32(f32(-1f) * -1325f) < arg_1.b.x).c, -(vec3<i32>(-1i) * -vec3<i32>(arg_1.d.x, arg_1.c, -1i)) << (countOneBits(u_input.a.zxw) % vec3<u32>(32u)), select(~reverseBits(arg_2.x) << (_wgslsmith_dot_vec2_u32(~arg_2, vec2<u32>(5081u, 14508u)) % 32u), ~u_input.a.x, var_0));
    let var_3 = arg_1.a;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(44331u, 0u), u_input.a.zw), vec2<u32>(~0u, ~u_input.a.x), ~u_input.a.zy) >> (abs(func_1(Struct_1(vec2<bool>(true, true), vec2<f32>(1065f, 374f), 0i, vec3<i32>(1i, 61542i, 1i), 47589u), false, Struct_1(vec2<bool>(false, false), vec2<f32>(-381f, -176f), 2147483647i, vec3<i32>(2147483647i, -8975i, -16003i), u_input.a.x)) >> (u_input.a.xy % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), false), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-745f, 402f), vec2<f32>(-389f, 629f)))), -1i, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2382i, 0i), abs(23607i), 1i), -(~vec3<i32>(10734i, -2147483647i, 0i))), u_input.a.x), min(vec2<u32>(4294967295u >> (u_input.a.x % 32u), ~(~1945u)), _wgslsmith_div_vec2_u32(select(~u_input.a.wx, ~u_input.a.xy, func_3(Struct_1(vec2<bool>(false, true), vec2<f32>(-339f, 467f), -19177i, vec3<i32>(48222i, 16210i, 29403i), u_input.a.x), u_input.a.x)), vec2<u32>(33521u, 1u))));
    var_0 = func_3(func_2(true, false), u_input.a.x).x & !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(434f + -420f) + _wgslsmith_f_op_f32(round(-783f))) <= _wgslsmith_div_f32(-313f, -1600f));
    var_0 = true;
    var_0 = select(select(true, false, false), false, true);
    var var_1 = !func_3(func_2(true, func_6(vec2<u32>(29535u, 1u), Struct_1(vec2<bool>(true, true), vec2<f32>(-1178f, -1564f), 39691i, vec3<i32>(1i, 13021i, -31278i), 34851u), ~u_input.a.xx)), ~(~(~u_input.a.x)));
    var_1 = vec2<bool>(true, select(var_1.x, func_3(Struct_1(!vec2<bool>(false, var_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2422f, -1000f))), -1i, select(vec3<i32>(-44330i, 1i, 1i), vec3<i32>(-1i, 31766i, 33562i), vec3<bool>(false, var_1.x, false)), func_4(-2100f, Struct_1(vec2<bool>(false, var_1.x), vec2<f32>(-363f, 1858f), -37567i, vec3<i32>(-11331i, 2147483647i, -2147483647i), u_input.a.x), vec3<i32>(40145i, 2147483647i, -37807i), vec2<f32>(2607f, 1445f)).e), 0u).x, !(!(!var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(!var_1.x != var_1.x, all(select(!vec4<bool>(true, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, false, var_1.x), any(vec4<bool>(true, true, false, var_1.x))))).d.zz, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(41386u, u_input.a.x, 1u, u_input.a.x))) ^ u_input.a.x, _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 35057u)) % vec4<u32>(32u)), abs(-reverseBits(vec4<i32>(2147483647i, 0i, -2147483647i, 18388i)))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(func_5(Struct_1(vec2<bool>(var_1.x, true), vec2<f32>(-722f, 1352f), -1362i, vec3<i32>(1i, -44220i, -39580i), u_input.a.x), Struct_1(vec2<bool>(var_1.x, true), vec2<f32>(-274f, 1000f), 10706i, vec3<i32>(-38010i, -1i, 63977i), 1u)), ~4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 25797u), u_input.a.xzz)));
}

