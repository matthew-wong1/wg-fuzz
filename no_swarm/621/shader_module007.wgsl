struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_3 = Struct_3(36266i, Struct_2(true, Struct_1(2230i, vec4<f32>(-1669f, -645f, -767f, 290f), vec2<i32>(-1i, -8160i)), Struct_1(-1i, vec4<f32>(279f, 923f, 597f, 247f), vec2<i32>(0i, 0i)), Struct_1(0i, vec4<f32>(1447f, -2692f, 750f, 1827f), vec2<i32>(-30356i, -39994i)), Struct_1(-24129i, vec4<f32>(-952f, 1071f, -780f, -1945f), vec2<i32>(i32(-2147483648), -25053i))), Struct_2(true, Struct_1(28239i, vec4<f32>(-1261f, -402f, 603f, 843f), vec2<i32>(3746i, -65090i)), Struct_1(-44478i, vec4<f32>(-1000f, 1098f, 1000f, 144f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(23094i, vec4<f32>(-550f, 1903f, 521f, 1000f), vec2<i32>(2147483647i, 42454i)), Struct_1(1i, vec4<f32>(-509f, 428f, 2010f, -1151f), vec2<i32>(-12491i, 19075i))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~reverseBits(0u), 1u)), max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(12351u, 0u, 14034u, 43384u))), firstTrailingBit(vec4<u32>(58080u, 1u, 5046u, 1u)), ~vec4<u32>(69060u, 2000u, 4617u, 1u)), abs(~select(vec4<u32>(4294967295u, 17252u, 12787u, 1u), ~vec4<u32>(12548u, 4294967295u, 43672u, 44164u), select(arg_0, vec4<bool>(false, arg_0.x, false, false), arg_0.x))));
    var var_2 = abs(global0.b.d.c);
    var var_3 = abs(~vec4<u32>(~var_1.x, 1u, 1u, 1u >> (var_1.x % 32u)) | ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(49734u, 73636u, var_1.x, 0u), var_1), firstTrailingBit(vec4<u32>(11064u, 4294967295u, 0u, 51032u)), select(arg_0, vec4<bool>(true, false, false, global0.c.a), arg_0)));
    var var_4 = Struct_4(Struct_3(2147483647i, Struct_2(true, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, arg_1, -20984i), vec3<i32>(2147483647i, global0.c.b.c.x, u_input.a)), _wgslsmith_f_op_vec4_f32(global0.b.d.b - vec4<f32>(global0.c.c.b.x, global0.b.b.b.x, 1000f, global0.c.e.b.x)), global0.c.e.c), Struct_1(_wgslsmith_mult_i32(global0.c.d.a, global0.a), vec4<f32>(602f, global0.b.c.b.x, global0.b.d.b.x, global0.b.e.b.x), min(global0.c.d.c, global0.c.c.c)), Struct_1(arg_1, vec4<f32>(global0.c.b.b.x, -1885f, 544f, 1000f), select(global0.c.e.c, global0.b.b.c, vec2<bool>(arg_0.x, global0.c.a))), global0.c.c), global0.c), Struct_2(global0.c.a, Struct_1(1i, vec4<f32>(_wgslsmith_f_op_f32(global0.b.b.b.x + global0.c.d.b.x), global0.c.b.b.x, _wgslsmith_f_op_f32(global0.c.c.b.x - global0.b.b.b.x), global0.c.e.b.x), reverseBits(-vec2<i32>(var_2.x, 4691i))), Struct_1((i32(-1i) * -12322i) << (var_1.x % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.b.b.x, global0.c.e.b.x, global0.c.c.b.x, global0.c.d.b.x) * vec4<f32>(global0.b.d.b.x, global0.b.b.b.x, -302f, global0.c.b.b.x)), vec2<i32>(-2147483647i, 39384i) << ((vec2<u32>(1u, var_3.x) >> (var_3.yx % vec2<u32>(32u))) % vec2<u32>(32u))), global0.b.c, Struct_1(0i | -var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.b.b.x, global0.c.b.b.x, global0.c.c.b.x, global0.c.c.b.x)))), ~_wgslsmith_add_vec2_i32(global0.c.b.c, global0.b.e.c))), global0.c.b);
    return 0i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<f32> {
    let var_0 = arg_1.x;
    let var_1 = false;
    global0 = Struct_3(~u_input.a, Struct_2(true, Struct_1(func_3(!vec4<bool>(true, var_0, arg_1.x, var_0), u_input.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.b.b.x, -1551f, 1218f, 1816f))), reverseBits(vec2<i32>(u_input.a, u_input.a))), Struct_1(reverseBits(2147483647i) >> (arg_0.x % 32u), vec4<f32>(-462f, global0.b.d.b.x, _wgslsmith_f_op_f32(-global0.c.e.b.x), _wgslsmith_f_op_f32(select(global0.c.b.b.x, 984f, global0.c.a))), vec2<i32>(global0.a, -u_input.a)), Struct_1(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.b.c.b, vec4<f32>(arg_2, arg_2, 517f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -139f, 1628f, 156f))), vec2<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, -49227i))), global0.b.d), global0.b);
    global0 = Struct_3(-59448i, Struct_2(4294967295u < ~arg_0.x, Struct_1(global0.b.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, global0.c.e.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(240f, arg_2, 205f, 1376f) * vec4<f32>(global0.b.b.b.x, global0.c.b.b.x, 1043f, global0.b.c.b.x))), _wgslsmith_add_vec2_i32(vec2<i32>(global0.a, u_input.a), ~global0.c.b.c)), Struct_1(-17425i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.b.d.b))), max(global0.b.e.c, global0.b.d.c)), global0.b.e, Struct_1(-12455i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -125f, -1000f, 894f)), global0.c.c.c)), Struct_2(!(arg_1.x && (global0.b.e.b.x == -289f)), Struct_1(firstTrailingBit(_wgslsmith_sub_i32(global0.b.c.c.x, -1i)), _wgslsmith_f_op_vec4_f32(-global0.c.c.b), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.a, -2147483647i), vec2<i32>(global0.c.c.c.x, 1i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.e.a, 17579i), vec2<i32>(global0.a, -2147483647i))), global0.b.e, Struct_1(0i, vec4<f32>(global0.c.b.b.x, -632f, _wgslsmith_f_op_f32(step(global0.c.c.b.x, 1015f)), -830f), -(global0.c.d.c | vec2<i32>(-40146i, global0.c.b.c.x))), global0.b.d));
    global0 = Struct_3(-1i, global0.b, global0.c);
    return global0.c.c.b;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    var var_0 = ~(~(~countOneBits(29115u)));
    global0 = Struct_3(-(~select(u_input.a, _wgslsmith_add_i32(arg_2.c.x, -23954i), any(vec2<bool>(arg_3.a, arg_3.a)))), arg_3, arg_3);
    var_0 = select(min(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(47130u, 1u), vec2<u32>(44823u, 4294967295u))), select(1u, _wgslsmith_div_u32(0u, 4294967295u), arg_3.b.a == global0.b.b.c.x) << (1u % 32u)), 69225u >> (~4294967295u % 32u), !arg_3.a);
    var var_1 = !(!vec4<bool>(!all(vec2<bool>(false, false)), true, true, true));
    var var_2 = -max(vec4<i32>(global0.b.c.c.x, 2147483647i, ~2147483647i, countOneBits(global0.c.e.c.x)), countOneBits(firstTrailingBit(vec4<i32>(-6734i, u_input.a, global0.a, -6029i)))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(84054u, 4294967295u, 47605u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(1u, 4294967295u))), ~100096u), ~81205u, firstTrailingBit(min(1u, countOneBits(1u)))) % vec4<u32>(32u));
    return Struct_3(~(~(-1i)), global0.c, Struct_2(!(!(!arg_3.a)), Struct_1(1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b), arg_2.b), -(vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(-1i, -2147483647i))), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1944f, -803f, global0.c.b.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2331f, 953f, arg_2.b.x, -776f) - vec4<f32>(global0.b.c.b.x, arg_3.d.b.x, -1132f, 2113f)), vec4<bool>(var_1.x, false, global0.c.a, false))), select(vec2<i32>(arg_3.b.c.x, arg_2.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-57446i, arg_1), arg_2.c), !vec2<bool>(arg_3.a, global0.c.a))), arg_3.d, arg_3.d));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec2<bool> {
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_sub_i32(firstLeadingBit(max(-2147483647i, countOneBits(arg_1.x))), abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(global0.a, -24621i), max(2147483647i, global0.c.b.a)))), Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(func_2(min(~arg_2, arg_2), select(select(vec4<bool>(true, global0.c.a, false, false), vec4<bool>(true, false, global0.c.a, global0.c.a), vec4<bool>(global0.b.a, global0.b.a, global0.b.a, global0.c.a)), select(vec4<bool>(true, global0.b.a, global0.c.a, global0.b.a), vec4<bool>(false, global0.b.a, global0.c.a, global0.b.a), global0.c.a), global0.c.a), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1527f)))), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(global0.b.b.c.x, arg_1.x, -52520i), -2147483647i))), global0.c);
    var var_0 = Struct_3(-1i, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.d.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), ~abs(func_4(-1400f, arg_1.x, Struct_1(global0.c.e.c.x, global0.c.d.b, arg_0.c), Struct_2(global0.b.a, Struct_1(u_input.a, global0.b.d.b, global0.b.d.c), global0.c.d, global0.c.e, Struct_1(-1274i, vec4<f32>(arg_0.b.x, 1669f, arg_0.b.x, 1000f), arg_1.zz))).a), arg_0, func_4(218f, u_input.a, Struct_1(_wgslsmith_div_i32(arg_1.x, global0.c.d.a), vec4<f32>(-1824f, arg_0.b.x, -744f, -301f), vec2<i32>(43041i, arg_1.x)), Struct_2(any(vec2<bool>(global0.b.a, global0.b.a)), arg_0, Struct_1(arg_0.c.x, vec4<f32>(global0.c.b.b.x, global0.c.b.b.x, global0.c.b.b.x, global0.c.b.b.x), vec2<i32>(arg_0.a, 28557i)), arg_0, Struct_1(-2147483647i, arg_0.b, arg_1.yz))).b).c, Struct_2(global0.c.a, global0.c.b, func_4(global0.b.b.b.x, -9659i, Struct_1(global0.b.e.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1443f, arg_0.b.x, global0.c.d.b.x, 636f) + arg_0.b), min(vec2<i32>(u_input.a, arg_1.x), arg_1.xx)), func_4(arg_0.b.x, _wgslsmith_clamp_i32(arg_1.x, 2147483647i, u_input.a), Struct_1(arg_0.c.x, arg_0.b, vec2<i32>(14854i, arg_1.x)), global0.b).c).c.d, arg_0, func_4(arg_0.b.x, _wgslsmith_div_i32(arg_1.x ^ 6569i, u_input.a), func_4(-320f, _wgslsmith_mult_i32(arg_0.c.x, arg_0.c.x), Struct_1(u_input.a, vec4<f32>(1330f, global0.c.d.b.x, -1581f, arg_0.b.x), vec2<i32>(global0.b.c.a, global0.a)), Struct_2(false, Struct_1(arg_1.x, vec4<f32>(-1003f, 341f, arg_0.b.x, 1295f), arg_0.c), arg_0, Struct_1(u_input.a, global0.b.d.b, vec2<i32>(global0.a, -2147483647i)), global0.b.c)).b.e, Struct_2(true, func_4(arg_0.b.x, arg_1.x, Struct_1(0i, vec4<f32>(-1030f, 497f, global0.b.c.b.x, 584f), arg_0.c), Struct_2(global0.c.a, Struct_1(arg_1.x, vec4<f32>(346f, -679f, 376f, arg_0.b.x), vec2<i32>(u_input.a, global0.b.b.a)), Struct_1(arg_1.x, arg_0.b, arg_1.zy), Struct_1(0i, vec4<f32>(1144f, global0.b.d.b.x, 688f, arg_0.b.x), arg_0.c), Struct_1(-1756i, vec4<f32>(2165f, global0.c.c.b.x, -401f, -489f), arg_0.c))).c.e, func_4(758f, 1i, Struct_1(arg_0.c.x, arg_0.b, vec2<i32>(-2147483647i, 22772i)), global0.b).b.d, Struct_1(-1i, global0.c.b.b, arg_1.zx), func_4(global0.b.b.b.x, 6572i, Struct_1(global0.c.d.c.x, vec4<f32>(217f, global0.b.e.b.x, -1323f, -941f), vec2<i32>(global0.c.e.c.x, 2147483647i)), global0.c).c.b)).b.b));
    var var_1 = 18267i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.b.b.x)))) == _wgslsmith_f_op_f32(abs(536f)), Struct_1((_wgslsmith_div_i32(global0.b.b.c.x, 2147483647i) ^ _wgslsmith_clamp_i32(-51479i, -2147483647i, arg_0.a)) << (abs(_wgslsmith_mult_u32(4294967295u, arg_2.x)) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.c.b.x, -558f, -1423f, arg_0.b.x), var_0.c.d.b)) + arg_0.b), global0.b.c.c), func_4(1819f, -66190i, func_4(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-1687f + 1216f)), firstLeadingBit(1i), Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(global0.b.d.b - arg_0.b), var_0.b.b.c), var_0.c).b.c, global0.c).b.b, global0.b.b, Struct_1(-global0.b.d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c.b.x, _wgslsmith_f_op_f32(-var_0.b.c.b.x), -1000f, arg_0.b.x)), arg_1.xy));
    let var_3 = Struct_4(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f)), arg_0.a, func_4(var_0.c.b.b.x, _wgslsmith_sub_i32(u_input.a << (arg_2.x % 32u), u_input.a), func_4(_wgslsmith_f_op_f32(min(-557f, arg_0.b.x)), _wgslsmith_dot_vec3_i32(arg_1, arg_1), var_0.c.b, func_4(var_0.c.b.b.x, -2147483647i, var_0.c.b, Struct_2(global0.c.a, global0.c.c, var_0.b.e, var_2.b, var_2.b)).b).c.d, var_0.c).c.b, Struct_2(var_2.a, Struct_1(13126i | arg_0.c.x, var_2.b.b, select(vec2<i32>(-33700i, arg_0.a), vec2<i32>(global0.b.b.c.x, var_2.b.c.x), vec2<bool>(var_2.a, var_0.c.a))), global0.b.e, Struct_1(_wgslsmith_clamp_i32(13483i, arg_1.x, 1i), var_2.e.b, -var_2.c.c), func_4(_wgslsmith_f_op_f32(-global0.b.b.b.x), ~0i, func_4(-551f, arg_1.x, Struct_1(-2147483647i, global0.b.d.b, vec2<i32>(-1i, -35965i)), Struct_2(true, Struct_1(arg_0.c.x, vec4<f32>(var_2.c.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec2<i32>(-7634i, 35829i)), Struct_1(-2147483647i, vec4<f32>(-995f, var_2.e.b.x, 806f, arg_0.b.x), vec2<i32>(-1i, arg_0.c.x)), global0.c.e, Struct_1(2147483647i, vec4<f32>(var_0.c.e.b.x, arg_0.b.x, -1361f, -1000f), vec2<i32>(arg_1.x, 1i)))).c.b, var_0.b).b.c)), Struct_2(!var_0.b.a, arg_0, func_4(_wgslsmith_f_op_f32(-global0.c.e.b.x), firstLeadingBit(0i), Struct_1(_wgslsmith_mult_i32(1i, -17666i), var_2.c.b, global0.b.c.c), func_4(_wgslsmith_f_op_f32(-var_2.d.b.x), min(-2147483647i, global0.b.b.c.x), func_4(-262f, var_0.c.c.c.x, Struct_1(22171i, arg_0.b, var_0.b.e.c), Struct_2(true, Struct_1(46230i, var_2.d.b, vec2<i32>(arg_1.x, u_input.a)), Struct_1(var_2.e.c.x, arg_0.b, vec2<i32>(var_2.d.c.x, 2147483647i)), global0.c.e, var_0.c.b)).c.c, global0.c).c).b.b, Struct_1(arg_0.a << (~arg_2.x % 32u), _wgslsmith_div_vec4_f32(func_4(-1250f, 877i, Struct_1(-2147483647i, vec4<f32>(var_2.b.b.x, -609f, var_2.d.b.x, global0.b.d.b.x), vec2<i32>(var_0.b.c.a, var_2.d.c.x)), Struct_2(true, global0.b.c, Struct_1(7831i, var_0.c.e.b, vec2<i32>(45401i, global0.b.d.a)), arg_0, Struct_1(20066i, vec4<f32>(-131f, global0.c.d.b.x, 1371f, var_0.b.d.b.x), var_0.c.d.c))).b.d.b, _wgslsmith_f_op_vec4_f32(select(var_2.d.b, vec4<f32>(var_0.b.c.b.x, var_0.c.b.b.x, -1241f, var_0.c.d.b.x), true))), firstTrailingBit(select(vec2<i32>(-21827i, arg_0.c.x), arg_1.yz, true))), var_0.c.c), arg_0);
    return !(!vec2<bool>(true, arg_2.x > min(4294967295u, arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(global0.b.b.b.x, _wgslsmith_f_op_f32(abs(-523f)), -304f);
    var var_1 = vec3<i32>(~0i, -_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-7829i, -25940i, -1i, u_input.a), vec4<i32>(global0.b.c.a, global0.a, global0.a, global0.c.d.a), vec4<i32>(51762i, 5458i, 9213i, u_input.a)), -(vec4<i32>(-10771i, 87253i, 2147483647i, -27467i) ^ vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i))), -2147483647i);
    var var_2 = var_1.zx | ~select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, u_input.a), vec3<i32>(2147483647i, 71378i, global0.b.d.c.x)), u_input.a), global0.c.d.c, func_1(Struct_1(19259i, vec4<f32>(1078f, -865f, var_0.x, global0.c.e.b.x), vec2<i32>(global0.a, 0i)), vec3<i32>(-8081i, 0i, -2366i), ~vec4<u32>(0u, 39435u, 25174u, 0u)));
    var_2 = reverseBits(vec2<i32>(-global0.c.d.a, var_1.x));
    let var_3 = !select(!(!select(vec4<bool>(global0.c.a, false, global0.c.a, global0.b.a), vec4<bool>(false, global0.b.a, global0.c.a, false), vec4<bool>(true, true, true, global0.c.a))), !select(!vec4<bool>(false, false, false, global0.c.a), vec4<bool>(global0.c.a, global0.c.a, true, global0.c.a), true), !select(!vec4<bool>(false, global0.b.a, global0.b.a, false), !vec4<bool>(global0.b.a, false, global0.c.a, global0.c.a), !global0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, firstTrailingBit(u_input.a)));
}

