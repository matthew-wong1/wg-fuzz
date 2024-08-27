struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: array<i32, 6>;

var<private> global2: array<Struct_3, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = reverseBits(select(_wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3679i, 1i, global1[_wgslsmith_index_u32(0u, 6u)]), vec3<i32>(u_input.d, -100636i, -35519i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 6u)], -9839i))), reverseBits(firstLeadingBit(vec3<i32>(85832i, u_input.d, 8460i)))), ~(~(vec3<i32>(u_input.d, 1i, 10343i) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) % vec3<u32>(32u)))), arg_1.a.x & false));
    var var_1 = _wgslsmith_mult_u32(u_input.b.x, ~35427u) != _wgslsmith_add_u32(u_input.c, ~532u);
    var var_2 = ~4294967295u;
    let var_3 = u_input.c;
    return select(select(!vec4<bool>(all(vec3<bool>(arg_1.a.x, arg_1.a.x, false)), arg_1.a.x, true, false), !arg_1.a, select(select(select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, true), arg_1.a, arg_1.a), arg_1.a, !vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<bool>(arg_1.a.x, true, arg_1.a.x && true, !arg_1.a.x), arg_1.a.x)), select(arg_1.a, !vec4<bool>(true, true && arg_1.a.x, !arg_1.a.x, select(true, true, false)), vec4<bool>(true, all(select(vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.a.xz, vec2<bool>(arg_1.a.x, true))), arg_1.a.x, arg_1.a.x)), true);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.x;
    global0 = array<vec4<i32>, 7>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(1557f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(arg_1.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(747f, 1543f, 1626f, arg_1.a) * vec4<f32>(218f, arg_1.b.x, -467f, 183f))))), -(-global0[_wgslsmith_index_u32(4294967295u, 7u)] | vec4<i32>(u_input.d, 35847i, global1[_wgslsmith_index_u32(20568u, 6u)], -2147483647i)), vec3<bool>(any(!arg_1.d.xz), arg_1.d.x, arg_1.d.x)), func_3(_wgslsmith_f_op_f32(ceil(arg_1.a)), Struct_2(select(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, false), select(vec4<bool>(arg_1.d.x, arg_1.d.x, true, arg_1.d.x), vec4<bool>(true, arg_1.d.x, arg_1.d.x, false), arg_1.d.x), true)), arg_1.b.yyy), vec3<i32>(u_input.d, countOneBits(~(~global1[_wgslsmith_index_u32(13007u, 6u)])), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 465f)) + arg_1.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_f32(-arg_1.a), arg_1.b.x, -2239f))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(30498u), u_input.c & 2873u, arg_0.x ^ 1u, _wgslsmith_mult_u32(0u, u_input.a.x)), ~select(vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(40034u, u_input.c, arg_0.x, 20058u), false)), vec4<u32>(_wgslsmith_mult_u32(u_input.c, u_input.a.x), _wgslsmith_div_u32(32729u, arg_0.x), arg_0.x, arg_0.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(89942u, arg_0.x, arg_0.x, 0u), vec4<u32>(77263u, arg_0.x, arg_0.x, 1u) >> (vec4<u32>(16602u, u_input.b.x, arg_0.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = all(!func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(614f)), 1000f), Struct_2(vec4<bool>(false, var_1.a.d.x, var_1.b.x, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2286f, arg_1.b.x, -1000f))).xw);
    global1 = array<i32, 6>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1.a)), arg_1.a, !var_1.b.x)))), arg_1.b, countOneBits(select(_wgslsmith_sub_vec4_i32(var_1.a.c, _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(84210u, 7u)], vec4<i32>(30524i, var_1.c.x, var_1.a.c.x, 56334i))), var_1.a.c, select(!var_1.b, func_3(var_1.a.b.x, Struct_2(var_1.b), var_1.d.wxy), false))), !vec3<bool>(u_input.c >= abs(4294967295u), var_1.a.d.x, false));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.b.x;
    global0 = array<vec4<i32>, 7>();
    var var_1 = func_2(vec3<u32>(1u, 10498u, 4294967295u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f)), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(~(~var_0), 7u)], ~(vec4<i32>(u_input.d, global1[_wgslsmith_index_u32(19430u, 6u)], -1i, -1i) ^ vec4<i32>(u_input.d, -2147483647i, 19569i, 79479i))), select(arg_0.a.xwy, arg_0.a.zwz, false)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(316f)), _wgslsmith_f_op_f32(f32(-1f) * -746f)))), vec4<f32>(-1683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1948f + var_1.b.x) * _wgslsmith_div_f32(-707f, -631f)) * 439f)), global0[_wgslsmith_index_u32(u_input.c, 7u)] << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, firstTrailingBit(var_0), _wgslsmith_add_u32(var_0, var_0)), vec4<u32>(var_0, 61516u, var_0, 26900u) ^ reverseBits(vec4<u32>(u_input.b.x, 33954u, 68083u, var_0))) % vec4<u32>(32u)), vec3<bool>(true | arg_0.a.x, !any(vec4<bool>(arg_0.a.x, true, true, var_1.d.x)), false));
    let var_3 = 1u;
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1715f * _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1508f, var_2.a, var_2.b.x) - var_2.b) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1368f, -230f, -531f, var_2.b.x), vec4<f32>(813f, var_1.b.x, var_1.b.x, var_1.a), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_2.b)) + _wgslsmith_f_op_vec4_f32(-var_2.b)), vec4<bool>(false, arg_0.a.x, true, arg_1))))), vec4<i32>(var_2.c.x, ~var_1.c.x, _wgslsmith_add_i32(~(-2147483647i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-25859i, var_2.c.x)), countOneBits(u_input.d))), _wgslsmith_dot_vec3_i32(~(~var_2.c.yyw), var_2.c.wwx)), vec3<bool>(!(any(vec2<bool>(true, false)) || arg_1), false, any(select(arg_0.a, !arg_0.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    var var_0 = func_1(Struct_2(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b.xz)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1015f)), _wgslsmith_f_op_f32(f32(-1f) * -1817f)) - vec2<f32>(-1118f, _wgslsmith_f_op_f32(ceil(-697f)))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -338f)))), var_0.b.zx, func_2(vec3<u32>(4294967295u, u_input.a.x, 4294967295u) ^ abs(vec3<u32>(1u, u_input.c, u_input.c)), Struct_1(func_1(Struct_2(vec4<bool>(false, var_0.d.x, true, false)), false).b.x, _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, vec4<bool>(var_0.d.x, true, var_0.d.x, true))), vec4<i32>(2147483647i, u_input.d, u_input.d, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]) | global0[_wgslsmith_index_u32(u_input.b.x, 7u)], var_0.d)).d.yy)));
    let var_2 = -403f;
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_dot_vec2_u32(~countOneBits(select(u_input.b, u_input.a.xz, var_0.d.yx)), u_input.a.zx));
}

