struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_1(vec4<bool>(true, false, true, true), 0i), Struct_2(Struct_1(vec4<bool>(true, true, true, false), i32(-2147483648)), 13345u), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 6471i), 1u)), Struct_4(Struct_1(vec4<bool>(true, true, false, false), 33856i), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -45900i), 0u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 81733i), 10485u)), Struct_4(Struct_1(vec4<bool>(false, true, false, true), -1i), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 63316i), 52710u), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1i), 0u)), Struct_4(Struct_1(vec4<bool>(false, false, false, true), 1i), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 1i), 1u), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -19615i), 55130u)), Struct_4(Struct_1(vec4<bool>(false, false, false, true), -1i), Struct_2(Struct_1(vec4<bool>(true, true, true, false), -1i), 35617u), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 0i), 18154u)), Struct_4(Struct_1(vec4<bool>(false, true, true, true), 13482i), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -10893i), 10610u), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 27346i), 64650u)), Struct_4(Struct_1(vec4<bool>(false, false, false, false), -10403i), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 1i), 4294967295u), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 18922i), 75624u)), Struct_4(Struct_1(vec4<bool>(false, false, true, true), -32857i), Struct_2(Struct_1(vec4<bool>(false, false, true, false), i32(-2147483648)), 1u), Struct_2(Struct_1(vec4<bool>(false, true, true, true), i32(-2147483648)), 30751u)), Struct_4(Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), -18950i), 30116u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 10309i), 4294967295u)), Struct_4(Struct_1(vec4<bool>(false, false, true, true), 0i), Struct_2(Struct_1(vec4<bool>(false, true, false, true), -1i), 1u), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 4948i), 1u)), Struct_4(Struct_1(vec4<bool>(true, true, true, false), -19573i), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -12733i), 0u), Struct_2(Struct_1(vec4<bool>(false, false, true, true), -56538i), 4294967295u)), Struct_4(Struct_1(vec4<bool>(false, false, false, true), 29960i), Struct_2(Struct_1(vec4<bool>(true, true, false, false), i32(-2147483648)), 0u), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 0i), 0u)), Struct_4(Struct_1(vec4<bool>(true, true, false, false), -1i), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 5326i), 0u), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1i), 30508u)), Struct_4(Struct_1(vec4<bool>(false, true, false, true), 1i), Struct_2(Struct_1(vec4<bool>(true, false, false, true), -34867i), 4294967295u), Struct_2(Struct_1(vec4<bool>(false, false, true, true), -20861i), 62718u)), Struct_4(Struct_1(vec4<bool>(false, false, false, true), -13006i), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 1i), 14517u), Struct_2(Struct_1(vec4<bool>(true, true, false, true), i32(-2147483648)), 0u)), Struct_4(Struct_1(vec4<bool>(true, true, false, false), 2147483647i), Struct_2(Struct_1(vec4<bool>(true, false, false, false), i32(-2147483648)), 70932u), Struct_2(Struct_1(vec4<bool>(true, false, false, true), -6985i), 1u)), Struct_4(Struct_1(vec4<bool>(true, true, true, true), -33445i), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 28507i), 47955u), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 2147483647i), 26814u)), Struct_4(Struct_1(vec4<bool>(true, false, false, false), 1i), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 11937i), 229u), Struct_2(Struct_1(vec4<bool>(false, false, true, false), i32(-2147483648)), 0u)), Struct_4(Struct_1(vec4<bool>(false, false, true, true), 18006i), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -9747i), 56602u), Struct_2(Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648)), 0u)), Struct_4(Struct_1(vec4<bool>(false, false, true, false), 16256i), Struct_2(Struct_1(vec4<bool>(false, false, true, false), -1i), 34857u), Struct_2(Struct_1(vec4<bool>(true, true, false, true), i32(-2147483648)), 34072u)), Struct_4(Struct_1(vec4<bool>(false, false, true, true), 2147483647i), Struct_2(Struct_1(vec4<bool>(false, true, true, false), -1i), 10370u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 2147483647i), 1u)), Struct_4(Struct_1(vec4<bool>(false, false, true, true), -78396i), Struct_2(Struct_1(vec4<bool>(false, false, false, false), -48082i), 4294967295u), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 2147483647i), 4294967295u)), Struct_4(Struct_1(vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 0i), 31355u), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1i), 13095u)), Struct_4(Struct_1(vec4<bool>(true, false, false, true), 8395i), Struct_2(Struct_1(vec4<bool>(false, true, true, true), i32(-2147483648)), 4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 1i), 62465u)), Struct_4(Struct_1(vec4<bool>(false, false, false, false), 9543i), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 2147483647i), 0u), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 35690i), 4294967295u)), Struct_4(Struct_1(vec4<bool>(true, true, false, false), i32(-2147483648)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 0i), 32873u), Struct_2(Struct_1(vec4<bool>(true, true, true, false), 18074i), 4294967295u)), Struct_4(Struct_1(vec4<bool>(false, false, false, true), 2147483647i), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 14201i), 4294967295u), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 23041i), 4596u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<u32> {
    global2 = array<Struct_4, 27>();
    let var_0 = select(arg_2.a.a.zz, select(arg_2.b.a.a.yw, arg_2.b.a.a.yx, false), select(arg_2.c.a.a.wy, arg_2.b.a.a.xy, vec2<bool>(false, true)));
    var var_1 = ~select(~countOneBits(vec4<u32>(arg_2.b.b, 0u, 0u, 4294967295u)), vec4<u32>(arg_1, reverseBits(~arg_2.b.b), _wgslsmith_clamp_u32(~17334u, ~u_input.b, 4294967295u), (u_input.a.x | 4294967295u) >> (30206u % 32u)), firstTrailingBit(_wgslsmith_add_u32(arg_1, arg_2.b.b)) < arg_1);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(arg_3.wy));
    let var_3 = Struct_3(Struct_1(select(vec4<bool>(all(vec2<bool>(false, true)), !var_0.x, any(vec2<bool>(var_0.x, arg_2.b.a.a.x)), var_0.x), arg_2.c.a.a, false), 48540i));
    return var_1.zyw;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> Struct_3 {
    global2 = array<Struct_4, 27>();
    let var_0 = min(vec3<i32>(-14164i, _wgslsmith_mult_i32(~arg_1.b, ~(-100160i)), -arg_1.b) << (firstTrailingBit(~vec3<u32>(u_input.a.x, 1u, 28021u) << (firstLeadingBit(vec3<u32>(u_input.a.x, 113529u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(-1i, 1i, abs(arg_1.b)) << (((vec3<u32>(u_input.b, 4294967295u, arg_3.x) >> (~vec3<u32>(4294967295u, arg_3.x, 0u) % vec3<u32>(32u))) & ~func_3(vec3<f32>(-1214f, 516f, -1326f), u_input.a.x, Struct_4(Struct_1(arg_1.a, arg_1.b), Struct_2(arg_1, 4294967295u), Struct_2(Struct_1(vec4<bool>(arg_1.a.x, true, false, false), 2447i), 69350u)), vec4<f32>(arg_2, arg_2, arg_2, 2246f))) % vec3<u32>(32u)));
    var var_1 = vec2<i32>(var_0.x, max(14852i, _wgslsmith_dot_vec3_i32(var_0, -var_0) << (max(0u, u_input.b ^ 1586u) % 32u)));
    let var_2 = arg_1.a;
    var var_3 = var_1.x;
    return Struct_3(Struct_1(arg_1.a, -countOneBits(min(var_0.x, -1i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    let var_0 = func_2(true, func_2(true, Struct_1(!vec4<bool>(arg_2.a.x, arg_2.a.x, false, true), _wgslsmith_div_i32(5253i, arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-503f)))), vec2<u32>(49418u, 24667u)).a, _wgslsmith_f_op_f32(-720f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-547f, 1521f), _wgslsmith_f_op_f32(-803f - -192f), false)), -1000f)), vec2<u32>(~u_input.a.x, 8689u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f - 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)) + _wgslsmith_f_op_f32(f32(-1f) * -477f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-691f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2355f - 1010f), _wgslsmith_f_op_f32(floor(812f))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(-215f, 1102f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f + -232f)))))));
    global0 = array<Struct_4, 18>();
    var var_3 = var_0.a;
    return Struct_2(Struct_1(!vec4<bool>(!arg_1.a.a.x, var_0.a.a.x, select(true, true, true), true), ~((var_3.b & 2147483647i) | ~(-31456i))), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 85125u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | firstLeadingBit(_wgslsmith_div_u32(1u, u_input.b))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    global1 = array<vec2<u32>, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(166f * 534f), _wgslsmith_f_op_f32(-781f - -1000f), _wgslsmith_f_op_f32(step(576f, 154f))))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1825f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-256f * -170f)))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -412f), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.x))))))));
    let var_1 = Struct_4(func_4(vec3<i32>(-34703i, arg_0.a.b, 1i), arg_1, Struct_1(!func_2(arg_2.a.a.x, Struct_1(arg_2.a.a, arg_0.a.b), var_0.x, global1[_wgslsmith_index_u32(37266u, 10u)]).a.a, 1i)).a, func_4(vec3<i32>(-2147483647i, 47434i, 0i), func_2(arg_2.a.a.x, func_2(true, func_2(arg_2.a.a.x, Struct_1(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_0.a.a.x, arg_2.a.a.x), arg_2.a.b), var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]).a, _wgslsmith_div_f32(-1000f, var_0.x), select(u_input.a, global1[_wgslsmith_index_u32(arg_2.b, 10u)], vec2<bool>(arg_1.a.a.x, true))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-241f, -2385f))), ~(~u_input.a)), func_2((4294967295u & u_input.b) != 4294967295u, func_4(vec3<i32>(arg_1.a.b, 2147483647i, -2147483647i), func_2(arg_0.a.a.x, arg_1.a, -2464f, vec2<u32>(1u, arg_2.b)), Struct_1(arg_2.a.a, -53427i)).a, _wgslsmith_f_op_f32(f32(-1f) * -745f), vec2<u32>(7405u, 26012u) & vec2<u32>(1u, arg_0.b)).a), arg_0);
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-636f)) * _wgslsmith_f_op_f32(-var_0.x))), -290f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1203f, var_0.x, var_0.x)))))));
    return var_0.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = vec3<i32>((countOneBits(min(-25454i, arg_1)) ^ (min(arg_1, 2147483647i) & ~arg_1)) << (arg_0 % 32u), ~firstLeadingBit(arg_1), ~min(1i, 1i) | _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1, 1i, -2147483647i) & vec4<i32>(53416i, arg_1, -52156i, -1i), ~vec4<i32>(-28901i, arg_1, -32484i, 0i)), reverseBits(firstTrailingBit(arg_1))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(reverseBits(var_0), func_2(true, Struct_1(vec4<bool>(false, false, true, false), var_0.x), 131f, global1[_wgslsmith_index_u32(11029u, 10u)] ^ u_input.a), Struct_1(vec4<bool>(true, true, true, true), 17286i)), func_2(true, func_4(var_0, func_2(true, Struct_1(vec4<bool>(false, false, false, true), arg_1), 799f, vec2<u32>(1u, arg_0)), Struct_1(vec4<bool>(true, false, false, false), 34468i)).a, -1033f, ~(~u_input.a)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), i32(-1i) * -18240i), _wgslsmith_sub_u32(arg_0, 1u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1053f))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(833f, -212f)))) - _wgslsmith_div_f32(1117f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-515f)), 290f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2141f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1104f, -113f) * _wgslsmith_f_op_f32(max(-1013f, _wgslsmith_f_op_f32(-215f + 2112f))))));
    global1 = array<vec2<u32>, 10>();
    var var_2 = select(true, false, true);
    global1 = array<vec2<u32>, 10>();
    return func_4(vec3<i32>(1i, var_0.x, 0i), func_2(false, Struct_1(vec4<bool>(true, func_4(var_0, Struct_3(Struct_1(vec4<bool>(false, false, true, false), -2147483647i)), Struct_1(vec4<bool>(true, true, false, true), 5571i)).a.a.x, true, true), -countOneBits(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1443f, _wgslsmith_f_op_f32(exp2(var_1.x)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~62061u, arg_0), ~vec2<u32>(1u, 30225u))), func_4(abs(select(var_0 >> (vec3<u32>(1u, u_input.a.x, arg_0) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(var_0, var_0), true)), func_2(all(func_2(true, Struct_1(vec4<bool>(false, false, false, true), var_0.x), 769f, u_input.a).a.a.wzy), Struct_1(vec4<bool>(false, false, true, false), _wgslsmith_dot_vec2_i32(vec2<i32>(-7693i, var_0.x), vec2<i32>(-2147483647i, -38254i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(0u, 10u)], u_input.a)), func_2(false || (arg_0 < 26227u), Struct_1(vec4<bool>(true, true, false, true), select(arg_1, -1240i, false)), var_1.x, u_input.a).a).a);
}

fn func_6(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_4, 27>();
    let var_0 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_0.a.b, -2147483647i, 1i), vec3<i32>(arg_0.a.b, arg_0.a.b, arg_0.a.b), arg_0.a.a.x), -vec3<i32>(arg_0.a.b, -1i, arg_0.a.b)), firstLeadingBit(vec3<i32>(-1i, -4024i, arg_0.a.b))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.b, -2401i, arg_0.a.b), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.b, arg_0.a.b, arg_0.a.b), vec3<i32>(0i, arg_0.a.b, arg_0.a.b)))), func_2(!arg_0.a.a.x, Struct_1(!func_4(vec3<i32>(arg_0.a.b, 31326i, 0i), Struct_3(Struct_1(arg_0.a.a, -2147483647i)), arg_0.a).a.a, -9077i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1682f) * _wgslsmith_div_f32(-281f, 2008f)) + -366f), _wgslsmith_sub_vec2_u32(max(vec2<u32>(25865u, 1u), vec2<u32>(12495u, 53744u)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), u_input.a)), Struct_1(arg_0.a.a, reverseBits(-arg_0.a.b)));
    var var_1 = Struct_4(func_4(~vec3<i32>(-arg_0.a.b, firstTrailingBit(arg_0.a.b), reverseBits(61919i)), func_2(any(var_0.a.a), var_0.a, -1145f, vec2<u32>(abs(u_input.a.x), arg_0.b)), arg_0.a).a, var_0, Struct_2(var_0.a, select(_wgslsmith_clamp_u32(37493u, 1u, 4294967295u), _wgslsmith_mod_u32(var_0.b, 11417u), any(!vec4<bool>(true, true, true, var_0.a.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -944f))));
    let var_3 = var_1.a;
    return 36876u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 10>();
    global2 = array<Struct_4, 27>();
    let var_0 = -reverseBits(min(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 17678i, 17792i, 0i), ~vec4<i32>(8063i, 40638i, -1i, -61722i)), min(-vec4<i32>(38304i, 10324i, 2147483647i, -1i), ~vec4<i32>(-2147483647i, -19509i, -8416i, 0i))));
    global2 = array<Struct_4, 27>();
    var var_1 = vec4<u32>(15666u | ~func_6(func_1(u_input.a.x, -34540i)), u_input.a.x, u_input.a.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1061f + 425f) * 511f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, 159f, 465f, 2482f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -717f, -291f, -3504f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 1039f, 225f, -1064f))))), min(global1[_wgslsmith_index_u32(func_6(Struct_2(func_4(var_0.xzz, Struct_3(Struct_1(vec4<bool>(false, true, true, false), var_0.x)), Struct_1(vec4<bool>(true, true, true, true), var_0.x)).a, func_1(var_1.x, -735i).b)), 10u)], var_1.zy));
}

