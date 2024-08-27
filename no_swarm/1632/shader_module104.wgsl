struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 2>;

var<private> global3: bool;

var<private> global4: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(4294967295u, 117791u), vec2<u32>(57710u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(15112u, 82949u), vec2<u32>(1u, 87087u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 44457u), vec2<u32>(14044u, 1u), vec2<u32>(1u, 58043u), vec2<u32>(60607u, 4294967295u), vec2<u32>(54763u, 4294967295u), vec2<u32>(38209u, 1089u), vec2<u32>(39525u, 1u), vec2<u32>(117839u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(16343u, 1u), vec2<u32>(104212u, 4294967295u), vec2<u32>(20506u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(59790u, 1u), vec2<u32>(18629u, 1u), vec2<u32>(1u, 8942u), vec2<u32>(4294967295u, 29794u), vec2<u32>(59158u, 54966u), vec2<u32>(43590u, 4294967295u), vec2<u32>(1u, 23822u), vec2<u32>(7950u, 4294967295u), vec2<u32>(0u, 54839u), vec2<u32>(1u, 13364u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, global0[_wgslsmith_index_u32(arg_0.c.x, 28u)], -642f, -2051f)) - vec4<f32>(-705f, global0[_wgslsmith_index_u32(arg_1.c.x, 28u)], 1768f, 288f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1514f, arg_1.a, arg_1.a, global0[_wgslsmith_index_u32(arg_0.c.x, 28u)])), vec4<f32>(435f, global0[_wgslsmith_index_u32(countOneBits(arg_1.c.x), 28u)], -1497f, arg_1.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), arg_1.a, 3185f, -640f) * vec4<f32>(-868f, arg_1.a, global0[_wgslsmith_index_u32(~arg_1.c.x, 28u)], _wgslsmith_f_op_f32(min(arg_0.a, 214f))))));
    global1 = select(select(!(!(!vec3<bool>(global1.x, global1.x, global1.x))), !vec3<bool>(arg_1.e, true, global1.x), all(select(!vec4<bool>(arg_0.e, global1.x, arg_0.e, arg_0.e), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, arg_1.b), false), true))), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.b, arg_0.e), vec3<bool>(true, arg_1.e, true)), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(global1.x, arg_1.e, true), vec3<bool>(false, global1.x, false)), arg_1.e), select(vec3<bool>(arg_1.e, false, false), vec3<bool>(arg_1.e, arg_0.e, true), select(vec3<bool>(true, arg_1.b, false), vec3<bool>(false, arg_0.b, false), arg_1.e)), true), vec3<bool>(true, true, true));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(var_0.zw, var_0.zx));
    var var_2 = _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(arg_1.c.x, arg_0.c.x) | ~arg_0.c.yw)), vec2<u32>(~arg_1.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.c.wxz, abs(vec3<u32>(4294967295u, 0u, 57180u)), vec3<u32>(arg_0.c.x, arg_1.c.x, 19322u) >> (vec3<u32>(31240u, arg_1.c.x, arg_0.c.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, 1u), vec3<u32>(0u, arg_0.c.x, 9862u)))));
    global3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + var_0.x)) != -558f);
    return -760f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec3<bool> {
    global2 = array<i32, 2>();
    global2 = array<i32, 2>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-460f, _wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(arg_1.x, 28u)], arg_0.c, vec4<u32>(0u, 8440u, 87663u, 0u), 11715i, global1.x), Struct_3(-627f, true, vec4<u32>(arg_1.x, 31773u, 33435u, 0u), -29771i, arg_0.b)))), _wgslsmith_div_vec2_f32(arg_0.a.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(186f, -2302f)))), !global1.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.a))), select(global1.yy, !select(global1.xz, vec2<bool>(false, false), global1.xz), arg_0.c))));
    let var_1 = arg_1.x;
    var_0 = arg_0.d;
    return vec3<bool>(all(select(select(vec3<bool>(false, true, arg_0.c), vec3<bool>(arg_0.b, arg_0.b, true), false), select(vec3<bool>(global1.x, false, false), vec3<bool>(true, global1.x, false), vec3<bool>(arg_0.c, true, arg_0.c)), true)) | global1.x, true, any(global1.xy));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    global1 = vec3<bool>(global1.x, !(!arg_0.b), -2147483647i == (42910i ^ global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~15249u, 61555u), 2u)]));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x + global0[_wgslsmith_index_u32(0u, 28u)]), arg_0.d.a.x)), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f + -2331f))))));
    global1 = !select(select(func_2(arg_0, global4[_wgslsmith_index_u32(firstTrailingBit(0u), 30u)]), vec3<bool>(true, true, true), vec3<bool>(true, global1.x || false, true)), vec3<bool>(global1.x, true, any(vec3<bool>(true, false, false))), -2147483647i != _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(18711i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(62688u, 2u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 59017u, 0u, 1u), vec4<u32>(41428u, 26958u, 4294967295u, 45367u)), 2u)]));
    let var_1 = _wgslsmith_sub_i32(u_input.a.x, abs(select(-11535i, -1i, !arg_0.c)));
    let var_2 = !(!global1.yz);
    return 715f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 2>();
    var var_0 = Struct_3(747f, true, ~firstTrailingBit(firstLeadingBit(vec4<u32>(44821u, 73105u, 1u, 49903u))), ~19580i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-768f + _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(0u, 28u)], -1343f)), global1.x, false, Struct_1(vec2<f32>(-1347f, global0[_wgslsmith_index_u32(1u, 28u)]))), Struct_1(vec2<f32>(429f, global0[_wgslsmith_index_u32(1u, 28u)])), vec4<f32>(785f, 599f, global0[_wgslsmith_index_u32(45403u, 28u)], -517f)))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1348f, global0[_wgslsmith_index_u32(~1u, 28u)]))));
    global3 = select(func_2(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1209f, 1127f), vec2<f32>(-3122f, var_0.a))), true, !global1.x, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, global0[_wgslsmith_index_u32(var_0.c.x, 28u)])))), global4[_wgslsmith_index_u32(36207u, 30u)]).x, all(select(!select(vec3<bool>(global1.x, var_0.e, var_0.b), vec3<bool>(var_0.b, false, true), vec3<bool>(global1.x, true, var_0.b)), vec3<bool>(true | global1.x, true, true), var_0.d >= var_0.d)), true);
    global2 = array<i32, 2>();
    let var_1 = global1.x;
    let var_2 = _wgslsmith_mult_i32(abs(countOneBits(abs(~var_0.d))), i32(-1i) * -global2[_wgslsmith_index_u32(1u, 2u)]);
    global0 = array<f32, 28>();
    global4 = array<vec2<u32>, 30>();
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f * _wgslsmith_f_op_f32(step(var_0.a, 698f))))), true, ~vec4<u32>(var_0.c.x, var_0.c.x, 36021u, min(~57538u, _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(0u, 30u)], var_0.c.xx))), 19191i, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.d, 1i, -1i));
}

