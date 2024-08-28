struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_f32(max(1000f, arg_2.a)), 1551f, -1743f));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, arg_1.a, -1417f, -108f), vec4<f32>(894f, _wgslsmith_f_op_f32(664f + _wgslsmith_f_op_f32(-global0.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e * -1999f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(558f, arg_1.a, arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1358f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, arg_1.a, global0.e, arg_2.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_1.a, global1.x, 925f)))));
    let var_0 = vec3<i32>(4995i, -(~arg_2.b.x), 0i);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, arg_2.a, 689f, 492f)) * vec4<f32>(global0.e, 575f, 1376f, -750f)) - vec4<f32>(-1474f, 694f, arg_1.a, _wgslsmith_f_op_f32(select(global0.e, global1.x, arg_0)))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1382f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)), arg_2.a, 1000f), vec4<f32>(_wgslsmith_f_op_f32(sign(-760f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2148f - -1000f) - _wgslsmith_f_op_f32(select(global1.x, -1302f, false))), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(585f, global1.x)) - -1387f)))));
    var var_1 = true;
    return vec2<u32>(abs(~global0.d), ~2523u);
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_2(~(global0.c ^ abs(2147483647i)), vec2<bool>(true, all(!vec2<bool>(global0.b.x, true))), Struct_1(func_3(true, Struct_4(global1.x, u_input.b), Struct_4(global0.e, u_input.b)), select(vec2<bool>(false, global0.b.x), vec2<bool>(true, true), select(global0.b, global0.b, false)), global0.c, firstLeadingBit(abs(18915u)), _wgslsmith_div_f32(global0.e, global1.x)), Struct_1(global0.a, !global0.b, ~15766i, 0u, -844f)), -vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -9764i, global0.c, global0.c), vec4<i32>(2147483647i, -2147483647i, u_input.b.x, 1i)), -9530i, firstLeadingBit(u_input.a | u_input.a), reverseBits(global0.c)), global0.c);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_2().a.c;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-455f)), _wgslsmith_f_op_f32(-417f * var_0.e), _wgslsmith_f_op_f32(ceil(-550f)), _wgslsmith_f_op_f32(-global0.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.e, -166f, 116f, global1.x)))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.e);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 * -574f))), -648f, -160f, _wgslsmith_f_op_f32(f32(-1f) * -444f))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, arg_0.a.d.e, 1934f, global0.e) + _wgslsmith_f_op_vec4_f32(vec4<f32>(554f, 1000f, var_1, var_1) * vec4<f32>(global1.x, -1000f, 448f, arg_0.a.c.e)))))));
    return func_2().a.c;
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(func_4(func_2()));
    global0 = func_2().a.d;
    var var_1 = Struct_5(func_2().a.c);
    let var_2 = func_2().a;
    global0 = var_0.a;
    return Struct_5(var_1.a);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), 61071u, global0.d), ~(vec3<u32>(4294967295u, 52768u, 61631u) << ((vec3<u32>(54637u, global0.a.x, global0.a.x) >> (vec3<u32>(global0.a.x, 1u, global0.d) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~abs(vec3<u32>(global0.a.x, global0.d, global0.a.x)))) << (~firstTrailingBit(~vec3<u32>(0u, 1u, global0.d) ^ (vec3<u32>(global0.d, global0.d, 43192u) | vec3<u32>(1u, 34646u, global0.d))) % vec3<u32>(32u));
    let var_1 = func_5(func_4(func_2()));
    global0 = var_1.a;
    let var_2 = ~(firstLeadingBit(~1u) & countOneBits(global0.d & func_3(var_1.a.b.x, Struct_4(global0.e, vec3<i32>(1i, 1i, 0i)), Struct_4(858f, vec3<i32>(-14212i, -2147483647i, global0.c))).x));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1384f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -562f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f + 875f))))), _wgslsmith_f_op_f32(trunc(global1.x)), global1.x);
    return func_4(func_2());
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_4(-1000f, (~vec3<i32>(global0.c, 43697i, arg_1.c) ^ _wgslsmith_div_vec3_i32(func_2().b.yzw, -vec3<i32>(0i, 32540i, 1i))) & abs(u_input.b));
    let var_1 = func_2().a.c;
    var var_2 = func_5(func_2().a.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1185f) * func_1().e) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.e - var_1.e), 232f, true)))));
    var var_4 = func_5(Struct_1(vec2<u32>(~abs(arg_1.a.x), 16575u), var_1.b, var_0.b.x, var_2.a.d, global1.x));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: i32) -> i32 {
    let var_0 = Struct_4(-816f, ~firstTrailingBit(vec3<i32>(func_6(Struct_1(vec2<u32>(arg_0.d, 0u), arg_0.b, -1i, arg_0.a.x, 1316f), Struct_1(arg_0.a, vec2<bool>(arg_0.b.x, true), -19490i, 55031u, arg_0.e), vec3<bool>(true, false, true)).c, global0.c << (0u % 32u), global0.c)));
    var var_1 = firstTrailingBit(var_0.b);
    var_1 = firstTrailingBit(var_0.b);
    var_1 = u_input.b ^ u_input.b;
    let var_2 = func_5(func_5(Struct_1(vec2<u32>(arg_0.d, _wgslsmith_mod_u32(global0.a.x, global0.a.x)), func_4(Struct_3(Struct_2(u_input.a, global0.b, arg_0, Struct_1(arg_0.a, vec2<bool>(true, false), u_input.b.x, 77813u, -334f)), vec4<i32>(1i, var_1.x, 23422i, -9993i), 9986i)).b, _wgslsmith_clamp_i32(arg_0.c, u_input.b.x, func_6(Struct_1(arg_0.a, arg_0.b, -2147483647i, arg_0.d, global1.x), arg_0, vec3<bool>(true, false, arg_0.b.x)).c), ~4294967295u, 1648f)).a);
    return -(i32(-1i) * -23824i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-291f, vec3<i32>(-(-global0.c << (~65184u % 32u)), -88787i, func_7(func_6(Struct_1(global0.a, global0.b, -24811i, global0.d, global0.e), func_1(), vec3<bool>(true, false, false)), all(select(vec3<bool>(global0.b.x, global0.b.x, true), vec3<bool>(true, global0.b.x, global0.b.x), false)), global0.b.x, abs(1932i))));
    global0 = func_4(Struct_3(func_2().a, -vec4<i32>(~2147483647i, -var_0.b.x, 1i, func_5(Struct_1(vec2<u32>(1u, global0.d), vec2<bool>(global0.b.x, true), global0.c, global0.d, 645f)).a.c), -u_input.a));
    var var_1 = Struct_5(func_2().a.c);
    var var_2 = vec2<bool>(any(vec3<bool>(func_2().a.c.b.x, false, global0.c >= _wgslsmith_mod_i32(12405i, var_0.b.x))), (func_5(func_4(Struct_3(Struct_2(global0.c, vec2<bool>(false, var_1.a.b.x), Struct_1(var_1.a.a, vec2<bool>(var_1.a.b.x, var_1.a.b.x), 2147483647i, var_1.a.a.x, global1.x), Struct_1(vec2<u32>(1u, global0.d), vec2<bool>(var_1.a.b.x, global0.b.x), u_input.b.x, global0.a.x, var_1.a.e)), vec4<i32>(1i, global0.c, -1i, -6942i), u_input.a))).a.a.x ^ ~global0.d) == 17747u);
    let var_3 = select(!vec4<bool>(var_1.a.b.x, !func_4(Struct_3(Struct_2(-1i, var_1.a.b, var_1.a, Struct_1(vec2<u32>(var_1.a.a.x, global0.d), vec2<bool>(false, true), 2147483647i, 21237u, var_1.a.e)), vec4<i32>(var_0.b.x, -3308i, var_1.a.c, var_1.a.c), -6060i)).b.x, true & !var_1.a.b.x, func_5(Struct_1(var_1.a.a, var_1.a.b, -27053i, global0.a.x, 2205f)).a.b.x), vec4<bool>(false, !(all(var_1.a.b) && (true & var_1.a.b.x)), var_1.a.b.x, select(false, true, var_2.x)), true);
    var_1 = func_5(Struct_1(~global0.a, select(var_3.zx, func_6(func_1(), func_2().a.d, select(var_3.wxy, var_3.zzz, false)).b, select(func_2().a.b, vec2<bool>(global0.b.x, true), true)), u_input.b.x, firstTrailingBit(global0.a.x), 509f));
    var var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

