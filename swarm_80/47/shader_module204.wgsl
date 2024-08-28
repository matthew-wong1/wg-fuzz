struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-2172f, 820f, -1071f, -1168f), vec4<f32>(335f, 435f, 475f, -191f));

var<private> global2: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(42817u, 70240u), vec2<u32>(1u, 23832u), vec2<u32>(0u, 4294967295u));

var<private> global3: Struct_5 = Struct_5(Struct_1(true, 92296u, true));

var<private> global4: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_5(global0[_wgslsmith_index_u32(global3.a.b, 3u)]);
    global4 = array<vec3<bool>, 12>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, -467f))), !select(false, global3.a.a, var_0.a.c), -974f);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x)));
    var var_3 = Struct_1(global3.a.a, abs(var_0.a.b ^ _wgslsmith_mod_u32(global3.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, u_input.e, u_input.b), vec3<u32>(25989u, 40475u, 1u)))), true);
    return vec2<u32>(32168u, var_0.a.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_2(vec2<f32>(228f, arg_1), any(select(select(select(vec2<bool>(false, global3.a.c), vec2<bool>(global3.a.c, false), global3.a.c), select(vec2<bool>(true, global3.a.c), vec2<bool>(false, global3.a.c), global3.a.c), false), select(select(vec2<bool>(global3.a.a, false), vec2<bool>(global3.a.c, global3.a.c), vec2<bool>(global3.a.a, false)), !vec2<bool>(global3.a.a, true), vec2<bool>(false, global3.a.c)), select(select(vec2<bool>(true, global3.a.a), vec2<bool>(global3.a.a, global3.a.c), global3.a.c), select(vec2<bool>(global3.a.a, global3.a.a), vec2<bool>(global3.a.a, true), vec2<bool>(global3.a.c, global3.a.c)), !vec2<bool>(true, global3.a.a)))), 1000f);
    let var_1 = Struct_3(vec4<bool>(select(true, global3.a.a, _wgslsmith_add_i32(60908i, u_input.c) < ~(-10123i)), any(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(17848u, _wgslsmith_div_u32(54937u, u_input.e)), 12u)]), var_0.b, var_0.b), global3.a, var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, var_0.c, var_0.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_0.a.x, var_0.c) * vec3<f32>(614f, arg_1, 2445f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-784f, -1114f, -691f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(532f, -1811f, arg_1), vec3<f32>(arg_1, -1033f, -260f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.a)))));
    let var_2 = var_1;
    let var_3 = Struct_2(var_2.e, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.e.x - -1512f))));
    var var_4 = Struct_4((((vec4<u32>(arg_0.x, 41426u, var_1.b.b, global3.a.b) << (vec4<u32>(u_input.a, 46333u, 4294967295u, arg_0.x) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global3.a.b, 0u, var_1.b.b, 4294967295u), vec4<u32>(4294967295u, 5285u, var_2.b.b, var_2.b.b))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(58843u, u_input.e, 21133u, arg_0.x), vec4<u32>(52565u, var_1.b.b, 71902u, 37095u)), 60155u, 4294967295u, max(u_input.b, 0u))) ^ _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 2615u, var_2.b.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 37782u, var_1.b.b, var_1.b.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.b, 1u, u_input.b, u_input.e), vec4<u32>(arg_0.x, 94677u, arg_0.x, global3.a.b), vec4<u32>(var_1.b.b, 28565u, 1u, 22608u)), ~vec4<u32>(64497u, 0u, 0u, 8325u))), -1i > -u_input.d.x);
    return !select(select(select(global4[_wgslsmith_index_u32(~75424u, 12u)], select(vec3<bool>(var_1.c.b, true, false), vec3<bool>(var_4.b, var_4.b, var_0.b), vec3<bool>(var_4.b, false, false)), !vec3<bool>(true, var_3.b, var_2.a.x)), vec3<bool>(true, !var_0.b, all(global4[_wgslsmith_index_u32(1u, 12u)])), !all(vec4<bool>(true, false, global3.a.c, var_0.b))), !vec3<bool>(false, var_4.b && var_0.b, var_3.b), vec3<bool>(var_4.b, var_4.b, any(select(var_2.a.yzz, vec3<bool>(true, false, var_3.b), false))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_4 {
    let var_0 = select(vec4<bool>(any(!select(vec4<bool>(arg_0.x, global3.a.c, true, global3.a.a), vec4<bool>(false, arg_0.x, false, false), vec4<bool>(false, true, false, false))), select(u_input.c > 18256i, true, false) & (global3.a.c & arg_1.a.a), arg_0.x, false), vec4<bool>(true, false, !arg_0.x, global3.a.c), !select(vec4<bool>(true, true, arg_1.a.c, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.x, false, arg_1.a.c, true), vec4<bool>(global3.a.c, arg_1.a.c, true, arg_1.a.c)), arg_1.a.c));
    var var_1 = func_4(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-986f * -1872f), -1000f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2508f - -408f), -139f)), vec2<f32>(1f, _wgslsmith_f_op_f32(select(-289f, _wgslsmith_f_op_f32(f32(-1f) * -1105f), arg_0.x)))))));
    var var_3 = global3.a.c;
    let var_4 = Struct_4(~vec4<u32>(4294967295u, ~1u, _wgslsmith_clamp_u32(4294967295u, 0u, global3.a.b), _wgslsmith_mult_u32(_wgslsmith_add_u32(37032u, 20565u), 1u)), func_4(firstTrailingBit(~(~vec2<u32>(1u, global3.a.b))), -216f).x);
    return var_4;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_1, 3>();
    global1 = array<vec4<f32>, 2>();
    global4 = array<vec3<bool>, 12>();
    global0 = array<Struct_1, 3>();
    let var_0 = u_input.a;
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-880f, arg_1.x) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-798f, -511f))))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), 781f)), any(!select(vec2<bool>(true, false), vec2<bool>(arg_0.b, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(exp2(arg_1.x)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    global0 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_div_i32(arg_1.x, 2147483647i);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c * -2799f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))))))) * -1000f);
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 6700u, _wgslsmith_dot_vec3_u32(vec3<u32>(57633u, 0u, u_input.b), vec3<u32>(12043u, u_input.e, u_input.e)), u_input.b >> (u_input.a % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(func_2(global4[_wgslsmith_index_u32(27709u, 12u)], Struct_5(Struct_1(global3.a.a, 35587u, global3.a.a))).a.x, u_input.e, _wgslsmith_div_u32(global3.a.b, global3.a.b), 20114u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2824u, u_input.e, u_input.e), vec3<u32>(4294967295u, global3.a.b, u_input.a)), _wgslsmith_sub_u32(4294967295u, 1u), ~6552u, 0u))));
    return Struct_3(!vec4<bool>(global3.a.a || true, 1u > global3.a.b, arg_0.b, true), Struct_1(global3.a.c, var_3.x, arg_0.b), Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a), false, -1176f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, -873f, arg_0.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(283f, 1038f, arg_2), vec3<f32>(477f, -1425f, -100f))), true))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2, 236f, arg_0.b)), _wgslsmith_div_f32(arg_0.a.x, arg_2), any(vec3<bool>(arg_0.b, global3.a.c, global3.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 544f)), arg_2)), arg_0.a);
}

fn func_1() -> bool {
    global3 = Struct_5(global3.a);
    var var_0 = func_6(func_5(func_2(vec3<bool>(global3.a.c & true, global3.a.c, false), Struct_5(global3.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(813f, -1208f) - vec2<f32>(-1000f, -1665f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(149f, 1554f) * vec2<f32>(1025f, -972f))))), global3.a, ~global2[_wgslsmith_index_u32(select(~global3.a.b, 0u, global3.a.c), 6u)]), vec2<i32>(1i, -u_input.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-553f - func_5(Struct_4(vec4<u32>(u_input.e, u_input.a, 13496u, global3.a.b), global3.a.c), vec2<f32>(911f, 991f), global0[_wgslsmith_index_u32(16968u, 3u)], global2[_wgslsmith_index_u32(u_input.e, 6u)]).c) - 1749f))));
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.d.zx, abs(u_input.d.zw));
    let var_2 = false;
    return (_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, 25269u)), 1u) >> (func_3().x % 32u)) > func_3().x;
}

fn func_7(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global4 = array<vec3<bool>, 12>();
    var var_0 = func_6(func_6(func_6(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(225f, -1106f), arg_1.xy), false & global3.a.a, 303f), u_input.d.wx, _wgslsmith_f_op_f32(sign(490f))).c, -u_input.d.yy, arg_1.x).c, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -abs(u_input.d.xy), _wgslsmith_div_vec2_i32(~u_input.d.wy, -vec2<i32>(u_input.c, 1i)) | (firstTrailingBit(u_input.d.yz) | _wgslsmith_sub_vec2_i32(u_input.d.wy, vec2<i32>(u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(abs(arg_1.x))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -310f);
    let var_2 = vec2<bool>(!(!(var_0.a.x && any(vec3<bool>(false, global3.a.a, false)))), arg_2);
    let var_3 = true;
    return func_6(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xz + arg_1.yz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(718f, 524f) - var_0.e)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.yz)))), !(!var_2.x) | global3.a.a, -397f), vec2<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c, u_input.d.x, u_input.d.x)), reverseBits(vec3<i32>(u_input.c, 25248i, u_input.d.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1133f, _wgslsmith_f_op_f32(select(arg_1.x, var_0.c.c, false))))))))).b;
}

fn func_8(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_5 {
    let var_0 = !vec4<bool>(arg_1.a, true, global3.a.a, true);
    let var_1 = func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-598f, 180f), vec2<f32>(1062f, -430f), arg_0.x)))), func_6(func_6(Struct_2(vec2<f32>(-294f, 1583f), false, -504f), _wgslsmith_clamp_vec2_i32(u_input.d.xy, vec2<i32>(u_input.c, 0i), vec2<i32>(-1i, 0i)), func_6(Struct_2(vec2<f32>(-237f, -411f), arg_1.a, -309f), vec2<i32>(u_input.d.x, -1i), -453f).e.x).c, abs(_wgslsmith_mod_vec2_i32(u_input.d.wx, vec2<i32>(3559i, u_input.c))), func_5(func_2(vec3<bool>(true, true, false), Struct_5(arg_1)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(100f, 160f))), arg_1, global2[_wgslsmith_index_u32(u_input.e, 6u)]).c).a.x, _wgslsmith_f_op_f32(-1050f + -1127f)), select(-reverseBits(select(vec2<i32>(u_input.c, u_input.d.x), u_input.d.zx, var_0.yz)), u_input.d.ww, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(321f)), _wgslsmith_f_op_f32(step(460f, -382f)))) - -150f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1615f, 839f)), _wgslsmith_f_op_f32(max(1411f, -646f)))))));
    var var_2 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(86711u, var_1.b.b, global3.a.b), vec3<u32>(6839u, 9828u, u_input.e)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.b, 0u, var_1.b.b), vec3<u32>(arg_1.b, 0u, 0u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b, var_1.b.b, 4294967295u), vec3<u32>(24326u, var_1.b.b, 18382u), firstTrailingBit(vec3<u32>(global3.a.b, 68555u, arg_1.b)))), vec3<u32>(1u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(92813u, arg_1.b, 4237u, global3.a.b), vec4<u32>(global3.a.b, 50282u, arg_1.b, arg_1.b)), 1u) << (max(global3.a.b, ~156725u) % 32u), func_6(func_5(Struct_4(vec4<u32>(4294967295u, 56791u, u_input.a, 0u), global3.a.c), _wgslsmith_f_op_vec2_f32(-var_1.c.a), func_7(var_1.a, vec3<f32>(var_1.d.x, var_1.d.x, var_1.c.c), true, 14929u), _wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], vec2<u32>(arg_1.b, arg_1.b))), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(-2147483647i, 26538i)), abs(u_input.c)), _wgslsmith_f_op_f32(step(1151f, _wgslsmith_f_op_f32(1957f * -1042f)))).b.b));
    var var_3 = var_1;
    let var_4 = -u_input.d.wzx;
    return Struct_5(func_7(select(vec4<bool>(var_0.x && false, var_0.x, false == var_3.b.c, !var_3.c.b), func_6(func_6(Struct_2(var_1.c.a, true, -1000f), vec2<i32>(var_4.x, 33462i), -431f).c, var_4.xz, -1626f).a, var_0.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(488f, -206f, var_1.c.c)))))), !any(vec2<bool>(arg_0.x, true)), 0u));
}

fn func_9(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: bool) -> Struct_5 {
    global2 = array<vec2<u32>, 6>();
    let var_0 = firstLeadingBit(10982i);
    var var_1 = Struct_5(Struct_1(!arg_1.a.c, 11706u, func_8(func_6(Struct_2(vec2<f32>(-383f, -729f), true, 237f), vec2<i32>(20607i, -80297i), _wgslsmith_f_op_f32(337f - 572f)).a, arg_1.a).a.a));
    global2 = array<vec2<u32>, 6>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-743f, -1204f)), _wgslsmith_f_op_f32(max(-1457f, 414f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-762f)), _wgslsmith_f_op_f32(f32(-1f) * -1063f), -597f)), func_4(~_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(1u, 6u)], vec2<u32>(0u, var_1.a.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(612f * 203f)))).x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-520f)), _wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(round(289f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_6(Struct_2(vec2<f32>(-1978f, 307f), false, -989f), vec2<i32>(u_input.d.x, -25351i), 1149f).d, _wgslsmith_f_op_vec3_f32(vec3<f32>(676f, -683f, -194f) + vec3<f32>(835f, 418f, -1674f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 12>();
    var var_0 = 31183u;
    global3 = func_9(global4[_wgslsmith_index_u32(10374u, 12u)], func_8(vec4<bool>(false, global3.a.a, false, _wgslsmith_add_i32(u_input.c, 35784i) < u_input.c), func_7(select(!vec4<bool>(global3.a.c, global3.a.a, true, true), vec4<bool>(global3.a.a, global3.a.a, global3.a.a, global3.a.a), vec4<bool>(global3.a.a, global3.a.c, global3.a.c, true)), _wgslsmith_div_vec3_f32(vec3<f32>(1592f, 238f, 1072f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, 435f, -484f))), !(!global3.a.a), select(1u, 1u, func_1()))), vec2<i32>(_wgslsmith_sub_i32(abs(32724i), 51383i), -13623i) & reverseBits(u_input.d.zx), any(func_6(func_6(Struct_2(vec2<f32>(570f, 805f), true, -791f), max(vec2<i32>(0i, u_input.d.x), vec2<i32>(u_input.c, 0i)), 1896f).c, u_input.d.yx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-268f * 341f)))).a));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(373f, -1243f), _wgslsmith_f_op_f32(-870f + -1136f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1427f, -794f), vec2<f32>(1000f, 556f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, 1000f) * vec2<f32>(-107f, -1180f))))), func_5(Struct_4(abs(vec4<u32>(global3.a.b, 34890u, u_input.b, 4294967295u)), global3.a.a), vec2<f32>(-1378f, -573f), global3.a, abs(max(vec2<u32>(global3.a.b, 4294967295u), global2[_wgslsmith_index_u32(u_input.b, 6u)]))).a, u_input.d.x < (1i >> (1u % 32u)))), global3.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(-282f))), -839f), 732f)));
    let var_2 = func_8(!func_6(func_5(func_2(global4[_wgslsmith_index_u32(4294967295u, 12u)], Struct_5(Struct_1(global3.a.a, 51694u, true))), var_1.a, global0[_wgslsmith_index_u32(58430u, 3u)], vec2<u32>(1u, global3.a.b)), u_input.d.yw, _wgslsmith_f_op_f32(round(var_1.c))).a, global0[_wgslsmith_index_u32(global3.a.b, 3u)]).a;
    let var_3 = var_2.c;
    global2 = array<vec2<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(-var_1.a))), vec2<f32>(func_6(Struct_2(vec2<f32>(-776f, 147f), var_3, 526f), ~_wgslsmith_clamp_vec2_i32(u_input.d.yx, vec2<i32>(-4758i, 0i), u_input.d.zy), _wgslsmith_f_op_f32(-var_1.c)).d.x, _wgslsmith_div_f32(var_1.a.x, -320f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) + 1997f), vec4<i32>(u_input.c >> (u_input.e % 32u), firstLeadingBit(reverseBits(1i)), firstLeadingBit(select(-47432i, 28304i, global3.a.a)), firstTrailingBit(_wgslsmith_div_i32(u_input.c, ~u_input.d.x))));
}

