struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = vec3<bool>(false, arg_0.d.a.x, firstTrailingBit(1u) == ~_wgslsmith_mult_u32(~u_input.d, ~arg_1));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(339f * _wgslsmith_f_op_f32(-1307f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, arg_3.b.c)) + _wgslsmith_div_f32(arg_0.c, arg_3.b.c)))));
    var var_2 = Struct_3(arg_3.b, Struct_2(arg_3.a.d, -vec4<i32>(23110i, arg_3.b.b.x, arg_3.b.b.x, arg_0.b.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f))), arg_3.a.a), arg_3.c);
    var var_3 = -675f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.c)));
    return arg_3.b.d.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = 20844u;
    var var_1 = ~(-_wgslsmith_dot_vec4_i32(select(~vec4<i32>(-49851i, u_input.e.x, -1i, u_input.e.x), select(vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, 43308i, 2147483647i), arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x)), select(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, 8907i, u_input.e.x, u_input.e.x) | vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.e.x), !vec4<bool>(false, false, arg_0.x, arg_0.x))));
    let var_2 = Struct_3(Struct_2(Struct_1(vec2<bool>(true && arg_0.x, false), arg_0.x, func_3(Struct_2(Struct_1(arg_0, true, u_input.a, arg_0.x), vec4<i32>(u_input.e.x, u_input.e.x, 2179i, 74171i), -1919f, Struct_1(vec2<bool>(false, false), false, arg_2, arg_0.x)), 1u, vec4<u32>(var_0, 0u, 4294967295u, var_0), Struct_3(Struct_2(Struct_1(arg_0, arg_0.x, vec4<u32>(8585u, var_0, 20823u, var_0), false), vec4<i32>(u_input.e.x, -2147483647i, -1i, -1179i), 1451f, Struct_1(arg_0, false, u_input.a, false)), Struct_2(Struct_1(vec2<bool>(true, arg_0.x), arg_0.x, u_input.a, arg_0.x), vec4<i32>(u_input.e.x, -58915i, -45664i, 0i), arg_1.x, Struct_1(vec2<bool>(false, false), arg_0.x, arg_2, arg_0.x)), vec3<f32>(-1650f, arg_1.x, arg_1.x))), !(5537u > var_0)), -(~(vec4<i32>(u_input.e.x, -9344i, u_input.e.x, -4573i) >> (vec4<u32>(4294967295u, 4294967295u, 0u, arg_2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(max(arg_1.x, -603f)), Struct_1(!select(arg_0, vec2<bool>(arg_0.x, true), vec2<bool>(false, false)), arg_0.x, ~(u_input.a | arg_2), false)), Struct_2(Struct_1(!arg_0, true, u_input.a, arg_0.x), -countOneBits(select(vec4<i32>(1i, 1i, -23881i, u_input.e.x), vec4<i32>(-2147483647i, 1i, u_input.e.x, -79931i), true)), arg_1.x, Struct_1(vec2<bool>(true, true), true, ~func_3(Struct_2(Struct_1(arg_0, arg_0.x, vec4<u32>(36960u, 1u, 0u, u_input.b), arg_0.x), vec4<i32>(-1i, u_input.e.x, -13842i, 10306i), arg_1.x, Struct_1(vec2<bool>(arg_0.x, false), false, u_input.a, arg_0.x)), var_0, vec4<u32>(arg_2.x, arg_2.x, 0u, 0u), Struct_3(Struct_2(Struct_1(vec2<bool>(arg_0.x, false), arg_0.x, vec4<u32>(arg_2.x, 9554u, 4294967295u, arg_2.x), false), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), arg_1.x, Struct_1(vec2<bool>(arg_0.x, arg_0.x), arg_0.x, vec4<u32>(var_0, u_input.b, arg_2.x, 12006u), arg_0.x)), Struct_2(Struct_1(arg_0, arg_0.x, vec4<u32>(arg_2.x, var_0, 247u, 33691u), true), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), 1425f, Struct_1(vec2<bool>(false, arg_0.x), arg_0.x, vec4<u32>(19859u, 16657u, arg_2.x, arg_2.x), false)), vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 185f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x)))))));
    let var_3 = Struct_3(Struct_2(Struct_1(!(!var_2.b.a.a), false, var_2.a.d.c, true), ~max(vec4<i32>(var_2.b.b.x, 46869i, -26166i, var_2.a.b.x), vec4<i32>(var_2.b.b.x, u_input.e.x, 34150i, -2147483647i)) >> (arg_2 % vec4<u32>(32u)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.x))))), var_2.b.a), var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)));
    let var_4 = var_3.b;
    return Struct_2(Struct_1(select(var_3.a.d.a, arg_0, all(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(var_3.a.a.b, var_2.b.d.a.x, false), vec3<bool>(var_2.b.a.a.x, var_4.a.a.x, var_2.b.a.a.x)))), arg_0.x, ~(~(var_4.d.c | var_2.a.d.c)), select(var_2.a.a.d, all(!vec3<bool>(var_3.b.a.a.x, false, var_4.d.d)), true)), vec4<i32>(i32(-1i) * -_wgslsmith_add_i32(30733i, var_4.b.x), var_3.b.b.x, -1i, countOneBits(~(24034i >> (1u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.c))))), var_2.b.d);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = true;
    var var_1 = func_2(select(select(arg_3.a, vec2<bool>(!arg_3.b, true), any(arg_3.a) | (var_0 & arg_3.a.x)), vec2<bool>(var_0, any(select(vec3<bool>(false, arg_3.d, arg_3.b), vec3<bool>(false, true, true), false))), arg_3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.xw, vec2<f32>(-1237f, arg_0.x))) - _wgslsmith_f_op_vec2_f32(floor(arg_0.zx)))), arg_3.c);
    var_1 = Struct_2(Struct_1(!(!var_1.d.a), any(vec3<bool>(-1i != u_input.e.x, arg_3.a.x, any(vec3<bool>(true, var_0, var_0)))), ~vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_mult_u32(0u, 15348u), _wgslsmith_dot_vec2_u32(var_1.a.c.yz, arg_3.c.yw)), true && ((false && arg_3.a.x) && func_2(arg_3.a, vec2<f32>(var_1.c, 1591f), vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 1u)).d.b)), firstLeadingBit(var_1.b) & ~var_1.b, arg_0.x, func_2(select(vec2<bool>(true, func_2(arg_3.a, arg_0.ww, arg_3.c).d.b), vec2<bool>(!arg_3.d, !var_1.a.b), var_0), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), -1000f)), u_input.a).a);
    let var_2 = true;
    let var_3 = 31863i;
    return Struct_3(func_2(arg_3.a, arg_0.wy, vec4<u32>(1u, 0u, ~1u, abs(_wgslsmith_div_u32(arg_2.x, 4294967295u)))), func_2(vec2<bool>(true, true || var_0), vec2<f32>(func_2(select(arg_3.a, vec2<bool>(var_0, arg_3.b), vec2<bool>(true, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_1.c)), _wgslsmith_mod_vec4_u32(u_input.a, arg_3.c)).c, var_1.c), reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 72085u, 0u, arg_2.x), u_input.a, arg_3.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1193f, -1192f)), var_1.c, _wgslsmith_f_op_f32(-var_1.c)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = !(!(!(!arg_1.xx)));
    var var_1 = func_2(vec2<bool>(any(vec2<bool>(!arg_1.x, func_2(arg_1.yx, vec2<f32>(315f, 525f), vec4<u32>(arg_0.b.a.c.x, arg_0.a.d.c.x, u_input.a.x, 42751u)).d.a.x)), true), vec2<f32>(arg_0.b.c, arg_0.b.c), firstLeadingBit((u_input.a | vec4<u32>(20979u, 4294967295u, u_input.b, 0u)) | (vec4<u32>(arg_0.b.d.c.x, arg_0.a.d.c.x, 0u, u_input.a.x) & vec4<u32>(u_input.b, u_input.c.x, arg_0.a.d.c.x, arg_0.a.a.c.x))) ^ u_input.a);
    var var_2 = arg_0.b.a.a;
    var_2 = arg_0.a.a.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, 170f), vec2<f32>(-226f, 2072f)) - arg_0.c.xy)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b.c, arg_0.b.c))))));
    return Struct_1(vec2<bool>(func_2(select(vec2<bool>(var_2.x, var_2.x), var_1.d.a, arg_1.x), vec2<f32>(var_3.x, -809f), _wgslsmith_add_vec4_u32(u_input.a, arg_0.a.a.c)).a.a.x && var_1.d.b, var_1.a.a.x || any(vec2<bool>(false, var_2.x))), _wgslsmith_sub_i32(-41213i, select(countOneBits(var_1.b.x), arg_0.b.b.x, any(vec2<bool>(false, arg_1.x)))) >= 6767i, _wgslsmith_sub_vec4_u32(arg_0.b.d.c, countOneBits(~(~vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a.a.c.x, var_1.a.c.x)))), all(select(arg_1, vec3<bool>(func_2(vec2<bool>(var_1.a.b, false), vec2<f32>(var_1.c, -638f), vec4<u32>(7148u, arg_0.a.d.c.x, 24375u, 2373u)).d.b, true, true), select(select(arg_1, vec3<bool>(arg_0.b.a.d, var_1.d.b, true), var_2.x), arg_1, select(vec3<bool>(arg_1.x, arg_0.a.d.a.x, false), vec3<bool>(true, arg_0.a.a.b, var_2.x), arg_1)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(274f + 683f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(699f * 228f))))), firstTrailingBit(-2147483647i), ~(~(u_input.c >> (_wgslsmith_mult_vec3_u32(arg_0.c.xzz, vec3<u32>(arg_0.c.x, 57161u, 61796u)) % vec3<u32>(32u)))), arg_0);
    let var_1 = var_0.a.a;
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, var_0.a.c, var_0.a.c, var_0.c.x) * vec4<f32>(var_0.c.x, var_0.c.x, 496f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(471f, -915f, -184f, var_0.a.c) * vec4<f32>(456f, -675f, var_0.c.x, var_0.a.c)))), !(!func_4(Struct_3(Struct_2(arg_0, var_0.b.b, -444f, Struct_1(vec2<bool>(arg_1.x, var_1.d), true, vec4<u32>(u_input.d, 1u, arg_0.c.x, 8756u), var_0.a.d.d)), var_0.b, var_0.c), arg_1.wyy, var_0.a.b.x).d))), -2147483647i, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, var_1.c.x), vec2<u32>(var_0.b.a.c.x, 0u)), _wgslsmith_dot_vec3_u32(abs(var_0.b.a.c.wwx), var_1.c.zxz >> (vec3<u32>(4775u, 4294967295u, 1u) % vec3<u32>(32u))), ~var_1.c.x) ^ var_0.a.a.c.yxw, func_4(Struct_3(func_1(vec4<f32>(-105f, -1751f, -880f, -422f), _wgslsmith_mult_i32(var_0.a.b.x, var_0.a.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(43737u, arg_0.c.x, 0u), var_0.b.a.c.ywy), var_0.a.a).b, Struct_2(Struct_1(var_0.a.d.a, false, vec4<u32>(arg_0.c.x, u_input.a.x, var_1.c.x, 4294967295u), true), ~var_0.b.b, var_0.a.c, Struct_1(vec2<bool>(arg_0.a.x, true), false, vec4<u32>(var_0.a.a.c.x, var_1.c.x, 85777u, var_0.a.a.c.x), var_0.a.a.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c), var_0.c, true))), arg_1.yyx, u_input.e.x));
    var var_2 = select(~abs(var_0.a.a.c.yww), ~arg_0.c.yzz, select(!arg_1.xzz, arg_1.yzz, vec3<bool>(true, arg_1.x, !var_1.a.x != arg_0.d)));
    var_2 = func_2(!select(vec2<bool>(!arg_1.x, false), vec2<bool>(true, true), arg_1.x), _wgslsmith_f_op_vec2_f32(var_0.c.yz * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1846f, 793f), vec2<f32>(var_0.c.x, 1234f)))), var_0.c.xx, vec2<bool>(!var_1.d, true)))), vec4<u32>(abs(u_input.c.x), var_0.a.a.c.x, ~func_4(Struct_3(var_0.b, var_0.a, var_0.c), vec3<bool>(var_0.a.d.a.x, true, false), var_0.b.b.x).c.x & 1u, _wgslsmith_div_u32(0u, var_2.x | _wgslsmith_add_u32(4294967295u, u_input.b)))).a.c.wzx;
    return Struct_1(select(arg_1.yz, select(!var_0.a.a.a, vec2<bool>(-63509i < u_input.e.x, true), arg_0.b), !any(func_4(Struct_3(var_0.b, var_0.b, var_0.c), arg_1.xxx, 2147483647i).a)), !(_wgslsmith_f_op_f32(-1000f - var_0.c.x) <= 2599f), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 1u, abs(~var_1.c.x), 4294967295u >> ((79606u | arg_0.c.x) % 32u)), min(var_1.c, _wgslsmith_mult_vec4_u32(min(var_0.a.a.c, var_0.a.d.c), firstLeadingBit(vec4<u32>(3718u, 1u, 53392u, 0u))))), any(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(func_5(func_4(func_1(vec4<f32>(-1488f, 119f, -533f, 309f), 1i, vec3<u32>(1u, u_input.a.x, 193u), Struct_1(vec2<bool>(false, false), false, vec4<u32>(u_input.b, 0u, u_input.a.x, 2312u), false)), vec3<bool>(false, true, false), -28411i), vec4<bool>(true, true, true, true)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 9259i)), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 2147483647i)), _wgslsmith_f_op_f32(1166f + 570f), func_2(vec2<bool>(any(vec4<bool>(true, true, false, true)), true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-255f, 470f), vec2<f32>(-1106f, -1138f)), vec2<f32>(848f, -890f))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b)), vec4<u32>(52520u, u_input.b, 0u, 0u))).a), Struct_2(func_2(vec2<bool>(any(vec2<bool>(true, false)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, u_input.c.x, u_input.c.x), min(u_input.a, u_input.a))).a, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.e.x, -46266i, -2147483647i, -11813i)), -vec4<i32>(u_input.e.x, 47589i, u_input.e.x, -39710i)) << (min(vec4<u32>(80853u, 1u, u_input.c.x, 0u), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.c.x, u_input.b, u_input.a.x, u_input.c.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1219f, -858f)))), Struct_1(func_5(func_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), false, vec4<u32>(57986u, u_input.d, 10370u, 1u), true), vec4<i32>(60024i, 0i, u_input.e.x, 1i), 148f, Struct_1(vec2<bool>(true, true), true, vec4<u32>(u_input.b, 13489u, 0u, 37556u), false)), Struct_2(Struct_1(vec2<bool>(false, false), true, u_input.a, false), vec4<i32>(-2147483647i, u_input.e.x, -2147483647i, -10366i), -1375f, Struct_1(vec2<bool>(true, false), false, vec4<u32>(31012u, 4294967295u, 4294967295u, 1u), false)), vec3<f32>(535f, 881f, -478f)), vec3<bool>(false, true, false), 2147483647i), vec4<bool>(true, true, false, false)).a, false, u_input.a, all(vec3<bool>(true, true, true)))), vec3<f32>(592f, _wgslsmith_f_op_f32(f32(-1f) * -696f), -827f));
    var_0 = Struct_3(var_0.b, Struct_2(Struct_1(!(!vec2<bool>(var_0.b.d.a.x, var_0.b.a.a.x)), true, ~vec4<u32>(var_0.a.d.c.x, var_0.b.a.c.x, var_0.b.a.c.x, var_0.b.a.c.x), func_5(func_2(vec2<bool>(var_0.b.d.b, true), vec2<f32>(var_0.b.c, var_0.c.x), vec4<u32>(1u, var_0.b.a.c.x, 13299u, 0u)).d, select(vec4<bool>(var_0.a.d.d, false, false, false), vec4<bool>(false, var_0.b.d.d, var_0.a.d.a.x, false), vec4<bool>(false, var_0.b.a.b, false, false))).a.x), vec4<i32>(2147483647i, u_input.e.x, -reverseBits(-46279i), -74268i >> (_wgslsmith_dot_vec4_u32(var_0.b.d.c, var_0.a.a.c) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.c), -271f))), Struct_1(select(vec2<bool>(var_0.b.d.a.x, false), vec2<bool>(var_0.b.d.d, true), vec2<bool>(false, var_0.a.d.a.x)), true | var_0.a.a.d, ~(~u_input.a), _wgslsmith_mult_i32(0i, u_input.e.x) <= _wgslsmith_sub_i32(var_0.a.b.x, var_0.b.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-347f - -963f), -1033f), vec3<f32>(var_0.b.c, 727f, 1265f))));
    var var_1 = select(select(!vec4<bool>(func_4(Struct_3(var_0.a, var_0.a, var_0.c), vec3<bool>(false, var_0.b.d.d, true), var_0.b.b.x).b, true, var_0.b.d.a.x, true), select(select(vec4<bool>(true, false, false, var_0.b.a.b), vec4<bool>(var_0.b.a.a.x, false, var_0.b.d.d, var_0.b.a.d), all(vec3<bool>(false, var_0.a.a.a.x, false))), select(select(vec4<bool>(var_0.b.a.d, var_0.b.d.b, var_0.b.d.a.x, false), vec4<bool>(true, var_0.a.a.b, var_0.b.a.a.x, true), false), vec4<bool>(var_0.a.d.b, false, false, var_0.b.a.b), vec4<bool>(false, true, var_0.a.d.d, true)), !select(vec4<bool>(var_0.a.a.b, var_0.b.d.b, true, var_0.b.d.d), vec4<bool>(false, false, false, var_0.a.d.a.x), var_0.b.a.b)), !(_wgslsmith_f_op_f32(var_0.a.c * var_0.c.x) > 1000f)), vec4<bool>(true, any(!vec3<bool>(true, false, var_0.a.a.d)), !((-31517i | u_input.e.x) != min(u_input.e.x, 2147483647i)), !(abs(22465u) <= u_input.d)), select(vec4<bool>(true, func_5(func_5(var_0.b.d, vec4<bool>(var_0.b.a.b, false, var_0.b.d.b, var_0.b.d.b)), select(vec4<bool>(true, false, var_0.a.d.b, false), vec4<bool>(var_0.a.a.a.x, var_0.a.d.d, var_0.a.a.d, var_0.a.d.b), false)).b, true, true), select(vec4<bool>(var_0.a.d.d, true, false, false), !(!vec4<bool>(var_0.a.d.b, false, false, true)), false), var_0.a.a.a.x));
    var_1 = vec4<bool>(all(select(!vec4<bool>(false, true, var_0.b.a.b, false), vec4<bool>(false, true, var_1.x, var_0.a.a.a.x), var_1.x)) != var_0.a.d.a.x, var_1.x, !var_1.x, _wgslsmith_f_op_f32(var_0.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))) <= var_0.c.x);
    var_1 = !select(!(!(!vec4<bool>(var_0.b.a.b, false, false, var_1.x))), vec4<bool>(any(select(vec4<bool>(var_0.b.a.d, var_0.b.a.b, var_1.x, var_1.x), vec4<bool>(false, var_0.a.a.d, false, var_0.a.a.b), true)), -1580f > var_0.c.x, var_0.b.a.a.x, 34021u < ~var_0.a.a.c.x), !vec4<bool>(any(vec4<bool>(var_0.b.a.b, var_1.x, var_1.x, false)), !var_0.b.d.d, var_0.a.d.d, true));
    var var_2 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, 1066f, var_0.c.x, -123f) - vec4<f32>(var_0.b.c, -1025f, var_0.b.c, var_0.b.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, var_0.a.c, -1129f, 475f))))), abs(-1817i) & -_wgslsmith_add_i32(var_0.b.b.x, i32(-1i) * -27968i), ~_wgslsmith_sub_vec3_u32(~var_0.b.a.c.ywy, u_input.a.xwx), var_0.b.a);
    var var_3 = select(max(~_wgslsmith_mult_u32(func_4(Struct_3(var_0.a, var_2.b, var_2.c), var_1.xyw, var_0.b.b.x).c.x, u_input.b), ~40753u), 55595u, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(-((55543i & var_2.a.b.x) ^ -u_input.e.x)), -var_2.a.b.zy);
}

