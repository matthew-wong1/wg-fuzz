struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 89556u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(1u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(797f, 361f, 1776f, -591f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(274f, _wgslsmith_f_op_f32(-976f + 501f), _wgslsmith_f_op_f32(ceil(145f)), _wgslsmith_f_op_f32(f32(-1f) * -563f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(169f, -354f, -1294f, 869f) + vec4<f32>(-1945f, -403f, -275f, -722f))), vec4<f32>(1f, 1f, 1f, 1f), true))));
    return Struct_3(var_0, _wgslsmith_f_op_f32(abs(-1986f)), var_0.x, _wgslsmith_f_op_vec3_f32(-var_0.zzz));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_1(global0.x);
    var var_1 = max(abs(~(global1.a ^ u_input.a)), firstTrailingBit(arg_0.x));
    var_1 = 70541u;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(min(-1000f, arg_1))))))), _wgslsmith_f_op_f32(f32(-1f) * -990f), 931f, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, -1000f, func_2().d.x))));
    var var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1636f))) == _wgslsmith_f_op_f32(func_2().c * 673f)), select(true, false, true) != (_wgslsmith_add_u32(select(var_0.a, global1.a, true), arg_0.x) != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1.a, global0.x), ~vec3<u32>(31477u, global1.a, 0u))), false);
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-37443i, 0i, 72229i), select(vec3<i32>(-12199i, -28413i, -815i), vec3<i32>(2147483647i, -2147483647i, -47021i), vec3<bool>(false, false, true))), ~vec3<i32>(0i, 1i, 1i), true) >> (countOneBits(func_3(vec3<u32>(arg_0.a, 0u, global1.a) & vec3<u32>(2901u, 26934u, arg_0.a), var_0.c)) % vec3<u32>(32u)), min(min(select(vec3<i32>(1i, 27012i, -19722i) << (vec3<u32>(arg_0.a, 27328u, 1u) % vec3<u32>(32u)), select(vec3<i32>(-1i, -2147483647i, 14072i), vec3<i32>(0i, -1i, 0i), vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -20904i, -34926i))), select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(59408i, 30600i, -1i), select(vec3<i32>(-43550i, -2804i, 0i), vec3<i32>(-77701i, 2147483647i, 1i), false), -vec3<i32>(25431i, -26148i, 2147483647i)), vec3<i32>(i32(-1i) * -1i, ~1i, i32(-1i) * -2147483647i), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(885f * var_0.c), -984f, var_0.b)));
    var var_3 = _wgslsmith_div_vec3_f32(var_0.a.wzz, var_2.xzx);
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 36552u, ~global0.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global0.x, 0u, arg_0.a, 1u), vec4<u32>(global0.x, 18786u, 1u, arg_0.a), vec4<bool>(true, true, true, true)), vec4<u32>(55674u, global0.x, 0u, global1.a) >> (vec4<u32>(0u, u_input.a, 4294967295u, 25004u) % vec4<u32>(32u)))), select(vec4<u32>(1u, arg_0.a, u_input.a, 1u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(108412u, global0.x, 61063u, 4294967295u), vec4<u32>(global1.a, u_input.a, u_input.a, 46750u)) % vec4<u32>(32u)), vec4<u32>(1u, ~u_input.a, 1u, 31014u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), global0.x >= global1.a))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = arg_1.x;
    var var_1 = global0.x;
    global1 = func_1(func_1(arg_3));
    var_1 = 137u;
    let var_2 = arg_0 >> (~0u % 32u);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1816f, _wgslsmith_f_op_f32(795f * -1021f), !arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-655f, 1071f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -934f) + -388f), _wgslsmith_f_op_f32(sign(-199f)))), _wgslsmith_f_op_f32(-1445f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1012f))))), -124f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f), 1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f - -274f) - 438f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1142f + 1516f)), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(432f, 689f) - _wgslsmith_f_op_f32(f32(-1f) * -704f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1458f, _wgslsmith_f_op_f32(func_2().a.x + -1295f), _wgslsmith_f_op_f32(max(-1341f, -236f)))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = ~global1.a;
    let var_1 = Struct_2(func_1(func_1(func_1(func_1(Struct_1(global1.a))))), i32(-1i) * -13615i, Struct_1(select(~firstTrailingBit(79482u), 50745u, false)));
    var var_2 = func_1(var_1.c);
    global1 = var_1.a;
    var var_3 = false;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(-abs(-19364i), global1.a << (global0.x % 32u), func_4(_wgslsmith_mod_i32(-2147483647i, -16724i), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), func_1(Struct_1(57015u))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(105f, 1752f, -285f, 1011f))))), 1f, _wgslsmith_div_f32(-987f, _wgslsmith_f_op_f32(round(2168f))), func_2().a.yzw);
    let var_1 = ~(~(vec2<u32>(global0.x, global1.a) << (abs(vec2<u32>(0u, 0u) >> (global0.xy % vec2<u32>(32u))) % vec2<u32>(32u))));
    global1 = func_1(func_1(Struct_1(global1.a)));
    global1 = Struct_1(_wgslsmith_add_u32(global1.a, var_1.x));
    let var_2 = select(!vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_0.a.x) > var_0.b), select(vec3<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), all(vec4<bool>(false, true, true, true)) | true), vec3<bool>(true, true, true), false), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, !any(vec3<bool>(true, true, true)), false)));
    let var_3 = all(!select(var_2, !vec3<bool>(var_2.x, true, true), !(!var_2.x)));
    global1 = Struct_1(abs(~firstTrailingBit(func_1(Struct_1(global1.a)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(-16635i, 0i), 0i), vec2<i32>(~(467i << (1u % 32u)), ~44234i), _wgslsmith_add_vec2_i32(~vec2<i32>(-59570i, 27024i), vec2<i32>(1i, 1i))), ~countOneBits(3987u), -866f);
}

