struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(0u, 8828u, 23494u, 35376u, 32920u, 0u, 1u, 0u, 1u, 1u, 4294967295u);

var<private> global1: vec4<f32>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-2003f, 116f, -1503f));

var<private> global3: array<vec3<i32>, 5>;

var<private> global4: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(64842u, 0u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.xww + _wgslsmith_f_op_vec3_f32(exp2(global2.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, 958f)))), 230f, arg_0.a.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(global1.x - 1185f), 551f))) + arg_1));
    var var_2 = Struct_2(select(true, true, (true != all(vec4<bool>(false, true, false, false))) || (u_input.d.x <= (11334i & u_input.a.x))), arg_0, u_input.d.x, true);
    let var_3 = select(!any(select(select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(var_2.d, var_2.a), true), !vec2<bool>(true, var_2.a), vec2<bool>(var_2.d, var_2.d))), !var_2.a, var_2.d);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.xyx - var_2.b.a));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -2238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f))) - var_0.a);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = max(2147483647i, -17252i);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -661f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - -463f))))), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_div_f32(1380f, _wgslsmith_f_op_f32(ceil(-1327f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1991f, var_1.a.x, global2.a.x)) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global2.a), vec4<f32>(global1.x, var_1.a.x, -134f, -985f), 4294967295u, u_input.e))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.xwx), var_1.a, true)))));
    let var_2 = -1000f;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(377f + _wgslsmith_div_f32(594f, 697f)), global1.x, 350f), vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 293f), -2059f)));
    return 670f;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global4 = array<vec2<u32>, 2>();
    var var_0 = Struct_2(!arg_0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global2.a.x * 1343f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(func_2(u_input.a.xx)))), -1i, !any(vec2<bool>(arg_0.x, !arg_0.x)));
    var_0 = Struct_2(false, var_0.b, -(~(2147483647i << (~4294967295u % 32u))), true);
    var var_1 = Struct_2(false, var_0.b, 3086i ^ max(reverseBits(-var_0.c), -2147483647i << (global0[_wgslsmith_index_u32(abs(30534u), 11u)] % 32u)), any(select(select(select(vec4<bool>(var_0.d, false, true, true), vec4<bool>(false, arg_0.x, var_0.a, arg_0.x), vec4<bool>(arg_0.x, var_0.d, true, true)), vec4<bool>(true, true, false, arg_0.x), false), vec4<bool>(-2851f > global2.a.x, var_0.a, arg_0.x, true | arg_0.x), !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(var_0.a, arg_0.x, false, var_0.a), true))));
    global2 = var_0.b;
    return Struct_2(select(any(vec3<bool>(arg_0.x, true, arg_0.x)), true == ((global0[_wgslsmith_index_u32(5224u, 11u)] >= 1u) & true), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(floor(-1242f))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.a.x), -612f, select(false, false, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(var_1.b.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(var_0.b.a.x, -1598f, -1000f))))), -13473i, false);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    return vec3<f32>(-567f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(1000f, _wgslsmith_f_op_f32(trunc(-534f)), u_input.d.x > u_input.a.x, func_1(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(global1.x - global2.a.x), _wgslsmith_f_op_f32(floor(global2.a.x)), true, func_1(vec2<bool>(true, true))))));
    global4 = array<vec2<u32>, 2>();
    global4 = array<vec2<u32>, 2>();
    global3 = array<vec3<i32>, 5>();
    let var_1 = Struct_2(all(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), var_0, firstTrailingBit(~_wgslsmith_dot_vec3_i32(u_input.a | u_input.a, -u_input.a)), !((global0[_wgslsmith_index_u32(~8004u, 11u)] | u_input.b.x) == global0[_wgslsmith_index_u32(25863u, 11u)]));
    let var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2370f, 349f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.a), vec3<i32>(-54149i, 0i, -2147483647i) ^ vec3<i32>(var_1.c, -1i, u_input.a.x)) >> (vec3<u32>(min(52291u, u_input.b.x), ~38691u, _wgslsmith_add_u32(19529u, 1u)) % vec3<u32>(32u))), -557f, -5388i << (~(~(1u >> (u_input.b.x % 32u))) % 32u), vec4<i32>(-36371i, select(func_1(!vec2<bool>(var_1.d, false)).c, ~1i, var_1.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 5u)], _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, -6009i, u_input.d.x)), max(u_input.a, global3[_wgslsmith_index_u32(0u, 5u)]), vec3<i32>(1i, -6061i, -1i))), _wgslsmith_clamp_i32(-19806i, var_1.c, -_wgslsmith_div_i32(8268i, var_1.c))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, func_1(select(vec2<bool>(false, var_1.a), vec2<bool>(true, true), vec2<bool>(var_1.d, var_1.a))).b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * var_1.b.a.x), !var_1.d)));
}

