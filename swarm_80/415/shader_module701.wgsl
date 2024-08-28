struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 2147483647i);

var<private> global2: array<vec3<bool>, 9>;

var<private> global3: Struct_3 = Struct_3(Struct_2(2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 30825i), Struct_1(vec4<f32>(1068f, -880f, -238f, -1099f), 39695u), true, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    global1 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32((vec3<i32>(global1.x, global3.e, 9090i) & vec3<i32>(-2147483647i, global1.x, global1.x)) ^ vec3<i32>(15678i, global1.x, -2147483647i), vec3<i32>(i32(-1i) * -34412i, 610i, global3.e)), vec3<i32>(select(2147483647i, -17655i, global3.d), -1i, min(2147483647i, global1.x)) << (~(vec3<u32>(4758u, 0u, global3.c.b) << (u_input.a.ywz % vec3<u32>(32u))) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~u_input.a), ~u_input.a >> (countOneBits(vec4<u32>(1u, 0u, u_input.c, global3.c.b)) % vec4<u32>(32u))), 23u)]);
    global1 = global3.b;
    var var_0 = global3.e;
    let var_1 = 1u;
    let var_2 = global3.a;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.c.a.xzy + vec3<f32>(global3.c.a.x, global3.c.a.x, global3.c.a.x)), vec3<f32>(1000f, -1366f, global3.c.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1493f, 1001f, -581f), global3.c.a.xwz)))))));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = -(~(-(-2147483647i << (u_input.c % 32u))) ^ global3.e);
    var var_1 = global3.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.c.a.ywy - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3())))));
    var_1 = global3.e <= abs(global1.x);
    var_1 = global3.d;
    return select(vec4<bool>(global3.d && any(vec3<bool>(global3.d, global3.d, global3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(169f, global3.c.a.x, true))) <= -2332f, select(~arg_0.a > -2147483647i, true, !(!global3.d)), max(~4294967295u, 79489u) == ~global3.c.b), vec4<bool>(true || (1733f < _wgslsmith_f_op_f32(select(var_2.x, var_2.x, global3.d))), select(true, true, any(!vec4<bool>(global3.d, global3.d, global3.d, true))), true, false), !(min(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, global3.c.b, 30137u, 1u))) <= 22521u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<bool>) -> Struct_3 {
    global1 = ~(~arg_0);
    var var_0 = global3.a;
    var var_1 = vec3<bool>(arg_3.x, arg_1.x, func_2(global3.a).x);
    let var_2 = global3.c;
    var var_3 = _wgslsmith_f_op_f32(-global3.c.a.x);
    return Struct_3(Struct_2(-1i ^ global1.x), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global3.b, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, var_0.a, arg_0.x), vec3<i32>(0i, 1i, -59658i), global0[_wgslsmith_index_u32(1u, 23u)]), vec3<i32>(var_0.a, 1i, var_0.a))), vec3<i32>(max(1i, global3.b.x), arg_0.x, 37828i) & vec3<i32>(_wgslsmith_dot_vec3_i32(global3.b, global3.b), global3.b.x, -20507i)), Struct_1(vec4<f32>(1905f, _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(f32(-1f) * -567f), -485f), _wgslsmith_mult_u32(91513u, abs(var_2.b))), all(!(!select(vec2<bool>(true, global3.d), var_1.yx, arg_1.wx))), arg_2 << (u_input.c % 32u));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(abs(func_4(global0[_wgslsmith_index_u32(u_input.d | u_input.b.x, 23u)], func_2(Struct_2(global1.x)), 1i, vec4<bool>(false, arg_2.x, arg_2.x, global3.d)).b), arg_1.b, max(arg_3, _wgslsmith_mod_vec3_i32(~global0[_wgslsmith_index_u32(1u, 23u)], vec3<i32>(global1.x, global3.b.x, global1.x)))));
    var var_1 = global3.d;
    var var_2 = Struct_3(global3.a, select(func_4(vec3<i32>(1i, arg_3.x & global3.e, var_0.x), vec4<bool>(arg_1.d, all(vec4<bool>(global3.d, arg_2.x, arg_1.d, arg_1.d)), true, arg_2.x), 2147483647i, select(func_2(global3.a), !vec4<bool>(global3.d, false, global3.d, global3.d), all(arg_2))).b, ~_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, global1.x, global3.a.a), arg_3) & ~_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(arg_1.c.b, 23u)], arg_3), true), arg_1.c, global3.d, global3.b.x);
    var var_3 = func_4(~var_2.b, !vec4<bool>(any(!vec4<bool>(arg_2.x, arg_1.d, arg_1.d, false)), !arg_1.d, firstTrailingBit(-4067i) == (i32(-1i) * -55689i), arg_2.x), firstTrailingBit(~var_0.x), !vec4<bool>(false, _wgslsmith_f_op_f32(-417f * 311f) < var_2.c.a.x, true, (1i >> (0u % 32u)) <= ~arg_3.x)).c;
    var var_4 = arg_1.c.a.www;
    return global3.c.a.yz;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>) -> i32 {
    var var_0 = ~(~u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c.a.x, _wgslsmith_f_op_f32(-global3.c.a.x), any(vec3<bool>(arg_0.x, global3.d, true))))), func_4(max(global0[_wgslsmith_index_u32(global3.c.b, 23u)] << (vec3<u32>(1u, 3993u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(global3.a.a, 21659i, -1i) ^ vec3<i32>(2277i, global1.x, global3.b.x)), select(vec4<bool>(true, true, true, true), func_2(Struct_2(global3.b.x)), vec4<bool>(arg_0.x, true, arg_0.x, false)), -23066i, !(!vec4<bool>(global3.d, global3.d, arg_0.x, arg_0.x))), arg_0, min(_wgslsmith_clamp_vec3_i32(-global3.b, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], vec3<i32>(global1.x, 52279i, 20314i) << (u_input.a.yxz % vec3<u32>(32u))), global0[_wgslsmith_index_u32(func_4(vec3<i32>(398i, 1i, -25420i), func_2(Struct_2(global3.e)), i32(-1i) * -3107i, !vec4<bool>(true, true, global3.d, arg_0.x)).c.b, 23u)]))));
    let var_2 = global3.a.a;
    global0 = array<vec3<i32>, 23>();
    var var_3 = abs(-(~(vec2<i32>(-1i) * -global1.xx)));
    return -min(var_3.x, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!global3.d), false);
    let var_1 = abs(~global3.b);
    global2 = array<vec3<bool>, 9>();
    global0 = array<vec3<i32>, 23>();
    var var_2 = func_1(vec2<bool>(global3.b.x > ~global3.b.x, all(!vec2<bool>(global3.d, global3.d))), vec3<f32>(_wgslsmith_f_op_f32(global3.c.a.x + _wgslsmith_f_op_f32(-global3.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -895f), global3.c.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global3.c.a.zzz), ~4294967295u, _wgslsmith_f_op_vec4_f32(-global3.c.a), -select(firstLeadingBit(select(vec2<i32>(40400i, global1.x), vec2<i32>(var_1.x, 16225i), vec2<bool>(var_0.x, true))), vec2<i32>(var_1.x ^ -29381i, -global3.b.x), !var_0), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, ~61067u), u_input.c));
}

