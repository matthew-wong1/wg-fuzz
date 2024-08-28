struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(7422u, 4294967295u, 47038u, 41727u), vec4<u32>(52517u, 4294967295u, 4294967295u, 49486u), vec4<u32>(1u, 4294967295u, 4294967295u, 52681u), vec4<u32>(80467u, 20616u, 4294967295u, 39050u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(4294967295u, 73465u, 12456u, 1u), vec4<u32>(1u, 4294967295u, 0u, 18196u), vec4<u32>(43455u, 4294967295u, 62665u, 13108u), vec4<u32>(16127u, 9004u, 4294967295u, 1u), vec4<u32>(1u, 10496u, 0u, 1u), vec4<u32>(16345u, 0u, 69372u, 68861u), vec4<u32>(0u, 13916u, 17618u, 5939u), vec4<u32>(7954u, 26924u, 106848u, 0u), vec4<u32>(9005u, 31093u, 0u, 4294967295u), vec4<u32>(61077u, 55205u, 1u, 18171u), vec4<u32>(4294967295u, 47122u, 0u, 4294967295u), vec4<u32>(4294967295u, 68043u, 7266u, 1u), vec4<u32>(0u, 31028u, 8367u, 1u), vec4<u32>(12082u, 4294967295u, 10737u, 55260u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(1u, 3881u, 1u, 35978u), vec4<u32>(20368u, 4294967295u, 1u, 4294967295u), vec4<u32>(50771u, 70145u, 14178u, 581u), vec4<u32>(4294967295u, 0u, 122394u, 44255u), vec4<u32>(0u, 0u, 50443u, 42366u), vec4<u32>(4294967295u, 0u, 55677u, 15359u), vec4<u32>(1825u, 0u, 37672u, 19448u), vec4<u32>(69911u, 0u, 1u, 1u), vec4<u32>(3124u, 15417u, 0u, 37903u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 1u));

var<private> global1: Struct_1;

var<private> global2: i32 = 22763i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = true;
    global1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f * _wgslsmith_f_op_f32(max(arg_2.x, 591f))))), _wgslsmith_f_op_f32(exp2(global1.b)), vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(select(-1657f, 1337f, true)), _wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2339f, 910f)) * global1.b)), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)) + _wgslsmith_f_op_f32(global1.e.x * global1.c))), _wgslsmith_f_op_f32(step(arg_0.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(487f, -2273f)))))));
    var var_1 = vec2<bool>(true, true);
    let var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(max(-681f, global1.e.x)) < 1f, all(vec4<bool>(arg_1.x > arg_3.x, false, !var_1.x, !var_1.x)), (-68724i >> ((global1.a.x & global1.a.x) % 32u)) == _wgslsmith_mod_i32(abs(6367i), ~2147483647i), false), select(vec4<bool>(true, var_1.x, true, var_1.x), select(!(!vec4<bool>(false, var_1.x, true, false)), !select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x), true), !(!var_1.x)), select(vec4<bool>(var_1.x, !any(vec3<bool>(false, var_1.x, var_1.x)), var_1.x, true), vec4<bool>(u_input.b.x < 46522u, !(!var_1.x), var_1.x, true & var_1.x), !select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, false, true, var_1.x), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, var_1.x))));
    let var_3 = arg_0;
    return global1.a.x & 108582u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    global2 = ~arg_2;
    global0 = array<vec4<u32>, 31>();
    let var_2 = !(!vec4<bool>(arg_0, all(vec3<bool>(false, arg_0, arg_0)), true, !all(vec3<bool>(arg_0, false, arg_0))));
    return var_1.d;
}

fn func_2() -> bool {
    global2 = _wgslsmith_mult_i32(~1i, _wgslsmith_mult_i32(select(12699i, 31512i, true) << (~global1.a.x % 32u), 1i)) & -2147483647i;
    var var_0 = Struct_1(~u_input.b.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-758f + _wgslsmith_f_op_f32(select(global1.c, -220f, false))) + -1000f)), global1.b, _wgslsmith_f_op_vec4_f32(func_4(false, Struct_1(vec2<u32>(select(48372u, 4294967295u, true), func_3(Struct_1(vec2<u32>(26640u, 0u), 326f, global1.e.x, global1.d, global1.d.wzz), vec3<u32>(u_input.a.x, 0u, u_input.b.x), global1.d.yx, vec3<u32>(4294967295u, 107827u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - -563f) - _wgslsmith_f_op_f32(step(481f, global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), vec4<f32>(_wgslsmith_f_op_f32(global1.c + global1.e.x), _wgslsmith_f_op_f32(exp2(global1.e.x)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.e.x)), global1.d.wyx), -(~(-97931i)))), global1.d.wyy);
    var_0 = Struct_1(_wgslsmith_sub_vec2_u32(~select(reverseBits(vec2<u32>(u_input.b.x, 40682u)), global1.a | u_input.b.zz, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(-242f * -1209f), var_0.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(trunc(global1.e.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1068f, 655f))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(832f + -457f)), global1.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), global1.d.x))));
    let var_1 = ~select(~min(vec3<u32>(u_input.a.x, u_input.a.x, 0u) & u_input.a.zxx, _wgslsmith_add_vec3_u32(vec3<u32>(global1.a.x, var_0.a.x, var_0.a.x), u_input.a.zyy)), vec3<u32>(var_0.a.x, 4294967295u, _wgslsmith_sub_u32(~44607u, 17269u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))), -1981f >= _wgslsmith_f_op_f32(min(global1.d.x, -645f))));
    var_0 = Struct_1(global1.a, -1369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.x))))), global1.d, _wgslsmith_f_op_vec4_f32(func_4(!(!(global1.a.x >= u_input.b.x)), Struct_1(~u_input.b.ww, _wgslsmith_f_op_f32(-global1.d.x), -1204f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, var_0.d.x, global1.b, var_0.d.x))), global1.d.xxz), ~0i)).yyz);
    return !(!all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)));
}

fn func_1() -> i32 {
    let var_0 = !func_2() == true;
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(u_input.b.xz, select(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), u_input.b.ww), ~reverseBits(vec2<u32>(u_input.b.x, 4585u)), !(!vec2<bool>(var_0, true)))), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(1296f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * -628f) - _wgslsmith_f_op_f32(global1.e.x * -2287f)))), 1395f, _wgslsmith_f_op_vec4_f32(global1.d * global1.d), _wgslsmith_f_op_vec3_f32(-global1.d.yzy));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~(_wgslsmith_div_i32(-31536i, 237i) | select(-54026i, -1i, var_0)), 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-27222i, 22043i), min(vec2<i32>(-6161i, -1i), vec2<i32>(-2147483647i, 36234i))), -19327i)), select(select(vec3<i32>(-2147483647i, i32(-1i) * -1i, -26653i), vec3<i32>(-1i) * -vec3<i32>(23529i, 0i, 8491i), !(!vec3<bool>(true, var_0, var_0))), ~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 80095i, 1i), vec3<i32>(37538i, -4502i, -6596i))), true));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = ~(~u_input.a.ywz);
    global1 = arg_2;
    var_1 = u_input.b.ywz;
    global0 = array<vec4<u32>, 31>();
    return Struct_1(~min(_wgslsmith_clamp_vec2_u32(~var_1.yz, vec2<u32>(1u, arg_3.x), select(var_1.yx, arg_2.a, vec2<bool>(false, false))), arg_1.a), 191f, 878f, var_0.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1069f)), global1.d.yyx, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec4<i32>(-8688i, func_1(), _wgslsmith_clamp_i32(firstLeadingBit(22690i), _wgslsmith_mod_i32(1i, firstTrailingBit(18953i)), abs(52281i) >> (global1.a.x % 32u)), 53808i), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), _wgslsmith_mod_vec2_u32(global1.a, vec2<u32>(u_input.a.x, 1u)), vec2<u32>(1u, 79075u)) & u_input.a.yx, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(774f * _wgslsmith_f_op_f32(global1.e.x + 699f)))), _wgslsmith_f_op_f32(floor(global1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.d)) * _wgslsmith_div_vec4_f32(vec4<f32>(693f, global1.d.x, 1000f, global1.b), global1.d)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.e.x, -833f, global1.d.x), global1.d.zyz), global1.d.zzz)))), Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(78054u, global1.a.x, 4294967295u, global1.a.x), u_input.b), ~global1.a.x), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-237f - -1129f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1480f, -639f, 169f, global1.c))))), global1.d.xyw), u_input.b.zw);
    let var_0 = all(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), any(vec4<bool>(false, false, false, false))), vec3<bool>(false, select(true, select(true, true, false), true), true), !vec3<bool>(true, false, any(vec2<bool>(false, true)))));
    var var_1 = vec4<u32>(global1.a.x, global1.a.x, u_input.b.x, u_input.b.x);
    var var_2 = (false && (all(vec2<bool>(false, var_0)) | true)) & !(!select(var_1.x <= 4294967295u, all(vec3<bool>(var_0, false, var_0)), true));
    global1 = func_5(-_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 9948i, 0i, 8914i), -(~vec4<i32>(-1i, -41210i, 33134i, -1i))), func_5(countOneBits(~vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(vec2<u32>(global1.a.x, 59894u) ^ ~vec2<u32>(var_1.x, 4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_vec4_f32(func_4(true, func_5(vec4<i32>(-2147483647i, -36657i, 1i, 2147483647i), Struct_1(global1.a, global1.d.x, global1.c, global1.d, vec3<f32>(global1.d.x, global1.c, -1510f)), Struct_1(vec2<u32>(u_input.b.x, 1u), global1.d.x, global1.d.x, global1.d, vec3<f32>(global1.c, -341f, global1.e.x)), var_1.wy), 52454i)).x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(global1.d)))), vec3<f32>(_wgslsmith_f_op_f32(global1.e.x * global1.c), 397f, _wgslsmith_f_op_f32(exp2(global1.c)))), Struct_1(vec2<u32>(0u, _wgslsmith_sub_u32(1u, 1u)), _wgslsmith_f_op_f32(step(global1.d.x, global1.d.x)), func_5(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 41093i, -44506i, -19472i), vec4<i32>(-2147483647i, 2147483647i, -1i, -1i)), Struct_1(vec2<u32>(0u, global1.a.x), -267f, 479f, vec4<f32>(global1.b, global1.c, global1.b, 1137f), vec3<f32>(101f, global1.b, -1000f)), func_5(vec4<i32>(44256i, 26435i, -2147483647i, 10637i), Struct_1(u_input.b.yx, global1.e.x, global1.d.x, global1.d, vec3<f32>(-1917f, global1.b, global1.b)), Struct_1(vec2<u32>(u_input.a.x, var_1.x), global1.d.x, global1.c, vec4<f32>(global1.b, global1.c, 474f, 1610f), vec3<f32>(-1767f, global1.c, global1.d.x)), vec2<u32>(4294967295u, var_1.x)), select(global1.a, vec2<u32>(59082u, var_1.x), vec2<bool>(var_0, var_0))).c, global1.d, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1215f)), global1.d.x, _wgslsmith_f_op_f32(-global1.c))), global1.a), Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_u32(~var_1.wy, var_1.xz)), _wgslsmith_f_op_f32(abs(658f)), 480f, global1.d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1072f, -391f, global1.c), vec3<f32>(global1.c, global1.d.x, -703f))))), global1.a << (~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zyx, vec3<u32>(4294967295u, global1.a.x, 4294967295u)), global1.a.x) % vec2<u32>(32u)));
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.d)), vec4<f32>(global1.d.x, global1.e.x, 1156f, global1.d.x)) * global1.d), _wgslsmith_f_op_vec4_f32(ceil(global1.d))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(var_0, Struct_1(vec2<u32>(4294967295u, 1u), global1.e.x, global1.c, vec4<f32>(-1109f, -220f, global1.d.x, global1.d.x), global1.e), 1i)).x, _wgslsmith_f_op_f32(max(1307f, global1.d.x)), global1.e.x, -1000f)), global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_add_u32(~0u, 0u), 1u) | ~max(_wgslsmith_sub_vec3_u32(vec3<u32>(93313u, global1.a.x, 32988u), vec3<u32>(var_3.x, var_1.x, 16569u)), u_input.a.xyy), abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(10781i, 1i), max(-9096i, 40632i)), max(1i, ~1i), -_wgslsmith_mult_i32(1i, 0i), 0i)), vec2<u32>(~u_input.a.x, ~var_1.x), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(14896i, ~(-52369i)), vec2<i32>(1i, 1i))));
}

