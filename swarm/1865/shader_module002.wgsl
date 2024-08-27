struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<i32>(-27578i, i32(-2147483648)), true);

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-1534f, 2562f, 1542f, -308f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = select(vec4<i32>(_wgslsmith_sub_i32((arg_2.b.x | 22507i) << (u_input.d.x % 32u), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, global0.b.x, -1i), vec4<i32>(2147483647i, arg_2.b.x, global0.b.x, 1i)))), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(12260i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global0.b.x), vec3<i32>(arg_2.b.x, u_input.c, 80994i))), firstLeadingBit(arg_2.b.x)), ~u_input.c ^ reverseBits(_wgslsmith_sub_i32(u_input.c, 0i)), -abs(~1i)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, global0.b.x, -1i, u_input.c << (89310u % 32u)), select(vec4<i32>(2147483647i, arg_2.b.x, arg_2.b.x, arg_2.b.x), ~vec4<i32>(-1i, 2147483647i, -41370i, arg_2.b.x), arg_1))), !vec4<bool>(select(arg_1.x, global0.c & global0.c, !global0.c), all(arg_1.yzz), (global0.a > u_input.b) | (-429f <= global1.a.x), arg_1.x));
    return -853f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * global1.a.x)) - global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(sign(global1.a.x))) - _wgslsmith_f_op_f32(func_3(global1.a.x, vec4<bool>(global0.c, false, true, false), Struct_1(u_input.d.x, vec2<i32>(global0.b.x, 4632i), global0.c))))));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, ~max(_wgslsmith_mult_u32(u_input.b, u_input.a.x), 19001u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, global0.a, 2232u), vec3<u32>(45129u, 4294967295u, global0.a)) >> (~0u % 32u), select(~abs(global0.a) << (56826u % 32u), global0.a, true));
    var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, ~0u ^ select(var_1.x, 901u, false), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.d.x, 25079u, u_input.b), vec4<u32>(u_input.b, global0.a, 9654u, u_input.d.x))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.d.x, global0.a, 31873u), vec3<u32>(10519u, 1u, var_1.x) | vec3<u32>(var_1.x, 4294967295u, 84763u)), countOneBits(vec3<u32>(0u, var_1.x, 4294967295u))));
    global0 = Struct_1(u_input.b, ~countOneBits(global0.b), (u_input.c >= arg_0) || any(vec2<bool>(true, true)));
    var var_2 = Struct_3(Struct_1(u_input.a.x, select(vec2<i32>(global0.b.x << (65859u % 32u), arg_0), global0.b, true), any(vec2<bool>(true, false)) || all(vec3<bool>(true, global0.c, false))), !all(vec2<bool>(false, global0.c)) & global0.c, _wgslsmith_div_u32(global0.a, 1u) & var_1.x, var_0.a);
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.a * global1.a))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, select(vec4<bool>(arg_0.c, arg_0.c, global0.c, global0.c), vec4<bool>(arg_0.c, false, false, arg_0.c), vec4<bool>(true, arg_0.c, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(1263f)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-487f - arg_1), _wgslsmith_f_op_f32(ceil(498f))))));
    let var_1 = Struct_3(Struct_1(u_input.b, ~(vec2<i32>(1i, 31970i) << (max(u_input.a, u_input.d) % vec2<u32>(32u))), any(vec3<bool>(func_2(u_input.c).c, 654f < var_0.a.x, true))), -328f >= _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-715f, var_0.a.x)))), global0.a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-371f, -1000f)), _wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(sign(-749f)))), !arg_0.c)), 597f, arg_1, -1107f));
    let var_2 = Struct_2(var_0.a);
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_1.a.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 65074u, arg_0.a), vec3<u32>(arg_0.a, u_input.b, global0.a)), vec3<u32>(62336u, u_input.a.x, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, _wgslsmith_mult_u32(arg_0.a, arg_0.a), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, var_1.c), u_input.a)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_1.c, global0.a, u_input.a.x, global0.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 7057u, 0u, global0.a), vec4<u32>(23232u, 0u, global0.a, 4294967295u))))), var_1.a.b, !(!(_wgslsmith_f_op_f32(abs(global1.a.x)) < _wgslsmith_f_op_f32(exp2(var_0.a.x)))));
    var var_3 = var_1;
    return Struct_1(~(~global0.a), ~vec2<i32>(var_3.a.b.x, 0i << (_wgslsmith_mod_u32(29158u, u_input.a.x) % 32u)), select(var_3.a.c, true, true));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(621f, _wgslsmith_f_op_f32(-global1.a.x)))), -675f) - global1.a.xw);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a + global1.a))) - vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(438f * -309f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * -310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f) - var_0.x))));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(func_2(9434i).b.x, global0.b.x), max(func_2(-2147483647i).b.x, -(u_input.c << (~arg_2 % 32u))));
    var var_2 = abs(~(-vec3<i32>(var_1.x, 2147483647i, global0.b.x) & (vec3<i32>(0i, 2147483647i, 0i) & select(vec3<i32>(arg_1.x, -3410i, arg_0.b.x), arg_1.zzy, global0.c))));
    global0 = Struct_1(~59323u, -_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, global0.b.x), var_1.x | 35178i), func_2(var_1.x).b, arg_3.zx << (u_input.d % vec2<u32>(32u))), arg_0.c);
    return vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1717f - global1.a.x))) + global1.a.x)));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_2 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1789f + -898f), 1f, global1.a.x, _wgslsmith_f_op_f32(sign(1008f)))))));
    var var_0 = Struct_3(Struct_1(u_input.a.x, countOneBits(_wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(38009i, 18354i))), !(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) <= _wgslsmith_mult_u32(u_input.b, arg_0.x))), true, 4294967295u >> (global0.a % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(322f, arg_1.x)), _wgslsmith_f_op_f32(global1.a.x + global1.a.x), 818f, -1295f), global1.a) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, -856f, -456f, _wgslsmith_f_op_f32(f32(-1f) * -279f)), vec4<f32>(-717f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(1013f * 791f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.d.zxw), vec3<f32>(_wgslsmith_div_f32(arg_1.x, -931f), -980f, _wgslsmith_f_op_f32(f32(-1f) * -1055f))))))));
    var_0 = Struct_3(var_0.a, ~firstLeadingBit(_wgslsmith_mult_u32(30002u, global0.a)) > 27565u, ~global0.a, global1.a);
    let var_2 = var_0.a.b.x >> (arg_0.x % 32u);
    return Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_0.d.x)), 666f, _wgslsmith_f_op_f32(530f - _wgslsmith_f_op_f32(exp2(arg_1.x))), -983f), vec4<f32>(512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2073f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -401f))));
}

fn func_1() -> Struct_2 {
    global1 = func_6(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 83959u, 24650u, 4294967295u), vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, 57158u)), vec4<u32>(1u, _wgslsmith_mult_u32(global0.a, u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(0u, global0.a, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(22719u, global0.a, u_input.d.x, 41304u), vec4<u32>(global0.a, 0u, 63181u, global0.a)))) & vec4<u32>(_wgslsmith_sub_u32(4294967295u, 39701u), u_input.b | ~1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(90112u, global0.a), select(vec2<u32>(21429u, u_input.a.x), u_input.a, global0.c))), _wgslsmith_f_op_vec2_f32(func_5(func_4(func_2(11021i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-33021i, 1i, 54271i) << (vec3<u32>(0u, 12991u, global0.a) % vec3<u32>(32u)), ~vec3<i32>(35137i, 18423i, 4034i))), vec4<i32>(_wgslsmith_add_i32(-global0.b.x, select(45893i, global0.b.x, global0.c)), countOneBits(-2147483647i), -_wgslsmith_mod_i32(-21714i, u_input.c), -9698i), func_4(Struct_1(countOneBits(global0.a), _wgslsmith_clamp_vec2_i32(global0.b, vec2<i32>(u_input.c, -5067i), vec2<i32>(39152i, -41718i)), !global0.c), global1.a.x, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-26390i, u_input.c, -2147483647i), vec3<i32>(31878i, 0i, u_input.c)), ~vec3<i32>(1i, -38418i, 16232i))).a, vec3<i32>(_wgslsmith_mult_i32(global0.b.x ^ global0.b.x, global0.b.x), -2147483647i, global0.b.x))));
    global0 = func_2(56184i);
    global1 = Struct_2(global1.a);
    var var_0 = 472f;
    global0 = func_4(Struct_1(87971u, global0.b >> (~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(74721u, 99417u)) % vec2<u32>(32u)), global0.c), 284f, vec3<i32>(global0.b.x, ~_wgslsmith_mod_i32(2147483647i, global0.b.x), firstLeadingBit(-u_input.c)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, 724f, 2012f, 1000f))), _wgslsmith_div_vec4_f32(global1.a, vec4<f32>(-1161f, global1.a.x, global1.a.x, global1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.x - 631f))), _wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(295f))), global1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.zy;
    let var_1 = -u_input.c;
    global1 = func_1();
    var var_2 = _wgslsmith_mult_u32(37419u, min(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(4294967295u, 22527u, 1u), vec3<u32>(55410u, u_input.b, 0u)), (vec3<u32>(41482u, global0.a, 45431u) ^ vec3<u32>(4294967295u, 4294967295u, global0.a)) ^ (vec3<u32>(global0.a, global0.a, 55647u) ^ vec3<u32>(0u, 23447u, 0u))), 1u));
    var var_3 = Struct_3(Struct_1(func_4(Struct_1(global0.a, -vec2<i32>(u_input.c, var_1), true), var_0.x, min(vec3<i32>(u_input.c, 40757i, global0.b.x), select(vec3<i32>(0i, 0i, 1i), vec3<i32>(global0.b.x, -2147483647i, 73029i), vec3<bool>(global0.c, true, false)))).a, _wgslsmith_div_vec2_i32(func_4(func_2(global0.b.x), -1019f, ~vec3<i32>(var_1, -52550i, var_1)).b, vec2<i32>(~var_1, global0.b.x)), !global0.c), !global0.c, global0.a, vec4<f32>(-2336f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1715f), _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), select(select(vec4<bool>(true, false, global0.c, false), vec4<bool>(global0.c, true, false, true), vec4<bool>(false, global0.c, global0.c, global0.c)), !vec4<bool>(global0.c, global0.c, true, global0.c), global0.c), Struct_1(_wgslsmith_mult_u32(global0.a, 32821u), vec2<i32>(var_1, 2147483647i), !global0.c))), 527f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.d - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, var_0.x, var_3.d.x, global1.a.x) - global1.a))))), global0.b.x, ~var_3.c, vec3<i32>(1052i, 0i, -1i) | (vec3<i32>(var_1, -12064i, _wgslsmith_dot_vec2_i32(var_3.a.b, vec2<i32>(var_3.a.b.x, 3903i))) | reverseBits(vec3<i32>(-46657i, var_3.a.b.x, 2147483647i))), var_3.a.b.x);
}

