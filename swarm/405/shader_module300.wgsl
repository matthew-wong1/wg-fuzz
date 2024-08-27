struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-25739i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 73i), vec2<i32>(13966i, 26699i), vec2<i32>(1i, -88198i), vec2<i32>(-24984i, -14856i), vec2<i32>(i32(-2147483648), 34894i), vec2<i32>(1i, -2961i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-778i, -51885i), vec2<i32>(-19652i, 2147483647i), vec2<i32>(-41703i, 24860i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), -41370i), vec2<i32>(-22147i, i32(-2147483648)), vec2<i32>(0i, -37394i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -11489i), vec2<i32>(1i, 41222i), vec2<i32>(i32(-2147483648), 35518i), vec2<i32>(33822i, 4782i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = 561f;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-231f, global0.a.x, true))))) * vec2<f32>(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_div_f32(833f, global0.a.x))), global0.a.x)), ~_wgslsmith_sub_i32(min(-global0.c, global0.c), global0.b), global0.c);
    var var_1 = (~_wgslsmith_div_u32(u_input.a | 21723u, 25546u) & 0u) >> (u_input.a % 32u);
    let var_2 = all(!(!vec4<bool>(select(arg_0.a.x, true, arg_0.a.x), arg_0.a.x, true, false)));
    let var_3 = reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 43501u, abs(1u)), ~(~vec3<u32>(u_input.a, 22437u, u_input.a) << (vec3<u32>(0u, u_input.a, 67834u) % vec3<u32>(32u))), reverseBits(vec3<u32>(u_input.a, u_input.a, 15944u))));
    return var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-317f)))))), _wgslsmith_mult_i32(-8209i, arg_1.b.x), arg_0.b.x);
    let var_0 = vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_clamp_i32(global0.c, arg_0.b.x, global0.c)), -global1[_wgslsmith_index_u32(func_3(Struct_5(vec3<bool>(arg_0.a.x, arg_1.a.x, true))), 22u)])), select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a.x, -31450i), abs(vec2<i32>(1i, arg_2.a.x))), vec2<i32>(-1i) * -vec2<i32>(-1i, 1i)), arg_1.b.x, !any(!arg_0.a)), 50358i);
    var var_1 = ~vec4<u32>(abs(~_wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_add_u32(u_input.a, 4294967295u) & ~u_input.a, abs(u_input.a), 36922u);
    let var_2 = 2147483647i;
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(arg_0.c.yw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(717f, 486f) + arg_1.c.yz)))), var_2, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, 17566i, arg_0.b.x) << (vec3<u32>(11361u, var_1.x, 0u) % vec3<u32>(32u)), ~vec3<i32>(var_2, var_0.x, arg_2.a.x))), arg_2.a));
    return arg_2.b;
}

fn func_1() -> vec4<bool> {
    let var_0 = select(true, (35890u < abs(u_input.a >> (13134u % 32u))) != false, all(vec2<bool>(false, func_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(0i, global0.b), vec4<f32>(552f, -1000f, -176f, 1579f)), Struct_1(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(33541u, 22u)], vec4<f32>(global0.a.x, -1687f, global0.a.x, global0.a.x)), Struct_3(vec3<i32>(global0.c, -27988i, global0.b), true)))));
    let var_1 = Struct_3(vec3<i32>(-1i, -9012i, (-16199i << (0u % 32u)) & max(-global0.b, _wgslsmith_mult_i32(global0.b, global0.b))), all(vec3<bool>(!var_0, var_0, 1365f <= _wgslsmith_f_op_f32(global0.a.x + global0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(604f + 588f);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 1000f, 709f)))))));
    global1 = array<vec2<i32>, 22>();
    return select(select(vec4<bool>(!var_1.b, var_1.b, _wgslsmith_f_op_f32(-var_2) != _wgslsmith_f_op_f32(max(398f, 263f)), !var_0), !vec4<bool>(var_1.a.x >= 38281i, 7343u < u_input.a, false, !var_1.b), select(!(!vec4<bool>(var_0, var_0, var_0, true)), !(!vec4<bool>(true, true, var_1.b, var_1.b)), !select(vec4<bool>(false, false, var_1.b, var_1.b), vec4<bool>(var_1.b, false, var_0, var_0), var_0))), !vec4<bool>(true, true, false, var_1.b), vec4<bool>(false, select(true, var_1.b, true), _wgslsmith_f_op_f32(849f + global0.a.x) <= _wgslsmith_div_f32(1046f, var_3.x), (true | !var_0) | any(!vec3<bool>(var_1.b, var_1.b, false))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(711f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1, arg_3.c.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(floor(-429f));
    global0 = Struct_4(arg_3.c.c.zx, -1i, global0.c);
    var var_2 = select(!func_1(), select(!(!func_1()), vec4<bool>(false, arg_0, arg_3.c.a.x, true), all(vec2<bool>(true, true))), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_3.c.c.xw))));
    return Struct_3((vec3<i32>(select(-3022i, arg_3.c.b.x, true), min(arg_2, -2147483647i), 2032i) >> (((vec3<u32>(arg_3.d, 0u, arg_3.d) & vec3<u32>(0u, 1u, 40005u)) << (vec3<u32>(4294967295u, arg_3.a, arg_3.a) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ vec3<i32>(firstTrailingBit(18150i << (arg_3.d % 32u)), 71470i, arg_3.c.b.x), select(arg_3.c.a.x, true, ~arg_3.d == u_input.a));
}

fn func_5(arg_0: Struct_3) -> Struct_5 {
    let var_0 = Struct_1(select(!func_1().xyw, !vec3<bool>(arg_0.b, any(vec3<bool>(true, true, true)), arg_0.b), func_1().xwy), ~global1[_wgslsmith_index_u32(~(~u_input.a), 22u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.a.x), 431f, _wgslsmith_f_op_f32(-global0.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -591f, -683f, global0.a.x)))), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(720f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2253f + global0.a.x), _wgslsmith_f_op_f32(global0.a.x - global0.a.x)), -1663f))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, -217f), vec2<f32>(-250f, global0.a.x), vec2<bool>(var_0.a.x, var_0.a.x))))))), var_0.b.x, arg_0.a.x);
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -766f), -620f))), arg_0.a.x, arg_0.a.x);
    global1 = array<vec2<i32>, 22>();
    var var_1 = max(~select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), (vec3<u32>(10779u, 14567u, 59947u) >> (vec3<u32>(1u, u_input.a, 39591u) % vec3<u32>(32u))) | min(vec3<u32>(u_input.a, 9770u, u_input.a), vec3<u32>(0u, u_input.a, 40995u)), var_0.a.x), vec3<u32>(0u, ~(~1u), ~u_input.a));
    return Struct_5(vec3<bool>(true, !(!(!var_0.a.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(all(select(func_1(), vec4<bool>(false, true, true, false), func_1())), _wgslsmith_div_f32(-127f, 270f), countOneBits(global0.b), Struct_2(~31479u, true, Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 22u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))), firstLeadingBit(u_input.a))));
    global1 = array<vec2<i32>, 22>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1040f)))));
    var var_2 = Struct_3(~min(vec3<i32>(~(-2147483647i), global0.c, -1i), vec3<i32>(-24698i, _wgslsmith_add_i32(1i, 37125i), -global0.c)), true);
    var var_3 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.a.x, 2147483647i, global0.c, var_2.a.x), abs(vec4<i32>(global0.c, -33179i, global0.c, -76952i))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, global0.b, 21436i, -31196i), vec4<i32>(global0.c, 60190i, -26242i, -2147483647i), vec4<i32>(0i, var_2.a.x, -37815i, var_2.a.x)), min(vec4<i32>(1i, var_2.a.x, -2147483647i, global0.b), vec4<i32>(-30032i, global0.c, var_2.a.x, -2147483647i)))), -(vec4<i32>(var_2.a.x, -2147483647i, global0.c, global0.b) ^ vec4<i32>(1i, 2147483647i, global0.b, 54307i)) ^ vec4<i32>(global0.c, -1i << (0u % 32u), var_2.a.x ^ -1i, _wgslsmith_sub_i32(-27499i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -vec4<i32>(1i, var_2.a.x, 8905i, 52059i)), select(firstTrailingBit(~abs(vec2<u32>(52993u, u_input.a))), reverseBits(vec2<u32>(u_input.a, 53755u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), any(var_0.a)), vec4<i32>(~(i32(-1i) * -2147483647i), var_2.a.x << (abs(u_input.a) % 32u), ~16007i, i32(-1i) * -12972i) & -(~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.b, global0.c, global0.c, -44096i), vec4<i32>(-1i, 31901i, -19922i, var_3.x))), global1[_wgslsmith_index_u32(28491u, 22u)]);
}

