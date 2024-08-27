struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = u_input.a.x;
    var var_1 = 1916i;
    var var_2 = Struct_1(arg_0.x || (_wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.d.yy ^ u_input.d.zx) >= _wgslsmith_div_i32(-global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), vec2<i32>(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f - -119f)), vec2<u32>(~(~80342u), 109876u), firstTrailingBit(abs(-(~vec4<i32>(global1.x, 2147483647i, 1i, -15235i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1496f)));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(global0.a, ~vec3<u32>(2118u, 0u, 3388u)) <= (~abs(var_2.c.x) << (_wgslsmith_add_u32(u_input.e.x, 1u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f))), global0.a.zy & _wgslsmith_clamp_vec2_u32(vec2<u32>(~11937u, u_input.e.x), ~select(vec2<u32>(var_2.c.x, u_input.c), var_2.c, vec2<bool>(false, true)), select(~u_input.a.xy, vec2<u32>(arg_1.b, var_2.c.x), !arg_0.wz)), _wgslsmith_add_vec4_i32(abs(reverseBits(var_2.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global1.x, var_2.d.x), ~(-18878i), ~global1.x, _wgslsmith_sub_i32(var_2.d.x, -2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(var_2.d.x, global1.x, -13665i), abs(-24675i), var_2.d.x, u_input.b << (12644u % 32u)))), 795f);
    var_1 = u_input.b;
    return u_input.a.yzw;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = all(vec2<bool>(~(~u_input.e.x) <= 13340u, true));
    let var_1 = true;
    var var_2 = arg_1;
    let var_3 = Struct_2(global0.b.a, 14373u);
    global0 = arg_1;
    return vec4<i32>(-51127i, reverseBits(u_input.b), ~(-(~global1.x & u_input.b)), reverseBits(0i) & u_input.b);
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global1 = u_input.d << (_wgslsmith_add_vec3_u32(~(~vec3<u32>(global0.c, 0u, 0u)), ~vec3<u32>(_wgslsmith_mult_u32(arg_0.b, u_input.e.x), global0.c, 5388u << (arg_0.b % 32u))) % vec3<u32>(32u));
    let var_0 = -u_input.d;
    var var_1 = !all(vec2<bool>(1u < ~arg_0.b, true));
    var var_2 = true;
    let var_3 = global0.d.a;
    return _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(~(-vec4<i32>(var_0.x, u_input.d.x, u_input.d.x, global1.x))), func_4(all(vec4<bool>(false, true, true, true)), Struct_3(func_3(vec4<bool>(false, false, false, true), global0.b), Struct_2(-1410f, 2593u), ~25350u, arg_0, global0.b))), vec4<i32>(-1i) * -reverseBits(-vec4<i32>(u_input.b, 1i, u_input.d.x, -1i)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -vec3<i32>(-15436i, 2147483647i, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(-29219i, -1i)), 2147483647i));
    let var_1 = _wgslsmith_mult_vec3_u32(~select(global0.a, vec3<u32>(global0.d.b, abs(arg_1.c.x), ~arg_1.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_3.a, arg_3.a), select(vec3<bool>(arg_1.a, true, false), vec3<bool>(false, false, true), vec3<bool>(arg_1.a, arg_3.a, true)))), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(19346u, arg_1.c.x, arg_1.c.x)), u_input.a.zwy));
    let var_2 = vec2<bool>(!arg_1.a, arg_1.a);
    global0 = Struct_3(vec3<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(arg_2.x, 1u, 4294967295u, 36630u)), ~1u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * arg_1.b)))), 0u), u_input.a.x, global0.b, global0.b);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), (arg_1.c.x >> (abs(u_input.a.x | 49701u) % 32u)) ^ 9870u);
    return arg_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_3 {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_vec2_u32(global0.a.yy, vec2<u32>(select(u_input.a.x, 1u, any(vec2<bool>(arg_1, false))) ^ 1u, ~(~10795u)));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.a, 1000f, 2030f, 1087f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, global0.e.a, -1544f, 175f)))))), Struct_1(select(arg_1, 1u <= _wgslsmith_sub_u32(1u, arg_0.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, -1494f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(245f)))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.c, 4294967295u), arg_0)), -_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, u_input.d.x, 54579i, global1.x), func_2(Struct_2(global0.e.a, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.a)) * global0.b.a)), countOneBits(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.a.x, 40772u), u_input.a.xwy))), Struct_1(!(_wgslsmith_dot_vec2_i32(vec2<i32>(29709i, global1.x), vec2<i32>(u_input.d.x, -1i)) == ~u_input.d.x), 2307f, global0.a.xz, _wgslsmith_add_vec4_i32(-(~vec4<i32>(-16764i, 27110i, 0i, -1i)), vec4<i32>(~(-3357i), ~u_input.d.x, -2147483647i, -5835i)), _wgslsmith_f_op_f32(exp2(global0.e.a))));
    var var_3 = func_5(vec4<f32>(-240f, var_2.b, global0.e.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(586f)))), 1000f))), func_5(vec4<f32>(_wgslsmith_f_op_f32(step(var_2.e, 671f)), 133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(796f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a))), Struct_1(countOneBits(global1.x) < 1i, -1000f, func_3(select(vec4<bool>(var_2.a, true, false, arg_1), vec4<bool>(arg_1, false, true, arg_1), false), Struct_2(var_2.b, global0.c)).yy, _wgslsmith_mod_vec4_i32(var_2.d, var_2.d) << (vec4<u32>(33910u, 54508u, 1u, var_2.c.x) % vec4<u32>(32u)), var_2.e), ~_wgslsmith_mod_vec3_u32(~u_input.a.zxw, ~vec3<u32>(global0.a.x, 56644u, u_input.c)), Struct_1(true, global0.b.a, ~vec2<u32>(var_1.x, arg_0.x), _wgslsmith_mult_vec4_i32(~var_2.d, var_2.d), func_5(vec4<f32>(global0.e.a, var_2.b, var_2.e, global0.e.a), func_5(vec4<f32>(-1191f, 772f, -428f, -1084f), Struct_1(var_2.a, global0.d.a, vec2<u32>(global0.a.x, 96353u), var_2.d, global0.d.a), u_input.a.yxy, Struct_1(false, var_2.e, vec2<u32>(var_1.x, var_2.c.x), var_2.d, -605f)), ~vec3<u32>(arg_0.x, 29876u, u_input.a.x), Struct_1(arg_1, 462f, var_2.c, vec4<i32>(global1.x, 0i, -14343i, var_2.d.x), var_2.e)).e)), ~u_input.a.wwz >> (_wgslsmith_mult_vec3_u32(reverseBits(u_input.a.yyz), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c.x, global0.b.b, global0.c), global0.a)) % vec3<u32>(32u)), func_5(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.d.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-684f, global0.b.a)))), global0.b.a, -132f), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(944f, -1010f, var_2.e, 398f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.a, 631f, global0.b.a, var_2.b), vec4<f32>(2046f, 1699f, global0.e.a, -677f), vec4<bool>(false, false, false, var_2.a)))), Struct_1(false, var_2.b, _wgslsmith_div_vec2_u32(vec2<u32>(59973u, 4294967295u), vec2<u32>(var_1.x, 62945u)), var_2.d & vec4<i32>(-2147483647i, var_2.d.x, -25090i, -6975i), 700f), vec3<u32>(arg_0.x, arg_0.x, select(var_1.x, 14489u, arg_1)), Struct_1(all(vec2<bool>(false, var_2.a)), _wgslsmith_f_op_f32(sign(1167f)), arg_0, vec4<i32>(var_2.d.x, global1.x, u_input.b, -2147483647i), _wgslsmith_div_f32(-947f, var_2.b))), ~(~_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(var_1.x, 0u, 19573u))), func_5(vec4<f32>(-1886f, _wgslsmith_f_op_f32(-var_2.b), global0.e.a, _wgslsmith_f_op_f32(-var_2.b)), Struct_1(var_2.a, _wgslsmith_div_f32(global0.b.a, 411f), vec2<u32>(var_1.x, u_input.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, u_input.b, 46905i), var_2.d), global0.d.a), countOneBits(vec3<u32>(global0.e.b, 1u, var_1.x)), Struct_1(var_2.a, _wgslsmith_f_op_f32(trunc(-867f)), vec2<u32>(0u, arg_0.x), vec4<i32>(-1i, global1.x, -6471i, global1.x) >> (vec4<u32>(0u, arg_0.x, 17209u, 92651u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_2.e)))));
    global1 = -((~vec3<i32>(global1.x, -11115i, var_3.d.x) | min(vec3<i32>(-30870i, 16076i, u_input.b), func_2(Struct_2(var_3.e, 4294967295u)).yzz)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x << (u_input.a.x % 32u), var_1.x ^ 1250u, _wgslsmith_sub_u32(var_2.c.x, u_input.e.x)), u_input.a.zyw) % vec3<u32>(32u)));
    return Struct_3(abs(u_input.a.yzy), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - _wgslsmith_f_op_f32(select(global0.d.a, -1000f, true)))), ~(~44706u)), max(min(firstLeadingBit(26713u), ~1u), _wgslsmith_sub_u32(0u, global0.b.b) | reverseBits(u_input.e.x)) | 18292u, global0.e, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~(~(select(u_input.e, vec2<u32>(4294967295u, u_input.e.x), vec2<bool>(true, true)) >> (u_input.e % vec2<u32>(32u)))), false);
    var var_0 = global0.b.a;
    let var_1 = vec2<bool>(~_wgslsmith_mult_i32(global1.x ^ global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -78203i, -1i), vec4<i32>(u_input.b, u_input.d.x, -2147483647i, 6514i))) <= firstLeadingBit(abs(u_input.d.x) | -12740i), firstLeadingBit(global1.x) <= 1i);
    var var_2 = func_1(~vec2<u32>(1u, 1u) | _wgslsmith_add_vec2_u32(select(~vec2<u32>(4294967295u, global0.e.b), global0.a.zy, false), u_input.a.xw), var_1.x);
    var var_3 = func_1(global0.a.zz, !((func_5(vec4<f32>(var_2.b.a, var_2.d.a, -660f, -289f), Struct_1(var_1.x, var_2.b.a, vec2<u32>(u_input.c, 24815u), vec4<i32>(global1.x, u_input.b, u_input.d.x, global1.x), var_2.e.a), vec3<u32>(32321u, 1u, 48012u), Struct_1(false, global0.b.a, global0.a.xz, vec4<i32>(2147483647i, 2147483647i, global1.x, -2147483647i), -370f)).c.x > reverseBits(u_input.c)) || true));
    let var_4 = Struct_1(true, _wgslsmith_f_op_f32(638f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.a), global0.d.a))), countOneBits(vec2<u32>(~var_2.d.b, ~_wgslsmith_mod_u32(4294967295u, u_input.c))), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, _wgslsmith_div_i32(u_input.d.x, -2147483647i), 0i, _wgslsmith_mod_i32(-1i, global1.x | 1i)), _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-34753i, 28530i, -2147483647i, 46195i), vec4<i32>(-7806i, u_input.d.x, 29798i, global1.x)), select(min(vec4<i32>(global1.x, u_input.b, global1.x, u_input.d.x), vec4<i32>(41549i, u_input.b, 27664i, -22283i)), -vec4<i32>(u_input.b, u_input.b, 1i, 40355i), !vec4<bool>(true, false, var_1.x, true)))), global0.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(vec4<bool>(false, var_3.d.b == 0u, var_3.a.x <= 4294967295u, true), Struct_2(961f, func_3(vec4<bool>(false, true, var_4.a, var_4.a), global0.e).x)).x, vec3<i32>(~var_4.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), ~(-2147483647i), global1.x, func_2(global0.b).x), -(var_4.d << (u_input.a % vec4<u32>(32u)))), _wgslsmith_mod_i32(u_input.b, global1.x)), reverseBits(firstTrailingBit(vec2<i32>(u_input.d.x, abs(global1.x)))), ~vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), global1.xz), -20330i, true), 2147483647i), 1u);
}

