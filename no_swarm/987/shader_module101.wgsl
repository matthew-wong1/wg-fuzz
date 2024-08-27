struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: f32 = 545f;

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(62485u, 4294967295u, 46858u), vec3<u32>(31670u, 65202u, 4294967295u), vec3<u32>(10747u, 0u, 61036u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(13542u, 4294967295u, 0u), vec3<u32>(10322u, 0u, 32360u));

var<private> global3: array<f32, 32>;

var<private> global4: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(false, false, false, true), true, 2147483647i), Struct_1(vec4<bool>(false, true, true, true), true, 2147483647i), Struct_1(vec4<bool>(true, true, true, true), false, 2147483647i), Struct_1(vec4<bool>(false, true, false, false), false, -30316i), Struct_1(vec4<bool>(true, true, false, false), false, -1i), Struct_1(vec4<bool>(false, false, true, false), false, 2147483647i), Struct_1(vec4<bool>(false, true, false, true), true, 1i), Struct_1(vec4<bool>(false, false, true, true), false, -26706i), Struct_1(vec4<bool>(false, true, false, false), false, 1345i), Struct_1(vec4<bool>(false, false, false, false), false, 37603i), Struct_1(vec4<bool>(false, false, true, true), true, 2147483647i), Struct_1(vec4<bool>(true, false, false, true), true, -7556i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<f32> {
    global3 = array<f32, 32>();
    var var_0 = select(1u, select(~(~max(4294967295u, arg_0.b.a)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b.zx)), arg_2.b), !all(vec4<bool>(arg_0.b.b.b, true, !arg_0.b.b.b, arg_0.c.b.b)));
    global2 = array<vec3<u32>, 6>();
    global0 = array<i32, 27>();
    var var_1 = false;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.c.x, 240f, arg_0.b.c.x), vec3<f32>(-298f, 232f, -575f), vec3<bool>(arg_2.b, arg_2.a.x, arg_0.b.b.a.x))), _wgslsmith_f_op_vec3_f32(select(arg_0.b.c, arg_0.c.c, arg_0.c.b.b)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1680f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.c.x, -367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1245f)) * _wgslsmith_f_op_f32(sign(-390f))))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(true);
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 27u)];
    global2 = array<vec3<u32>, 6>();
    let var_2 = u_input.b.x;
    global2 = array<vec3<u32>, 6>();
    return Struct_3(!(global3[_wgslsmith_index_u32(~(var_2 >> (0u % 32u)), 32u)] == global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, 18916u), 32u)]), Struct_2(u_input.b.x, Struct_1(vec4<bool>(!var_0.a, true, global3[_wgslsmith_index_u32(7814u, 32u)] == global3[_wgslsmith_index_u32(88581u, 32u)], all(vec2<bool>(false, var_0.a))), (u_input.b.x ^ u_input.e) < var_2, ~countOneBits(u_input.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(23484u, 32u)], -137f, -800f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(global3[_wgslsmith_index_u32(u_input.e, 32u)], Struct_2(0u, global4[_wgslsmith_index_u32(var_2, 12u)], vec3<f32>(1435f, -979f, 632f)), Struct_2(50251u, global4[_wgslsmith_index_u32(var_2, 12u)], vec3<f32>(821f, 638f, global3[_wgslsmith_index_u32(u_input.b.x, 32u)])), vec2<i32>(-5910i, u_input.d.x)), u_input.a.zz, global4[_wgslsmith_index_u32(53641u, 12u)])), vec3<bool>(u_input.a.x < global0[_wgslsmith_index_u32(u_input.e, 27u)], true, true)))), !(!select(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(true, true, true, var_0.a)), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), !vec4<bool>(false, false, var_0.a, true))), Struct_1(select(vec4<bool>(var_0.a & var_0.a, false, all(vec4<bool>(true, var_0.a, true, var_0.a)), var_0.a), select(!vec4<bool>(true, var_0.a, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(var_0.a, false, var_0.a))), select(var_0.a, any(vec3<bool>(false, false, false)), all(vec2<bool>(var_0.a, true)))), var_0.a, 2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = arg_2.b;
    global0 = array<i32, 27>();
    global2 = array<vec3<u32>, 6>();
    var var_1 = vec4<i32>(~abs(-1i), -(abs(global0[_wgslsmith_index_u32(~u_input.b.x, 27u)]) | _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(-1i, -2147483647i, -1i))), -_wgslsmith_clamp_i32(7748i, 5681i, _wgslsmith_clamp_i32(arg_2.b.c, global0[_wgslsmith_index_u32(u_input.b.x, 27u)] >> (arg_2.a % 32u), 0i)), arg_1.x);
    let var_2 = func_2().b;
    return global0[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)];
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = func_4(func_2(), vec3<i32>(10413i >> (1u % 32u), max(16120i, 0i), 1i), func_2().b, Struct_2(67382u, global4[_wgslsmith_index_u32(~24143u, 12u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1469f, -1000f, global3[_wgslsmith_index_u32(35429u, 32u)])), vec3<f32>(_wgslsmith_f_op_f32(-453f * global3[_wgslsmith_index_u32(u_input.b.x, 32u)]), _wgslsmith_f_op_f32(139f - global3[_wgslsmith_index_u32(63723u, 32u)]), -308f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~51710u, 32u)]));
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), all(!select(vec2<bool>(true, true), func_2().d.a.yx, vec2<bool>(true, true))), 12773i);
    global2 = array<vec3<u32>, 6>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2681f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.e, 32u)], global3[_wgslsmith_index_u32(u_input.b.x, 32u)]))) - global3[_wgslsmith_index_u32(1u, 32u)]));
    return vec4<i32>(1i, var_1.c, -_wgslsmith_dot_vec2_i32(select(u_input.a.xy, countOneBits(vec2<i32>(var_1.c, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), select(vec2<bool>(false, var_1.b), var_1.a.ww, var_1.b)), _wgslsmith_div_vec2_i32(-vec2<i32>(-37565i, 51794i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.e, 27u)]), u_input.a.xx))), _wgslsmith_clamp_i32(~(-1i), min(_wgslsmith_mod_i32(arg_0, ~(-30327i)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.d, u_input.a), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.c, -46254i, arg_0)))), ~(4266i >> (_wgslsmith_sub_u32(1u, u_input.e) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.e, u_input.e)), 32u)];
    let var_1 = -func_1(-1i);
    var var_2 = Struct_5(false);
    let var_3 = Struct_2(u_input.b.x, func_2().d, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-289f, -894f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 32u)] - global3[_wgslsmith_index_u32(0u, 32u)]))), _wgslsmith_f_op_f32(-267f * 1258f)))));
    var var_4 = _wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(_wgslsmith_add_u32(abs(u_input.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 70822u, u_input.e, 41411u), vec4<u32>(0u, 18763u, 1u, u_input.e)))), _wgslsmith_add_u32(1u, ~u_input.b.x << (_wgslsmith_sub_u32(var_3.a, u_input.b.x) % 32u)) ^ u_input.b.x);
    var_4 = min(~abs(1u), ~(~var_3.a));
    var var_5 = 34167u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global3[_wgslsmith_index_u32(55348u, 32u)], _wgslsmith_f_op_f32(-var_3.c.x)), ~u_input.b.x, _wgslsmith_f_op_f32(-var_3.c.x));
}

