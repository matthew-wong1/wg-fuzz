struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

var<private> global1: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-321f, -1979f, -1000f, -104f), vec4<f32>(-335f, 1300f, 1450f, 463f), vec4<f32>(500f, 275f, -1000f, 298f));

var<private> global2: array<f32, 20> = array<f32, 20>(-1298f, -1673f, 1998f, -1316f, -1192f, -772f, 1238f, -320f, 1000f, 143f, 554f, -462f, -434f, 587f, -339f, -1000f, 1593f, -1371f, 2210f, 1000f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    var var_0 = ~_wgslsmith_mod_u32((~u_input.a.x >> (_wgslsmith_sub_u32(u_input.a.x, 1u) % 32u)) << (11120u % 32u), 0u);
    global0 = array<vec4<i32>, 2>();
    return select(vec4<u32>(reverseBits(104085u), _wgslsmith_sub_u32(u_input.a.x, select(1u, u_input.a.x, arg_1.a)), firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 1u)) << (~(~4294967295u) % 32u), ~(~121179u)), ~vec4<u32>(1u, ~(~0u), 82644u, 16005u), true);
}

fn func_2(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = arg_1;
    var var_1 = ~_wgslsmith_mult_vec4_u32(max(func_3(~(-2319i), Struct_2(false, Struct_1(0u), Struct_1(12762u), Struct_1(0u), vec2<f32>(-711f, global2[_wgslsmith_index_u32(0u, 20u)])), ~0i), abs(select(vec4<u32>(4294967295u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 1u, u_input.a.x), vec4<bool>(true, true, false, true)))), select(~vec4<u32>(arg_1, 55294u, u_input.a.x, 77836u) << (vec4<u32>(4294967295u, 44777u, var_0, arg_1) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0, 33077u, 0u), vec4<u32>(58089u, 1u, arg_1, arg_1)), true));
    global1 = array<vec4<f32>, 3>();
    let var_2 = Struct_4(Struct_2(true, Struct_1(1u), Struct_1(_wgslsmith_div_u32(firstLeadingBit(var_1.x), var_1.x)), Struct_1(abs(~u_input.a.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2130f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(max(374f, global2[_wgslsmith_index_u32(var_0, 20u)])), _wgslsmith_f_op_f32(ceil(822f)))))), select(select(vec4<bool>(all(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, false, true))), vec4<bool>(all(vec2<bool>(true, false)), true, false, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(any(vec3<bool>(true, true, false)), select(true, true, false), true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), select(vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), all(vec2<bool>(false, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false))));
    let var_3 = select(var_2.b.xyy, vec3<bool>(var_2.b.x, any(var_2.b), false), var_2.a.a);
    return ~min(abs(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-15147i, -2147483647i, 22421i), ~(-2147483647i))) >= _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(107834u, 2u)], _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.a.xy), select(vec2<u32>(var_1.x, var_2.a.b.a), var_1.xw, false)), 2u)], vec4<i32>(max(60294i, 90222i), i32(-1i) * -1i, i32(-1i) * -1i, 1i)));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(14756u);
    var var_1 = arg_1;
    var var_2 = var_1.a.d;
    let var_3 = 1320f;
    let var_4 = vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-31599i, -22549i)) >> (_wgslsmith_add_u32(1u, 0u) % 32u), ~(~1i)) | _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-35492i, -22776i, 2147483647i, 8234i)), abs(vec4<i32>(-13790i, -2025i, 0i, -38414i))), -8417i, _wgslsmith_mod_i32(i32(-1i) * -14273i, 21902i));
    return Struct_2(all(var_1.b), arg_1.a.c, Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.a.x), vec2<u32>(u_input.a.x, arg_1.a.c.a) | u_input.a.yz)), arg_1.a.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(var_1.a.e, var_1.a.e)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), global2[_wgslsmith_index_u32(~(~var_1.a.c.a), 20u)]))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_4 {
    global2 = array<f32, 20>();
    global1 = array<vec4<f32>, 3>();
    let var_0 = Struct_2(false, func_4(!all(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)), Struct_4(arg_0, vec4<bool>(any(vec2<bool>(arg_0.a, arg_0.a)), true, all(vec2<bool>(false, false)), true))).b, func_4(true, Struct_4(arg_0, !vec4<bool>(false, arg_0.a, false, arg_0.a))).d, arg_0.b, _wgslsmith_f_op_vec2_f32(step(arg_0.e, arg_0.e)));
    var var_1 = Struct_4(var_0, select(select(vec4<bool>(true, true, var_0.a, true), !(!vec4<bool>(false, var_0.a, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(false, var_0.a, func_2(_wgslsmith_f_op_f32(f32(-1f) * -965f), var_0.b.a), !any(vec3<bool>(true, var_0.a, false))), vec4<bool>(true, true, all(!vec4<bool>(arg_0.a, false, false, false)), true)));
    global1 = array<vec4<f32>, 3>();
    return Struct_4(func_4(!var_1.b.x, Struct_4(func_4(arg_0.a, Struct_4(var_1.a, vec4<bool>(var_1.a.a, true, true, true))), var_1.b)), !vec4<bool>(all(!vec4<bool>(var_1.b.x, true, arg_0.a, false)), arg_0.a, !(!var_1.a.a), 9105u <= _wgslsmith_sub_u32(var_0.c.a, arg_0.b.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = 1418f;
    var var_1 = func_5(func_4(select(func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 20u)]), 0u), any(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, true)) | true), Struct_4(Struct_2(true, Struct_1(u_input.a.x), Struct_1(1059u), Struct_1(72878u), vec2<f32>(392f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), abs(select(_wgslsmith_mod_vec4_u32(vec4<u32>(45707u, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6660u))), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), true)));
    var var_2 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(23379u, 2u)], vec4<i32>(-2540i, -4611i, 2147483647i, 2147483647i)) & 1i, -10100i) << (u_input.a.x % 32u), ~abs(_wgslsmith_div_i32(-1197i, 1i)), max(~(-_wgslsmith_mult_i32(-28882i, -21530i)), -_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(-13915i, -44923i))));
    let var_3 = func_5(Struct_2(any(func_5(Struct_2(true, Struct_1(u_input.a.x), var_1.a.c, var_1.a.b, vec2<f32>(var_1.a.e.x, -1935f)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 8467u, u_input.a.x), vec4<u32>(1u, var_1.a.d.a, 4294967295u, u_input.a.x))).b.wzz), func_4(_wgslsmith_f_op_f32(-var_1.a.e.x) >= _wgslsmith_f_op_f32(-var_1.a.e.x), Struct_4(var_1.a, select(vec4<bool>(true, false, false, var_1.a.a), vec4<bool>(false, true, true, true), var_1.b.x))).b, var_1.a.d, Struct_1(_wgslsmith_dot_vec2_u32(~u_input.a.zx, u_input.a.xz)), _wgslsmith_f_op_vec2_f32(var_1.a.e * var_1.a.e)), ~vec4<u32>(_wgslsmith_mult_u32(14210u, _wgslsmith_div_u32(u_input.a.x, 57128u)), var_1.a.c.a, u_input.a.x, 4294967295u));
    let var_4 = var_2.x;
    return var_3.a.c;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_5(Struct_2(any(vec2<bool>(any(vec3<bool>(false, true, false)), true)), arg_1, func_5(Struct_2(func_2(-417f, u_input.a.x), func_1(), func_5(Struct_2(true, arg_1, arg_1, Struct_1(u_input.a.x), arg_0), vec4<u32>(67049u, u_input.a.x, arg_1.a, 26221u)).a.d, Struct_1(u_input.a.x), _wgslsmith_f_op_vec2_f32(round(arg_0))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 19402u), u_input.a.xy), 1u, abs(u_input.a.x), ~4294967295u)).a.b, Struct_1(reverseBits(_wgslsmith_div_u32(55579u, arg_1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0, arg_0))), vec2<f32>(global2[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(select(arg_0.x, 890f, true))))), firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 65769u, ~(~4294967295u))));
    let var_1 = func_4(var_0.a.a, Struct_4(func_4(-333f > _wgslsmith_f_op_f32(var_0.a.e.x + 1172f), Struct_4(func_4(false, Struct_4(Struct_2(false, var_0.a.d, var_0.a.b, Struct_1(79440u), vec2<f32>(arg_0.x, arg_0.x)), vec4<bool>(var_0.b.x, var_0.a.a, true, false))), func_5(var_0.a, vec4<u32>(u_input.a.x, 47647u, 0u, 22091u)).b)), var_0.b));
    var var_2 = vec4<bool>(any(func_5(var_0.a, vec4<u32>(_wgslsmith_mod_u32(var_1.d.a, arg_1.a), _wgslsmith_add_u32(1u, arg_1.a), ~0u, firstTrailingBit(0u))).b), true, true | (var_1.b.a != ~_wgslsmith_add_u32(u_input.a.x, 1u)), (!(!var_0.a.a) & func_4(all(vec3<bool>(var_0.b.x, var_1.a, false)), Struct_4(Struct_2(var_0.a.a, Struct_1(1u), Struct_1(var_1.d.a), Struct_1(106190u), arg_0), var_0.b)).a) || func_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1084f, -884f), 1000f)), 53322u));
    var var_3 = Struct_3(max(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.a, var_0.a.b.a, 25006u, 0u)), ~vec4<u32>(0u, 51059u, 43474u, u_input.a.x)), ~(~9031u)));
    let var_4 = func_5(func_5(var_1, ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a, var_3.a, 1u, 64777u), vec4<u32>(51479u, var_1.c.a, var_0.a.d.a, u_input.a.x))).a, vec4<u32>(~func_3(-21100i, var_0.a, 0i).x & ~max(4294967295u, 1u), 0u, _wgslsmith_sub_u32(func_5(Struct_2(true, arg_1, Struct_1(0u), Struct_1(1u), vec2<f32>(-689f, -956f)), min(vec4<u32>(u_input.a.x, 4294967295u, var_3.a, 4294967295u), vec4<u32>(var_1.d.a, 0u, arg_1.a, 0u))).a.d.a, ~0u), ~(~var_1.c.a) >> (0u % 32u))).b;
    return func_4(any(vec2<bool>(_wgslsmith_f_op_f32(var_1.e.x * -1000f) <= _wgslsmith_f_op_f32(-905f + var_0.a.e.x), any(select(vec2<bool>(true, var_4.x), var_4.wx, var_2.x)))), Struct_4(func_5(func_5(func_5(var_0.a, vec4<u32>(var_1.d.a, 23059u, 51349u, 4294967295u)).a, abs(vec4<u32>(var_3.a, 44582u, 4869u, u_input.a.x))).a, firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(43266u, 4294967295u, var_3.a, 1u), vec4<u32>(0u, 4294967295u, 37621u, var_1.c.a)))).a, !vec4<bool>(var_0.a.a | false, arg_0.x < global2[_wgslsmith_index_u32(4294967295u, 20u)], var_0.b.x, true)));
}

fn func_7(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = vec2<i32>(firstLeadingBit(-1i) & select(5304i, -1i, !any(arg_1.b.xy)), _wgslsmith_div_i32(2147483647i, -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-12335i, 11477i, -67448i), vec3<i32>(-9056i, 1i, -78336i)), reverseBits(vec3<i32>(17569i, -19857i, -1i)))));
    let var_1 = func_5(arg_1.a, ~arg_2 << (arg_2 % vec4<u32>(32u))).b.x;
    return func_5(Struct_2(func_2(-1000f, 1u) | any(!vec2<bool>(true, var_1)), arg_1.a.c, arg_1.a.d, Struct_1(u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.e, arg_1.a.e))), vec4<u32>(~u_input.a.x, arg_2.x, 48254u, ~arg_2.x) ^ countOneBits(~vec4<u32>(arg_0, arg_0, 2101u, 4294967295u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 20u)]), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 20u)], true)));
    var var_1 = func_7(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 49910u), abs(1u)), Struct_4(func_6(vec2<f32>(var_0, 867f), func_1()), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, reverseBits(~1684u)), select(select(9775u, u_input.a.x, true) >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), u_input.a.x & ~u_input.a.x, any(vec2<bool>(false, false))), _wgslsmith_sub_u32(36152u, u_input.a.x), func_4(true, Struct_4(Struct_2(false, Struct_1(u_input.a.x), Struct_1(4294967295u), Struct_1(u_input.a.x), vec2<f32>(-828f, global2[_wgslsmith_index_u32(27864u, 20u)])), vec4<bool>(false, false, false, true))).d.a));
    let var_2 = -vec2<i32>(min(_wgslsmith_mult_i32(abs(-47534i), ~0i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, 56156i, -64042i), _wgslsmith_mult_i32(10189i, 1i))), ~2147483647i);
    global2 = array<f32, 20>();
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(21604i, var_2.x, 1i, _wgslsmith_div_i32(firstTrailingBit(abs(0i)), 30526i)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, max(abs(global0[_wgslsmith_index_u32(var_1.d.a, 2u)]), -vec4<i32>(1i, var_3.x, 32287i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_3.x, -19882i), var_3.yzw))), 923f, _wgslsmith_f_op_vec2_f32(-var_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, func_6(vec2<f32>(var_1.e.x, var_0), Struct_1(u_input.a.x)).e.x, _wgslsmith_f_op_f32(-var_1.e.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(452f, 1000f, -209f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(331f, var_0, var_0) + vec3<f32>(553f, global2[_wgslsmith_index_u32(11683u, 20u)], 1533f))), vec3<f32>(_wgslsmith_f_op_f32(-325f + var_0), _wgslsmith_f_op_f32(var_1.e.x * global2[_wgslsmith_index_u32(var_1.c.a, 20u)]), _wgslsmith_div_f32(var_0, var_1.e.x)))));
}

