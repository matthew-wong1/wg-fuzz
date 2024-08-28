struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(arg_1.b.x, 0i, _wgslsmith_mod_i32(arg_2.e.b.x, 43273i) | 2147483647i) ^ (i32(-1i) * -56849i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-arg_2.d.d.b.x, 2147483647i, -33795i), u_input.d >> ((~arg_0.x & ~35831u) % 32u)));
    let var_1 = abs(-vec4<i32>(var_0.x << (arg_0.x % 32u), _wgslsmith_dot_vec3_i32(arg_1.a.a.b, vec3<i32>(var_0.x, -1i, u_input.d)), ~24708i, arg_1.a.d.b.x)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(var_0.x), u_input.d & 1i, arg_2.b.x), arg_1.a.d.b), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.d, -1i)), vec2<i32>(arg_2.a.x, arg_1.b.x)), -arg_1.a.d.b.x | _wgslsmith_dot_vec3_i32(arg_2.c.b << (vec3<u32>(4294967295u, u_input.b.x, u_input.c) % vec3<u32>(32u)), vec3<i32>(-1i, 1i, var_0.x)), var_0.x);
    let var_2 = _wgslsmith_mod_i32(13636i, reverseBits(44671i << (1u % 32u))) & arg_1.a.d.b.x;
    let var_3 = arg_2.d.d.a;
    var_0 = _wgslsmith_div_vec2_i32(max((select(vec2<i32>(0i, u_input.d), var_1.yy, vec2<bool>(arg_2.e.c, true)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(17566u, 0u), arg_0.xy) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, var_0.x), select(var_1.wy, vec2<i32>(0i, arg_2.c.b.x), arg_1.a.a.a.zw), arg_2.e.b.xz ^ arg_1.a.d.b.yx), select(countOneBits(arg_2.b), ~(-var_1.xz), select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_2.e.a.x))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-4325i, _wgslsmith_mult_i32(6102i, arg_2.a.x)), ~min(var_1.xy, vec2<i32>(var_0.x, 1i))), vec2<i32>(-24574i, -2147483647i)));
    return any(select(vec4<bool>(true, true, true, arg_1.a.c), select(arg_1.a.a.a, !var_3, var_3), true));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), func_3(vec4<u32>(u_input.b.x, 0u, 16717u, u_input.b.x), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(606i, 18929i, 59550i), true), -521f, false, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(u_input.d, u_input.d, u_input.d), true)), vec2<i32>(2147483647i, u_input.d), -718f), Struct_3(vec3<i32>(0i, 0i, 11079i), vec2<i32>(u_input.d, -2147483647i), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(u_input.d, 1i, u_input.d), false), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(u_input.d, -26015i, 0i), true), 1199f, true, Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(u_input.d, u_input.d, u_input.d), true)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(u_input.d, u_input.d, -55986i), true)))), vec4<bool>(false, any(vec4<bool>(true, false, true, true)), true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), select(vec3<i32>(-636i, u_input.d, u_input.d) & ~vec3<i32>(2147483647i, -2147483647i, u_input.d), -(~vec3<i32>(2147483647i, 2147483647i, -26797i)), -u_input.d <= u_input.d), (all(vec4<bool>(true, true, false, true)) || false) | all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(261f)), true, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), _wgslsmith_sub_vec3_i32(min(-vec3<i32>(-2147483647i, -1i, u_input.d), vec3<i32>(u_input.d, u_input.d, -9463i) & vec3<i32>(u_input.d, u_input.d, 1i)), vec3<i32>(_wgslsmith_div_i32(1i, u_input.d), -2147483647i, 31604i)), !func_3(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 68311u, u_input.a.x), u_input.a), Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(u_input.d, 3901i, -2765i), false), 1596f, true, Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(0i, u_input.d, -32654i), false)), vec2<i32>(u_input.d, u_input.d), -412f), Struct_3(vec3<i32>(u_input.d, u_input.d, -25937i), vec2<i32>(u_input.d, -1i), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(u_input.d, u_input.d, u_input.d), true), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(u_input.d, u_input.d, -14354i), true), -239f, true, Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(u_input.d, 15488i, -42441i), false)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-1i, -2147483647i, 1i), true)))));
    let var_1 = Struct_4(Struct_2(Struct_1(var_0.d.a, vec3<i32>(-20938i, _wgslsmith_sub_i32(6517i, 4173i), 0i), !all(vec2<bool>(false, var_0.c))), _wgslsmith_div_f32(764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), false, Struct_1(!(!vec4<bool>(var_0.a.c, var_0.a.a.x, var_0.d.a.x, false)), _wgslsmith_add_vec3_i32(vec3<i32>(17565i, -12430i, -1i) & vec3<i32>(0i, var_0.d.b.x, u_input.d), select(var_0.a.b, vec3<i32>(u_input.d, u_input.d, var_0.d.b.x), var_0.c)), u_input.b.x < _wgslsmith_mult_u32(u_input.c, 0u))), var_0.a.b.xz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    let var_2 = Struct_5(Struct_3(_wgslsmith_clamp_vec3_i32(var_0.a.b, var_1.a.a.b, vec3<i32>(-1i, ~var_1.a.d.b.x, i32(-1i) * -56475i)), max(var_0.d.b.yx, vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.d), max(u_input.d, 1i))), var_1.a.a, var_1.a, Struct_1(!var_0.a.a, max(vec3<i32>(var_0.a.b.x, 34878i, -2147483647i), var_1.a.d.b), var_1.a.d.a.x)));
    var var_3 = var_2.a.e;
    var var_4 = Struct_4(var_2.a.d, _wgslsmith_sub_vec2_i32(abs(~(-var_0.a.b.yx)), vec2<i32>(var_0.a.b.x, 2147483647i)), var_0.b);
    return Struct_2(Struct_1(var_1.a.d.a, firstLeadingBit(select(vec3<i32>(u_input.d, var_1.a.a.b.x, var_4.a.d.b.x), vec3<i32>(-1i, 2147483647i, var_4.b.x) | var_3.b, false)), var_1.a.a.a.x), var_0.b, select(!((2249i << (u_input.c % 32u)) <= reverseBits(var_2.a.d.d.b.x)), _wgslsmith_f_op_f32(min(1364f, var_0.b)) <= _wgslsmith_div_f32(842f, var_0.b), any(!vec2<bool>(var_4.a.d.c, false)) && var_1.a.d.c), var_0.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = func_2();
    var var_1 = arg_0;
    let var_2 = u_input.b.x;
    let var_3 = var_0.a;
    let var_4 = func_2();
    return vec3<u32>(~var_2, u_input.b.x, _wgslsmith_add_u32(~u_input.c & u_input.a.x, 14042u)) & vec3<u32>(1u, 0u, 4294967295u);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<bool>) -> bool {
    let var_0 = firstLeadingBit(func_4(min(~vec4<i32>(u_input.d, -45115i, u_input.d, u_input.d), -select(vec4<i32>(9856i, 51030i, u_input.d, -2147483647i), vec4<i32>(-25283i, 0i, u_input.d, 5357i), vec4<bool>(true, false, true, arg_2.x))), u_input.a, Struct_4(func_2(), (vec2<i32>(u_input.d, u_input.d) ^ vec2<i32>(23748i, u_input.d)) >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(1334f)))));
    var var_1 = any(arg_2);
    var_1 = !(((_wgslsmith_mod_i32(u_input.d, u_input.d) & u_input.d) | 2147483647i) != u_input.d);
    let var_2 = Struct_3(abs(-reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(u_input.d, 2147483647i, u_input.d)))), abs(-firstTrailingBit(vec2<i32>(-39301i, u_input.d) | vec2<i32>(11432i, 19573i))), Struct_1(func_2().a.a, vec3<i32>(~u_input.d, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-18970i, u_input.d, u_input.d), vec3<i32>(-31721i, 28174i, 0i))) << ((max(vec3<u32>(var_0.x, 4294967295u, 0u), vec3<u32>(u_input.b.x, var_0.x, u_input.a.x)) | vec3<u32>(0u, 1u, 5947u)) % vec3<u32>(32u)), all(!(!vec4<bool>(false, arg_0, true, false)))), Struct_2(func_2().a, 1036f, true, Struct_1(select(func_2().d.a, !vec4<bool>(arg_0, arg_2.x, arg_1.x, false), arg_0), vec3<i32>(u_input.d, 0i, 1i), any(select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_0, true), vec2<bool>(false, arg_2.x))))), Struct_1(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_0 != arg_2.x, true, true, false && arg_1.x), vec4<bool>(arg_1.x, arg_2.x, !arg_1.x, all(vec3<bool>(arg_2.x, arg_1.x, arg_0)))), vec3<i32>(u_input.d, -10186i, ~15795i | ~u_input.d), u_input.d > -firstTrailingBit(-71517i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1616f, -328f, 683f)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 311f;
    var var_1 = Struct_4(Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), _wgslsmith_mult_vec3_i32(-vec3<i32>(-78605i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, 27243i)), select(-353f > var_0, func_1(true, vec2<bool>(false, true), vec3<bool>(true, false, false)), true)), 530f, false, Struct_1(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), select(select(vec3<i32>(-2147483647i, -1i, 9765i), vec3<i32>(-47512i, u_input.d, 2147483647i), vec3<bool>(false, true, true)), vec3<i32>(-31509i, u_input.d, u_input.d) & vec3<i32>(0i, 6613i, 1i), true), _wgslsmith_f_op_f32(var_0 + var_0) >= _wgslsmith_f_op_f32(-var_0))), countOneBits(_wgslsmith_mult_vec2_i32(select(abs(vec2<i32>(1i, -12802i)), vec2<i32>(0i, u_input.d), vec2<bool>(true, true)), -vec2<i32>(u_input.d, u_input.d))), -926f);
    var_1 = Struct_4(var_1.a, -max(vec2<i32>(var_1.a.d.b.x, 2147483647i) | select(var_1.a.a.b.zy, var_1.a.d.b.yy, vec2<bool>(true, true)), var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(-1000f, -488f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(790f)) + _wgslsmith_f_op_f32(trunc(var_1.a.b))))));
    var var_2 = u_input.a.zz;
    var var_3 = select(select(vec3<u32>(max(0u, ~u_input.c), ~firstTrailingBit(1u), var_2.x), abs(u_input.a.xyy), false), vec3<u32>(31069u, var_2.x, var_2.x), true);
    var var_4 = u_input.a.x;
    let var_5 = u_input.d;
    let var_6 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, var_1.a.a.b.x, 0i, 1i), vec4<i32>(2147483647i, 1i, 2147483647i, -11821i))), _wgslsmith_mod_i32(58271i, var_5), firstTrailingBit(abs(66591i))), var_1.a.a.b), var_1.b, Struct_1(select(var_1.a.a.a, select(!var_1.a.a.a, !vec4<bool>(true, var_1.a.c, true, var_1.a.a.c), !vec4<bool>(var_1.a.c, var_1.a.a.a.x, true, true)), select(vec4<bool>(var_1.a.a.c, var_1.a.c, var_1.a.a.c, var_1.a.a.a.x), select(var_1.a.d.a, var_1.a.a.a, var_1.a.d.c), !vec4<bool>(false, var_1.a.a.a.x, var_1.a.d.c, true))), vec3<i32>(13555i, _wgslsmith_add_i32(-2147483647i, countOneBits(2147483647i)), _wgslsmith_mod_i32(-u_input.d, _wgslsmith_mod_i32(0i, 2147483647i))), ((true && var_1.a.c) & var_1.a.a.c) && var_1.a.d.c), func_2(), var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(var_3.x, abs(var_3.x), _wgslsmith_dot_vec3_u32(u_input.a.yxz, vec3<u32>(var_3.x, 102775u, var_2.x)), u_input.c >> (0u % 32u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.x, 4294967295u, u_input.c) >> (vec4<u32>(var_2.x, var_3.x, var_2.x, u_input.c) % vec4<u32>(32u)), vec4<u32>(var_3.x, var_2.x, u_input.c, 4294967295u))), var_2.x, vec2<i32>(u_input.d, 0i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(func_2().b)))), var_6.b.x);
}

