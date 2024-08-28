struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    let var_0 = !(true != arg_1.d.x) && arg_1.d.x;
    let var_1 = arg_1.c.c.x;
    var var_2 = 1i;
    var_2 = abs(-1i);
    return arg_1.a;
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_5(~(~vec4<u32>(1u, 1u, 1u, 1u)), Struct_4(u_input.b, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(select(u_input.a, vec3<i32>(-1i, u_input.a.x, u_input.c.x), vec3<bool>(true, false, true)), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x) ^ vec3<i32>(u_input.a.x, u_input.b.x, u_input.c.x), -u_input.a, vec3<i32>(-1i, -2147483647i, u_input.b.x))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -462f, arg_0)), true)))));
    return _wgslsmith_div_f32(arg_0, 1167f);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    return Struct_2(Struct_1(vec3<f32>(-693f, func_1(Struct_4(vec3<i32>(u_input.c.x, u_input.c.x, -45015i), u_input.b, Struct_1(vec3<f32>(-458f, 165f, -1232f))), Struct_3(Struct_1(vec3<f32>(3515f, 120f, -146f)), 1u, Struct_2(Struct_1(vec3<f32>(-465f, -750f, -111f)), vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, u_input.a.x), vec3<i32>(7757i, -82564i, u_input.c.x), arg_1.x), vec3<bool>(true, arg_0, false), -1354f), Struct_4(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.a.x), Struct_1(vec3<f32>(-676f, 400f, -1515f)))).a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(-1059f)), -1000f)))), vec4<i32>(0i, -12858i, _wgslsmith_sub_i32(-(u_input.c.x << (0u % 32u)), countOneBits(~(-39886i))), 11342i), max(~reverseBits(~vec3<i32>(-1056i, 2147483647i, u_input.a.x)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(5849i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.c.x))), _wgslsmith_mult_u32(1u, min(_wgslsmith_clamp_u32(abs(arg_1.x), ~arg_1.x, _wgslsmith_mod_u32(44260u, 1u)), countOneBits(_wgslsmith_add_u32(34324u, arg_1.x)))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.c.x, -60855i, -43507i), -vec3<i32>(~0i, _wgslsmith_add_i32(u_input.b.x, 7410i), u_input.a.x)), arg_0.c.b.wxw, arg_0.a);
    var_0 = Struct_4(u_input.a ^ vec3<i32>(arg_0.c.c.x, -13345i, -(~79566i)), vec3<i32>((select(arg_0.c.c.x, 0i, false) << (~91500u % 32u)) << (_wgslsmith_div_u32(min(arg_0.c.d, arg_0.b), ~arg_0.b) % 32u), var_0.b.x, var_0.b.x), arg_0.c.a);
    var_0 = Struct_4(_wgslsmith_add_vec3_i32(-abs(abs(var_0.a)), (_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.x, 0i, arg_0.c.b.x), u_input.a) & -u_input.b) | _wgslsmith_div_vec3_i32(select(u_input.b, var_0.b, arg_0.d.x), -vec3<i32>(u_input.c.x, 11299i, u_input.b.x))), _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(1i, u_input.c.x, -2926i) << (vec3<u32>(arg_0.b, 9039u, 1u) % vec3<u32>(32u))), -max(abs(var_0.b), var_0.b << (vec3<u32>(10194u, 12368u, arg_0.c.d) % vec3<u32>(32u)))), var_0.c);
    var var_1 = !(_wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.a.a.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x + 972f) - _wgslsmith_f_op_f32(var_0.c.a.x + arg_0.c.a.a.x))));
    let var_2 = Struct_5(_wgslsmith_sub_vec4_u32(~max(min(vec4<u32>(74790u, 0u, 1u, 25796u), vec4<u32>(5089u, arg_0.c.d, 98370u, 4294967295u)), ~vec4<u32>(arg_0.b, 0u, arg_0.b, 0u)), _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 21769u, 27792u, arg_0.b)), ~vec4<u32>(111244u, 1u, arg_0.c.d, 1u) & ~vec4<u32>(arg_0.b, arg_0.b, 8088u, 1u))), Struct_4(vec3<i32>(var_0.a.x, i32(-1i) * -28725i, select(1i, firstTrailingBit(-44812i), true)), _wgslsmith_add_vec3_i32(u_input.a, min(var_0.a, -vec3<i32>(0i, -32892i, 30105i))), func_1(Struct_4(vec3<i32>(1i, arg_0.c.c.x, u_input.b.x) | vec3<i32>(arg_0.c.b.x, 39286i, 739i), -u_input.a, arg_0.a), arg_0, Struct_4(_wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(3293i, u_input.c.x, -1902i)), vec3<i32>(0i, var_0.b.x, var_0.b.x) ^ vec3<i32>(arg_0.c.b.x, 61407i, var_0.a.x), var_0.c))));
    return Struct_2(Struct_1(vec3<f32>(1373f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(var_2.b.c.a.x - 132f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.a.x))))), arg_0.c.b, max(vec3<i32>(arg_0.c.b.x, arg_0.c.c.x & u_input.c.x, -var_0.a.x) << (var_2.a.xwz % vec3<u32>(32u)), (-vec3<i32>(2147483647i, -1i, var_2.b.a.x) ^ ~vec3<i32>(var_2.b.b.x, var_0.b.x, u_input.a.x)) | u_input.b), 20020u << (_wgslsmith_dot_vec4_u32(max(_wgslsmith_div_vec4_u32(var_2.a, vec4<u32>(0u, 4294967295u, arg_0.b, var_2.a.x)), vec4<u32>(arg_0.c.d, 0u, var_2.a.x, 28459u) ^ var_2.a), ~abs(var_2.a)) % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_3(func_4(Struct_3(func_1(Struct_4(vec3<i32>(u_input.a.x, -5189i, u_input.c.x), vec3<i32>(2085i, u_input.c.x, 2501i), arg_0.a), Struct_3(Struct_1(vec3<f32>(269f, -1000f, arg_0.a.a.x)), arg_0.d, Struct_2(arg_0.a, vec4<i32>(u_input.b.x, 7617i, 0i, -1i), u_input.a, arg_0.d), vec3<bool>(arg_2.x, true, true), arg_0.a.a.x), Struct_4(arg_0.c, arg_0.c, arg_0.a)), 0u, func_2(true, arg_1 << (arg_1 % vec4<u32>(32u))), vec3<bool>(true, all(arg_2), arg_2.x || true), arg_0.a.a.x)).a, ~firstTrailingBit(max(70222u, ~4294967295u)), func_4(Struct_3(func_1(Struct_4(vec3<i32>(arg_0.b.x, arg_0.c.x, -41379i), arg_0.c, Struct_1(vec3<f32>(1973f, 169f, arg_0.a.a.x))), Struct_3(Struct_1(vec3<f32>(-1475f, 1000f, arg_0.a.a.x)), arg_1.x, arg_0, arg_2.zzx, 248f), Struct_4(vec3<i32>(-24713i, 0i, u_input.b.x), arg_0.c, Struct_1(arg_0.a.a))), 1u, arg_0, vec3<bool>(!arg_2.x, true, arg_2.x), arg_0.a.a.x)), arg_2.zyy, _wgslsmith_f_op_f32(-func_1(Struct_4(_wgslsmith_div_vec3_i32(arg_0.b.zwx, u_input.a), vec3<i32>(19286i, u_input.b.x, -30216i) << (arg_1.wzw % vec3<u32>(32u)), func_1(Struct_4(vec3<i32>(u_input.c.x, -2147483647i, u_input.b.x), arg_0.b.wwz, Struct_1(arg_0.a.a)), Struct_3(Struct_1(arg_0.a.a), 4294967295u, arg_0, vec3<bool>(arg_2.x, arg_2.x, false), -1000f), Struct_4(u_input.b, vec3<i32>(-10799i, arg_0.b.x, -2147483647i), arg_0.a))), Struct_3(Struct_1(vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, -477f)), arg_1.x, arg_0, arg_2.xwy, func_4(Struct_3(arg_0.a, arg_0.d, arg_0, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_0.a.a.x)).a.a.x), Struct_4(vec3<i32>(u_input.a.x, -466i, 1i), vec3<i32>(-30857i, u_input.c.x, arg_0.b.x), arg_0.a)).a.x));
    var var_1 = reverseBits(arg_1);
    var var_2 = select(select(arg_2.ywy, select(!vec3<bool>(true, arg_2.x, true), !(!var_0.d), select(!vec3<bool>(arg_2.x, var_0.d.x, arg_2.x), var_0.d, select(false, var_0.d.x, true))), select(!select(arg_2.wxz, vec3<bool>(var_0.d.x, true, arg_2.x), false), vec3<bool>(var_0.d.x, var_0.c.a.a.x < arg_0.a.a.x, var_0.d.x), var_0.d)), select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -372f) <= _wgslsmith_f_op_f32(-arg_0.a.a.x), true, true), !vec3<bool>(arg_2.x, var_0.d.x, true), !select(arg_2.wzy, vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(true, true, true))), false);
    var_2 = select(!var_0.d, select(!vec3<bool>(var_0.d.x || false, !var_2.x, false || arg_2.x), !select(vec3<bool>(var_2.x, var_2.x, arg_2.x), !arg_2.wxz, select(arg_2.yxw, vec3<bool>(var_2.x, true, false), true)), any(select(select(vec4<bool>(true, var_0.d.x, true, true), arg_2, arg_2), select(arg_2, arg_2, arg_2.x), false))), 1051f != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_0.a.a.x)), _wgslsmith_f_op_f32(abs(-1000f)))), arg_0.a.a.x)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.a.a, vec3<f32>(744f, arg_0.a.a.x, _wgslsmith_f_op_f32(-arg_0.a.a.x)), arg_2.yyx))), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(1u, 31904u)), 1u), func_2(any(arg_2.zww), ~vec4<u32>(~2625u, arg_1.x, func_4(Struct_3(Struct_1(arg_0.a.a), var_1.x, var_0.c, vec3<bool>(var_2.x, var_2.x, arg_2.x), arg_0.a.a.x)).d, _wgslsmith_dot_vec2_u32(arg_1.xx, var_1.xw))), var_0.d, _wgslsmith_f_op_f32(exp2(var_0.e)));
    return _wgslsmith_f_op_f32(-2472f * _wgslsmith_div_f32(-1440f, 453f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1039f, _wgslsmith_f_op_f32(-1968f + _wgslsmith_f_op_f32(f32(-1f) * -141f)), -277f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_3(func_1(Struct_4(vec3<i32>(66659i, u_input.b.x, u_input.a.x), u_input.b, Struct_1(var_0.a)), Struct_3(Struct_1(vec3<f32>(var_0.a.x, -1979f, 1724f)), 4294967295u, Struct_2(Struct_1(vec3<f32>(-805f, 1891f, -1000f)), vec4<i32>(-39865i, 0i, u_input.a.x, u_input.c.x), vec3<i32>(u_input.b.x, u_input.b.x, -29000i), 49587u), vec3<bool>(true, false, true), var_0.a.x), Struct_4(u_input.a, vec3<i32>(u_input.c.x, 2147483647i, -2147483647i), Struct_1(var_0.a))), 0u >> (1u % 32u), func_2(false, vec4<u32>(1u, 35067u, 0u, 1u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(-443f, var_0.a.x, false)))), ~(~vec4<u32>(70097u, 1u, 1u, 0u)), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)))));
    var_0 = Struct_1(var_0.a);
    let var_2 = !(!any(vec2<bool>(false, true)) || false);
    var var_3 = abs(vec2<u32>(func_2(var_2, vec4<u32>(abs(0u), ~1u, ~97739u, _wgslsmith_sub_u32(4294967295u, 1u))).d, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(51503u), func_4(Struct_3(Struct_1(vec3<f32>(var_1, 709f, -629f)), 0u, Struct_2(Struct_1(var_0.a), vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, u_input.c.x), u_input.b, 4294967295u), vec3<bool>(false, var_2, var_2), -905f)).d, ~128833u), _wgslsmith_mod_u32(100860u >> (1u % 32u), ~1u))));
    var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(select(func_4(Struct_3(Struct_1(var_0.a), var_3.x, Struct_2(Struct_1(var_0.a), vec4<i32>(-2147483647i, u_input.a.x, -13365i, u_input.a.x), u_input.a, var_3.x), vec3<bool>(var_2, var_2, false), var_1)).d, 0u, false), var_3.x), ~(~vec2<u32>(51865u, var_3.x)));
    var_0 = Struct_1(var_0.a);
    let var_4 = _wgslsmith_clamp_i32(~u_input.a.x, reverseBits(-1i), ~(-2147483647i));
    var var_5 = -8989i ^ (reverseBits(var_4) | countOneBits(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(54779i, var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -119f, 1084f)), vec3<f32>(_wgslsmith_f_op_f32(func_3(391f)), _wgslsmith_f_op_f32(abs(511f)), _wgslsmith_div_f32(131f, var_1)))), ~select(var_3.x, ~0u, true), _wgslsmith_sub_vec3_i32(~max(reverseBits(u_input.a), u_input.b), -vec3<i32>(-24272i, reverseBits(var_4), 47261i)), ~_wgslsmith_clamp_i32(~u_input.c.x | -26457i, -1i, -54517i));
}

