struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, false, false, true, false, false, false);

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 27>;

var<private> global3: array<Struct_3, 4>;

var<private> global4: array<f32, 3> = array<f32, 3>(-705f, -612f, -478f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec4<bool>(!(!(!global0[_wgslsmith_index_u32(35222u, 7u)])), _wgslsmith_dot_vec2_i32(u_input.c >> (u_input.b.zx % vec2<u32>(32u)), u_input.c) == _wgslsmith_sub_i32(-1i, min(0i, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1.a, 3u)] + global1.b)) <= -205f, !global0[_wgslsmith_index_u32(100651u, 7u)]), all(select(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)], true), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], true, global0[_wgslsmith_index_u32(u_input.d, 7u)]), global0[_wgslsmith_index_u32(~49548u, 7u)]), vec3<bool>(false || global0[_wgslsmith_index_u32(76373u, 7u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 7u)], false, true)), true))), !(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], true, false, false)))), _wgslsmith_f_op_f32(ceil(-364f)), vec2<bool>(all(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], true, global0[_wgslsmith_index_u32(global1.a, 7u)]), !vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)]))), max(~24919i, firstLeadingBit(1i)) >= u_input.c.x));
    var var_1 = Struct_1(vec4<bool>(select(any(select(var_0.a, var_0.a, var_0.c)), var_0.a.x, any(select(var_0.a.zy, var_0.e, var_0.c.yx))), !var_0.a.x, any(select(select(var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(59585u, 7u)]), true), var_0.a, global0[_wgslsmith_index_u32(global1.a ^ u_input.a, 7u)])), true), !(var_0.e.x && all(var_0.c.xyw)), select(!vec4<bool>(any(vec3<bool>(var_0.a.x, false, global0[_wgslsmith_index_u32(u_input.d, 7u)])), var_0.d != 1427f, false, any(var_0.a)), select(vec4<bool>(false, !var_0.a.x, !var_0.b, !var_0.b), vec4<bool>(true, false, true, false), !vec4<bool>(var_0.c.x, global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(21770u, 7u)], global0[_wgslsmith_index_u32(13569u, 7u)])), var_0.c), var_0.d, select(var_0.c.zx, select(!var_0.a.zx, !var_0.e, !var_0.e.x), !vec2<bool>(true, all(vec2<bool>(true, false)))));
    global3 = array<Struct_3, 4>();
    let var_2 = select(!vec3<bool>(false, true, true && var_0.c.x), !var_0.c.xwy, false);
    global1 = Struct_3(abs(global1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(168f + global1.b), var_1.d)), var_0.d)))));
    return !var_1.b;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    var var_0 = ~(~_wgslsmith_sub_u32(0u, global1.a));
    var var_1 = select(select(arg_0.c.yyz, !arg_0.c.yzw, false), arg_0.c.zwz, select(arg_0.c.xww, arg_0.a.wyz, true));
    let var_2 = vec4<u32>(~u_input.d, reverseBits(~(_wgslsmith_clamp_u32(global1.a, u_input.b.x, global1.a) >> (73873u % 32u))), ~(_wgslsmith_div_u32(u_input.b.x, firstLeadingBit(global1.a)) | global1.a), 0u);
    return select(arg_0.a, arg_0.a, !select(!arg_0.c, arg_0.a, global0[_wgslsmith_index_u32((var_2.x & 14875u) << (var_2.x % 32u), 7u)]));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(0u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(ceil(323f))))), 966f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(var_0.a, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -523f))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1644f, global4[_wgslsmith_index_u32(~1u, 3u)]))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(~0u, 3u)], 299f, var_0.b, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 3u)], 1090f))))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a, global1.a), 7u)], true, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.c.x, 1i)), ~(-1i)) >= (i32(-1i) * -u_input.c.x), !(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) != 1i))));
    var var_2 = true;
    let var_3 = Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 2424u, global1.a, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(28723u, var_0.a, 1u, 0u), vec4<u32>(4294967295u, var_0.a, global1.a, 4294967295u), vec4<u32>(var_0.a, var_0.a, 34095u, u_input.b.x))), 7u)], true, global0[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)], global0[_wgslsmith_index_u32(countOneBits(1u), 7u)]), !any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(5348u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(var_0.a, 7u)], false), !global0[_wgslsmith_index_u32(u_input.d, 7u)])), func_4(Struct_1(vec4<bool>(var_0.b == global1.b, 0u > u_input.a, false | global0[_wgslsmith_index_u32(12156u, 7u)], false), func_3(), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, global0[_wgslsmith_index_u32(1u, 7u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(var_0.a, 7u)], global0[_wgslsmith_index_u32(1u, 7u)])), 534f, vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(222f)), vec2<bool>(true, any(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(16522u, 7u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.a, 7u)])))));
    var var_4 = ~(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -1i, 1i) << (vec3<u32>(var_0.a, global1.a, 0u) % vec3<u32>(32u)), -vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), vec3<i32>(u_input.c.x, ~6764i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(29932i, 2391i, 1i) & vec3<i32>(-10881i, u_input.c.x, 2147483647i), countOneBits(vec3<i32>(u_input.c.x, 2147483647i, 0i)), -vec3<i32>(u_input.c.x, 1i, 26882i))));
    return Struct_3(u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -1561f));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    var var_0 = -firstLeadingBit(-(~vec4<i32>(-2147483647i, u_input.c.x, -39449i, 10833i)));
    var var_1 = firstLeadingBit(u_input.c.x);
    var_0 = ~vec4<i32>(-abs(u_input.c.x), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, var_0.x)), var_0.x, var_0.x) & (vec4<i32>(-1i) * -abs(select(vec4<i32>(var_0.x, var_0.x, u_input.c.x, -1i), vec4<i32>(0i, -1i, u_input.c.x, var_0.x), vec4<bool>(true, false, true, arg_2.c.c.x))));
    let var_2 = (abs(_wgslsmith_sub_vec2_u32(u_input.b.zy, vec2<u32>(1u, u_input.b.x)) & (vec2<u32>(global1.a, u_input.a) >> (u_input.b.zx % vec2<u32>(32u)))) & u_input.b.yz) & vec2<u32>(select(~arg_0, _wgslsmith_sub_u32(arg_0, abs(arg_0)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.a), abs(vec2<u32>(14000u, 0u))), 7u)]), 69938u);
    var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(-abs(countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, -20698i, var_0.x))), ~(~vec4<i32>(1193i, -10456i, 1i, var_0.x)), abs(min(vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, 2147483647i), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x)) << (~vec4<u32>(var_2.x, 18054u, global1.a, u_input.d) % vec4<u32>(32u)))));
    return global3[_wgslsmith_index_u32(max(0u, ~_wgslsmith_sub_u32(func_2().a, ~(~u_input.a))), 4u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = func_5(30515u, func_2(), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * 224f)) - arg_1.d), 1f, Struct_1(vec4<bool>(false, true, !arg_0.b, false), select(arg_0.c.x, false, func_3()), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, global0[_wgslsmith_index_u32(7619u, 7u)], arg_0.a.x), func_4(Struct_1(arg_0.c, true, vec4<bool>(arg_0.b, false, global0[_wgslsmith_index_u32(global1.a, 7u)], false), global4[_wgslsmith_index_u32(u_input.d, 3u)], arg_0.e)), true), _wgslsmith_div_f32(-191f, 602f), vec2<bool>(all(vec4<bool>(true, false, arg_0.a.x, arg_1.a.x)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_0 = ~(~(~abs(24403u)));
    var var_1 = arg_0.a.zwx;
    global1 = Struct_3(global1.a, -1127f);
    var var_2 = global1.a;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 4>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(floor(global1.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f), -129f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 3u)]))));
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    global4 = array<f32, 3>();
    var var_1 = any(!(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)])))));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-489f * _wgslsmith_f_op_f32(min(global1.b, global4[_wgslsmith_index_u32(4294967295u, 3u)]))), -1345f)), global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * global4[_wgslsmith_index_u32(global1.a, 3u)]) + var_0.x)))));
    global4 = array<f32, 3>();
    global1 = global3[_wgslsmith_index_u32(func_1(Struct_1(!select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)], false, global0[_wgslsmith_index_u32(4294967295u, 7u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(41496u, 7u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(300u, 7u)], global0[_wgslsmith_index_u32(19416u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), true, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 7u)] && false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) + _wgslsmith_f_op_f32(var_2.x - var_0.x))), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(1923u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], true), false), vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)]), true)), Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(abs(var_2.x)) != _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(51509u, 3u)])), !global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(~(~42831u), 7u)]), select(abs(u_input.c.x), _wgslsmith_add_i32(1234i, u_input.c.x), all(vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(30616u, 7u)]))) > abs(u_input.c.x), vec4<bool>(true, select(false, all(vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], false))), any(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(29893u, 7u)])), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), u_input.b), 7u)]), _wgslsmith_f_op_f32(-590f + 122f), !vec2<bool>(u_input.c.x < u_input.c.x, true))), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2().b * _wgslsmith_f_op_f32(min(var_0.x, -1255f)))))), countOneBits(firstTrailingBit(select(~vec4<u32>(u_input.b.x, 4641u, 4294967295u, 20717u), vec4<u32>(1u, u_input.b.x, 44094u, 4294967295u), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], true, global0[_wgslsmith_index_u32(1u, 7u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(91552u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(16150u, 7u)])))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 554f, -385f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 590f, 283f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, 901f), vec3<f32>(var_2.x, -671f, -439f), false)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(767f, global4[_wgslsmith_index_u32(global1.a, 3u)], -198f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(-global1.b), var_0.x), false))));
}

