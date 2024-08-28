struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_3,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-979f, 244f, -1213f);

var<private> global1: array<i32, 12>;

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_4(false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(826f, global0.x, global2.x), _wgslsmith_f_op_vec3_f32(-arg_1)), arg_1, select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), 4294967295u > u_input.d.x))), _wgslsmith_f_op_vec3_f32(-arg_1)), Struct_3(1i, 9448u, true, Struct_2(vec4<f32>(global2.x, _wgslsmith_f_op_f32(530f - global2.x), global0.x, arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-249f * -283f), 1f), 4294967295u, ~(-15278i))), 1u, arg_1.x);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-964f, 818f, var_0.a)), -673f)), var_0.e, arg_1.x) * _wgslsmith_f_op_vec3_f32(var_0.b + arg_1));
    var var_1 = var_0.a;
    let var_2 = var_0.c.d;
    let var_3 = _wgslsmith_mult_vec4_u32(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(73204u, 0u, var_2.c, u_input.a.x), ~vec4<u32>(4294967295u, 0u, var_0.d, var_2.c), u_input.a)), u_input.c);
    return u_input.e.x;
}

fn func_2(arg_0: bool) -> Struct_5 {
    let var_0 = _wgslsmith_div_u32(u_input.e.x, ~_wgslsmith_div_u32(u_input.e.x << (abs(39645u) % 32u), func_3(u_input.b.yy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1866f, global2.x, global2.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(min(-1521f, global0.x)), global0.x))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1107f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(445f + -153f), _wgslsmith_f_op_f32(select(global2.x, global0.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-339f, global0.x)), -1266f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(!(318f < global0.x), true), !(!arg_0 && (global0.x > global2.x)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-263f, global0.x)), global2.x, _wgslsmith_f_op_f32(-global0.x));
    let var_2 = (-vec3<i32>(abs(u_input.b.x), global1[_wgslsmith_index_u32(reverseBits(51616u), 12u)], -global1[_wgslsmith_index_u32(63530u, 12u)]) << (countOneBits(~(~vec3<u32>(83243u, u_input.e.x, 0u))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(~u_input.b), min(~vec3<i32>(global1[_wgslsmith_index_u32(7167u, 12u)], 0i, u_input.b.x), u_input.b)), vec3<i32>(-30567i, u_input.b.x, 64000i ^ -u_input.b.x));
    return Struct_5(Struct_1(global2.x, _wgslsmith_div_vec3_u32(countOneBits(u_input.e.zzz) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 32055u, 14774u), u_input.c.wxw) % vec3<u32>(32u)), vec3<u32>(4294967295u, var_0, 27872u)), u_input.b.xy, _wgslsmith_f_op_f32(-global2.x)), select(_wgslsmith_clamp_i32(~var_2.x << (_wgslsmith_add_u32(1u, 61533u) % 32u), ~_wgslsmith_div_i32(-2147483647i, var_2.x), _wgslsmith_sub_i32(-1i << (u_input.a.x % 32u), 27002i)), max(0i, _wgslsmith_mult_i32(u_input.b.x, 37197i) >> (45743u % 32u)), var_1.x), vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_div_f32(global0.x, 876f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -214f), -517f))), abs(_wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, var_2.x), ~_wgslsmith_mult_vec2_i32(var_2.xx, u_input.b.yx))), Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u | var_0, ~u_input.d.x), 12u)], max(~1u, u_input.e.x), arg_0, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-645f - 362f), -1657f, global0.x, _wgslsmith_f_op_f32(select(-356f, 1284f, false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -202f) + _wgslsmith_f_op_f32(global0.x * -625f)), var_0, abs(u_input.b.x & global1[_wgslsmith_index_u32(u_input.d.x, 12u)]))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: bool) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = var_0.e;
    let var_2 = !(!(!(!(!vec3<bool>(arg_0.e.c, false, arg_0.e.c)))));
    var var_3 = func_2(arg_3 || all(vec2<bool>(!arg_3, var_2.x))).e;
    var_3 = Struct_3(~u_input.b.x, arg_0.a.b.x, !any(vec2<bool>(true, false)), func_2(false).e.d);
    return ~vec2<u32>(u_input.e.x, ~(~(var_3.d.c >> (arg_0.a.b.x % 32u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = func_2(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -363f)))).e;
    let var_1 = ~65825u;
    var_0 = Struct_3(i32(-1i) * -15460i, ~0u, false, Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(502f, global0.x, -1000f, var_0.d.a.x), vec4<f32>(var_0.d.a.x, global2.x, global0.x, global0.x))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global2.x, _wgslsmith_f_op_f32(1000f + global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2244f, _wgslsmith_f_op_f32(sign(global2.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1445f * var_0.d.b) + -1418f)), _wgslsmith_mod_u32(~arg_0.x | _wgslsmith_div_u32(u_input.a.x, 51366u), var_1), -25647i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global2.x, -1139f) - vec4<f32>(1833f, global0.x, 466f, -2231f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(338f, 314f, 425f, -1501f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global2.x, -650f, global0.x) * var_0.d.a) + var_0.d.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1154f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))), -1000f), u_input.d.x, (global1[_wgslsmith_index_u32(max(func_3(vec2<i32>(27208i, var_0.a), var_0.d.a.xwz), select(10330u, arg_0.x, var_0.c)), 12u)] & 7710i) ^ ~var_0.a);
    var_0 = Struct_3(-58338i, 46031u, true, func_2(arg_1.x).e.d);
    return Struct_4(false & any(arg_1), var_2.a.xwx, func_2(-u_input.b.x == _wgslsmith_mult_i32(max(global1[_wgslsmith_index_u32(var_2.c, 12u)], -27535i), 0i)).e, arg_0.x ^ var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1351f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-773f, 1720f)), global2.x)));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(1i, min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-12819i, 1i), ~arg_2.x), ~(arg_2.x | (-1i << (1u % 32u)))));
    let var_1 = func_2(all(!(!select(vec2<bool>(arg_0.c.c, true), vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a))))).a;
    let var_2 = func_5(vec2<u32>(~1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) >> (abs(~max(vec2<u32>(17752u, 28939u), var_1.b.xx)) % vec2<u32>(32u)), !vec3<bool>(true, arg_0.c.c, !any(vec3<bool>(arg_0.a, true, true))));
    var var_3 = Struct_5(func_2((_wgslsmith_f_op_f32(global0.x * global0.x) != global2.x) & !select(false, true, false)).a, var_2.c.d.d, _wgslsmith_f_op_vec4_f32(arg_1 * var_2.c.d.a), vec2<i32>(-1i, global1[_wgslsmith_index_u32(1u, 12u)]), Struct_3(firstTrailingBit(-arg_0.c.a), ~(~(~4294967295u)), arg_0.c.c, Struct_2(_wgslsmith_f_op_vec4_f32(exp2(var_2.c.d.a)), func_2(true).a.d, func_2(arg_0.c.c).a.b.x, arg_2.x)));
    let var_4 = Struct_3(abs(-59842i), ~countOneBits(func_5(vec2<u32>(arg_0.c.d.c, 1u), vec3<bool>(arg_0.c.c, true, true)).d), any(select(!(!vec2<bool>(false, var_3.e.c)), vec2<bool>(false, false), arg_0.e <= _wgslsmith_f_op_f32(-var_2.b.x))), func_5(var_1.b.xx, vec3<bool>(!(!arg_0.c.c), var_3.e.c, var_2.a)).c.d);
    return var_2.c;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.e, ~abs(u_input.c) | u_input.e);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(731f)), -1000f))), global2.x, 735f);
    let var_2 = Struct_4(false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1806f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -150f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) + _wgslsmith_div_vec3_f32(var_1, var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1570f, var_1.x, var_1.x))), -global1[_wgslsmith_index_u32(u_input.d.x, 12u)] > ~u_input.b.x)))), func_6(func_5(func_4(func_2(false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global2.x, var_1.x, 1007f)), vec3<u32>(4294967295u, var_0, var_0) & u_input.e.wzz, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(969f, global0.x, global2.x, -1193f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.x, var_1.x, -1965f))) + func_5(~vec2<u32>(var_0, var_0), vec3<bool>(true, true, true)).c.d.a), -reverseBits(vec2<i32>(-70513i, -24588i))), abs(abs(26596u)), -733f);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-502f, _wgslsmith_f_op_f32(var_1.x + global0.x)))) + -202f), 1185f, global0.x);
    var var_3 = var_0;
    return Struct_4(any(!(!vec2<bool>(true, var_2.a))) && true, _wgslsmith_f_op_vec3_f32(-var_1), func_2(true).e, ~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(any(vec3<bool>(var_2.c.c, var_2.c.c, var_2.a))).a.a)));
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32) -> vec4<bool> {
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    var var_0 = !(_wgslsmith_add_u32(min(1u, u_input.a.x), ~_wgslsmith_sub_u32(58576u, arg_2)) == 44635u);
    global0 = arg_1.c.d.a.wyx;
    var var_1 = func_2(!arg_0.x);
    return select(arg_0, select(vec4<bool>(_wgslsmith_mod_u32(8693u, u_input.e.x) < arg_2, all(!arg_0), true, -131f > _wgslsmith_f_op_f32(-global2.x)), !(!select(arg_0, vec4<bool>(var_1.e.c, false, var_1.e.c, true), vec4<bool>(true, true, arg_1.c.c, var_1.e.c))), select(!(arg_0.x && arg_0.x), func_2(true).e.c, arg_1.a)), vec4<bool>(arg_0.x, func_6(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_1.b.x, 1523f, var_1.c.x) - arg_1.c.d.a), u_input.b.xz).c, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.zww;
    var var_1 = abs(1u);
    let var_2 = vec4<bool>(true, (!all(vec4<bool>(false, false, true, false)) || false) || (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 6106u), countOneBits(var_0.yy)), 12u)] > -35107i), true, any(func_7(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), func_1(), firstLeadingBit(var_0.x))) || true);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1531f, global0.x, -1052f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(839f, global2.x, 1476f), vec3<f32>(511f, 1797f, global2.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, -204f, global2.x))))) + vec3<f32>(global2.x, 142f, 1000f));
    global2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1628f) <= global0.x).e.d.a.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(-10177i & u_input.b.x, -29566i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) * _wgslsmith_f_op_f32(ceil(342f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, 1464f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), func_6(Struct_4(true, vec3<f32>(-831f, global0.x, 685f), func_6(Struct_4(true, vec3<f32>(global0.x, 1289f, global2.x), Struct_3(u_input.b.x, 92491u, false, Struct_2(vec4<f32>(global0.x, global0.x, 159f, -485f), global0.x, var_0.x, -1i)), 21446u, global2.x), vec4<f32>(1685f, 181f, global0.x, -829f), vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(21033u, 12u)])), u_input.d.x, _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_vec4_f32(round(func_6(Struct_4(var_2.x, vec3<f32>(1198f, global2.x, -315f), Struct_3(0i, u_input.a.x, false, Struct_2(vec4<f32>(1271f, -488f, global0.x, global0.x), -1518f, 42628u, 40505i)), u_input.d.x, -324f), vec4<f32>(-1330f, 2276f, global2.x, -1399f), vec2<i32>(global1[_wgslsmith_index_u32(37081u, 12u)], global1[_wgslsmith_index_u32(80553u, 12u)])).d.a)), firstLeadingBit(-u_input.b.yy)).d.a)), global1[_wgslsmith_index_u32(var_0.x, 12u)]);
}

