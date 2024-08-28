struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1064f, -1082f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    return arg_3.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1183f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2242f, 1469f))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.c, Struct_2(Struct_1(-1000f, u_input.b, arg_1, vec2<i32>(arg_0.x, -2147483647i), u_input.c.xy), global0.x, Struct_1(global0.x, 26801u, arg_1, vec2<i32>(arg_0.x, arg_0.x), u_input.c.xy), 34223u, false), Struct_1(global0.x, 8040u, false, vec2<i32>(arg_0.x, 2147483647i), u_input.c.zx), Struct_1(-774f, u_input.a.x, false, vec2<i32>(arg_0.x, arg_0.x), vec2<u32>(31051u, 0u)))), -354f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(303f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1042f, global0.x), vec2<f32>(-1599f, 1700f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)), true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_0 = arg_0.x;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1191f, _wgslsmith_div_f32(-153f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1637f)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-938f, global0.x)))), _wgslsmith_add_u32(~u_input.a.x << (~131860u % 32u), ~_wgslsmith_clamp_u32(4294967295u, u_input.b, 29396u)), !all(!vec4<bool>(arg_1, arg_1, arg_1, true)), vec2<i32>(1i, _wgslsmith_mod_i32(-28125i, arg_0.x)), u_input.a.xy), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1492f + -498f), -1343f)))), Struct_1(-1803f, ~abs(countOneBits(u_input.a.x)), 691f == _wgslsmith_f_op_f32(-global0.x), arg_0.ww, vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(53156u, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.b, u_input.b, 74832u)))), 0u, true);
    return Struct_1(var_1.c.a, ~_wgslsmith_sub_u32(min(~97769u, _wgslsmith_mod_u32(36131u, 8589u)), ~(~var_1.d)), true, arg_0.zx, vec2<u32>(_wgslsmith_div_u32(1u, ~(~1u)), _wgslsmith_sub_u32(var_1.c.b & 1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.a.e.x, var_1.c.b), 69093u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    return Struct_2(arg_1, 292f, Struct_1(1f, 30358u, !arg_1.c, select(vec2<i32>(1i, -arg_1.d.x), vec2<i32>(arg_1.d.x & -10416i, reverseBits(43013i)), select(!vec2<bool>(true, arg_1.c), vec2<bool>(true, arg_0.x), !arg_0.x)), vec2<u32>(1u, ~arg_1.e.x)), u_input.a.x, true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_4(select(!(!(!vec3<bool>(arg_1.c, arg_0.e, arg_0.a.c))), select(select(select(vec3<bool>(true, arg_0.e, arg_0.c.c), vec3<bool>(arg_2.c.c, arg_2.c.c, arg_0.e), arg_2.e), vec3<bool>(arg_1.c, true, false), !arg_0.e), vec3<bool>(arg_1.c, arg_0.e, false), arg_2.c.c), vec3<bool>(func_4(vec3<bool>(true, false, false), arg_2.a, vec3<f32>(arg_0.c.a, -1000f, 1250f)).c.c || arg_0.a.c, 1i == _wgslsmith_add_i32(arg_0.c.d.x, arg_2.c.d.x), true)), func_2((~vec4<i32>(2147483647i, -2147483647i, -2147483647i, -1i) & ~vec4<i32>(-1i, -2147483647i, arg_2.a.d.x, arg_0.a.d.x)) >> (u_input.a % vec4<u32>(32u)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, global0.x, 1355f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c.a, arg_1.a, arg_2.a.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(207f, 934f, global0.x) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -440f, -1418f)))))));
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, arg_1.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 2616f), vec2<f32>(var_1.b, arg_0.b)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.b)), _wgslsmith_f_op_f32(floor(arg_0.c.a))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a * var_1.c.a), _wgslsmith_f_op_f32(-540f - -380f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -1000f)))))));
    let var_2 = func_4(vec3<bool>(true, false != func_4(vec3<bool>(var_0.a.c, var_1.e, arg_0.a.c), Struct_1(arg_2.c.a, 1u, true, vec2<i32>(-1i, var_0.c.d.x), arg_2.c.e), vec3<f32>(1119f, arg_2.b, global0.x)).e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) >= 681f), Struct_1(var_1.a.a, 1u, true, arg_1.d, vec2<u32>(_wgslsmith_clamp_u32(countOneBits(arg_1.b), _wgslsmith_mult_u32(46222u, 25701u), arg_0.a.b), 5189u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(224f, -541f)), _wgslsmith_f_op_f32(min(arg_1.a, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))))).c;
    let var_3 = func_4(vec3<bool>(var_1.a.c, false, !var_2.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * var_0.c.a)) - -1671f), var_0.c.e.x, any(select(!vec2<bool>(arg_0.e, arg_0.c.c), !vec2<bool>(true, var_0.c.c), true)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.d.x, 1i), ~vec2<i32>(-1i, 2147483647i)), 4863i), vec2<u32>(func_2(firstLeadingBit(vec4<i32>(-6385i, arg_1.d.x, 43288i, -2147483647i)), true).b, ~1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1418f + _wgslsmith_f_op_f32(362f + arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2630f) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)))));
    return func_4(select(select(!vec3<bool>(arg_1.c, true, arg_0.c.c), !select(vec3<bool>(var_2.c, arg_0.e, var_3.a.c), vec3<bool>(false, true, var_3.e), vec3<bool>(var_0.a.c, false, arg_2.a.c)), select(vec3<bool>(false, false, arg_1.c), !vec3<bool>(arg_2.c.c, true, var_1.e), select(vec3<bool>(var_0.e, arg_0.a.c, var_1.a.c), vec3<bool>(var_3.a.c, arg_2.a.c, true), vec3<bool>(var_1.a.c, var_2.c, arg_0.a.c)))), select(select(vec3<bool>(var_3.c.c, true, true), !vec3<bool>(false, arg_1.c, true), arg_1.c || var_1.c.c), select(vec3<bool>(true, arg_2.a.c, false), vec3<bool>(true, false, false), false), !select(vec3<bool>(arg_0.c.c, var_3.c.c, var_1.e), vec3<bool>(true, true, var_0.c.c), vec3<bool>(var_0.e, false, arg_1.c))), func_4(vec3<bool>(var_3.a.c, true, true), var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, var_2.a, 1409f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1601f, arg_1.a, -372f)))))).c.c), Struct_1(_wgslsmith_f_op_f32(round(var_3.c.a)), ~firstTrailingBit(0u), var_2.c, countOneBits(func_2(-vec4<i32>(arg_1.d.x, var_1.a.d.x, 2147483647i, var_2.d.x), 37463i <= arg_2.a.d.x).d), reverseBits(vec2<u32>(4294967295u, 74088u))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, global0.x, -2243f) * vec3<f32>(var_2.a, var_2.a, -584f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a, -1117f, var_3.c.a) * vec3<f32>(1602f, var_2.a, var_1.a.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-1363f, -778f, 1145f), vec3<f32>(var_2.a, 1000f, 380f)), true)), arg_2.e)))));
}

fn func_1() -> bool {
    let var_0 = func_5(func_4(vec3<bool>(true, false, any(vec3<bool>(false, true, false))), func_2(~reverseBits(vec4<i32>(-2147483647i, -58847i, 14045i, -84312i)), false), vec3<f32>(_wgslsmith_div_f32(659f, _wgslsmith_f_op_f32(-global0.x)), global0.x, -338f)), func_2(-reverseBits(vec4<i32>(51727i, 109262i, 1i, 1i) >> (u_input.a % vec4<u32>(32u))), select(func_2(vec4<i32>(26784i, -86087i, 0i, -1i) >> (vec4<u32>(u_input.b, 4294967295u, 53808u, u_input.b) % vec4<u32>(32u)), global0.x >= global0.x).c, false, _wgslsmith_f_op_f32(select(global0.x, global0.x, false)) <= 1000f)), func_4(vec3<bool>(true, !(global0.x <= -728f), func_2(min(vec4<i32>(0i, -32074i, -2147483647i, 50654i), vec4<i32>(26407i, 24334i, 0i, -10265i)), true).c), func_4(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_4(vec3<bool>(false, false, true), Struct_1(global0.x, u_input.a.x, false, vec2<i32>(-8772i, -8040i), u_input.a.zy), vec3<f32>(global0.x, -1563f, 760f)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-387f, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, global0.x)))).c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 563f)), _wgslsmith_f_op_f32(floor(176f)), 268f)));
    var var_1 = vec3<bool>(false, !(!(~u_input.a.x == ~var_0.d)), any(vec3<bool>(false && all(vec4<bool>(false, var_0.c.c, true, var_0.a.c)), true & func_5(var_0, var_0.c, Struct_2(Struct_1(global0.x, var_0.a.b, var_0.a.c, vec2<i32>(54859i, 1i), vec2<u32>(u_input.c.x, 21031u)), global0.x, var_0.c, 80026u, var_0.e)).a.c, true)));
    let var_2 = var_0.a.d.x >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(0i, var_0.c.d.x, 2147483647i, 0i)), ~vec4<i32>(-3039i, 55126i, var_0.c.d.x, -2147483647i)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(10865i, var_0.c.d.x, var_0.c.d.x, 2147483647i), vec4<i32>(var_0.c.d.x, var_0.c.d.x, -26793i, -27911i))));
    let var_3 = reverseBits(-1i);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, 1094f, var_0.c.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a, var_0.c.a, -137f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a, global0.x, -1222f), vec3<f32>(-785f, var_0.a.a, var_0.b))), vec3<f32>(1f, _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(-global0.x))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(max(~(u_input.c.x | u_input.c.x), 1u) | _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), 1u, select(_wgslsmith_sub_u32(u_input.b, abs(4294967295u)), min(u_input.a.x, ~4294967295u), (~0u >> (max(u_input.a.x, 7052u) % 32u)) != 43564u), ~max(select(4294967295u, 1u, true), u_input.b));
    let var_1 = vec2<bool>(false, func_1());
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-global0.x)), global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, -971f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2992f, global0.x) * vec2<f32>(global0.x, 1266f))))), false));
    var var_2 = func_2(~_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-28151i, 25861i, -2147483647i, 0i), vec4<i32>(0i, 13168i, -2147483647i, 2147483647i), vec4<i32>(-40659i, -2147483647i, 2147483647i, 47992i)), vec4<i32>(~63157i, -47804i, ~(-47512i), 877i)), false);
    global0 = vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(trunc(var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(reverseBits(_wgslsmith_mod_i32(0i, -2147483647i)), abs(1i), 0i >> (max(1u, u_input.c.x) % 32u)), vec4<f32>(var_2.a, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(sign(global0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 1885f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(134f, global0.x)), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(968f, 732f), vec2<f32>(global0.x, var_2.a), var_2.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_2.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, -702f) + vec2<f32>(-290f, var_2.a)))))), 0i);
}

