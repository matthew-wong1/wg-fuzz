struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -504f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-695f, -547f)), _wgslsmith_f_op_f32(round(-653f)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(step(-541f, _wgslsmith_f_op_f32(505f - -1030f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_0 = Struct_5(true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - 1227f), _wgslsmith_f_op_f32(abs(1236f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1248f, 1000f))))), Struct_1(true, select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_3(Struct_1(any(select(var_0.c.b.yw, !var_0.c.b.zw, select(vec2<bool>(true, false), var_0.c.b.xx, vec2<bool>(true, false)))), !var_0.c.b), _wgslsmith_dot_vec4_i32(-(reverseBits(vec4<i32>(-35257i, u_input.a, u_input.a, u_input.a)) | countOneBits(vec4<i32>(u_input.a, -2147483647i, -9456i, -1i))), -vec4<i32>(-4478i, u_input.a & u_input.a, u_input.a, u_input.a)), Struct_2(var_0.c, 1i));
    var var_2 = -11724i >= -(countOneBits(-var_1.c.b) ^ _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(u_input.a, 20910i)));
    let var_3 = firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(28059u, 1u), ~u_input.b.yz ^ vec2<u32>(u_input.b.x, u_input.b.x ^ u_input.b.x)));
    return 966f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_1(arg_2, vec4<bool>(!(!arg_2 || true), true, true, _wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1005f, -907f))));
    let var_1 = var_0;
    return Struct_3(Struct_1(!(!(!arg_1.a)), vec4<bool>(false, !any(vec3<bool>(true, false, arg_2)), true, true)), 52619i, Struct_2(var_0, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, arg_0.x, 746i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i)), select(_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(u_input.a, u_input.a, arg_0.x, 10810i)), arg_0 << (vec4<u32>(u_input.b.x, 1u, 4294967295u, 0u) % vec4<u32>(32u)), !var_1.b))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    global1 = -854f;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f), -1008f) - _wgslsmith_f_op_f32(-790f * _wgslsmith_f_op_f32(551f - 345f)))))));
    let var_0 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, abs(45275u), _wgslsmith_div_u32(78550u, 60603u)), u_input.b & ~arg_3.zxy));
    let var_1 = u_input.b.x;
    let var_2 = func_2(reverseBits(-vec4<i32>(_wgslsmith_mod_i32(arg_0.c.b, -41730i), u_input.a, firstLeadingBit(arg_2.b), -2147483647i >> (u_input.b.x % 32u))), Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0, u_input.b.x), 1u) < ~arg_3.x, arg_0.a.b), true).c;
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_5) -> Struct_3 {
    let var_0 = arg_3.c.a;
    return func_4(func_4(arg_0, any(arg_3.c.b), func_4(func_2(vec4<i32>(arg_1, arg_2.x, 36397i, u_input.a) ^ vec4<i32>(u_input.a, -29706i, 2147483647i, arg_0.b), Struct_1(arg_0.a.a, arg_3.c.b), !arg_0.c.a.b.x), false, Struct_3(arg_3.c, arg_0.c.b ^ arg_2.x, func_4(Struct_3(arg_0.a, 2147483647i, Struct_2(arg_0.c.a, arg_0.c.b)), true, Struct_3(arg_0.a, 1i, Struct_2(Struct_1(false, vec4<bool>(var_0, arg_3.c.b.x, arg_0.a.b.x, var_0)), arg_1)), vec4<u32>(4578u, u_input.b.x, 0u, u_input.b.x)).c), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 14653u, u_input.b.x))), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(1u, u_input.b.x)) >> (abs(u_input.b.x) % 32u), ~_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.zz), countOneBits(max(0u, u_input.b.x)))), all(!(!arg_0.c.a.b)), func_4(Struct_3(arg_0.a, 1i, arg_0.c), any(func_4(Struct_3(arg_0.c.a, 31597i, Struct_2(arg_0.a, arg_0.c.b)), var_0, arg_0, vec4<u32>(0u, 43411u, u_input.b.x, u_input.b.x)).c.a.b) && (false & (arg_2.x >= arg_1)), func_2(_wgslsmith_mult_vec4_i32(-arg_2, firstTrailingBit(vec4<i32>(-1i, -1i, arg_0.c.b, 16847i))), func_4(func_4(arg_0, arg_3.a, arg_0, vec4<u32>(47889u, 32348u, u_input.b.x, 55414u)), arg_3.a, arg_0, ~vec4<u32>(0u, 15373u, 4294967295u, 5997u)).c.a, var_0), vec4<u32>(75444u, _wgslsmith_dot_vec2_u32(~u_input.b.yy, max(u_input.b.yx, vec2<u32>(u_input.b.x, u_input.b.x))), 4294967295u, ~(~u_input.b.x))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 55506u, 4294967295u, 0u), select(vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 10894u), false))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_3 {
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1054f)));
    let var_0 = 475f;
    global1 = arg_0.x;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -60394i), firstTrailingBit(u_input.a));
    return func_6(func_5(func_4(Struct_3(Struct_1(true, vec4<bool>(true, true, false, true)), -u_input.a, Struct_2(Struct_1(false, vec4<bool>(false, false, true, false)), u_input.a)), ~arg_1.x > _wgslsmith_dot_vec4_u32(arg_1, arg_1), func_2(-vec4<i32>(-26155i, 55458i, u_input.a, u_input.a), Struct_1(false, vec4<bool>(true, false, true, true)), true), ~(~vec4<u32>(u_input.b.x, 4294967295u, 13858u, u_input.b.x))), u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a, ~u_input.a, u_input.a, 24460i), ~vec4<i32>(u_input.a, 3388i, u_input.a, u_input.a)), Struct_5(all(vec2<bool>(false, true)), arg_0, Struct_1(true, vec4<bool>(true, true, true, true)))), Struct_3(func_4(Struct_3(func_2(vec4<i32>(2147483647i, -2147483647i, -51834i, u_input.a), Struct_1(true, vec4<bool>(false, true, true, true)), false).a, func_2(vec4<i32>(31598i, u_input.a, 0i, 21941i), Struct_1(true, vec4<bool>(true, true, false, true)), true).b, Struct_2(Struct_1(true, vec4<bool>(false, true, true, false)), 1i)), arg_1.x > (arg_1.x >> (arg_1.x % 32u)), func_4(Struct_3(Struct_1(true, vec4<bool>(true, true, false, true)), u_input.a, Struct_2(Struct_1(false, vec4<bool>(false, true, false, true)), -1i)), true, func_2(vec4<i32>(u_input.a, -18374i, 113i, 1i), Struct_1(true, vec4<bool>(true, true, false, true)), true), abs(vec4<u32>(arg_1.x, 1u, 102119u, 1u))), arg_1).a, u_input.a, Struct_2(Struct_1(false, vec4<bool>(true, true, true, true)), _wgslsmith_mult_i32(firstLeadingBit(40863i), abs(-7867i)))), vec2<bool>(true, true), vec3<i32>(~_wgslsmith_clamp_i32(45691i, -13899i, 71768i) | ~(~0i), ~(-2147483647i), -(~_wgslsmith_add_i32(-2215i, 29042i))));
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(479f, -630f, -1225f), vec3<f32>(-236f, 210f, -622f), false)) - vec3<f32>(316f, _wgslsmith_div_f32(491f, 363f), _wgslsmith_f_op_f32(-1210f + -720f))))));
    var var_1 = -abs(firstLeadingBit(vec3<i32>(u_input.a, ~0i, u_input.a)));
    var_1 = select(abs(vec3<i32>(-30660i, ~func_1(var_0.yx, vec4<u32>(0u, 4294967295u, 0u, arg_1), 519f).c.b, reverseBits(abs(2147483647i)))), abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), -vec3<i32>(5695i, arg_0.c.b, 712i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, -552i, arg_0.b)), vec3<i32>(arg_0.b, -17882i, var_1.x) ^ vec3<i32>(u_input.a, 1i, u_input.a)), vec3<bool>(true, true, true))), func_2(~max(vec4<i32>(arg_0.c.b, -67632i, -2147483647i, -12821i), vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i)) << (max(vec4<u32>(u_input.b.x, u_input.b.x, 46484u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 8809u, 1u, arg_1), vec4<u32>(arg_2, 0u, 38433u, 4294967295u))) % vec4<u32>(32u)), arg_0.a, arg_0.c.a.a || func_5(func_1(vec2<f32>(653f, var_0.x), vec4<u32>(4294967295u, arg_2, 66759u, 29195u), 360f), func_2(vec4<i32>(-8953i, 2147483647i, 4090i, -92621i), arg_0.a, arg_0.c.a.b.x).b, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.b, var_1.x, 1i, -25562i), vec4<i32>(arg_0.c.b, -13817i, 1i, -2147483647i)), Struct_5(true, vec2<f32>(var_0.x, 524f), arg_0.c.a)).c.a.a).a.b.zzx);
    let var_2 = -_wgslsmith_sub_i32(u_input.a, abs(_wgslsmith_mult_i32(~(-16457i), max(1i, var_1.x))));
    global0 = var_0.x;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_7(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, -1000f)) * vec2<f32>(-292f, 932f)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xx), _wgslsmith_dot_vec4_u32(vec4<u32>(32770u, u_input.b.x, 10657u, u_input.b.x), vec4<u32>(u_input.b.x, 24598u, u_input.b.x, u_input.b.x)), ~u_input.b.x, ~u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1231f)), 1u, abs(u_input.b.x));
    let var_1 = true;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1411f, 1000f, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1094f) + _wgslsmith_f_op_f32(f32(-1f) * -188f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), 736f)));
    let var_2 = Struct_1(u_input.a <= (countOneBits(-u_input.a) << (55869u % 32u)), !(!vec4<bool>(var_1, var_1, true, var_1)));
    var_0 = _wgslsmith_sub_u32(countOneBits(_wgslsmith_sub_u32(countOneBits(~u_input.b.x), ~u_input.b.x)), u_input.b.x);
    let var_3 = Struct_3(func_6(Struct_3(Struct_1(all(var_2.b), func_4(Struct_3(var_2, 26370i, Struct_2(Struct_1(true, var_2.b), u_input.a)), true, Struct_3(Struct_1(true, vec4<bool>(var_1, var_1, false, true)), u_input.a, Struct_2(var_2, u_input.a)), vec4<u32>(u_input.b.x, 55753u, u_input.b.x, 54734u)).c.a.b), u_input.a, Struct_2(var_2, -u_input.a)), Struct_3(var_2, 231i, func_5(Struct_3(var_2, u_input.a, Struct_2(Struct_1(var_1, vec4<bool>(var_1, var_1, var_2.b.x, var_1)), 6313i)), -34234i, -vec4<i32>(u_input.a, u_input.a, u_input.a, 37800i), Struct_5(false, vec2<f32>(326f, -2344f), Struct_1(true, vec4<bool>(var_1, false, true, true)))).c), var_2.b.zz, vec3<i32>(u_input.a, u_input.a, func_2(-vec4<i32>(-80562i, 42213i, -34021i, 1i), func_5(Struct_3(Struct_1(var_2.a, var_2.b), -1i, Struct_2(Struct_1(false, var_2.b), 25369i)), 4101i, vec4<i32>(u_input.a, 1i, -38496i, u_input.a), Struct_5(true, vec2<f32>(-983f, -1458f), Struct_1(var_1, var_2.b))).a, true).b)).c.a, -firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2099i, u_input.a), ~vec3<i32>(22650i, u_input.a, u_input.a))), func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(-523f)), -2464f), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 43179u), 1929f), !var_1, Struct_3(var_2, u_input.a ^ abs(1i), func_5(func_2(vec4<i32>(0i, 21291i, u_input.a, 2147483647i), Struct_1(false, vec4<bool>(true, var_2.b.x, var_1, false)), true), ~u_input.a, vec4<i32>(40080i, u_input.a, u_input.a, 2147483647i), Struct_5(false, vec2<f32>(426f, -361f), Struct_1(true, var_2.b))).c), vec4<u32>(~1u, ~countOneBits(u_input.b.x), min(u_input.b.x, u_input.b.x), 1u)).c);
    var_0 = u_input.b.x | 1u;
    global0 = _wgslsmith_f_op_f32(func_3());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-687f, 1193f), vec2<f32>(-1315f, -1044f), var_3.c.a.b.zy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-834f, 797f)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1405f)) * _wgslsmith_f_op_f32(-485f - -329f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1784f * -871f)))), u_input.b.x & abs(0u));
}

