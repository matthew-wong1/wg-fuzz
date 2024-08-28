struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 6488u, 2301u, 1u);

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_div_f32(global1.a.x, arg_0.a.x));
    var var_1 = firstTrailingBit(arg_3);
    let var_2 = arg_0.b.x;
    var var_3 = arg_0;
    var var_4 = arg_0;
    return global0.xx;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_div_u32(54559u, 39640u) >> (arg_0.c.x % 32u);
    global0 = abs(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, global0.x, arg_1) << (vec4<u32>(1u, 6498u, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(global0.x, u_input.a, u_input.a, 0u))));
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(~1u, reverseBits(34497u), var_0, _wgslsmith_sub_u32(global0.x, arg_0.c.x)), ~(vec4<u32>(4294967295u, 28587u, 0u, global1.c.x) | ~vec4<u32>(global1.c.x, 17006u, u_input.a, u_input.a))), reverseBits(max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_0, 63161u), vec4<u32>(0u, 4294967295u, 9616u, 41379u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, var_0, u_input.a, 0u), vec4<u32>(1u, 1u, u_input.a, var_0)), ~(~vec4<u32>(global0.x, arg_1, arg_0.c.x, arg_1)))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(-arg_0.a)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(arg_0.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-748f, arg_0.b.x, global1.a.x), global1.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zy) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.a.xz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.x, arg_0.a.x), global1.a.yx, vec2<bool>(arg_0.d, false)))), select(select(vec2<bool>(true, arg_0.d), vec2<bool>(global1.d, false), arg_0.d), !vec2<bool>(true, global1.d), !arg_0.d)))), vec2<u32>(~_wgslsmith_dot_vec3_u32(global0.zzw, global0.zxz) | abs(~1u), u_input.a), true, global1.e);
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), arg_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.b.x, global1.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1264f, -548f) * _wgslsmith_f_op_f32(arg_0.b.x + 910f)), arg_0.a.x, 1692f)), vec2<f32>(-1584f, global1.a.x), min(vec2<u32>(global0.x, 1u), max(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global0.x, global0.x)), ~vec2<u32>(arg_1, 24678u))), arg_0.d | (arg_1 > u_input.a), select(~reverseBits(arg_0.e), arg_0.e, global0.x > _wgslsmith_mult_u32(arg_1, global0.x)) & u_input.b.xz);
    return vec4<u32>(u_input.a, firstTrailingBit(~var_0), u_input.a, _wgslsmith_add_u32(abs(~arg_0.c.x), 0u));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -1847f, -363f) - global1.a), vec3<f32>(global1.b.x, -117f, -1338f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a, global1.a, global1.d)) * vec3<f32>(global1.b.x, 1283f, 430f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a.x, global1.b.x)))))), vec2<u32>(u_input.a << (u_input.a % 32u), global1.c.x), true, vec2<i32>(_wgslsmith_mod_i32(-global1.e.x, arg_0.x), arg_0.x));
    global0 = _wgslsmith_clamp_vec4_u32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(var_0.a.x, -387f, 1195f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1127f, 1226f))), func_3(var_0, false, global1.c.x, -2147483647i), all(vec3<bool>(global1.d, var_0.d, false)), vec2<i32>(-40409i, -49724i)), _wgslsmith_div_u32(~var_0.c.x, 18537u)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.x, global0.x, 48485u, global0.x), vec4<u32>(global0.x, 75584u, global0.x, global0.x), vec4<u32>(global1.c.x, global0.x, global1.c.x, 4294967295u)) ^ (vec4<u32>(global1.c.x, 4294967295u, 1u, global0.x) << (vec4<u32>(110095u, global1.c.x, u_input.a, u_input.a) % vec4<u32>(32u)))), abs(~vec4<u32>(u_input.a, var_0.c.x, var_0.c.x, 4294967295u) ^ ~vec4<u32>(54801u, var_0.c.x, var_0.c.x, 27207u))) ^ max(min(func_4(var_0, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, u_input.a, global0.x, global0.x), vec4<u32>(u_input.a, global0.x, 48450u, global1.c.x))) ^ ~(~vec4<u32>(4294967295u, global0.x, 0u, 1u)), ~vec4<u32>(~global0.x, u_input.a, 4294967295u, _wgslsmith_dot_vec2_u32(global1.c, global0.wz)));
    let var_1 = ~(~(~min(vec4<u32>(4294967295u, global1.c.x, global0.x, var_0.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global0.x, 72075u, global1.c.x), vec4<u32>(global0.x, u_input.a, global1.c.x, global0.x), vec4<u32>(0u, global0.x, global1.c.x, global0.x)))));
    let var_2 = max(4188u, func_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(-431f - 652f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.a.xx))), global1.c, var_0.d || !global1.d, -(~arg_0.wz)), all(vec2<bool>(var_0.d, false)) & !var_0.d, ~(~4294967295u), ~_wgslsmith_dot_vec3_i32(-u_input.b, vec3<i32>(-2147483647i, -1i, -15073i))).x);
    var var_3 = ~(~(~var_0.c.x));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = vec4<u32>(~0u, arg_2.c.x, _wgslsmith_div_u32(_wgslsmith_add_u32(select(~0u, _wgslsmith_sub_u32(u_input.a, 1u), false), ~(~51189u)), arg_0.c.x), ~global1.c.x);
    global0 = abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 4294967295u, 7113u, 0u), ~vec4<u32>(arg_0.c.x, 31687u, arg_2.c.x, arg_0.c.x)), ~vec4<u32>(global1.c.x, 18937u, arg_2.c.x, 24144u) >> (vec4<u32>(4294967295u, u_input.a, var_0.x, var_0.x) % vec4<u32>(32u))) >> (~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, 38229u, arg_0.c.x), vec4<u32>(var_0.x, 24702u, var_0.x, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global0.x, u_input.a, global0.x), vec4<u32>(arg_2.c.x, global1.c.x, 34432u, global0.x))) % vec4<u32>(32u)));
    let var_1 = func_2(-countOneBits(u_input.c));
    return ~_wgslsmith_mult_i32(~func_2(u_input.c).e.x, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -1i), firstTrailingBit(u_input.c.x))) | arg_0.e.x;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1566f * global1.a.x))))), -719f, 567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))));
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b << (vec3<u32>(1u, u_input.a, 40419u) % vec3<u32>(32u))), vec3<i32>(func_5(Struct_1(global1.a, vec2<f32>(var_0.x, -772f), global0.yw, global1.d, vec2<i32>(global1.e.x, u_input.b.x)), vec3<i32>(u_input.c.x, -14062i, global1.e.x), func_2(u_input.c), vec3<bool>(global1.d, false, true)), func_5(Struct_1(var_0.xxw, vec2<f32>(452f, 846f), vec2<u32>(global1.c.x, 83081u), global1.d, global1.e), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, global1.e.x), vec3<i32>(global1.e.x, -2147483647i, 1i)), Struct_1(vec3<f32>(global1.a.x, 919f, global1.a.x), var_0.ww, global0.wx, true, vec2<i32>(u_input.c.x, 2147483647i)), vec3<bool>(global1.d, global1.d, global1.d)), -8182i)), u_input.c.xww);
    let var_2 = func_2(vec4<i32>(i32(-1i) * -1843i, var_1.x, 1i >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.wyz, vec3<u32>(global0.x, global1.c.x, 15344u))) % 32u), abs(min(2147483647i ^ global1.e.x, ~var_1.x))));
    var var_3 = func_2(vec4<i32>(-1i) * -(~vec4<i32>(var_2.e.x, global1.e.x, 0i, global1.e.x)));
    let var_4 = true;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~global1.c, ~global0.zy), _wgslsmith_div_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), global0.zw)), global0.xx)), (global1.c >> (global1.c % vec2<u32>(32u))) | ~(~func_1()));
    let var_1 = func_2(u_input.c);
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x - -1000f), 991f, _wgslsmith_f_op_f32(global1.b.x + 1640f)), func_2(u_input.c).b, firstTrailingBit(min(vec2<u32>(firstLeadingBit(var_1.c.x), countOneBits(u_input.a)), ~abs(vec2<u32>(1u, 0u)))), true, vec2<i32>(_wgslsmith_mod_i32(~global1.e.x >> (func_3(Struct_1(vec3<f32>(509f, 1000f, var_1.b.x), vec2<f32>(-1068f, var_1.b.x), vec2<u32>(19082u, 0u), true, vec2<i32>(-1i, var_1.e.x)), true, u_input.a, u_input.c.x).x % 32u), u_input.b.x), func_5(func_2(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(global1.e.x, var_1.e.x, -1i, u_input.c.x))), -_wgslsmith_sub_vec3_i32(u_input.b, u_input.c.wxx), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, global1.b.x, 584f))), vec2<f32>(var_1.a.x, -221f), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.a), vec2<u32>(var_1.c.x, u_input.a)), select(true, false, true), -u_input.b.zx), select(select(vec3<bool>(global1.d, true, true), vec3<bool>(global1.d, false, global1.d), false), vec3<bool>(false, global1.d, false), global1.d))));
    let var_2 = _wgslsmith_f_op_f32(round(var_1.b.x));
    var_0 = vec2<u32>(global1.c.x, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_1.e.x, global1.e.x), var_1.e.x, 2147483647i, ~var_1.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, global1.e.x, var_1.e.x, -30710i), ~vec4<i32>(global1.e.x, -8793i, global1.e.x, var_1.e.x))));
}

