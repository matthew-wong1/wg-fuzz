struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(0u, 29225u, 11462u, 0u), vec4<bool>(true, true, false, false), i32(-2147483648), -662i, vec3<f32>(-1306f, -461f, -569f)), 26380u, 0u, Struct_1(vec4<u32>(4294967295u, 28632u, 54430u, 23193u), vec4<bool>(true, true, false, true), 45i, 2147483647i, vec3<f32>(157f, -467f, -297f)), vec4<i32>(-5139i, i32(-2147483648), -1i, 1i));

var<private> global1: u32 = 4294967295u;

var<private> global2: bool = true;

var<private> global3: bool = false;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> vec3<f32> {
    global0 = Struct_2(arg_2.a, global0.d.a.x, arg_1, arg_2.a, select(_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(arg_2.d.c, 1i, 6784i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.d.d, arg_2.a.c, 26811i, global0.e.x), u_input.b)), select(vec4<i32>(51034i, global0.e.x, global0.d.d, u_input.c.x), -vec4<i32>(arg_2.e.x, -57i, -1i, u_input.c.x), select(global0.d.b, global0.a.b, true)), u_input.b), vec4<i32>(~(-1i), abs(max(u_input.c.x, -1i)), 34091i, firstLeadingBit(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x))), true));
    let var_0 = all(select(global0.a.b.wzz, global0.d.b.xxw, true));
    var var_1 = arg_2.a;
    var_1 = global0.d;
    var var_2 = global0.d;
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.a.e, arg_2.d.e), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global0.a.e.x * -1414f), _wgslsmith_f_op_f32(global0.a.e.x + -1000f), -798f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_f_op_f32(trunc(-668f))), -162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<bool>) -> bool {
    global0 = Struct_2(Struct_1(vec4<u32>(22742u, abs(31360u), abs(arg_0.x >> (4294967295u % 32u)), global0.d.a.x), !(!(!global0.d.b)), u_input.b.x, global0.d.c, _wgslsmith_f_op_vec3_f32(func_3(global0.d.a >> (vec4<u32>(33900u, u_input.a, 43888u, global0.a.a.x) % vec4<u32>(32u)), global0.d.a.x, Struct_2(global0.a, ~arg_0.x, u_input.a | arg_0.x, global0.a, u_input.b)))), 14402u, 31483u << ((_wgslsmith_dot_vec3_u32(global0.d.a.yzx, countOneBits(global0.d.a.xxw)) << (703u % 32u)) % 32u), global0.a, firstTrailingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, -80406i, 17537i, u_input.c.x), (u_input.b | global0.e) | vec4<i32>(1i, -2147483647i, -9870i, u_input.b.x))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(701f, _wgslsmith_f_op_f32(trunc(global0.a.e.x)))), vec2<f32>(global0.d.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -984f)))))));
    var var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(global0.d.a | firstLeadingBit(~global0.d.a), vec4<u32>(65397u, abs(1u), 1u, firstTrailingBit(~u_input.a))), !(!vec4<bool>(true, !arg_2.x, false & arg_1, false)), global0.e.x, _wgslsmith_add_i32(~23954i, _wgslsmith_clamp_i32(-u_input.b.x, global0.e.x, -global0.d.d) ^ _wgslsmith_sub_i32(u_input.b.x, 1i)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(global0.d.a, ~26048u, Struct_2(Struct_1(vec4<u32>(52086u, 71929u, 4796u, u_input.a), global0.d.b, global0.a.d, 2147483647i, global0.d.e), arg_0.x, countOneBits(arg_0.x), global0.d, vec4<i32>(global0.d.c, global0.a.c, global0.d.d, global0.a.c)))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-291f, var_0.x)), _wgslsmith_f_op_f32(-global0.a.e.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.e.x)))))));
    global1 = countOneBits(_wgslsmith_dot_vec2_u32(max(_wgslsmith_sub_vec2_u32(~arg_0, vec2<u32>(4294967295u, u_input.a)), select(reverseBits(arg_0), ~arg_0, !global0.d.b.yy)), arg_0));
    return global0.d.b.x & arg_2.x;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(global0.d.a, !select(vec4<bool>(!global0.d.b.x, all(vec4<bool>(false, global0.a.b.x, false, false)), global0.a.b.x, global0.a.b.x), global0.a.b, !vec4<bool>(global0.d.b.x, true, global0.a.b.x, global0.d.b.x)), global0.e.x, ~2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(344f, -623f, -950f)), _wgslsmith_f_op_vec3_f32(-global0.a.e)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(global0.d.e)), vec3<f32>(global0.d.e.x, -1000f, 783f)))) + global0.d.e));
    var var_1 = vec4<i32>(global0.a.c, i32(-1i) * -53577i, _wgslsmith_dot_vec4_i32(global0.e, -global0.e), _wgslsmith_add_i32(14565i, -1i)) | reverseBits(reverseBits(u_input.b));
    var var_2 = ~max(~select(u_input.a, reverseBits(78114u), func_2(vec2<u32>(var_0.a.x, 14550u), false, global0.a.b.wz)), ~countOneBits(global0.d.a.x & 4294967295u));
    global2 = ~63894u < (~(var_0.a.x >> (0u % 32u)) << ((~_wgslsmith_add_u32(4294967295u, var_0.a.x) & 29123u) % 32u));
    global0 = Struct_2(var_0, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(select(global0.a.a, var_0.a, global0.a.b), vec4<u32>(var_0.a.x, global0.a.a.x, 1u, var_0.a.x) << (vec4<u32>(1u, 4294967295u, 79240u, 25303u) % vec4<u32>(32u))), ~71137u), _wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(75997u, 0u)), global0.d, global0.e << (var_0.a % vec4<u32>(32u)));
    return select(-2147483647i, ~global0.e.x, _wgslsmith_f_op_f32(1550f + -612f) >= global0.a.e.x);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.e.x, _wgslsmith_f_op_f32(max(-401f, arg_2.a.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d.e.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.e.x), _wgslsmith_f_op_f32(-arg_2.a.e.x)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(769f, arg_2.d.e.x, arg_2.d.e.x, _wgslsmith_f_op_f32(trunc(602f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.d.e.x, -283f, global0.d.e.x, global0.a.e.x), vec4<f32>(arg_2.a.e.x, global0.d.e.x, arg_2.a.e.x, global0.d.e.x), select(global0.d.b.x, arg_2.a.b.x, false)))))));
    global0 = Struct_2(arg_2.d, _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_clamp_u32(~(~(~49094u)), 60487u, select(arg_3.x, 1u, arg_2.a.e.x != _wgslsmith_f_op_f32(f32(-1f) * -130f))), arg_2.d, firstLeadingBit(vec4<i32>(~31169i, ~_wgslsmith_div_i32(38679i, -35427i), global0.d.d, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.d.c, global0.e.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.d.c, arg_1.x), global0.e.zy)))));
    let var_1 = 315u;
    let var_2 = !any(vec3<bool>(!(true & global0.d.b.x), all(!global0.a.b.zxy), false));
    let var_3 = Struct_2(Struct_1(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(arg_2.a.a, vec4<u32>(arg_3.x, 1u, u_input.a, 41087u)), _wgslsmith_add_u32(1u, 1u), max(29031u, 4294967295u), _wgslsmith_mult_u32(32143u, 0u))), select(arg_2.d.b, select(select(vec4<bool>(false, var_2, false, false), vec4<bool>(false, true, false, var_2), true), vec4<bool>(arg_2.d.b.x, var_2, var_2, global0.d.b.x), true), _wgslsmith_f_op_f32(625f + global0.d.e.x) < arg_2.a.e.x), global0.a.d, abs(reverseBits(global0.e.x) << (u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1312f)), _wgslsmith_f_op_f32(arg_2.d.e.x - global0.d.e.x), arg_2.a.e.x))), 1u << (_wgslsmith_div_u32(u_input.a, abs(var_1)) % 32u), arg_2.d.a.x, global0.a, vec4<i32>(max(u_input.b.x, -1i), 1i, -2147483647i, arg_1.x));
    return Struct_2(var_3.a, _wgslsmith_sub_u32(1u, 0u), ~(~var_3.c), global0.d, ~vec4<i32>(arg_1.x | (-751i | var_3.a.c), arg_2.d.d, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_3.a.c, 14789i), global0.e.x & 28614i), arg_2.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = func_4(!global0.d.b.x, vec3<i32>(~(-2147483647i) >> (u_input.a % 32u), 0i, global0.e.x) | vec3<i32>(func_1(), -35278i, -17869i), Struct_2(global0.d, ~_wgslsmith_clamp_u32(0u, countOneBits(71429u), ~global0.b), ~(~_wgslsmith_mod_u32(global0.b, 67795u)), Struct_1(var_0.a, vec4<bool>(true, !var_0.b.x, !global0.d.b.x, all(vec3<bool>(var_0.b.x, var_0.b.x, global0.d.b.x))), var_0.c, abs(min(global0.a.c, var_0.c)), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(105764u, u_input.a, u_input.a, 18703u), ~1u, Struct_2(Struct_1(var_0.a, global0.a.b, u_input.b.x, -26332i, vec3<f32>(-250f, -281f, 566f)), 29571u, u_input.a, global0.d, u_input.b)))), u_input.b ^ ~_wgslsmith_mult_vec4_i32(global0.e, vec4<i32>(2147483647i, var_0.c, 41891i, -2079i))), _wgslsmith_mod_vec2_u32(global0.a.a.xx | vec2<u32>(~global0.b, _wgslsmith_div_u32(var_0.a.x, 45291u)), firstLeadingBit(~max(vec2<u32>(global0.c, global0.d.a.x), vec2<u32>(1u, 50073u)))));
    var_0 = var_1.d;
    global2 = true;
    var_1 = Struct_2(Struct_1(vec4<u32>(abs(var_1.b), 1u, 1u << (u_input.a % 32u), abs(var_1.a.a.x)) << (~_wgslsmith_div_vec4_u32(var_1.a.a, vec4<u32>(45981u, 4294967295u, 48342u, 4294967295u)) % vec4<u32>(32u)), !select(func_4(true, global0.e.ywz, Struct_2(Struct_1(var_1.d.a, vec4<bool>(global0.d.b.x, true, false, true), var_1.e.x, 0i, vec3<f32>(var_0.e.x, global0.a.e.x, var_1.d.e.x)), 1u, global0.b, Struct_1(vec4<u32>(u_input.a, 0u, 46019u, 0u), global0.d.b, u_input.c.x, 2147483647i, vec3<f32>(1000f, -1297f, 1997f)), vec4<i32>(global0.e.x, global0.d.d, var_1.e.x, 24116i)), var_1.a.a.xy).a.b, !vec4<bool>(var_0.b.x, false, true, false), var_1.a.b.x), u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.e.yz, vec2<i32>(0i, 2147483647i)), 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2014f + global0.d.e.x), var_1.a.e.x, var_1.a.e.x) + vec3<f32>(349f, _wgslsmith_f_op_f32(868f - global0.a.e.x), _wgslsmith_f_op_f32(var_0.e.x - var_1.d.e.x)))), 70128u, abs(firstLeadingBit(global0.b)), var_1.d, ~select(global0.e, u_input.b, var_1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, global0.a.c, ~var_1.a.c), vec4<i32>(1i, -(0i >> (var_0.a.x % 32u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, global0.e.x), abs(var_1.e.zy)), -func_1())), global0.d.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.a.e.zz - var_1.d.e.xx), var_1.d.e.zy, vec2<bool>(var_0.b.x, global0.a.b.x))))));
}

