struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(0u, vec4<bool>(false, false, false, true)));

var<private> global2: array<vec4<bool>, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global2 = array<vec4<bool>, 27>();
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(716f)) * _wgslsmith_f_op_f32(f32(-1f) * -218f)));
    global0 = array<Struct_1, 22>();
    global1 = array<Struct_2, 1>();
    let var_1 = 0i == ~var_0.b.a.x;
    return ~u_input.d;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_4(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 1144u), 1017u, u_input.a, u_input.d.x), 81273u, countOneBits(u_input.b.zww >> (~(u_input.c.wyw << (u_input.c.zzz % vec3<u32>(32u))) % vec3<u32>(32u))), ~(_wgslsmith_mod_u32(min(48952u, 0u), min(4294967295u, arg_0)) ^ ~(~25448u)));
    let var_1 = _wgslsmith_f_op_f32(1007f * _wgslsmith_f_op_f32(f32(-1f) * -102f)) <= _wgslsmith_f_op_f32(select(573f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -717f))), (select(u_input.e, 27495i, true) & select(2147483647i, 0i, false)) != 1i));
    let var_2 = ~u_input.d.yxx;
    global2 = array<vec4<bool>, 27>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    return -(abs(countOneBits(vec3<i32>(-61152i, -7248i, 2147483647i)) | firstLeadingBit(var_0.c)) >> (var_0.a.xyw % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_2.c));
    let var_1 = arg_2.b.a.www;
    global2 = array<vec4<bool>, 27>();
    let var_2 = Struct_1(u_input.b, select(reverseBits(vec3<u32>(43724u, ~u_input.a, _wgslsmith_mult_u32(arg_2.b.b.x, arg_2.b.b.x))), arg_2.b.b, any(select(select(arg_2.a.b, vec4<bool>(false, false, true, true), vec4<bool>(true, arg_2.a.b.x, true, true)), !global2[_wgslsmith_index_u32(54773u, 27u)], vec4<bool>(arg_2.a.b.x, true, false, arg_2.a.b.x)))));
    var var_3 = Struct_5(42575u, Struct_4(vec4<u32>(min(4294967295u, 18975u), 0u, var_2.b.x, u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(arg_2.a.a, 9481u, arg_2.a.b.x), arg_2.a.a >> (95154u % 32u)), var_2.b.x), _wgslsmith_add_vec3_i32(func_3(0u, arg_1.x, var_1.x), vec3<i32>(arg_2.b.a.x, var_1.x, var_2.a.x)) & vec3<i32>(-50767i & var_1.x, var_2.a.x, 0i), 13021u ^ (0u >> (u_input.c.x % 32u))), -156f);
    return !arg_2.a.b.x;
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(200f + 1060f), 607f, -871f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 133f, -192f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-266f, -1388f, 1009f) * vec3<f32>(523f, 951f, -449f)), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, -794f, -654f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(205f, -495f, 1225f))))) + vec3<f32>(_wgslsmith_f_op_f32(select(129f, -1655f, true)), _wgslsmith_f_op_f32(908f * -1000f), _wgslsmith_f_op_f32(606f - 100f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, 770f, 1392f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, -428f, 1000f) + vec3<f32>(525f, -107f, -927f))))));
    var var_1 = firstLeadingBit(vec3<i32>(select(-1i, -u_input.b.x ^ u_input.e, func_4(u_input.b.x, func_3(u_input.a, u_input.e, -1i), Struct_3(global1[_wgslsmith_index_u32(70366u, 1u)], global0[_wgslsmith_index_u32(56897u, 22u)], -623f))), 21428i, -u_input.e));
    let var_2 = 1u;
    let var_3 = global0[_wgslsmith_index_u32(0u, 22u)];
    return Struct_2(select(~(u_input.c.x & _wgslsmith_clamp_u32(56120u, u_input.a, 0u)), var_3.b.x, select(var_0.x <= _wgslsmith_f_op_f32(max(483f, var_0.x)), true, true)), vec4<bool>(!(_wgslsmith_f_op_f32(var_0.x - 468f) <= _wgslsmith_f_op_f32(var_0.x - -422f)), true, !(u_input.c.x > reverseBits(u_input.a)), false));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-507f * 1000f), _wgslsmith_f_op_f32(abs(482f)))))));
    var_0 = -1214f;
    global0 = array<Struct_1, 22>();
    var var_1 = Struct_2(4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 27u)]);
    var var_2 = reverseBits(arg_2.a.yw);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 1>();
    let var_0 = _wgslsmith_mult_vec4_u32(u_input.c, ~vec4<u32>(~_wgslsmith_div_u32(u_input.a, 53760u), 1u & u_input.d.x, 1u, u_input.a));
    global0 = array<Struct_1, 22>();
    let var_1 = !(!func_5(Struct_4(func_1(false), 1u, u_input.b.yxw, 4294967295u), u_input.b.x, Struct_1(u_input.b, select(vec3<u32>(u_input.a, 0u, 35510u), vec3<u32>(0u, u_input.c.x, u_input.a), false)), func_2()));
    var var_2 = Struct_2(~(~u_input.a), select(select(!(!global2[_wgslsmith_index_u32(var_0.x, 27u)]), !(!global2[_wgslsmith_index_u32(28886u, 27u)]), var_1), func_2().b, select(!(!global2[_wgslsmith_index_u32(var_0.x, 27u)]), vec4<bool>(func_2().b.x, true, true, func_5(Struct_4(vec4<u32>(var_0.x, var_0.x, var_0.x, 47114u), u_input.a, vec3<i32>(u_input.b.x, 1i, u_input.e), 20522u), 4715i, global0[_wgslsmith_index_u32(var_0.x, 22u)], Struct_2(u_input.c.x, vec4<bool>(var_1, var_1, var_1, false)))), global2[_wgslsmith_index_u32(~66147u, 27u)])));
    let var_3 = -reverseBits(-((-23497i | u_input.e) << (~70942u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_div_vec3_u32(~select(vec3<u32>(var_0.x, 22113u, 1u) & u_input.c.wxy, abs(u_input.c.yyz), var_2.b.wzy), ~select(vec3<u32>(0u, 38583u, var_0.x), _wgslsmith_div_vec3_u32(var_0.xzw, var_0.wzx), var_2.b.wxx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-161f))), _wgslsmith_f_op_f32(-537f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1165f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1402f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 463f));
}

