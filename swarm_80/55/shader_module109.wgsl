struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(12960i, 22922i), vec3<u32>(46246u, 4294967295u, 142217u), 86177u, 27534u, vec4<u32>(4294967295u, 0u, 27249u, 1u));

var<private> global1: vec3<f32> = vec3<f32>(844f, 548f, -152f);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = ~((global0.e >> (~vec4<u32>(global0.e.x, 16077u, u_input.a, 46105u) % vec4<u32>(32u))) << (min(reverseBits(vec4<u32>(1u, 0u, 0u, u_input.a) ^ vec4<u32>(global0.e.x, global0.c, 14834u, u_input.a)), global0.e | _wgslsmith_div_vec4_u32(global0.e, global0.e)) % vec4<u32>(32u)));
    global2 = Struct_2(_wgslsmith_mult_vec2_i32(~(-global0.a), u_input.b));
    let var_1 = vec3<f32>(-1016f, -1426f, 616f);
    var var_2 = true;
    global2 = Struct_2(vec2<i32>(global2.a.x, 1i) | _wgslsmith_mult_vec2_i32(min(select(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.b.x, 0i), false), min(u_input.b, vec2<i32>(-15535i, 53759i))), _wgslsmith_div_vec2_i32(vec2<i32>(global0.a.x, u_input.b.x), firstTrailingBit(vec2<i32>(global0.a.x, 722i)))));
    return global0.d;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5) -> u32 {
    var var_0 = -2147483647i;
    var var_1 = arg_2;
    var_0 = _wgslsmith_dot_vec2_i32(arg_2.b.b.xx, -var_1.b.b.zy);
    var_0 = min(41122i, ~(~(-8562i))) << (select(global0.d, global0.b.x, var_1.a.c) % 32u);
    var var_2 = -(~(-_wgslsmith_mult_i32(max(1i, global0.a.x), 5812i)));
    return (_wgslsmith_mult_u32(0u, 14330u) | global0.e.x) << (_wgslsmith_clamp_u32(~u_input.a, arg_2.d, 1u ^ func_3()) % 32u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(abs(-(~arg_0.xw)), _wgslsmith_add_vec3_u32(global0.e.zxw, vec3<u32>(_wgslsmith_mult_u32(0u, 5832u), ~global0.e.x, max(u_input.a, 1u))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(35244u, 0u, global0.c), _wgslsmith_add_vec3_u32(global0.e.yyw, vec3<u32>(0u, u_input.a, 21104u))), vec3<u32>(u_input.a, u_input.a, func_2(vec3<bool>(false, false, true), false, Struct_5(Struct_3(u_input.b.x, vec3<i32>(u_input.b.x, arg_1.a.x, -1i), true, global2.a.x), Struct_3(-18997i, vec3<i32>(0i, 36170i, -2147483647i), true, global0.a.x), vec4<f32>(global1.x, -1250f, 463f, -1033f), u_input.a)))), reverseBits(1u), 0u, firstLeadingBit(select(~vec4<u32>(global0.b.x, u_input.a, 22912u, global0.b.x), ~reverseBits(global0.e), false)));
    global2 = Struct_2(-vec2<i32>(i32(-1i) * -arg_1.a.x, ~(i32(-1i) * -21194i)));
    var var_1 = var_0.a.x;
    global2 = Struct_2(global2.a);
    let var_2 = !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), all(vec3<bool>(true, false, false))), vec2<bool>(all(vec2<bool>(true, false)), !(global1.x != -956f)));
    return var_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = global1.x;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.a.x, arg_3.a.x), -1i) >> (34049u % 32u)), firstTrailingBit(56948i), 26907i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-586f, arg_0.x, global1.x, 860f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, arg_0.x, global1.x, arg_0.x) * vec4<f32>(arg_0.x, -197f, global1.x, arg_0.x)))))), vec4<f32>(global1.x, 454f, _wgslsmith_f_op_f32(min(184f, _wgslsmith_div_f32(global1.x, -627f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.x))))))));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(global0.b), vec3<u32>(38650u, firstLeadingBit(u_input.a), reverseBits(u_input.a >> (u_input.a % 32u)))), _wgslsmith_add_u32(global0.d, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.a, global0.c), global0.e.x) ^ func_2(vec3<bool>(true, arg_1.x, arg_1.x), false | arg_1.x, Struct_5(Struct_3(global0.a.x, vec3<i32>(1i, global0.a.x, arg_2), arg_1.x, arg_2), Struct_3(-2147483647i, vec3<i32>(-2147483647i, global2.a.x, global0.a.x), false, -2147483647i), vec4<f32>(1000f, global1.x, arg_0.x, -1020f), 1u))), 0u);
    let var_4 = arg_1;
    return arg_3;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-204f, _wgslsmith_f_op_f32(-global1.x)))) + global1.x), vec3<i32>(~(-2147483647i), u_input.b.x, -(~1i)), arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(-global2.a.x >> (~4294967295u % 32u), 2147483647i, ~_wgslsmith_div_i32(-38599i, -2147483647i)), countOneBits(vec3<i32>(u_input.b.x, 2147483647i, -1i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.b.x, global0.d), global0.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-219f, -579f, arg_2.x, arg_2.x)))))))));
    var var_1 = ~(~(~61658u) >> (_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(4294967295u, global0.d)) % 32u)) << (1u % 32u);
    global2 = func_4(_wgslsmith_f_op_vec2_f32(-global1.zz), !vec2<bool>(any(vec2<bool>(true, true)), arg_0), ~(-46470i), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-global2.a.x, 1i), ~_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(2147483647i, -12509i)))));
    global1 = _wgslsmith_f_op_vec3_f32(select(var_0.e.xwx, _wgslsmith_f_op_vec3_f32(-var_0.e.xzw), arg_0));
    var var_2 = _wgslsmith_add_u32(~global0.d, _wgslsmith_sub_u32(1u, global0.c));
    return Struct_5(Struct_3(abs(global0.a.x), select(var_0.b, vec3<i32>(_wgslsmith_sub_i32(2147483647i, global0.a.x), global2.a.x, -arg_1.a.x), all(select(vec3<bool>(false, arg_0, false), vec3<bool>(true, arg_0, arg_0), arg_0))), arg_0, -(~(i32(-1i) * -2147483647i))), Struct_3(_wgslsmith_sub_i32(-u_input.b.x, arg_1.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.b.x), var_0.d) & var_0.d, true | arg_0, abs(-(~0i))), var_0.e, _wgslsmith_mod_u32(_wgslsmith_sub_u32(select(u_input.a, 41079u, true), 1u) ^ _wgslsmith_div_u32(~u_input.a, 76557u), 52766u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec3<u32>(select(_wgslsmith_div_u32(u_input.a, u_input.a), ~global0.b.x, true), ~46948u, _wgslsmith_add_u32(~u_input.a, global0.d | global0.e.x)) >> (global0.b % vec3<u32>(32u)));
    var var_1 = any(vec3<bool>((155f != _wgslsmith_f_op_f32(global1.x - global1.x)) || all(vec4<bool>(true, true, true, true)), !(!select(false, true, true)), false));
    var var_2 = func_5(select(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-131f, global1.x) - global1.zx), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, -193f))), func_1(vec4<i32>(global2.a.x, -2147483647i, -5641i, u_input.b.x), Struct_2(vec2<i32>(global2.a.x, u_input.b.x)), vec2<f32>(474f, global1.x))))), vec2<bool>((global2.a.x ^ -71474i) >= (i32(-1i) * -2147483647i), any(vec4<bool>(true, true, true, true))), -2147483647i, Struct_2((global0.a << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(0u, 35036u) % vec2<u32>(32u)))), global1.yz);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-var_2.c.x), select(vec3<i32>(_wgslsmith_mult_i32(select(var_2.b.d, 2147483647i, var_2.b.c), 0i), _wgslsmith_dot_vec2_i32(u_input.b, var_2.a.b.yz), 4852i), vec3<i32>(abs(countOneBits(var_2.b.a)), global0.a.x, -1i), select(vec3<bool>(any(vec2<bool>(var_2.a.c, var_2.b.c)), !var_2.a.c, any(vec3<bool>(var_2.b.c, true, var_2.a.c))), vec3<bool>(var_2.a.c, true, all(vec2<bool>(var_2.a.c, var_2.b.c))), true)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1138f, var_2.c.x)), _wgslsmith_f_op_vec2_f32(ceil(var_2.c.wx))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, var_2.c.x) - vec2<f32>(1307f, var_2.c.x))))), select(!select(vec2<bool>(var_2.a.c, var_2.b.c), vec2<bool>(var_2.b.c, false), true), vec2<bool>(var_2.b.c & true, var_2.a.c), true), global2.a.x, Struct_2(abs(max(var_2.b.b.zz, vec2<i32>(13787i, global0.a.x))))), vec3<i32>(~(~(~(-614i))), firstTrailingBit(global0.a.x ^ var_2.a.a), -39068i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-570f)), 482f, 933f, _wgslsmith_f_op_f32(max(-471f, -112f)))) * var_2.c));
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(202f, _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(493f)) * var_3.a))), var_2.c.zyw);
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.x);
}

