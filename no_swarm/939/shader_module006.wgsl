struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(vec2<bool>(true, true), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~_wgslsmith_mult_u32(0u, u_input.a) < _wgslsmith_clamp_u32(71430u ^ u_input.b, max(u_input.b, 1u), _wgslsmith_clamp_u32(u_input.b, u_input.a, 3244u))), !(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var var_1 = _wgslsmith_clamp_u32(~u_input.a, u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 1710u)), _wgslsmith_add_vec2_u32(vec2<u32>(52401u, u_input.a), vec2<u32>(u_input.b, u_input.b))) >> (u_input.b % 32u)) << (u_input.b % 32u);
    let var_2 = ~_wgslsmith_clamp_vec3_u32((vec3<u32>(u_input.a, u_input.a, 23560u) << (~vec3<u32>(u_input.a, u_input.a, u_input.b) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.b), min(vec3<u32>(u_input.a, 32679u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.a))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(11162u, u_input.a), _wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.a), reverseBits(8845u)), max(~vec3<u32>(0u, u_input.a, u_input.b), firstTrailingBit(vec3<u32>(u_input.b, 0u, 4294967295u)))), max(_wgslsmith_div_vec3_u32(vec3<u32>(26734u, 1u, 4294967295u), vec3<u32>(u_input.b, 1u, u_input.a)) >> (firstTrailingBit(vec3<u32>(u_input.b, 22787u, u_input.b)) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(0u, 0u, 1u)), max(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(u_input.a, u_input.b, u_input.b)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1347f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) * -1196f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-722f, 1336f)) + _wgslsmith_div_f32(-150f, -875f)))));
    return min(vec4<i32>(_wgslsmith_mod_i32(~global1.x, global1.x), (-2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-3092i, global1.x, global1.x, -2147483647i), vec4<i32>(11087i, -1i, 26233i, -1i))) | ~max(global1.x, global1.x), -abs(-global1.x), -19605i), min(vec4<i32>(-1i) * -(vec4<i32>(global1.x, -11390i, global1.x, -2147483647i) ^ vec4<i32>(global1.x, global1.x, 0i, global1.x)), reverseBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(global1.x, 84359i, global1.x, global1.x), vec4<i32>(1i, 18958i, global1.x, 0i), false), reverseBits(vec4<i32>(global1.x, -2147483647i, 66926i, global1.x))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_5 {
    global1 = countOneBits(select(abs(arg_1.a), arg_1.a, select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))) & arg_1.a);
    let var_0 = Struct_5(Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.c) * arg_1.b.c), _wgslsmith_f_op_vec2_f32(-arg_1.b.c)), arg_1, -global1.x, arg_1));
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(-arg_1.b.c), var_0.a.b, var_0.a.c, Struct_2(min(func_3(), -vec4<i32>(-11933i, global1.x, global1.x, var_0.a.c)), var_0.a.b.b, firstTrailingBit(27986u))));
    var var_2 = Struct_1(375u, _wgslsmith_f_op_f32(abs(284f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.b)), -564f))), -1394f);
    let var_3 = Struct_3(var_1.a.d.b, Struct_2(vec4<i32>(~var_0.a.c, arg_1.a.x, ~arg_1.a.x, ~(~global1.x)), var_0.a.b.b, var_0.a.b.b.a), !vec2<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)), true), Struct_2(var_1.a.d.a, Struct_1(~(~arg_1.c), _wgslsmith_f_op_f32(min(var_1.a.d.b.c.x, _wgslsmith_f_op_f32(sign(arg_1.b.c.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(var_1.a.a, vec2<f32>(1000f, -1951f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.a.x, var_1.a.b.b.b)))), var_1.a.d.b.a), Struct_1(~7097u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -895f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.a.a.x, arg_1.b.d)), _wgslsmith_f_op_f32(min(var_1.a.b.b.c.x, var_2.b))), var_1.a.a)), var_0.a.a.x));
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_4 {
    var var_0 = arg_0.x;
    var var_1 = !select(select(!(!vec4<bool>(arg_0.x, false, arg_0.x, true)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(!arg_0.x, arg_0.x, arg_1.a.a.x <= arg_1.a.a.x, -169f > arg_1.a.b.b.d)), !vec4<bool>(false, false, arg_0.x, !arg_0.x), true);
    let var_2 = func_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(43485u, 17234u, arg_1.a.d.b.a), ~vec3<u32>(41944u, 4294967295u, arg_1.a.b.b.a)), u_input.a), arg_1.a.d).a;
    let var_3 = Struct_3(func_2(vec2<u32>(reverseBits(var_2.b.c), 10946u), Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 32295i, 21176i, global1.x), vec4<i32>(arg_1.a.c, 1i, -37878i, arg_1.a.b.a.x)) >> (vec4<u32>(1u, 1u, 1u, arg_1.a.b.b.a) % vec4<u32>(32u)), arg_1.a.d.b, firstTrailingBit(u_input.a))).a.d.b, func_2(select(~vec2<u32>(u_input.b, arg_1.a.d.b.a), vec2<u32>(0u, var_2.d.b.a) | vec2<u32>(arg_1.a.d.b.a, 24662u), !(arg_1.a.d.b.c.x > arg_1.a.d.b.c.x)), var_2.b).a.d, select(!arg_0.xx, !(!select(vec2<bool>(true, true), vec2<bool>(var_1.x, true), var_1.xw)), !(!vec2<bool>(arg_0.x, arg_0.x))), Struct_2(vec4<i32>(-39295i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, arg_1.a.c), abs(vec2<i32>(-1i, -1i))), _wgslsmith_clamp_i32(min(global1.x, -2147483647i), i32(-1i) * -1i, select(arg_1.a.b.a.x, -1i, var_1.x)), arg_1.a.b.a.x), arg_1.a.d.b, ~select(firstTrailingBit(u_input.a), firstTrailingBit(30493u), all(arg_0.yy))), func_2(vec2<u32>(81323u, u_input.a), arg_1.a.d).a.b.b);
    var_0 = !any(select(arg_0, var_1.wzx, any(vec2<bool>(true, var_3.c.x))));
    return Struct_4(vec2<f32>(func_2(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.a.d.c, var_2.d.b.a), abs(vec2<u32>(0u, arg_1.a.b.b.a))), Struct_2(firstLeadingBit(arg_1.a.b.a), func_2(vec2<u32>(72310u, var_2.d.c), Struct_2(vec4<i32>(0i, var_3.d.a.x, -46239i, 2147483647i), var_2.b.b, arg_1.a.d.c)).a.b.b, var_3.a.a)).a.d.b.c.x, 1015f), var_2.b, 73960i, var_2.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> i32 {
    global0 = arg_2.c;
    var var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d.b.c.x, arg_3.x)) - _wgslsmith_f_op_f32(round(439f)))))), arg_1.d.b.b);
    global0 = -1i;
    var var_1 = arg_2.b;
    var var_2 = Struct_2(vec4<i32>(countOneBits(2147483647i), global1.x, ~firstLeadingBit(-2147483647i), arg_2.d.a.x) >> (~vec4<u32>(arg_1.d.b.a, firstTrailingBit(arg_2.d.c), func_2(vec2<u32>(4294967295u, 18134u), arg_1.b).a.b.c, 1u) % vec4<u32>(32u)), func_4(vec3<bool>(arg_1.d.b.a != 31313u, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false)), false), Struct_5(func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), func_2(vec2<u32>(1u, 13563u), arg_1.d)))).d.b, func_4(vec3<bool>(true, true, true), Struct_5(Struct_4(arg_3.wx, arg_1.d, arg_2.b.a.x, arg_1.b))).d.c >> (u_input.a % 32u));
    return countOneBits(arg_2.d.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = Struct_4(arg_2.b.c, arg_2, _wgslsmith_div_i32(global1.x, min(arg_2.a.x, 2147483647i)), Struct_2(arg_2.a, arg_2.b, ~_wgslsmith_clamp_u32(arg_2.b.a, _wgslsmith_mod_u32(5417u, 59884u), arg_2.c)));
    var var_1 = Struct_2(vec4<i32>(func_5(select(vec3<u32>(var_0.b.b.a, 0u, u_input.b), vec3<u32>(16312u, var_0.d.b.a, 32214u), false), func_4(vec3<bool>(true, false, true), func_2(vec2<u32>(u_input.b, 0u), arg_2)), func_2(~vec2<u32>(25128u, var_0.b.b.a), arg_2).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -702f, arg_2.b.d, arg_0.x) - arg_0))), i32(-1i) * -49391i, min(-arg_2.a.x, func_3().x), -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.a.wyy, vec3<i32>(arg_2.a.x, global1.x, global1.x)), arg_2.a.yww)), func_4(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), func_2((vec2<u32>(arg_2.c, arg_2.c) | vec2<u32>(7680u, 15022u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_2.c), vec2<u32>(u_input.a, arg_2.b.a)) % vec2<u32>(32u)), Struct_2(func_2(vec2<u32>(4294967295u, 4294967295u), arg_2).a.b.a, Struct_1(var_0.b.c, -1245f, var_0.a, -1022f), u_input.a))).d.b, u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(-arg_2.b.d)));
    var var_3 = vec2<i32>(min(func_3().x, reverseBits(1i)), var_0.c);
    var var_4 = vec3<u32>(firstLeadingBit(~(~5475u)), u_input.b, ~min(arg_2.c >> (~var_1.c % 32u), var_0.b.c));
    return vec4<f32>(1f, 404f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(1370f)));
}

fn func_6(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(arg_0.wx, arg_0.xy)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-121f, arg_0.x)));
    return func_4(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, u_input.b < u_input.a, true)), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, u_input.a), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(13027u, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(60492u, 0u), false))), Struct_2(func_4(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), func_2(vec2<u32>(0u, u_input.b), Struct_2(vec4<i32>(0i, global1.x, -2147483647i, global1.x), Struct_1(4294967295u, arg_0.x, arg_0.xx, var_0.x), 48193u))).b.a, Struct_1(~1u, -666f, func_4(vec3<bool>(false, false, false), Struct_5(Struct_4(arg_0.zy, Struct_2(vec4<i32>(global1.x, global1.x, global1.x, -34308i), Struct_1(4294967295u, 1000f, arg_0.zx, 1000f), 1u), global1.x, Struct_2(vec4<i32>(global1.x, -19275i, global1.x, 2147483647i), Struct_1(0u, var_0.x, arg_0.zw, arg_0.x), 0u)))).a, _wgslsmith_f_op_f32(trunc(var_0.x))), u_input.b))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-576f, 213f), vec2<f32>(-1349f, -737f), false))))) - vec2<f32>(_wgslsmith_f_op_f32(-287f - 2182f), 1819f)), func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1385f, 1000f, -219f, -166f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-429f, -292f, 1079f, -1019f), 995f, Struct_2(vec4<i32>(global1.x, -61236i, -8261i, global1.x), Struct_1(17777u, 2379f, vec2<f32>(162f, -587f), 2060f), 1u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1494f, 1143f, 480f, -927f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(28914u, 67720u), vec2<u32>(u_input.b, 4294967295u)) >= (u_input.a ^ 14775u)))), countOneBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(global1.x), _wgslsmith_sub_i32(-2446i, global1.x)), global1.x)), func_2(select(vec2<u32>(u_input.a, u_input.b) >> (min(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), countOneBits(firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), vec2<bool>(true, true)), Struct_2(-func_6(vec4<f32>(-1391f, -1994f, 2058f, 1668f)).a, Struct_1(u_input.a, _wgslsmith_f_op_f32(step(160f, 756f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(674f, 395f)), -606f), ~(~u_input.a))).a.d);
    let var_1 = vec3<bool>(_wgslsmith_add_i32(-2408i & (52428i << (var_0.b.c % 32u)), ~max(var_0.c, -1i)) == 2612i, false, !(any(vec3<bool>(true, true, true)) & !any(vec4<bool>(true, false, false, false))));
    var var_2 = var_0.b;
    let var_3 = select(!(!vec4<bool>(false, var_1.x, var_1.x, false)), !(!(!select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_dot_vec4_i32(reverseBits(var_2.a), var_0.d.a) != func_3().x);
    let var_4 = vec4<bool>(var_3.x, any(var_1) == (!(true && var_1.x) | (var_2.a.x <= reverseBits(2147483647i))), false, var_1.x);
    global0 = countOneBits(var_0.d.a.x);
    let var_5 = Struct_5(func_4(!vec3<bool>(var_3.x, var_2.b.c.x <= var_0.a.x, var_4.x), Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1100f, var_0.a.x) * var_2.b.c), var_0.b, max(26769i, 10288i), var_0.b))));
    global1 = var_5.a.d.a;
    let var_6 = func_2(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_5.a.b.b.a), vec2<u32>(13493u, 0u)), vec2<u32>(var_2.c, u_input.a), any(vec2<bool>(var_1.x, var_3.x))) >> (select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29685u, 4294967295u, 74392u, var_5.a.d.b.a), vec4<u32>(29647u, var_0.b.b.a, var_5.a.b.c, var_5.a.d.b.a)), 1u), vec2<u32>(var_0.b.c, 24859u) >> (~vec2<u32>(var_0.b.c, u_input.a) % vec2<u32>(32u)), var_3.zy) % vec2<u32>(32u)), func_2(~(~(~vec2<u32>(1u, u_input.b))), var_0.d).a.d);
    let x = u_input.a;
    s_output = StorageBuffer(22881i, 3117i);
}

