struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<bool>(false, true, true), -72010i, 16451i, vec2<f32>(-1109f, 660f), vec3<i32>(0i, 0i, 2147483647i)), Struct_2(38916u, Struct_1(vec3<i32>(1i, 2147483647i, 33948i), -266f, vec2<f32>(816f, 1239f), 731f), Struct_1(vec3<i32>(57888i, -20678i, -1i), 1264f, vec2<f32>(864f, 707f), -1095f)), -2115f, true);

var<private> global1: array<bool, 21>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(13105i, 2147483647i, -44695i), -2326f, vec2<f32>(-141f, 1000f), 777f);

var<private> global3: array<vec3<bool>, 6>;

var<private> global4: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, false, false, true, false, false, true, false, false, true, true, true, true, false, false, false, true, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(26438u, global0.b.a, ~arg_2.x), global0.b.c, global0.b.b);
    let var_1 = -60283i;
    var var_2 = _wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.b.x, global2.a.x, var_0.b.a.x, -25473i) & (vec4<i32>(-23502i, 1i, -30751i, global0.a.c) & vec4<i32>(-2147483647i, global0.a.b, arg_0.b, global2.a.x))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b.x, -1i, -326i) << (vec4<u32>(110279u, var_0.a, 64881u, global0.b.a) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(var_1, -7930i, var_1, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.c, var_1, global2.a.x, global2.a.x), vec4<i32>(1806i, arg_0.e.x, global2.a.x, -21430i))))) ^ abs(reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, var_0.b.a.x, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a.x, global0.b.c.a.x, var_1, -1i), vec4<i32>(17209i, global0.a.e.x, -2147483647i, u_input.b.x)))));
    var var_3 = vec4<bool>(true, 1u != (arg_2.x | 89590u), true, global1[_wgslsmith_index_u32(var_0.a, 21u)]);
    let var_4 = ~(~countOneBits(4294967295u));
    return u_input.b.x & (i32(-1i) * -1i);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_5) -> i32 {
    global2 = global0.b.c;
    global0 = Struct_4(Struct_3(!select(select(vec3<bool>(arg_1.a.x, true, true), vec3<bool>(global0.a.a.x, false, global0.a.a.x), global3[_wgslsmith_index_u32(37550u, 6u)]), global3[_wgslsmith_index_u32(~u_input.a, 6u)], !vec3<bool>(false, arg_1.a.x, arg_1.a.x)), reverseBits(-1i), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(global2.a.x, 21931i), global0.b.b.a.zx), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(630f, _wgslsmith_f_op_f32(arg_2.c.c.x + arg_2.b.d)))), ((vec3<i32>(31773i, 1i, global0.b.b.a.x) << (vec3<u32>(1u, arg_0.x, 65672u) % vec3<u32>(32u))) | -u_input.b) >> (vec3<u32>(~1u, arg_2.a, 1u) % vec3<u32>(32u))), global0.b, _wgslsmith_f_op_f32(1000f - -572f), any(select(!vec4<bool>(global0.a.a.x, true, false, false), !select(vec4<bool>(arg_1.a.x, true, global0.a.a.x, true), vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), vec4<bool>(arg_1.a.x, false, true, true)), global4[_wgslsmith_index_u32(0u, 24u)])));
    let var_0 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, select(~0u, u_input.a, (i32(-1i) * -2147483647i) <= _wgslsmith_mult_i32(-23399i, arg_2.c.a.x))), 21u)], !(!(18801i > global2.a.x) | global1[_wgslsmith_index_u32(4294967295u, 21u)]));
    var var_1 = arg_1;
    let var_2 = ~(vec3<i32>(-1i) * -vec3<i32>(1i, abs(2147483647i), arg_1.b | arg_1.b));
    return func_3(arg_1, 1120f, ~vec4<u32>(~11649u, u_input.a, ~arg_0.x, firstTrailingBit(1u))) | 2147483647i;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_5 {
    global1 = array<bool, 21>();
    let var_0 = firstTrailingBit(_wgslsmith_div_i32(u_input.b.x, abs(func_2(vec2<u32>(4294967295u, 35349u), global0.a, Struct_2(50795u, Struct_1(global0.a.e, arg_0, vec2<f32>(global0.b.b.b, global0.a.d.x), global2.b), global0.b.b), Struct_5(0i, 2398f)))) | _wgslsmith_div_i32(_wgslsmith_div_i32(global2.a.x, global2.a.x), 1i));
    let var_1 = select(vec4<bool>(firstTrailingBit(1i & global2.a.x) < global0.a.c, !(~u_input.a < 1u), !(_wgslsmith_f_op_f32(global2.c.x * -2664f) <= _wgslsmith_f_op_f32(-global0.a.d.x)), any(global0.a.a.xx)), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(global0.b.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global0.d)), select(!(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global0.a.a.x, global1[_wgslsmith_index_u32(global0.b.a, 21u)], true)), vec4<bool>(true, all(vec4<bool>(global4[_wgslsmith_index_u32(18690u, 24u)], true, global0.a.a.x, global4[_wgslsmith_index_u32(global0.b.a, 24u)])), global4[_wgslsmith_index_u32(u_input.a | 36059u, 24u)], false), true), true), select(!(!(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 21u)], false))), vec4<bool>(true, global1[_wgslsmith_index_u32(53014u, 21u)], all(vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(0u, 24u)])), false), all(global0.a.a.yy)));
    global1 = array<bool, 21>();
    var var_2 = Struct_4(Struct_3(vec3<bool>(false, any(vec3<bool>(var_1.x, var_1.x, global0.d)) || false, false), min(global2.a.x, ~arg_1) & (var_0 >> ((u_input.a & u_input.a) % 32u)), _wgslsmith_mult_i32(var_0, -1i), _wgslsmith_f_op_vec2_f32(trunc(global0.b.b.c)), ~firstTrailingBit(vec3<i32>(2147483647i, -1i, arg_1))), Struct_2(global0.b.a, global0.b.c, global0.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1621f, global0.b.c.d, global1[_wgslsmith_index_u32(global0.b.a, 21u)])))))), true);
    return Struct_5(_wgslsmith_clamp_i32(1i, ~(-_wgslsmith_mod_i32(arg_1, u_input.b.x)), -global2.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f + global2.b)))) - -561f), -15061i);
    global1 = array<bool, 21>();
    global3 = array<vec3<bool>, 6>();
    global2 = global0.b.b;
    global3 = array<vec3<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, global0.b.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b.a, u_input.a, global0.b.a), vec4<u32>(76698u, 32196u, 1u, 0u)), 0u, 0u)));
}

