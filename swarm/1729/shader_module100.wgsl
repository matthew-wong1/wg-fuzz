struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global0 = Struct_4(any(global0.b), global0.b, all(select(!select(vec4<bool>(true, false, false, global0.b.x), vec4<bool>(global0.c, true, false, global0.c), global0.b.x), vec4<bool>(!global0.c, global0.a, all(global0.b), any(vec3<bool>(true, global0.a, global0.b.x))), global0.a)), global0.d);
    let var_0 = ~vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(-1i, 31076i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 39206i, 1i), vec3<i32>(-1i, -19468i, global0.d)), vec3<i32>(global0.d, u_input.b, -14554i)), ~(-29657i & global0.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 39863i, global0.d), vec4<i32>(0i, u_input.b, u_input.b, u_input.b)) | -global0.d) & ~vec4<i32>(min(abs(-1i), -1i), ~_wgslsmith_add_i32(0i, -1i), 44449i, 1i);
    global0 = Struct_4((~(~u_input.a) << (min(u_input.a, min(u_input.a, 1u)) % 32u)) != ~(~(u_input.c.x & 1u)), vec2<bool>(any(select(global0.b, select(global0.b, vec2<bool>(global0.c, false), true), global0.b.x)), all(select(vec4<bool>(false, global0.c, global0.c, true), vec4<bool>(global0.a, global0.b.x, global0.a, true), true))), any(!select(vec4<bool>(global0.b.x, global0.b.x, true, true), vec4<bool>(global0.a, global0.b.x, true, true), true)) & (-1552i <= -(~global0.d)), u_input.b);
    var var_1 = Struct_3(countOneBits(vec2<u32>(firstLeadingBit(abs(u_input.a)), u_input.c.x)), all(select(!(!vec3<bool>(false, true, global0.a)), select(!vec3<bool>(global0.a, true, false), select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(true, global0.c, global0.b.x), global0.b.x), any(vec3<bool>(true, false, true))), any(!vec3<bool>(global0.b.x, true, true)))), Struct_1(u_input.b, -1i, global0.a, ~2147483647i), Struct_2(Struct_1(u_input.b, u_input.b, true == global0.a, countOneBits(1i)), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, u_input.b), min(global0.d, 2147483647i)), abs(-u_input.b), false, u_input.b), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1958f - arg_0.x), _wgslsmith_f_op_f32(min(-1077f, -1851f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -598f)), _wgslsmith_f_op_f32(f32(-1f) * -144f)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-263f, arg_0.x, arg_0.x, 272f)))))), vec3<u32>(u_input.c.x >> (_wgslsmith_sub_u32(~u_input.c.x, 1u) % 32u), ~1u, countOneBits(u_input.a)));
    let var_2 = _wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(-1i) * -min(vec2<i32>(var_1.c.b, var_0.x), max(vec2<i32>(1i, var_0.x), var_0.wx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + 1808f);
}

fn func_2() -> i32 {
    let var_0 = Struct_3(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 20497u)), u_input.c.x)), select(true, false, any(!global0.b)) && all(global0.b), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, global0.d), abs(vec3<i32>(12598i, u_input.b, u_input.b))), -67637i, (_wgslsmith_div_f32(554f, -1761f) == _wgslsmith_f_op_f32(func_3(vec3<f32>(1334f, -1000f, 1492f)))) | global0.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 51754i), vec3<i32>(-1i, u_input.b, global0.d)), max(-3473i, ~global0.d))), Struct_2(Struct_1(-global0.d << (firstLeadingBit(u_input.c.x) % 32u), 1i, global0.b.x, u_input.b), Struct_1(5433i, global0.d, true, u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-447f, -1043f, -1176f) - vec3<f32>(1417f, 956f, -1288f)))), vec2<bool>(!global0.b.x, global0.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(-300f, _wgslsmith_f_op_f32(floor(267f)), _wgslsmith_f_op_f32(step(-1017f, 3405f)), 698f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(234f, 458f, 568f, 3924f) - vec4<f32>(525f, 161f, 1422f, 1741f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1001f, -1251f, 1324f, 1251f))))), vec3<u32>(~_wgslsmith_add_u32(min(u_input.c.x, u_input.c.x), max(u_input.c.x, u_input.c.x)), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(select(13528u, u_input.a, true), 4294967295u, ~u_input.c.x), _wgslsmith_add_vec3_u32(~vec3<u32>(6949u, 4294967295u, 1u), vec3<u32>(0u, 25123u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.c.x) % vec3<u32>(32u))))));
    let var_1 = var_0.d;
    let var_2 = true;
    var var_3 = Struct_2(var_0.c, Struct_1(21632i << (_wgslsmith_sub_u32(~var_0.a.x, 58076u >> (1u % 32u)) % 32u), -1i, all(vec3<bool>(0u >= var_0.e.x, true, 781f > var_1.c.x)), firstTrailingBit(var_0.d.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-309f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x - 815f) + _wgslsmith_f_op_f32(func_3(var_0.d.e.yxy))), 384f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e.ywz + var_1.e.zzy) * vec3<f32>(var_0.d.e.x, -1000f, var_0.d.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.x, 217f, 744f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, 554f, var_1.e.x))))), !var_0.d.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1.e, vec4<f32>(var_1.c.x, var_1.e.x, var_1.e.x, var_1.e.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.e + var_1.e))))) + _wgslsmith_f_op_vec4_f32(var_0.d.e - var_1.e)));
    let var_4 = -15018i;
    return -20475i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>) -> vec4<u32> {
    global0 = Struct_4(any(vec3<bool>(any(!vec2<bool>(arg_2.x, arg_2.x)), any(!vec4<bool>(global0.c, true, arg_2.x, true)), !(arg_2.x | false))), !arg_2.wz, (u_input.c.x << ((firstLeadingBit(u_input.c.x) & u_input.c.x) % 32u)) < 4294967295u, _wgslsmith_add_i32(u_input.b, -arg_0.x));
    var var_0 = Struct_2(Struct_1(arg_1, -countOneBits(global0.d), !arg_2.x & all(vec2<bool>(true, arg_2.x)), -4237i), Struct_1(70587i << (u_input.c.x % 32u), firstTrailingBit(i32(-1i) * -global0.d), !(false || arg_2.x) | ((global0.a || global0.b.x) & global0.a), ~(-53964i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, 2563f, -589f) * vec3<f32>(-2291f, 144f, -1000f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-676f, -2007f, -268f), vec3<f32>(-761f, -190f, -581f)))))), vec2<bool>(arg_2.x, arg_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(max(-1000f, 296f)))), _wgslsmith_f_op_f32(round(-2274f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, -939f, 1141f, -236f))));
    let var_1 = Struct_2(Struct_1(arg_0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -29596i), arg_0.xx), (_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(4294967295u, 60068u)) | u_input.a) < _wgslsmith_div_u32(~u_input.a, firstLeadingBit(91044u)), -47566i), Struct_1(0i, ~(-11548i), true, ~abs(arg_1) ^ -1522i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2024f, 314f, var_0.c.x)), vec2<bool>(arg_2.x, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.e)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, var_0.e.x, 107f, var_0.e.x), vec4<f32>(-845f, -1019f, 913f, var_0.e.x), var_0.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(331f, -1508f, 1406f, var_0.e.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e.x, 1379f, var_0.c.x, var_0.c.x)))))));
    let var_2 = vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1031f, -312f, _wgslsmith_f_op_f32(-var_1.e.x)) - var_0.e.wzx))));
    var var_3 = -(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-arg_0.xwy, vec3<i32>(var_1.a.b, 2147483647i, global0.d)), firstTrailingBit(~vec3<i32>(2147483647i, -39583i, 2147483647i))) | (~select(vec3<i32>(var_0.b.d, -21185i, 0i), vec3<i32>(u_input.b, u_input.b, 1i), vec3<bool>(global0.c, arg_2.x, false)) & (max(arg_0.zww, arg_0.zwy) << ((vec3<u32>(1u, u_input.c.x, u_input.a) << (vec3<u32>(4294967295u, 404u, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    return ~vec4<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, select(u_input.a, u_input.c.x, var_1.d.x)), ~u_input.c.x), 1u, u_input.c.x);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = func_4(~vec4<i32>(_wgslsmith_sub_i32(22829i, ~u_input.b), arg_0, -38688i, countOneBits(arg_0)), _wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, -8546i, global0.d, arg_0) >> (vec4<u32>(arg_1.x, 4294967295u, 1u, 0u) % vec4<u32>(32u))) | vec4<i32>(~0i, global0.d, 0i, global0.d), vec4<i32>(func_2(), arg_0, global0.d, ~(~global0.d))), !vec4<bool>(true, !any(global0.b), !select(global0.b.x, true, false), global0.a));
    var_0 = ~select(vec4<u32>(_wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, arg_1.x, var_0.x, u_input.a))), ~firstTrailingBit(17635u), 21866u, ~var_0.x), ~(~vec4<u32>(var_0.x, arg_1.x, 60589u, 8531u) >> ((vec4<u32>(arg_1.x, 45524u, 92714u, 37413u) >> (vec4<u32>(93201u, 62020u, var_0.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(select(select(vec4<bool>(global0.b.x, true, global0.b.x, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, global0.b.x)), select(vec4<bool>(false, false, global0.a, false), vec4<bool>(global0.a, true, global0.b.x, global0.b.x), true), select(true, global0.c, true)), vec4<bool>(!global0.a, false, all(vec3<bool>(global0.c, global0.b.x, global0.c)), true), vec4<bool>(true, all(vec2<bool>(global0.b.x, true)), all(global0.b), u_input.a != var_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(224f, 237f, -640f, 973f))))))), vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(376f)), 277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f))))));
    let var_2 = ~_wgslsmith_mult_vec3_i32(max(vec3<i32>(21791i, -2147483647i, arg_0), -vec3<i32>(global0.d, global0.d, global0.d)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 4245i, global0.d), vec3<i32>(u_input.b, -2147483647i, arg_0), vec3<i32>(u_input.b, 36879i, u_input.b))) & countOneBits(~(~(-vec3<i32>(arg_0, arg_0, u_input.b))));
    var var_3 = Struct_2(Struct_1(global0.d, arg_0, true, _wgslsmith_div_i32(firstTrailingBit(1i), -1i >> (var_0.x % 32u))), Struct_1(~(-32084i), arg_0, all(vec4<bool>(true, global0.a, all(vec2<bool>(global0.b.x, true)), global0.c)), _wgslsmith_div_i32(func_2(), arg_0)), var_1.xyx, global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1, _wgslsmith_f_op_vec4_f32(floor(var_1)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, 941f), _wgslsmith_f_op_vec4_f32(var_1 + var_1), !vec4<bool>(global0.a, global0.c, global0.c, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))));
    return vec3<bool>(all(!vec2<bool>(var_3.b.c, true)), var_3.b.c, 0u >= arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(any(!select(vec3<bool>(true, true, global0.a), select(vec3<bool>(false, global0.b.x, true), vec3<bool>(false, global0.c, true), vec3<bool>(false, global0.c, false)), func_1(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.c.x)))), global0.b, !any(vec4<bool>(global0.b.x, global0.b.x, any(vec4<bool>(false, false, global0.b.x, global0.a)), any(vec2<bool>(global0.c, global0.b.x)))), u_input.b);
    let var_0 = Struct_1(_wgslsmith_div_i32(393i, u_input.b), u_input.b, true && (global0.a & (global0.b.x && false)), _wgslsmith_sub_i32(_wgslsmith_div_i32(~_wgslsmith_add_i32(global0.d, global0.d), -_wgslsmith_sub_i32(0i, global0.d)), -1i));
    var var_1 = vec2<bool>(global0.b.x, global0.c);
    var_1 = !(!(!(!(!global0.b))));
    let var_2 = (select(-firstTrailingBit(vec2<i32>(-52417i, 1i)), vec2<i32>(min(1i, -47738i), _wgslsmith_clamp_i32(1i, 0i, var_0.d)), var_0.c) >> (vec2<u32>(u_input.a, 74417u) % vec2<u32>(32u))) ^ -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, 1i), -vec2<i32>(-2147483647i, 0i)), -(vec2<i32>(1i, var_0.d) | vec2<i32>(1i, 13871i)), vec2<i32>(-var_0.d, reverseBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(20640i, -1i, -14282i, u_input.b)), ~vec4<i32>(15384i, u_input.b, u_input.b, 2147483647i)), -vec4<i32>(72037i & var_0.d, -27375i, var_2.x, ~(-60178i))), _wgslsmith_div_i32(countOneBits(~min(1i, var_0.b)), 2147483647i));
}

