struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global1: i32 = 38696i;

var<private> global2: array<f32, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_4(arg_0.x, arg_1.b, Struct_1(-1000f, select(vec3<bool>(select(arg_1.c.c, true, true), true & arg_1.c.d, arg_0.x == global2[_wgslsmith_index_u32(2118u, 25u)]), vec3<bool>(638f <= global2[_wgslsmith_index_u32(u_input.a, 25u)], true, !arg_1.c.e), true), false, any(select(!global0[_wgslsmith_index_u32(u_input.a, 4u)], arg_1.c.b, true)), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1811f, global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(u_input.a, 25u)], -473f))))))))));
    global2 = array<f32, 25>();
    var var_2 = true;
    let var_3 = 48702u;
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~48043u, ~u_input.a, var_3)), ~(firstLeadingBit(firstLeadingBit(vec3<u32>(1u, u_input.a, var_3))) << (~(vec3<u32>(u_input.c, var_3, var_3) & vec3<u32>(41931u, var_3, 42810u)) % vec3<u32>(32u))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 25u)] + -831f), select(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], -186f))), Struct_4(global2[_wgslsmith_index_u32(1u, 25u)], u_input.d.zz, Struct_1(global2[_wgslsmith_index_u32(11222u, 25u)], global0[_wgslsmith_index_u32(0u, 4u)], true, true, false))) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 19973u, 4294967295u, 1u), vec4<u32>(66404u, u_input.c, u_input.a, 4294967295u)) << (u_input.c % 32u)) % 32u), 4u)], vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.a, 4u)]), !((func_3(vec2<f32>(global2[_wgslsmith_index_u32(23668u, 25u)], 1904f), Struct_4(global2[_wgslsmith_index_u32(25896u, 25u)], vec2<i32>(23825i, u_input.b.x), Struct_1(440f, vec3<bool>(true, true, false), false, false, true))) < 11329u) & (all(vec2<bool>(true, true)) & true)), u_input.d.x > abs(-(u_input.b.x << (u_input.c % 32u))), any(vec2<bool>(false, !all(vec4<bool>(false, false, false, false)))));
    var var_1 = var_0.e;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), vec3<bool>(any(vec2<bool>(var_0.c, false)), all(!vec4<bool>(var_0.d, false, true, true)), var_0.b.x), var_0.d && false, var_0.d, false));
    var_0 = var_2.a;
    var var_3 = 0u << ((~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), u_input.a) ^ _wgslsmith_mod_u32(1u, u_input.a)) % 32u);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(982f))), global0[_wgslsmith_index_u32(57226u, 4u)], u_input.d.x <= -13536i, any(!vec4<bool>(true, var_0.b.x, false, true)), true)), Struct_2(var_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> bool {
    global2 = array<f32, 25>();
    let var_0 = func_2();
    let var_1 = Struct_2(arg_0.a.a);
    var var_2 = vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(81253u, u_input.a ^ u_input.a), ~u_input.a), _wgslsmith_dot_vec4_u32(~(max(vec4<u32>(10507u, 22788u, u_input.c, 1u), vec4<u32>(u_input.a, 42535u, 6010u, u_input.a)) & min(vec4<u32>(2669u, 4294967295u, 1u, u_input.a), vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.a))), ~firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, u_input.a, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.a))), u_input.c << (max(~(~8415u), firstTrailingBit(~15992u)) % 32u), 1u);
    global1 = u_input.b.x;
    return arg_0.b.a.d;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(1000f - -649f);
    global2 = array<f32, 25>();
    let var_1 = _wgslsmith_add_u32(select(1u, max(~u_input.a, u_input.a), !func_4(func_2(), global2[_wgslsmith_index_u32(91422u, 25u)])), u_input.c);
    global0 = array<vec3<bool>, 4>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1375f - arg_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 25u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(404f, 1815f))))));
    return ~(arg_0.b.x | select(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), select(vec2<i32>(u_input.d.x, u_input.e.x), vec2<i32>(arg_0.b.x, u_input.e.x), false)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.c, 44696u), vec4<u32>(4294967295u, 23045u, u_input.c, u_input.c) & vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.c)) ^ u_input.a, ~abs(u_input.c)), 25u)], ~(-vec2<i32>(func_1(Struct_4(global2[_wgslsmith_index_u32(u_input.c, 25u)], vec2<i32>(21637i, u_input.d.x), Struct_1(-455f, global0[_wgslsmith_index_u32(u_input.c, 4u)], false, true, false)), false), ~u_input.b.x)), func_2().b.a);
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = Struct_3(Struct_2(var_1.b.a), var_1.a);
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a * 990f), var_2.a.a.a, var_2.b.a.a, func_2().b.a.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.a, var_1.a.a.a, var_0.a, var_1.b.a.a)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, 127f, var_1.b.a.a, -1698f), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], 309f, -1223f, -334f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(step(var_2.b.a.a, var_1.b.a.a)), _wgslsmith_f_op_f32(657f * global2[_wgslsmith_index_u32(46857u, 25u)]), _wgslsmith_div_f32(323f, var_1.a.a.a))), vec4<f32>(global2[_wgslsmith_index_u32(~u_input.c, 25u)], -2158f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-180f)), _wgslsmith_f_op_f32(f32(-1f) * -359f), true)), global2[_wgslsmith_index_u32(u_input.a, 25u)])));
    var_0 = Struct_4(var_2.b.a.a, vec2<i32>(var_0.b.x, ~(-1i << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u))), func_2().b.a);
    let x = u_input.a;
    s_output = StorageBuffer(~select(-var_0.b.x, firstTrailingBit(2147483647i), var_1.b.a.d), _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 94162u, 1u), vec3<u32>(u_input.a, 22299u, 4294967295u), max(vec3<u32>(6997u, 1u, u_input.c), vec3<u32>(0u, 0u, 3666u))), vec3<u32>(abs(max(0u, u_input.c)), ~4294967295u, _wgslsmith_mult_u32(9357u, ~u_input.a))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(61045i, _wgslsmith_sub_i32(-1i, -18937i)), var_0.b));
}

