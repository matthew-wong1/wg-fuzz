struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 919f;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> bool {
    let var_0 = reverseBits(firstLeadingBit(~global2.d));
    var var_1 = _wgslsmith_clamp_u32(var_0, ~36633u, _wgslsmith_mult_u32(~(global1.x | max(5988u, global2.d)), var_0));
    global0 = -1703f;
    var var_2 = ~(-47339i);
    var var_3 = vec3<bool>(all(vec2<bool>(arg_1 | !arg_0.x, true)), global2.e, arg_1);
    return arg_0.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(944f, arg_0) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(211f, -314f), vec2<f32>(global2.c, global2.c), vec2<bool>(global2.e, true)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(229f, -817f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), Struct_2(func_3(vec3<bool>(arg_2 | arg_2, true, select(true, global2.e, false)), !(!arg_1.x))));
    global1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(max(u_input.b, 0u) & u_input.a), ~(global1.x << (abs(u_input.b) % 32u)), u_input.a), ~vec3<u32>(global2.d, global2.d, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global1.x, global2.d), vec3<u32>(u_input.b, global2.d, u_input.b)), vec3<u32>(global2.d, 79527u, 3405u))), select(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 86785u, 9204u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, global2.d, u_input.b), vec3<u32>(u_input.a, global1.x, 91517u))), vec3<u32>(global1.x, 72120u, 0u) >> (vec3<u32>(u_input.a, global2.d, global1.x) % vec3<u32>(32u))), select(vec3<u32>(12501u | u_input.a, firstLeadingBit(global1.x), global1.x), reverseBits(vec3<u32>(u_input.a, 56176u, global1.x)), vec3<bool>(false, arg_1.x, true)), !arg_2));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var var_1 = Struct_4(var_0.b, Struct_1(-(~vec4<i32>(2147483647i, 2147483647i, 4897i, u_input.c.x) & _wgslsmith_div_vec4_i32(global2.a, u_input.c)), -global2.a.x, 487f, 21995u, !arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c))) + -1000f))), Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-2272f, 323f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.c, 324f))), _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a))), select(select(arg_1, arg_1, true), arg_1, vec2<bool>(true, true)))), Struct_2(any(select(vec3<bool>(var_0.b.a, true, arg_1.x), vec3<bool>(true, false, var_0.b.a), vec3<bool>(false, false, false))))));
    var var_2 = (i32(-1i) * -1i) ^ var_1.b.b;
    return global2.a.yxx;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> u32 {
    global2 = Struct_1(~(select(firstTrailingBit(u_input.c), -global2.a, true) | (-vec4<i32>(arg_3.x, u_input.c.x, 14050i, 1i) & vec4<i32>(u_input.c.x, u_input.c.x, 0i, arg_3.x))), 1423i, arg_1.x, global2.d, arg_1.x < _wgslsmith_f_op_f32(ceil(-1479f)));
    var var_0 = Struct_2(!func_3(vec3<bool>(!arg_0.x, func_3(vec3<bool>(global2.e, true, false), true), true), global2.e && (arg_1.x < global2.c)));
    var var_1 = arg_0.x;
    var var_2 = arg_1.zy;
    var var_3 = Struct_3(arg_1.yy, Struct_2(func_3(vec3<bool>(true, u_input.a >= 39956u, !var_0.a), true)));
    return global2.d;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(round(global2.c));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1965f, global2.c))))));
    let var_1 = min(global1.x, 38168u);
    let var_2 = vec3<bool>(select(true, false, true), true, arg_2.d.e);
    var var_3 = ~func_5(!(!vec4<bool>(arg_2.d.e, arg_2.d.e, arg_2.d.e, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1033f, global2.c, arg_0.a.x) - vec3<f32>(global2.c, arg_0.a.x, arg_2.d.c))))), vec3<i32>(global2.b, -16625i, _wgslsmith_dot_vec4_i32(abs(arg_2.d.a), vec4<i32>(20407i, global2.a.x, u_input.c.x, u_input.d.x))), func_4(-2741f, arg_2.c.zz, func_3(!vec3<bool>(arg_2.c.x, false, var_2.x), true)));
    return Struct_4(arg_0.b, Struct_1(-firstTrailingBit(abs(arg_2.d.a)), firstTrailingBit(global2.a.x), arg_0.a.x, _wgslsmith_mod_u32(1u, 25893u), !func_3(var_2, func_3(var_2, false))), 1000f, Struct_3(arg_0.a, Struct_2(all(select(var_2, vec3<bool>(global2.e, global2.e, var_2.x), var_2)))));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> vec2<i32> {
    global0 = global2.c;
    var var_0 = func_2(Struct_3(arg_3.d.a, Struct_2(global2.e)), reverseBits(vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), 1u)), Struct_5(abs(global1.zy), vec4<i32>(-2147483647i, _wgslsmith_add_i32(u_input.c.x, global2.b), _wgslsmith_sub_i32(u_input.d.x, arg_0), -31332i) >> (firstTrailingBit(~vec4<u32>(51001u, 28525u, 28419u, 48666u)) % vec4<u32>(32u)), vec3<bool>(true, arg_2, !any(vec2<bool>(true, arg_1.a))), func_2(arg_3.d, reverseBits(_wgslsmith_sub_vec2_u32(global1.yy, vec2<u32>(4294967295u, global1.x))), Struct_5(select(global1.yy, vec2<u32>(global2.d, 2451u), arg_3.a.a), global2.a, !vec3<bool>(global2.e, arg_1.a, false), Struct_1(arg_3.b.a, arg_3.b.a.x, global2.c, 56688u, arg_2))).b)).a;
    var var_1 = reverseBits(_wgslsmith_mod_vec4_i32(arg_3.b.a, vec4<i32>(-global2.a.x, 1i, 2147483647i, global2.b)));
    var var_2 = arg_3.d;
    let var_3 = arg_3.d;
    return select(arg_3.b.a.xw, var_1.xz, select(select(!(!vec2<bool>(true, var_0.a)), !vec2<bool>(false, var_2.b.a), vec2<bool>(true && var_3.b.a, !global2.e)), vec2<bool>(!global2.e, false), true));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> Struct_4 {
    var var_0 = vec3<u32>((global2.d | _wgslsmith_add_u32(u_input.a >> (5848u % 32u), ~global1.x)) << (1u % 32u), ~global2.d, global1.x);
    var var_1 = select(firstLeadingBit(select(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global2.b), reverseBits(vec2<i32>(6455i, 1i))), func_6(-2147483647i, arg_0, arg_0.a, func_2(Struct_3(vec2<f32>(457f, global2.c), arg_0), global1.yz, Struct_5(var_0.yy, u_input.c, vec3<bool>(false, false, global2.e), Struct_1(vec4<i32>(20656i, -1i, -13602i, arg_1), 1i, 1419f, var_0.x, true)))), !arg_0.a)), vec2<i32>(u_input.d.x, ~u_input.c.x ^ u_input.d.x), vec2<bool>(all(vec4<bool>(all(vec4<bool>(false, global2.e, true, true)), true, func_2(Struct_3(vec2<f32>(global2.c, global2.c), Struct_2(true)), global1.zy, Struct_5(global1.zx, vec4<i32>(-27351i, global2.a.x, 0i, 2147483647i), vec3<bool>(false, arg_0.a, arg_0.a), Struct_1(vec4<i32>(-1i, arg_1, -1i, -1i), u_input.c.x, global2.c, 17718u, global2.e))).d.b.a, true)), !(global2.c != global2.c)));
    var var_2 = func_2(func_2(Struct_3(func_2(func_2(Struct_3(vec2<f32>(global2.c, -1203f), arg_0), vec2<u32>(1u, 62390u), Struct_5(var_0.xy, vec4<i32>(-671i, u_input.d.x, -21228i, var_1.x), vec3<bool>(false, arg_0.a, global2.e), Struct_1(global2.a, global2.b, global2.c, arg_2, true))).d, firstLeadingBit(vec2<u32>(global1.x, u_input.a)), Struct_5(vec2<u32>(18962u, u_input.b), global2.a, vec3<bool>(true, false, global2.e), Struct_1(vec4<i32>(-19643i, 1i, 1i, -2147483647i), u_input.d.x, global2.c, 1u, arg_0.a))).d.a, Struct_2(any(vec2<bool>(global2.e, arg_0.a)))), var_0.yz, Struct_5(vec2<u32>(_wgslsmith_mod_u32(26809u, var_0.x), ~37539u), vec4<i32>(_wgslsmith_mult_i32(var_1.x, -1i), u_input.d.x, -4438i, func_2(Struct_3(vec2<f32>(global2.c, global2.c), Struct_2(global2.e)), global1.zx, Struct_5(vec2<u32>(arg_2, 4294967295u), vec4<i32>(arg_1, -2147483647i, -7225i, arg_1), vec3<bool>(true, true, true), Struct_1(vec4<i32>(u_input.c.x, var_1.x, arg_1, 43952i), -1i, global2.c, arg_2, false))).b.a.x), select(select(vec3<bool>(global2.e, global2.e, global2.e), vec3<bool>(arg_0.a, global2.e, false), vec3<bool>(arg_0.a, true, false)), select(vec3<bool>(arg_0.a, global2.e, false), vec3<bool>(arg_0.a, true, false), global2.e), select(vec3<bool>(global2.e, true, global2.e), vec3<bool>(arg_0.a, true, false), true)), func_2(Struct_3(vec2<f32>(global2.c, -620f), Struct_2(false)), vec2<u32>(1u, 1u), Struct_5(vec2<u32>(4294967295u, arg_2), vec4<i32>(var_1.x, u_input.c.x, 1i, var_1.x), vec3<bool>(global2.e, true, true), Struct_1(global2.a, -1i, global2.c, arg_2, false))).b)).d, vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(var_0.xz, global1.zz)), ~_wgslsmith_add_vec2_u32(global1.yz, vec2<u32>(3703u, 0u))), ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, global2.d, global2.d, 0u), vec4<u32>(1u, global2.d, global1.x, 0u)))), Struct_5(firstLeadingBit(vec2<u32>(~var_0.x, 1u)), u_input.c, !(!vec3<bool>(global2.e, false, true)), func_2(Struct_3(vec2<f32>(global2.c, global2.c), func_2(Struct_3(vec2<f32>(global2.c, global2.c), arg_0), vec2<u32>(global1.x, 0u), Struct_5(var_0.yz, vec4<i32>(-2147483647i, -1i, -19354i, u_input.c.x), vec3<bool>(false, arg_0.a, true), Struct_1(vec4<i32>(-2147483647i, -499i, global2.b, var_1.x), -2147483647i, global2.c, u_input.a, arg_0.a))).d.b), global1.yz, Struct_5(var_0.yz >> (vec2<u32>(0u, global2.d) % vec2<u32>(32u)), global2.a, vec3<bool>(false, arg_0.a, false), Struct_1(vec4<i32>(0i, -43074i, -23108i, 2147483647i), var_1.x, -267f, 13928u, arg_0.a))).b)).d;
    var var_3 = ~_wgslsmith_add_vec2_u32(abs(firstLeadingBit(vec2<u32>(1u, 22895u))), vec2<u32>(77903u, global1.x)) ^ abs(vec2<u32>(43815u, var_0.x));
    var var_4 = func_2(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.c, -1237f))), func_2(func_2(Struct_3(var_2.a, Struct_2(true)), vec2<u32>(1u, 31014u), Struct_5(var_0.yy, vec4<i32>(0i, arg_1, global2.a.x, 0i), vec3<bool>(var_2.b.a, false, false), Struct_1(u_input.c, var_1.x, var_2.a.x, 50194u, arg_0.a))).d, vec2<u32>(global1.x, 44492u), Struct_5(var_0.xx, u_input.c, vec3<bool>(var_2.b.a, global2.e, false), Struct_1(u_input.c, u_input.d.x, 720f, u_input.b, arg_0.a))).a), ~vec2<u32>(4294967295u, firstTrailingBit(var_3.x)), Struct_5(_wgslsmith_div_vec2_u32(abs(global1.zy), vec2<u32>(u_input.b, global1.x)), u_input.c, vec3<bool>(true, arg_0.a, any(vec3<bool>(arg_0.a, false, true))), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_1.x, -2147483647i, -1i), global2.a, global2.a), -1i, global2.c, 15477u, global2.e && true))).d, abs(var_0.yz), Struct_5(countOneBits(var_0.xz), u_input.c, vec3<bool>(true, var_2.a.x != global2.c, select(all(vec3<bool>(false, var_2.b.a, true)), arg_0.a & var_2.b.a, false)), Struct_1(vec4<i32>(u_input.d.x, select(-16318i, 0i, true), -2147483647i, _wgslsmith_mod_i32(-1i, var_1.x)), 8168i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.c)) + global2.c), 62788u, any(vec3<bool>(false, arg_0.a, arg_0.a)))));
    return Struct_4(func_2(func_2(func_2(func_2(var_4.d, vec2<u32>(var_0.x, 1u), Struct_5(global1.zy, vec4<i32>(-29156i, 25427i, 0i, 2147483647i), vec3<bool>(global2.e, false, var_2.b.a), var_4.b)).d, _wgslsmith_sub_vec2_u32(vec2<u32>(118481u, var_3.x), vec2<u32>(4294967295u, u_input.b)), Struct_5(var_0.yx, var_4.b.a, vec3<bool>(var_2.b.a, arg_0.a, true), var_4.b)).d, vec2<u32>(_wgslsmith_sub_u32(global1.x, 26202u), _wgslsmith_mult_u32(global1.x, var_0.x)), Struct_5(~vec2<u32>(var_4.b.d, 1u), abs(global2.a), select(vec3<bool>(var_4.a.a, arg_0.a, false), vec3<bool>(var_4.a.a, var_4.a.a, arg_0.a), vec3<bool>(var_2.b.a, true, false)), Struct_1(global2.a, 17726i, -316f, 0u, true))).d, ~select(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 21326u), arg_0.a), vec2<u32>(1u, global1.x), vec2<bool>(global2.e, global2.e)), Struct_5(global1.yx, u_input.c & (global2.a | var_4.b.a), !(!vec3<bool>(global2.e, false, var_2.b.a)), Struct_1(global2.a ^ vec4<i32>(arg_1, -41976i, -1i, var_1.x), 50256i, var_2.a.x, _wgslsmith_mod_u32(1u, 5793u), true))).d.b, var_4.b, -149f, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, -899f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_4.b.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.d.a))), Struct_2(all(vec2<bool>(var_4.b.e, var_4.d.b.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-1i) * -(vec4<i32>(global2.a.x, u_input.d.x, global2.b, u_input.d.x) ^ vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x))), _wgslsmith_mult_i32(-global2.b, 27379i), global2.c, 69423u, global2.e);
    let var_2 = firstTrailingBit(_wgslsmith_sub_i32(0i, -2147483647i) ^ u_input.c.x) >> (_wgslsmith_mult_u32(var_1.d, ~(~(~0u))) % 32u);
    var var_3 = func_1(Struct_2(true), u_input.d.x, var_1.d);
    var_1 = func_2(Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_3.d.a), var_3.d.a)), func_2(Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_3.b.c), var_3.d.a, vec2<bool>(false, var_3.d.b.a))), var_3.a), _wgslsmith_add_vec2_u32(global1.xx, global1.yy) >> (select(global1.zx, global1.xy, vec2<bool>(global2.e, false)) % vec2<u32>(32u)), Struct_5(~vec2<u32>(6813u, 18271u), -vec4<i32>(var_2, -32662i, var_1.b, var_3.b.a.x), vec3<bool>(true, false, true), Struct_1(vec4<i32>(5777i, 11020i, var_2, var_2), -1i, -359f, global1.x, true))).d.b), abs(select(vec2<u32>(max(global1.x, u_input.b), ~var_1.d), ~global1.xx >> (_wgslsmith_mod_vec2_u32(global1.zx, global1.xy) % vec2<u32>(32u)), vec2<bool>(any(vec4<bool>(true, global2.e, true, false)), false | var_1.e))), Struct_5(abs(global1.xy), min(vec4<i32>(-2147483647i, var_3.b.a.x, u_input.c.x, var_1.b), _wgslsmith_clamp_vec4_i32(u_input.c, var_1.a, vec4<i32>(u_input.c.x, 1i, var_2, -2147483647i))) & min(var_3.b.a, ~vec4<i32>(u_input.d.x, 16981i, -16116i, 0i)), !vec3<bool>(var_1.e, true, u_input.d.x < 2147483647i), var_3.b)).b;
    var var_4 = -1086f;
    let var_5 = ~_wgslsmith_mult_i32(_wgslsmith_add_i32(select(_wgslsmith_mod_i32(var_1.b, -9906i), ~14740i, var_3.b.e), u_input.c.x), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(select(_wgslsmith_sub_u32(var_1.d, var_1.d), 22068u, true), ~u_input.a, 50915u | ~var_3.b.d), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 48687u, 4294967295u), vec3<u32>(3242u, 1829u, var_3.b.d), vec3<u32>(var_3.b.d, 4294967295u, var_3.b.d)) ^ vec3<u32>(~u_input.a, var_1.d | var_3.b.d, global2.d)));
}

