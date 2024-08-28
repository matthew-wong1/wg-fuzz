struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec3<i32> {
    let var_0 = Struct_4(true, select(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(982i, -1i))), min(vec2<i32>(73504i, u_input.a) | vec2<i32>(-8738i, 23445i), ~(vec2<i32>(-2147483647i, -31073i) ^ vec2<i32>(19782i, u_input.a))), true), Struct_1(vec3<i32>(_wgslsmith_add_i32(u_input.a | 2128i, u_input.a), u_input.a, ~u_input.a), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(any(vec3<bool>(true, true, true)), false), any(vec3<bool>(true, false, false))), true, vec4<i32>(_wgslsmith_mult_i32(-18662i, 22018i & u_input.a), -62371i & ~u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, 1882f, 2104f, 971f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(588f, -567f, -411f, -1138f), vec4<f32>(-629f, 770f, -457f, 168f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-347f, -1382f, 1050f, -630f) - vec4<f32>(-951f, -934f, 1281f, -732f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1180f, -1744f, 720f, -821f))))))), vec4<bool>(true, any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), (any(vec2<bool>(false, true)) != (u_input.a != 10674i)) | true, !(~u_input.a < -938i)), vec4<i32>(abs(~u_input.a), (_wgslsmith_div_i32(u_input.a, u_input.a) >> (48491u % 32u)) ^ countOneBits(i32(-1i) * -1i), -_wgslsmith_clamp_i32(~u_input.a, u_input.a, 2147483647i), -select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -6360i, u_input.a), vec4<i32>(-26393i, 1i, u_input.a, u_input.a)), true)));
    let var_1 = _wgslsmith_f_op_f32(var_0.c.e.x * 1847f);
    var var_2 = var_0;
    var var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)));
    return _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -1i), 46021i), _wgslsmith_dot_vec3_i32(var_2.c.d.wxx, reverseBits(var_2.e.xwy)), var_2.b.x), vec3<i32>(firstLeadingBit(-1i), -1i, var_2.c.d.x) | vec3<i32>(1i, var_2.c.a.x, -_wgslsmith_mod_i32(-1i, -56303i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = -func_3(vec4<u32>(u_input.b.x, max(18630u, ~27518u), u_input.b.x, (u_input.b.x & u_input.b.x) ^ 11624u), firstTrailingBit(firstLeadingBit(~1u)));
    return !arg_1;
}

fn func_4(arg_0: vec4<bool>) -> Struct_4 {
    global0 = -270f;
    let var_0 = !(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, true), !arg_0.wwy), func_2(-vec2<i32>(7623i, -1i), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)).zwy, select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), select(arg_0.x, true, arg_0.x))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1534f - 178f) * -1000f)), -1000f)), 148f);
    global0 = var_1.x;
    let var_2 = Struct_4(true, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(18136i, -8544i << (u_input.b.x % 32u)), func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 40712u), vec4<u32>(4294967295u, 20993u, u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)).xz, vec2<bool>(true, true))), Struct_1(~vec3<i32>(76870i >> (1u % 32u), abs(u_input.a), ~(-24112i)), arg_0.xy, any(select(vec3<bool>(true, arg_0.x, arg_0.x), select(var_0, var_0, arg_0.x), var_1.x == var_1.x)), (vec4<i32>(-1i) * -vec4<i32>(1i, 1i, -25814i, 0i)) >> ((vec4<u32>(u_input.b.x, 57342u, 53825u, 0u) & min(u_input.b, u_input.b)) % vec4<u32>(32u)), vec4<f32>(785f, _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, -391f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -275f) * var_1.x))), !func_2(vec2<i32>(~u_input.a, -51795i), vec4<bool>(true, var_0.x, -220f >= var_1.x, var_0.x), !func_2(vec2<i32>(u_input.a, 1821i), arg_0, arg_0)), -_wgslsmith_mult_vec4_i32(max(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(11788i, 0i, u_input.a, 1304i)) ^ abs(vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(1i, u_input.a), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i)), u_input.a << (u_input.b.x % 32u))));
    return Struct_4(arg_0.x, var_2.b, var_2.c, select(vec4<bool>(true, var_2.c.b.x, !arg_0.x, false), !func_2(vec2<i32>(u_input.a, 0i) ^ vec2<i32>(var_2.e.x, u_input.a), func_2(vec2<i32>(var_2.e.x, 49334i), arg_0, arg_0), vec4<bool>(true, var_0.x, true, true)), !(!vec4<bool>(var_0.x, true, var_0.x, var_2.c.b.x))), var_2.e);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_1 {
    global1 = array<Struct_2, 7>();
    let var_0 = Struct_3(arg_2.c.d.wx, func_4(select(vec4<bool>(!arg_1.x, false, arg_2.d.x & false, arg_1.x), arg_2.d, all(vec4<bool>(true, arg_2.d.x, false, arg_1.x)))).c);
    let var_1 = Struct_4(func_2(var_0.b.d.zy & arg_2.e.xz, select(arg_2.d, arg_2.d, arg_2.d), func_4(func_2(vec2<i32>(30373i, 14341i), arg_2.d, !vec4<bool>(arg_2.d.x, arg_2.d.x, var_0.b.b.x, arg_1.x))).d).x, -func_4(arg_2.d).e.xz, func_4(arg_2.d).c, arg_2.d, _wgslsmith_mod_vec4_i32(~select(vec4<i32>(var_0.a.x, -9908i, u_input.a, 1214i) ^ arg_2.c.d, arg_2.e, arg_2.d), arg_2.c.d >> (~(u_input.b ^ vec4<u32>(u_input.b.x, 6764u, 4613u, 4294967295u)) % vec4<u32>(32u))));
    let var_2 = Struct_1(func_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 3025u), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b)), 1u), func_2(-vec2<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(21666i, 49028i, u_input.a, 16442i), vec4<i32>(var_0.a.x, -1i, var_0.a.x, var_1.b.x))), func_2(select(~var_0.b.d.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(-2800i, u_input.a), arg_2.c.a.yz), any(vec2<bool>(arg_2.a, var_0.b.c))), vec4<bool>(arg_2.d.x, true, !arg_2.c.b.x, 1524i <= var_0.a.x), var_1.d), func_2(vec2<i32>(2147483647i, -u_input.a), select(select(arg_2.d, vec4<bool>(false, true, arg_2.a, false), vec4<bool>(arg_1.x, true, arg_1.x, false)), !arg_2.d, !var_1.d), var_1.d)).zy, !any(func_4(!vec4<bool>(var_1.a, false, arg_1.x, arg_2.c.c)).c.b), _wgslsmith_mod_vec4_i32(abs(-var_1.e), vec4<i32>(_wgslsmith_add_i32(arg_2.b.x, 0i), 1i, _wgslsmith_mod_i32(-9835i, arg_2.e.x) << (~u_input.b.x % 32u), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.e.x - arg_2.c.e.x))), 725f, _wgslsmith_f_op_f32(var_0.b.e.x - func_4(!arg_2.d).c.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.e.x)))));
    var var_3 = ~u_input.b.x;
    return Struct_1(reverseBits(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, var_2.d.x), ~(-1i), firstLeadingBit(var_1.b.x)), arg_2.c.a.x, 42438i)), select(var_0.b.b, select(!vec2<bool>(false, arg_1.x), vec2<bool>(false, arg_2.a | var_1.c.c), true), vec2<bool>(~u_input.b.x >= ~u_input.b.x, var_1.c.c)), true, reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2.c.d, -vec4<i32>(var_1.b.x, var_2.d.x, 78579i, -1687i)), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.a.x, -1i, -2147483647i, -2147483647i), vec4<i32>(-1i, var_2.a.x, 2147483647i, arg_2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.e.x, var_0.b.e.x)), 980f, _wgslsmith_f_op_f32(arg_0.x + 422f), _wgslsmith_div_f32(arg_2.c.e.x, -105f))))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> bool {
    global1 = array<Struct_2, 7>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, 527f, -1000f) + vec3<f32>(371f, -1000f, 660f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(589f, -178f, -1000f))))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_4(!func_2(select(arg_2, arg_2, vec2<bool>(false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))));
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(273f, var_0.e.x))) - -452f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(u_input.a, u_input.a, min(_wgslsmith_add_i32(u_input.a, 19113i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -27107i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) | u_input.a);
    global1 = array<Struct_2, 7>();
    let var_1 = -688f;
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_2 = !((u_input.b.x < _wgslsmith_div_u32(119801u >> (u_input.b.x % 32u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 11728u))) & func_1(~_wgslsmith_add_u32(u_input.b.x, 1u), 0i, vec2<i32>(-1i) * -vec2<i32>(26363i, 48992i), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 20584u, 4294967295u, u_input.b.x) >> (u_input.b % vec4<u32>(32u)), ~u_input.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, var_1, -850f, 824f) * vec4<f32>(var_1, 1377f, 942f, var_1))))), func_5(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(var_1, var_1))), vec2<bool>(true, true), func_4(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))).e)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -720f), 948f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(var_1 * var_1), any(vec3<bool>(false, false, true)))), var_1))));
    var var_4 = Struct_4(!func_4(func_4(vec4<bool>(true, true, true, true)).d).a, vec2<i32>(var_0.x, -abs(u_input.a)), Struct_1(var_0, vec2<bool>(!all(vec4<bool>(false, false, true, true)), true), var_3.x < _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_1) - _wgslsmith_f_op_f32(select(1277f, 836f, false))), vec4<i32>(~(-8667i), -16143i, 1i, -7029i) << (vec4<u32>(reverseBits(u_input.b.x), 0u, select(u_input.b.x, 4294967295u, false), u_input.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(-var_3.x), func_5(var_3.zzz, vec2<bool>(true, true), Struct_4(true, var_0.yx, Struct_1(var_0, vec2<bool>(true, false), true, vec4<i32>(14807i, -29605i, 68755i, u_input.a), vec4<f32>(var_1, var_1, var_1, 281f)), vec4<bool>(true, true, true, false), vec4<i32>(-6228i, var_0.x, -470i, u_input.a))).e.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x) - vec4<f32>(var_3.x, var_3.x, var_1, -2354f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(156f, var_3.x, 2156f, 533f) - vec4<f32>(-844f, 276f, -1000f, var_1))))), !func_2(_wgslsmith_sub_vec2_i32(var_0.xy, vec2<i32>(var_0.x, 1i)) << (max(vec2<u32>(17631u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), func_2(select(var_0.xy, vec2<i32>(var_0.x, 1i), true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))), vec4<i32>(u_input.a, countOneBits(var_0.x >> (u_input.b.x % 32u)), u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.e, 0i, var_4.c.e.x, _wgslsmith_add_u32(~0u, countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.wx, u_input.b.xy))), var_4.c.e.x);
}

