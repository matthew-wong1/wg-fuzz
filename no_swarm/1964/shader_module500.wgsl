struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, -8961i, vec4<f32>(2086f, -594f, -1135f, 1005f), vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)), vec2<bool>(false, false));

var<private> global1: vec2<u32>;

var<private> global2: u32 = 1u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_2.a));
    let var_1 = true;
    let var_2 = countOneBits(-1792i | select(u_input.a.x, countOneBits(1i), var_1));
    let var_3 = ~(~(-(~vec3<i32>(-15209i, global0.d.x, global0.d.x)) >> ((vec3<u32>(u_input.c.x, u_input.d, global1.x) | vec3<u32>(29484u, 45242u, 13453u)) % vec3<u32>(32u))));
    global2 = 4294967295u >> (1u % 32u);
    return vec2<i32>(-1i, -14536i);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec3<i32> {
    let var_0 = 25058u;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.x)));
    global1 = vec2<u32>(firstTrailingBit((global1.x << (_wgslsmith_mult_u32(82136u, 1u) % 32u)) << ((~66023u >> (_wgslsmith_mod_u32(5353u, global1.x) % 32u)) % 32u)), 1u);
    let var_2 = -(~func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_1, 1000f, var_1), vec4<f32>(-578f, 147f, var_1, 107f))), vec4<bool>(global0.e.x, global0.e.x, false, true), Struct_1(998f, arg_1.x, global0.c, global0.d, global0.e)) & global0.d.yy);
    let var_3 = !vec4<bool>(~(~var_0) == 44506u, true | global0.e.x, true, true);
    return vec3<i32>(global0.d.x, 1i | (-firstLeadingBit(var_2.x) >> (firstTrailingBit(~global1.x) % 32u)), 1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<f32> {
    var var_0 = 29351u;
    var var_1 = !global0.e.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)), firstTrailingBit(_wgslsmith_add_i32(-28862i, 32007i)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(928f - arg_1.a), _wgslsmith_f_op_f32(sign(-697f))), _wgslsmith_f_op_f32(2113f + 654f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(470f - -2134f), _wgslsmith_f_op_f32(step(-393f, 420f))))))), firstLeadingBit(-(arg_1.d >> (~u_input.b % vec4<u32>(32u)))), global0.e);
    global2 = 4294967295u;
    global2 = firstTrailingBit(1u ^ u_input.b.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, var_2.a, var_2.c.x, 455f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1830f, var_2.a, var_2.a, global0.c.x) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_2.c.x, arg_1.c.x, -1000f), var_2.c)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(343f, _wgslsmith_f_op_f32(f32(-1f) * -393f), 1f, _wgslsmith_f_op_f32(var_2.a + 358f)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(198f));
    global1 = ~vec2<u32>(select(1u, 25211u, arg_0.c.x > arg_0.a), abs(u_input.c.x)) | reverseBits(firstTrailingBit(vec2<u32>(~4294967295u, ~3957u)));
    let var_1 = vec4<u32>(~(~_wgslsmith_add_u32(0u, global1.x)), global1.x, 4294967295u, u_input.d) | vec4<u32>(47654u, ~(~(~4294967295u)), select(abs(19548u), 0u, !global0.e.x), u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(vec3<i32>(18237i, 24878i, -19217i), arg_0, arg_0.b, u_input.b.x)).x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-738f))))), false)), -393i, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))), 1883f, _wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, global0.c.x)))))), select(firstTrailingBit(vec4<i32>(arg_0.b, global0.d.x, arg_0.d.x, global0.b)), vec4<i32>(2147483647i, global0.d.x, -arg_0.d.x, -2147483647i), any(vec2<bool>(false, arg_0.e.x))) << (_wgslsmith_clamp_vec4_u32(~(~u_input.b), vec4<u32>(8931u, var_1.x, abs(global1.x), u_input.d), var_1) % vec4<u32>(32u)), arg_0.e);
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~_wgslsmith_add_i32(~(u_input.a.x >> (0u % 32u)), ~(-3352i)), vec4<f32>(var_2.c.x, 1116f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1301f)), global0.a)))), _wgslsmith_f_op_f32(1000f - arg_0.c.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, 1i, var_2.b, 51324i), ~(vec4<i32>(u_input.a.x, var_2.d.x, -17436i, arg_0.b) & arg_0.d)), countOneBits(-arg_0.d | ~vec4<i32>(u_input.a.x, -1i, global0.b, -2147483647i)), ~(~global0.d) << ((select(u_input.b, u_input.b, true) & abs(vec4<u32>(u_input.b.x, var_1.x, u_input.c.x, u_input.d))) % vec4<u32>(32u))), vec2<bool>(false, all(vec4<bool>(true, true, true, !var_2.e.x))));
    return Struct_1(_wgslsmith_f_op_f32(floor(global0.a)), ~(abs(_wgslsmith_add_i32(84469i, u_input.a.x)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, global0.d.x, global0.b) << (vec3<u32>(0u, 34107u, var_1.x) % vec3<u32>(32u)), global0.d.zzz)), _wgslsmith_f_op_vec4_f32(func_4(global0.d.ywy, Struct_1(global0.c.x, arg_0.d.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-384f, 1438f, 414f, 613f))), ~vec4<i32>(arg_0.d.x, -2147483647i, -2147483647i, u_input.a.x), arg_0.e), 0i, _wgslsmith_mod_u32(0u, global1.x))), vec4<i32>(_wgslsmith_div_i32(-1i, 2147483647i), -var_2.b, -1i, 16511i ^ abs(var_2.d.x)), select(vec2<bool>(!any(vec4<bool>(true, var_2.e.x, false, var_2.e.x)), !all(vec4<bool>(true, false, var_2.e.x, var_2.e.x))), !var_2.e, !vec2<bool>(true, 0i == arg_0.b)));
}

fn func_1() -> i32 {
    global1 = u_input.b.xw;
    let var_0 = func_5(Struct_1(global0.c.x, global0.d.x, _wgslsmith_f_op_vec4_f32(func_4(func_2(true, abs(vec2<i32>(-1i, 5047i))), Struct_1(_wgslsmith_f_op_f32(max(global0.a, 1037f)), global0.d.x & u_input.a.x, _wgslsmith_f_op_vec4_f32(abs(global0.c)), ~vec4<i32>(u_input.a.x, -9450i, u_input.a.x, -1i), global0.e), select(-1i, 0i, false) | ~(-43646i), ~_wgslsmith_clamp_u32(89101u, global1.x, u_input.d))), min(abs(global0.d), ~global0.d), global0.e));
    let var_1 = -470f;
    var var_2 = !global0.e;
    var var_3 = var_0;
    return 2147483647i;
}

fn func_6(arg_0: u32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !(!(!(!select(vec3<bool>(false, true, arg_3.e.x), vec3<bool>(false, true, global0.e.x), vec3<bool>(true, true, arg_3.e.x)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f))))), firstLeadingBit(firstLeadingBit(-(~14727i))), vec4<f32>(-373f, _wgslsmith_f_op_f32(-430f - _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_f32(step(944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.c.x)), func_5(Struct_1(global0.c.x, -1i, arg_3.c, vec4<i32>(36119i, 11197i, -1i, u_input.a.x), arg_3.e)).c.x))), -856f), -(~arg_3.d), vec2<bool>(-(global0.b << (1u % 32u)) >= (countOneBits(u_input.a.x) >> (_wgslsmith_mult_u32(arg_0, u_input.d) % 32u)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_3.a * 282f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 156f)));
    global2 = arg_0;
    global1 = u_input.b.zx;
    return Struct_1(arg_3.a, ~(~arg_3.d.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-654f, _wgslsmith_f_op_f32(abs(1000f))) - -580f), _wgslsmith_f_op_f32(-global0.a), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2182f, arg_3.c.x)))), firstTrailingBit(func_5(Struct_1(_wgslsmith_f_op_f32(-global0.c.x), global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, -1727f, global0.c.x, 769f)), global0.d & global0.d, vec2<bool>(false, false))).d), var_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, ~u_input.b), ~(~u_input.b)), ~(~u_input.b | u_input.b)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a)))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.x), -2305f)), Struct_1(global0.a, -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -2512f), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global0.c.x))), vec4<i32>(~(global0.b << (u_input.d % 32u)), abs(-1i), ~max(u_input.a.x, 7054i), func_1()), select(func_5(func_5(Struct_1(global0.c.x, global0.d.x, vec4<f32>(global0.c.x, global0.c.x, -403f, global0.c.x), vec4<i32>(global0.b, 0i, -2147483647i, u_input.a.x), vec2<bool>(false, false)))).e, global0.e, true)));
    let var_0 = global0.e.x;
    let var_1 = func_5(func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, global0.a, global0.e.x)) * _wgslsmith_f_op_f32(select(1529f, global0.a, true))), -1i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 2466f, global0.c.x, global0.a) + vec4<f32>(global0.a, -1075f, 1816f, 512f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, global0.c.x) - vec4<f32>(-756f, global0.c.x, global0.a, 714f)))), -(vec4<i32>(u_input.a.x, global0.d.x, global0.d.x, u_input.a.x) << (vec4<u32>(4294967295u, global1.x, u_input.c.x, global1.x) % vec4<u32>(32u))), global0.e)));
    global1 = abs(u_input.c.yx);
    global1 = ~abs(vec2<u32>(~global1.x, global1.x));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(~u_input.c.x, u_input.d, ~global1.x), global1.x, ~global1.x) ^ vec3<u32>(abs(1u), global1.x, ~(~22608u)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * var_2.a) + _wgslsmith_f_op_f32(937f * _wgslsmith_f_op_f32(f32(-1f) * -246f)))));
}

