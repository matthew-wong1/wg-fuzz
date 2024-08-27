struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1000f, -1619f, 661f), -914f, 69061u, false, vec4<bool>(true, true, false, true));

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(15775u, 1u, 4294967295u, 36995u), vec4<u32>(0u, 0u, 7176u, 4807u), vec4<u32>(0u, 22976u, 35444u, 1u), vec4<u32>(93338u, 102136u, 4294967295u, 83138u), vec4<u32>(23318u, 62236u, 1029u, 0u), vec4<u32>(10034u, 0u, 20588u, 22977u), vec4<u32>(0u, 51909u, 44098u, 32864u), vec4<u32>(33029u, 1u, 43334u, 4294967295u), vec4<u32>(12069u, 17248u, 0u, 1u), vec4<u32>(9651u, 76058u, 24365u, 4294967295u), vec4<u32>(25453u, 54603u, 27709u, 34640u), vec4<u32>(0u, 37186u, 551u, 24797u), vec4<u32>(1u, 48456u, 53991u, 1u), vec4<u32>(24334u, 28937u, 9111u, 4294967295u), vec4<u32>(19943u, 37475u, 27070u, 71720u), vec4<u32>(52064u, 4294967295u, 59055u, 41270u), vec4<u32>(0u, 20663u, 16582u, 24895u), vec4<u32>(62942u, 16684u, 47289u, 4294967295u));

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global3: array<i32, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = 1i;
    global0 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(-894f * -330f), ~(42999u | ~arg_1.c), !all(vec4<bool>(all(global0.e.yxx), select(arg_0.e.x, false, arg_0.d), true, arg_1.e.x)), global0.e);
    let var_1 = _wgslsmith_mod_i32(select(-9813i, 10332i, all(vec2<bool>(false, true)) || any(select(arg_0.e, vec4<bool>(false, arg_0.e.x, global0.d, false), global0.e))), 1i);
    global1 = array<vec4<u32>, 18>();
    global1 = array<vec4<u32>, 18>();
    return ~0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = !(_wgslsmith_f_op_f32(global0.a.x - global0.b) != global0.a.x);
    global1 = array<vec4<u32>, 18>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b, global0.c, arg_0.b, vec4<bool>(!all(!global2.xx), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 12u)], -17524i), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(2970u, 12u)], -56588i), arg_1.x) <= _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_3.a.xy), max(vec2<i32>(2147483647i, arg_3.a.x), vec2<i32>(-2147483647i, -1i))), any(!global0.e.wy), arg_3.b));
    global2 = select(var_1.e, vec4<bool>(select(var_1.c >= var_1.c, true, true), true, true, true), select(!(!vec4<bool>(var_1.d, global0.e.x, false, arg_3.b)), select(select(var_1.e, !vec4<bool>(false, global2.x, false, global2.x), arg_0.b), var_1.e, !vec4<bool>(global0.e.x, arg_2, false, global2.x)), vec4<bool>(true, arg_3.b, arg_2, !arg_2)));
    var var_2 = all(select(!(!vec4<bool>(arg_0.b, arg_2, false, arg_2)), vec4<bool>(arg_2, firstTrailingBit(arg_1.x) <= ~32213i, arg_0.b, !(!var_0)), false));
    return true;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: bool) -> f32 {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(1873f, -528f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * arg_2) + _wgslsmith_f_op_f32(arg_2 * arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(976f * -1507f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_2) + 1212f)))), arg_0, (_wgslsmith_f_op_f32(step(-366f, 541f)) <= 1329f) || true, !select(select(select(vec4<bool>(arg_1, true, global0.d, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(global0.d, true, arg_1, true), vec4<bool>(global2.x, arg_3, global0.d, true), global0.e), true), !vec4<bool>(global0.d, true, false, true), vec4<bool>(true, arg_3, false, true)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(ceil(global0.a))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)))))), ~(~firstLeadingBit(55639u) ^ u_input.c.x), all(vec4<bool>(true, true, global2.x, true)), vec4<bool>(func_4(Struct_1(~vec3<i32>(-9465i, global3[_wgslsmith_index_u32(arg_0, 12u)], 59498i), global0.d), max(~vec4<i32>(1i, -11279i, u_input.b, global3[_wgslsmith_index_u32(47535u, 12u)]), ~vec4<i32>(83679i, global3[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b, global3[_wgslsmith_index_u32(51304u, 12u)])), u_input.c.x < func_3(Struct_2(vec3<f32>(global0.a.x, global0.a.x, -797f), global0.b, global0.c, false, vec4<bool>(global0.d, true, global0.e.x, global0.d)), Struct_2(global0.a, arg_2, arg_0, false, vec4<bool>(false, arg_1, false, global2.x)), global3[_wgslsmith_index_u32(101480u, 12u)]), Struct_1(vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], global3[_wgslsmith_index_u32(global0.c, 12u)]), select(arg_1, global2.x, arg_1))), !(!(!global2.x)), !select(false, arg_1, false), any(vec4<bool>(any(vec3<bool>(true, global0.d, global2.x)), arg_3, all(vec3<bool>(arg_3, false, true)), all(vec3<bool>(true, true, true))))));
    let var_1 = vec2<u32>(var_0.c, 4294967295u);
    let var_2 = vec2<u32>(1u, ~(~4294967295u));
    let var_3 = arg_3;
    return _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(ceil(-155f))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, -1058f)), -1661f, arg_0.x)), _wgslsmith_f_op_f32(361f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - -662f), global0.a.x)), -1569f, false))), _wgslsmith_mult_u32(~4294967295u, 36916u), true, vec4<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(global0.c, 12u)] != -46389i, false, all(arg_1))), false, true, arg_1.x));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) * arg_0.x);
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(arg_2.a, _wgslsmith_div_vec3_i32(arg_2.a, arg_3.a >> (vec3<u32>(u_input.c.x, u_input.c.x, 60896u) % vec3<u32>(32u))), ~arg_2.a), -15478i != firstLeadingBit(~(~u_input.b)));
    var var_2 = ~u_input.c.x & 59668u;
    var_2 = global0.c;
    return Struct_1(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(arg_3.a, abs(arg_2.a)), arg_1.x);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global0.b);
    var var_1 = func_5(vec4<f32>(global0.b, -521f, global0.b, _wgslsmith_f_op_f32(func_2(0u, !global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1069f, -707f)), global0.e.x))), !vec3<bool>(true, global2.x, true), Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(2147483647i, 1i)), ~(-13615i), ~u_input.a), false), Struct_1(abs(vec3<i32>(1i, u_input.a, min(-2147483647i, u_input.b))), global2.x));
    let var_2 = vec3<i32>(-6558i, var_1.a.x | 2147483647i, abs(max(-u_input.a, _wgslsmith_mod_i32(-var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -10964i, 50619i, global3[_wgslsmith_index_u32(global0.c, 12u)]), vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], u_input.b, var_1.a.x))))));
    let var_3 = global0.a.zx;
    var var_4 = Struct_1((firstTrailingBit(var_2) | var_2) << (~u_input.c.xzz % vec3<u32>(32u)), var_1.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f + global0.a.x) + -1167f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 51546u;
    let var_1 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(func_5(vec4<f32>(global0.b, -1094f, var_1, var_1), vec3<bool>(false, global0.e.x, global2.x), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(var_0, 12u)], u_input.b, u_input.a), false), Struct_1(vec3<i32>(44126i, -57327i, u_input.a), global0.e.x)).a.x, global3[_wgslsmith_index_u32(u_input.c.x, 12u)]) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, global0.c) ^ u_input.c.xz, u_input.c.yx) % vec2<u32>(32u)), abs(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(42068i, u_input.b), vec2<i32>(0i, global3[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(global3[_wgslsmith_index_u32(1u, 12u)], u_input.b)))), 1u, 0i, _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(global0.c, var_0), _wgslsmith_mult_u32(global0.c, var_0), max(var_0, 4294967295u)), firstTrailingBit(u_input.c.yxw)), ~u_input.c.wyw);
}

