struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(global0.d.a);
    var var_1 = Struct_2(Struct_1(var_0.a), !global0.b, global0.c, global0.d);
    let var_2 = Struct_2(Struct_1(72511u), var_1.b, abs(global0.c), var_1.a);
    var var_3 = !vec3<bool>(false, var_2.b.x, !var_1.b.x);
    let var_4 = global0.c.x;
    return ~(~(reverseBits(var_2.d.a) & ~71466u)) << (0u % 32u);
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(var_0.d, !vec4<bool>(var_0.b.x, true, arg_0.b.x, true), var_0.c, Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, -602f, -174f))) | ~(~1u)));
    var_0 = Struct_2(Struct_1(14697u), select(vec4<bool>(global0.b.x != true, all(select(vec2<bool>(var_1.b.x, global0.b.x), var_1.b.yz, var_0.b.x)), false, all(vec3<bool>(true, var_0.b.x, false))), arg_0.b, false), -min(~vec4<i32>(-2147483647i, var_0.c.x, 0i, arg_0.c.x), max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, 0i, var_0.c.x), vec4<i32>(0i, 35371i, arg_0.c.x, arg_0.c.x)), vec4<i32>(var_1.c.x, u_input.a, 2147483647i, var_1.c.x))), var_0.d);
    var var_2 = vec2<bool>(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1290f)) + _wgslsmith_f_op_f32(128f * 298f)) > _wgslsmith_f_op_f32(-294f - _wgslsmith_f_op_f32(select(279f, 647f, true)))));
    var_0 = arg_0;
    return global0.d.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.a, 0u, arg_1.d.a, 0u), vec4<u32>(arg_1.a.a, u_input.b, 0u, 4294967295u)) ^ reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(37888u, 22559u, 1u), vec3<u32>(arg_1.a.a, 81519u, 1u)))), arg_1.b, vec4<i32>(u_input.a, u_input.a, u_input.a, min(-13487i, abs(1i))), arg_1.a);
    let var_0 = vec3<bool>(true, false, false);
    global1 = ~((u_input.b ^ select(u_input.b, ~arg_1.d.a, all(var_0.xz))) | ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(5306u, 18206u, 109619u), vec3<u32>(arg_0.d, arg_0.b, 4642u))));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - 716f)), 224f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(716f, 370f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(705f, -1530f), vec2<f32>(-1000f, -130f), false)) * vec2<f32>(-535f, 1108f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(306f, -428f)))))));
    var_1 = vec2<f32>(var_1.x, 529f);
    return Struct_2(arg_1.a, select(!vec4<bool>(global0.c.x <= global0.c.x, global0.b.x, any(global0.b.xx), arg_1.b.x != false), select(select(!vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, false, global0.b.x, false), select(var_0.x, global0.b.x, arg_1.b.x)), !global0.b, true), select(select(vec4<bool>(arg_1.b.x, true, global0.b.x, true), select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, global0.b.x), vec4<bool>(true, true, arg_1.b.x, false), global0.b.x), arg_1.b), !(!global0.b), !all(vec2<bool>(var_0.x, false)))), -firstTrailingBit(vec4<i32>(-32845i, 2147483647i ^ global0.c.x, _wgslsmith_dot_vec2_i32(arg_1.c.yx, arg_1.c.xz), arg_1.c.x >> (arg_0.d % 32u))), Struct_1(_wgslsmith_mult_u32(15276u, global0.a.a)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) * 357f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2177f)))));
    var var_1 = arg_1.a;
    global1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(arg_0 | 0u), _wgslsmith_sub_u32(~(~arg_0), 1u)), _wgslsmith_clamp_u32(arg_1.a.a, select(var_1.a, arg_1.d.a, !(!global0.b.x)), ~abs(global0.a.a)));
    global0 = func_4(Struct_3(-2147483647i, ~(~func_2(Struct_2(Struct_1(8632u), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<i32>(u_input.a, -5918i, -2147483647i, global0.c.x), global0.a))), 0u, arg_1.a.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(global0.c.yxz), vec3<i32>(u_input.a, global0.c.x, u_input.a) << (vec3<u32>(global0.d.a, 17009u, var_1.a) % vec3<u32>(32u))), min(global0.c.ywx, -arg_1.c.yyy))), Struct_2(arg_1.a, vec4<bool>(true, true, true, false), _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(arg_1.c.zzz, vec3<i32>(global0.c.x, 0i, u_input.a)), _wgslsmith_clamp_i32(global0.c.x, global0.c.x, -1i), -global0.c.x), ~vec4<i32>(-19551i, global0.c.x, u_input.a, arg_1.c.x)), Struct_1(30571u)));
    var_1 = Struct_1(func_4(Struct_3(arg_1.c.x, ~arg_0, func_2(Struct_2(Struct_1(1u), global0.b, vec4<i32>(-7830i, u_input.a, -20171i, 0i), global0.a)), ~5473u, ~global0.c.x), func_4(Struct_3(~global0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 51043u), vec2<u32>(30832u, 21388u)), _wgslsmith_div_u32(arg_1.a.a, 49770u), ~var_1.a, 0i), Struct_2(func_4(Struct_3(arg_1.c.x, arg_0, 4294967295u, global0.a.a, 85881i), arg_1).a, vec4<bool>(false, arg_1.b.x, global0.b.x, arg_1.b.x), vec4<i32>(-1i, -2147483647i, -2147483647i, 1i), func_4(Struct_3(u_input.a, 28874u, 4294967295u, arg_1.a.a, -36268i), arg_1).a))).a.a);
    return func_4(Struct_3(arg_1.c.x, 96310u, 11578u >> (func_2(Struct_2(arg_1.d, global0.b, arg_1.c, global0.d)) % 32u), 4294967295u, u_input.a), Struct_2(func_4(Struct_3(~(-37871i), 6249u, 51662u, u_input.b, ~arg_1.c.x), Struct_2(func_4(Struct_3(arg_1.c.x, arg_1.a.a, var_1.a, var_1.a, u_input.a), Struct_2(arg_1.d, global0.b, arg_1.c, arg_1.d)).a, arg_1.b, vec4<i32>(u_input.a, 20364i, u_input.a, arg_1.c.x), func_4(Struct_3(global0.c.x, global0.a.a, var_1.a, 1u, arg_1.c.x), arg_1).a)).d, arg_1.b, vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_1.c.x, -39330i, 2147483647i, 1i)), select(arg_1.c, global0.c, true)), global0.c.x, _wgslsmith_mult_i32(global0.c.x, -58547i), -firstLeadingBit(u_input.a)), func_4(Struct_3(u_input.a, ~arg_0, 1u, ~4294967295u, 407i), func_4(Struct_3(28005i, 17981u, var_1.a, global0.d.a, arg_1.c.x), func_4(Struct_3(u_input.a, var_1.a, global0.d.a, 1u, arg_1.c.x), arg_1))).d));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !arg_1.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -171f) - _wgslsmith_f_op_f32(248f + _wgslsmith_f_op_f32(-1787f + _wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = global0.b.x;
    var var_3 = select(true, !func_1(_wgslsmith_mod_u32(global0.a.a, 6743u) << (0u % 32u), arg_1).b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1186f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(-arg_0))))) != -370f);
    var_3 = arg_1.b.x;
    return Struct_1(~(~global0.d.a));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    global0 = func_1(reverseBits(abs(1u)), arg_3);
    var var_0 = arg_3.b.x;
    var var_1 = _wgslsmith_div_u32(arg_3.d.a, arg_3.d.a & func_4(Struct_3(func_1(arg_2.x, Struct_2(Struct_1(40468u), global0.b, global0.c, arg_0)).c.x, firstLeadingBit(1u), arg_2.x, firstTrailingBit(arg_0.a), _wgslsmith_sub_i32(-2147483647i, arg_1)), Struct_2(func_1(u_input.b, arg_3).d, global0.b, global0.c, Struct_1(arg_2.x))).d.a);
    var_0 = global0.b.x;
    var_0 = true;
    return Struct_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(15128i, global0.c.x) ^ select(global0.c.ww, global0.c.yx, vec2<bool>(true, true)), -global0.c.wy & ~global0.c.wy), func_1(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1724f, -948f))), func_4(Struct_3(arg_1, 4294967295u, arg_3.d.a, 1u, u_input.a), func_4(Struct_3(27327i, arg_3.a.a, 2291u, 42710u, global0.c.x), Struct_2(Struct_1(global0.a.a), arg_3.b, arg_3.c, arg_0)))).c.x), ((countOneBits(0u) ^ global0.d.a) & arg_2.x) ^ ~13285u, ~arg_3.a.a, ~_wgslsmith_mult_u32(~reverseBits(global0.d.a), _wgslsmith_mod_u32(arg_0.a, arg_3.a.a)), -1i);
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    global0 = Struct_2(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(993f + 170f) - _wgslsmith_div_f32(-926f, -1973f)), func_1(_wgslsmith_dot_vec2_u32(arg_2.xx, arg_2.yx) | _wgslsmith_mult_u32(38059u, arg_1.d), func_4(func_6(global0.d, arg_0.x, vec4<u32>(36026u, global0.d.a, 10422u, 1802u), Struct_2(global0.a, global0.b, global0.c, global0.a)), Struct_2(global0.a, vec4<bool>(global0.b.x, global0.b.x, false, false), global0.c, Struct_1(1u)))), func_4(arg_1, func_4(func_6(global0.d, u_input.a, vec4<u32>(1u, u_input.b, arg_2.x, 1u), Struct_2(Struct_1(44161u), vec4<bool>(global0.b.x, global0.b.x, true, true), global0.c, Struct_1(u_input.b))), func_4(arg_3, Struct_2(Struct_1(1u), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), global0.c, Struct_1(0u))))).d), vec4<bool>(global0.b.x, _wgslsmith_sub_i32(min(-31247i, arg_1.e), _wgslsmith_clamp_i32(0i, arg_1.e, -2147483647i)) == global0.c.x, false, arg_1.d < (global0.a.a ^ _wgslsmith_mult_u32(22057u, arg_2.x))), global0.c, Struct_1(_wgslsmith_clamp_u32(func_3(vec3<f32>(-140f, -1131f, -351f)) << (5547u % 32u), ~57762u, _wgslsmith_dot_vec2_u32(~arg_2.zy, vec2<u32>(26185u, arg_3.d) & vec2<u32>(25638u, arg_1.d)))));
    var var_0 = Struct_2(global0.a, !global0.b, -(global0.c >> ((firstTrailingBit(vec4<u32>(0u, arg_2.x, arg_1.c, arg_3.d)) << (firstTrailingBit(vec4<u32>(arg_3.c, 50431u, 1u, 79914u)) % vec4<u32>(32u))) % vec4<u32>(32u))), global0.a);
    global0 = func_1(0u, func_4(func_6(Struct_1(47428u), ~1i, firstTrailingBit(~vec4<u32>(26360u, u_input.b, global0.d.a, 1u)), func_1(arg_1.b & 46340u, Struct_2(var_0.d, global0.b, global0.c, Struct_1(4294967295u)))), Struct_2(global0.a, global0.b, -func_1(1u, Struct_2(Struct_1(arg_2.x), vec4<bool>(var_0.b.x, true, true, false), vec4<i32>(-40390i, -24736i, 2147483647i, arg_0.x), Struct_1(1u))).c, Struct_1(0u ^ arg_3.b))));
    global0 = func_4(func_6(Struct_1(20592u), _wgslsmith_mult_i32(arg_3.e, _wgslsmith_sub_i32(arg_0.x, arg_0.x)) ^ abs(abs(1i)), reverseBits(_wgslsmith_div_vec4_u32(select(vec4<u32>(global0.d.a, 4294967295u, arg_1.b, 39625u), vec4<u32>(1u, arg_2.x, 73252u, 4294967295u), global0.b), ~vec4<u32>(704u, 35341u, u_input.b, 42084u))), Struct_2(func_5(_wgslsmith_f_op_f32(floor(-1367f)), Struct_2(global0.a, global0.b, global0.c, global0.a), Struct_1(global0.d.a)), vec4<bool>(global0.b.x, true, var_0.b.x, any(vec3<bool>(global0.b.x, true, var_0.b.x))), reverseBits(var_0.c), Struct_1(abs(u_input.b)))), func_4(Struct_3(arg_0.x ^ arg_3.a, _wgslsmith_mod_u32(~8980u, min(global0.a.a, 0u)), ~_wgslsmith_div_u32(u_input.b, 26570u), ~_wgslsmith_sub_u32(u_input.b, var_0.d.a), ~0i), func_1(1u | (arg_3.b | arg_1.d), func_1(50210u, func_1(arg_2.x, Struct_2(var_0.d, vec4<bool>(var_0.b.x, false, true, false), vec4<i32>(-2147483647i, arg_1.a, 1i, -12878i), Struct_1(0u)))))));
    var var_1 = vec2<f32>(-944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(283f)) - -108f) + 107f)));
    return i32(-1i) * -7401i;
}

fn func_8(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = 1u;
    global0 = func_4(func_6(func_1(~arg_0 ^ var_0, func_1(func_5(1069f, Struct_2(Struct_1(global0.d.a), global0.b, vec4<i32>(u_input.a, arg_1, u_input.a, u_input.a), Struct_1(u_input.b)), global0.a).a, func_1(1u, Struct_2(Struct_1(0u), global0.b, global0.c, global0.d)))).d, 92640i, ((vec4<u32>(35066u, 55578u, global0.a.a, 4294967295u) | vec4<u32>(1u, 4294967295u, 4294967295u, var_0)) >> (~vec4<u32>(global0.d.a, arg_0, 28727u, arg_0) % vec4<u32>(32u))) | vec4<u32>(firstTrailingBit(104138u), 31968u, _wgslsmith_div_u32(0u, var_0), ~8230u), Struct_2(global0.d, vec4<bool>(true, func_1(global0.d.a, Struct_2(Struct_1(var_0), global0.b, vec4<i32>(u_input.a, 2147483647i, -10351i, u_input.a), global0.d)).b.x, !global0.b.x, true), ~(-vec4<i32>(arg_1, 14628i, u_input.a, 1i)), Struct_1(67016u))), func_1(1u >> (arg_0 % 32u), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(25984u, global0.a.a, u_input.b, 91193u), ~vec4<u32>(5695u, arg_0, 1u, 0u)), func_1(func_3(vec3<f32>(-173f, 768f, 285f)), func_4(Struct_3(arg_2, 40162u, 97032u, 66658u, u_input.a), Struct_2(global0.d, vec4<bool>(false, true, global0.b.x, false), global0.c, Struct_1(18938u)))))));
    var var_1 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(select(i32(-1i) * -2147483647i, reverseBits(u_input.a), global0.b.x), ~arg_1), arg_1, func_4(func_6(func_1(_wgslsmith_sub_u32(arg_0, 1u), Struct_2(Struct_1(arg_0), vec4<bool>(true, global0.b.x, global0.b.x, false), global0.c, Struct_1(0u))).a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, 0i), func_1(1u, Struct_2(global0.d, vec4<bool>(false, true, global0.b.x, false), vec4<i32>(arg_1, -52943i, 2147483647i, arg_2), global0.a)).c.x), abs(vec4<u32>(arg_0, var_0, 1u, arg_0)), func_1(4294967295u, func_1(arg_0, Struct_2(Struct_1(15721u), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), vec4<i32>(0i, 2147483647i, 7959i, arg_2), global0.a)))), Struct_2(Struct_1(~var_0), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), -countOneBits(vec4<i32>(18635i, arg_1, 1i, arg_1)), func_4(Struct_3(global0.c.x, 0u, 32000u, 10276u, global0.c.x), Struct_2(global0.a, vec4<bool>(false, global0.b.x, false, global0.b.x), vec4<i32>(arg_2, -11578i, 0i, 2147483647i), Struct_1(52997u))).d)).c.x);
    var var_2 = Struct_3(-23082i, _wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, u_input.b, var_0), ~vec3<u32>(u_input.b, u_input.b, 43219u)) | var_0), select(global0.d.a, var_0, !func_4(Struct_3(u_input.a, 1u, 66527u, 16007u, u_input.a), func_4(Struct_3(-2147483647i, arg_0, var_0, global0.d.a, -1i), Struct_2(Struct_1(var_0), global0.b, global0.c, Struct_1(arg_0)))).b.x), ~func_3(vec3<f32>(_wgslsmith_f_op_f32(-501f - 553f), _wgslsmith_f_op_f32(941f * -1000f), _wgslsmith_f_op_f32(step(-1283f, 698f)))), arg_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-563f, 941f, 1768f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-748f, 513f, 822f), vec3<f32>(-986f, -210f, 942f), vec3<bool>(false, global0.b.x, true)))))));
    return func_4(func_6(Struct_1(79700u), var_2.a, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, var_0), vec2<u32>(global0.d.a, global0.a.a)), global0.d.a, 0u, 1u), max(~vec4<u32>(global0.a.a, 13269u, 12333u, 11477u), ~vec4<u32>(49656u, global0.a.a, 56759u, 4918u))), func_1(760u, func_4(Struct_3(38729i, 1u, 39622u, 4546u, arg_2), Struct_2(Struct_1(4294967295u), global0.b, vec4<i32>(-13178i, -19198i, arg_2, var_2.a), Struct_1(var_0))))), Struct_2(global0.d, !global0.b, ~global0.c, global0.a)).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.a.a, 1u), ~21380u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(global0.c.ww & vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(global0.c.x, -2147483647i), !global0.b.x), vec2<i32>(u_input.a | -2147483647i, u_input.a)), u_input.a), func_7(min(global0.c.xx, (global0.c.xx << (vec2<u32>(global0.a.a, global0.d.a) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(53166u, 22803u), vec2<u32>(global0.d.a, u_input.b)) % vec2<u32>(32u))), func_6(func_5(-1559f, func_1(3527u, Struct_2(Struct_1(1u), global0.b, global0.c, Struct_1(u_input.b))), global0.d), u_input.a, vec4<u32>(1u, 25253u | global0.d.a, _wgslsmith_sub_u32(25436u, global0.a.a), u_input.b), func_4(Struct_3(-47936i, 34238u, global0.a.a, 4294967295u, global0.c.x), func_4(Struct_3(u_input.a, 54694u, u_input.b, global0.d.a, 2147483647i), Struct_2(Struct_1(4294967295u), vec4<bool>(false, false, global0.b.x, global0.b.x), global0.c, global0.d)))), ~vec3<u32>(global0.a.a, global0.a.a, 71637u) << (vec3<u32>(func_1(u_input.b, Struct_2(global0.a, vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x), vec4<i32>(1i, u_input.a, -40091i, 43411i), Struct_1(u_input.b))).d.a, firstLeadingBit(global0.a.a), 4294967295u) % vec3<u32>(32u)), func_6(func_1(u_input.b >> (u_input.b % 32u), Struct_2(global0.d, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), global0.c, global0.a)).a, max(u_input.a, -2147483647i << (global0.a.a % 32u)), countOneBits(vec4<u32>(u_input.b, global0.a.a, 1u, global0.a.a) | vec4<u32>(0u, u_input.b, u_input.b, 0u)), func_1(_wgslsmith_mod_u32(41017u, 4760u), func_4(Struct_3(22548i, 0u, global0.a.a, global0.a.a, global0.c.x), Struct_2(Struct_1(global0.a.a), global0.b, vec4<i32>(global0.c.x, u_input.a, 50814i, u_input.a), global0.d))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)));
    global1 = ~(~u_input.b) | (_wgslsmith_add_u32(global0.a.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_0.a), vec2<u32>(1u, var_0.a)), select(vec2<u32>(50267u, var_0.a), vec2<u32>(0u, 1u), vec2<bool>(global0.b.x, global0.b.x)))) >> (_wgslsmith_mod_u32(countOneBits(u_input.b | 4294967295u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, global0.d.a), u_input.b)) % 32u));
    let var_2 = global0.b.x;
    let var_3 = Struct_2(func_5(_wgslsmith_div_f32(374f, _wgslsmith_f_op_f32(-var_1)), func_4(Struct_3(u_input.a & global0.c.x, ~4294967295u, _wgslsmith_mult_u32(u_input.b, u_input.b), func_1(var_0.a, Struct_2(Struct_1(global0.a.a), vec4<bool>(global0.b.x, false, true, false), vec4<i32>(2147483647i, global0.c.x, -1i, global0.c.x), Struct_1(23690u))).d.a, global0.c.x), func_1(firstTrailingBit(u_input.b), Struct_2(global0.d, vec4<bool>(global0.b.x, false, false, false), global0.c, global0.d))), func_5(_wgslsmith_f_op_f32(select(1003f, -1693f, 13823u == var_0.a)), func_4(Struct_3(global0.c.x, u_input.b, 4294967295u, global0.a.a, 25887i), Struct_2(global0.a, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), global0.c, Struct_1(39197u))), func_8(u_input.b, 1013i & global0.c.x, global0.c.x))), global0.b, ~(global0.c | vec4<i32>(_wgslsmith_div_i32(-50835i, u_input.a), global0.c.x & 23552i, select(-2147483647i, global0.c.x, false), _wgslsmith_add_i32(u_input.a, 10703i))), Struct_1(36479u));
    let var_4 = -vec2<i32>(-14431i, u_input.a << (u_input.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(func_6(Struct_1(u_input.b), -59294i, vec4<u32>(var_0.a, var_3.a.a, var_3.d.a, 0u), var_3).d) & max(~4294967295u, ~6464u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-461f)) * _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1)))), reverseBits(var_3.c.xxy), -abs(_wgslsmith_dot_vec3_i32(-var_3.c.zyz, vec3<i32>(27153i, -49550i, var_4.x))), ~0u);
}

