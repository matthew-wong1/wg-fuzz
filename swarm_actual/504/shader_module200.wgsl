struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32 = 10876i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    let var_0 = arg_2;
    global1 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-732f, _wgslsmith_f_op_f32(step(arg_1, -1354f)))) * _wgslsmith_f_op_f32(-718f - 1521f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -1079f)) + 569f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), abs(~arg_0));
    global0 = !var_0.e;
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, var_1.c) ^ abs(vec2<i32>(var_1.c, 34685i)), vec2<i32>(arg_0, 0i), ~vec2<i32>(var_1.c, var_1.c) << ((vec2<u32>(arg_3.x, 27730u) >> (vec2<u32>(var_0.b.x, 22035u) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<i32>(arg_0, var_1.c), vec2<i32>(arg_0, ~arg_0));
    return _wgslsmith_f_op_f32(f32(-1f) * -1772f);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(443f)) * _wgslsmith_f_op_f32(func_3(-30371i, -1584f, Struct_3(true, vec3<u32>(6173u, 0u, 1u), true, vec2<bool>(false, false), vec2<bool>(true, global0.x)), vec2<u32>(47077u, 29335u)))))) < -304f, vec3<u32>(47361u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x << (3730u % 32u)) & u_input.a.x, u_input.a.x), true, vec2<bool>(all(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false), true)), global0.x && any(vec3<bool>(false, global0.x, false))), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), select(true, all(vec2<bool>(global0.x, global0.x)), true)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1966f) * 1f))));
    var var_2 = abs(-(~(-1i)));
    let var_3 = var_0.b;
    let var_4 = -(~min(~48705i, -(i32(-1i) * -1i)));
    return Struct_3(true, ~(max(var_0.b, ~var_0.b) & (~var_0.b >> (countOneBits(vec3<u32>(16038u, var_0.b.x, 37558u)) % vec3<u32>(32u)))), all(select(vec4<bool>(all(vec2<bool>(var_0.a, false)), true, global0.x && false, !var_0.e.x), vec4<bool>(global0.x && true, true, true, global0.x), vec4<bool>(!var_0.e.x, !var_0.d.x, any(vec4<bool>(global0.x, false, global0.x, false)), false))), vec2<bool>(_wgslsmith_clamp_u32(u_input.a.x ^ var_3.x, var_3.x, 1u) >= firstTrailingBit(89681u), any(vec4<bool>(global0.x | var_0.a, all(vec3<bool>(global0.x, true, global0.x)), true, var_0.e.x))), select(vec2<bool>(true, false), select(vec2<bool>(global0.x, true == global0.x), select(!vec2<bool>(false, global0.x), !var_0.d, !var_0.a), !select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.d.x, true), true)), any(select(select(vec2<bool>(global0.x, var_0.a), vec2<bool>(var_0.e.x, global0.x), global0.x), vec2<bool>(global0.x, false), any(vec4<bool>(var_0.a, global0.x, false, global0.x))))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = -233f;
    var_0 = 349f;
    let var_1 = func_2();
    global0 = !(!(!var_1.e));
    var var_2 = func_2();
    return Struct_2(~arg_2, select(vec4<bool>(var_2.a, arg_0, select(true, true, false) & !var_1.c, !any(vec3<bool>(true, var_2.d.x, var_1.a))), vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.b.x), vec2<u32>(var_2.b.x, 42442u)) <= (u_input.a.x | 0u), false, 1u != u_input.a.x, true), var_2.c), global0.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> Struct_3 {
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = func_1(!(global0.x | false), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), ~2147483647i);
    global0 = arg_1.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_div_f32(-893f, -852f), _wgslsmith_f_op_f32(1822f * arg_3.a), arg_2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, 1000f, arg_2.x, -997f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, 1153f, arg_3.b, arg_2.x), vec4<f32>(-1288f, -1563f, 888f, arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, -404f, 954f, arg_3.b)), select(global0.x, var_0.c, global0.x & global0.x)))));
    var var_2 = _wgslsmith_f_op_f32(1336f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a - -1388f))) - _wgslsmith_f_op_f32(round(-1000f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) - arg_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-864f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 1321f)))), var_1), var_1));
    return func_2();
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    global0 = func_2().d;
    global0 = arg_1.d;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x, 1175f, Struct_3(false, vec3<u32>(arg_1.b.x, 29791u, arg_1.b.x), global0.x, arg_1.e, vec2<bool>(arg_1.c, true)), u_input.a))), _wgslsmith_f_op_f32(func_3(arg_0.x, -209f, Struct_3(false, arg_1.b, false, arg_1.e, arg_1.e), vec2<u32>(16177u, 1u))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f), -983f)), -1930f, -25172i);
    var var_1 = vec4<f32>(var_0.b, _wgslsmith_f_op_f32(func_3(40850i, _wgslsmith_f_op_f32(-var_0.a), func_4(arg_1.d.x, Struct_2(~var_0.c, vec4<bool>(global0.x, true, false, true), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -279f))), _wgslsmith_add_i32(countOneBits(var_0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -9845i, var_0.c), vec3<i32>(arg_0.x, arg_0.x, 0i)))), u_input.a)), _wgslsmith_f_op_f32(-var_0.a), -1000f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(var_0.b, 706f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) + -473f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1361f))), _wgslsmith_f_op_f32(-var_1.x), false))), -1055f);
    return ~(_wgslsmith_mod_i32(-2147483647i, ~2147483647i) | firstTrailingBit(min(_wgslsmith_mod_i32(-2147483647i, -5806i), -arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_i32(firstLeadingBit((9381i << (u_input.a.x % 32u)) << ((max(u_input.a.x, u_input.a.x) | (1u << (u_input.a.x % 32u))) % 32u)), _wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(2147483647i, -4251i))), -vec2<i32>(min(1i, -2147483647i), _wgslsmith_sub_i32(-8227i, -1i))));
    global1 = max(select(_wgslsmith_add_i32(i32(-1i) * -2147483647i, -33653i), 2147483647i, true), 0i >> (0u % 32u)) & func_6(abs(-vec3<i32>(-21865i, 9526i, -2147483647i) | (vec3<i32>(0i, 1i, -1i) >> (vec3<u32>(69137u, 11448u, u_input.a.x) % vec3<u32>(32u)))), func_5(2328u, func_4(!global0.x, func_1(global0.x, vec2<f32>(-1917f, -1009f), -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 945f)), ~38670i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1707f, -1000f, 477f)), Struct_1(_wgslsmith_f_op_f32(step(1843f, 403f)), 2462f, i32(-1i) * -2147483647i)));
    var var_0 = ~1u;
    let var_1 = _wgslsmith_f_op_f32(-1529f + 388f);
    var_0 = max(u_input.a.x ^ 4294967295u, u_input.a.x);
    let var_2 = select(vec3<u32>(32018u, u_input.a.x, 0u), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(12704u, u_input.a.x), vec2<u32>(29959u, 0u)), 4294967295u, ~(~u_input.a.x)), _wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(6835u, 38559u, 4294967295u)), vec3<u32>(4294967295u, 1u, 40007u) >> (func_5(0u, Struct_3(true, vec3<u32>(u_input.a.x, 1u, 40597u), global0.x, vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), vec3<f32>(var_1, 839f, var_1), Struct_1(535f, 500f, 11669i)).b % vec3<u32>(32u))), firstTrailingBit(~58438i) >= ((i32(-1i) * -31597i) & select(-5733i, 1i, global0.x))), true);
    var_0 = u_input.a.x;
    let var_3 = vec3<f32>(var_1, -987f, _wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(ceil(var_1))));
    var var_4 = 33452u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, 43696u), vec2<u32>(4294967295u, 0u), false), var_2.xz), u_input.a)), _wgslsmith_add_vec3_i32(select(abs(~vec3<i32>(-52602i, 4029i, 25302i)), vec3<i32>(1i, 1i, 1i), select(true, all(vec4<bool>(global0.x, global0.x, true, global0.x)), true)), min(min(vec3<i32>(-2147483647i, 40768i, 2147483647i) << (var_2 % vec3<u32>(32u)), vec3<i32>(1i, -33005i, -4462i)), min(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(-42249i, 46712i, -3236i))))), ~31340u, vec4<f32>(var_3.x, var_1, _wgslsmith_f_op_f32(floor(var_1)), var_1));
}

