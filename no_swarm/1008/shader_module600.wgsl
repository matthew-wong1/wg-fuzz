struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<f32, 3>;

var<private> global2: array<Struct_4, 12>;

var<private> global3: array<vec4<i32>, 16>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(435f, 588f)))), 71795u);
    global3 = array<vec4<i32>, 16>();
    global3 = array<vec4<i32>, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, arg_0.e, _wgslsmith_f_op_f32(f32(-1f) * -922f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - -167f), 1000f)), _wgslsmith_f_op_f32(678f * _wgslsmith_f_op_f32(-global0.b.x))))) * arg_0.c);
    var var_2 = vec3<bool>(any(arg_1.xxy), arg_1.x, !((1u | select(1u, 4294967295u, arg_1.x)) >= ~global0.c));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * arg_0.b) + _wgslsmith_f_op_f32(min(-439f, var_0.b.x))) * _wgslsmith_f_op_f32(step(-1382f, 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1115f * 874f))))));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(695f * _wgslsmith_f_op_f32(func_3(Struct_2(~(-2147483647i), _wgslsmith_f_op_f32(min(913f, 285f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global1[_wgslsmith_index_u32(global0.a, 3u)], global1[_wgslsmith_index_u32(0u, 3u)])), u_input.d, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(18605u, 3u)] * global0.b.x)), !(!vec4<bool>(false, false, arg_1.x, false))))));
    let var_1 = 0u;
    global0 = Struct_1(countOneBits(1u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.a), 1541f), vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(609f)))))), ~(~(~(~81175u))));
    global2 = array<Struct_4, 12>();
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(var_1, 24786u), countOneBits(~global0.c), global0.a), 3u)], -109f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 1u), vec2<u32>(35996u, 1u))) | arg_0.a, 3u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 3u)])))), 2003f, all(!vec4<bool>(false, arg_1.x, false, arg_1.x)))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(96679u, 3u)] * var_2.x) + _wgslsmith_f_op_f32(sign(-1339f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_div_f32(2119f, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1858f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(u_input.b), vec2<bool>(true, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, -396f, arg_0)), vec3<bool>(abs(u_input.b) != 16218u, true, true))));
    var var_1 = Struct_3(Struct_1(1u, _wgslsmith_f_op_vec2_f32(-var_0.zz), 0u), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(25118u, ~78154u), arg_1, 1u), _wgslsmith_f_op_vec2_f32(min(global0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, global0.b.x), vec2<f32>(-1000f, 718f), false))))), firstLeadingBit(_wgslsmith_mod_u32(arg_1, 73249u) | 3561u)), Struct_2(i32(-1i) * -u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f * -272f)) * 152f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global0.c, 3u)], arg_0, 1103f, global1[_wgslsmith_index_u32(arg_1, 3u)])), vec4<f32>(global1[_wgslsmith_index_u32(global0.a, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], -571f, -884f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global0.b.x, -1000f, -287f) * vec4<f32>(-1348f, arg_0, 1049f, 1149f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 254f, -1283f, -974f), vec4<f32>(global0.b.x, -413f, global0.b.x, var_0.x)))))), u_input.d, _wgslsmith_f_op_f32(-170f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.b.x, global1[_wgslsmith_index_u32(u_input.c, 3u)])), -415f, true)))), Struct_2(u_input.a.x, 1f, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(22226u, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f + global1[_wgslsmith_index_u32(17174u, 3u)])), -230f), _wgslsmith_mod_i32(firstTrailingBit(-u_input.a.x), _wgslsmith_div_i32(u_input.d, -1i) ^ (u_input.a.x << (0u % 32u))), 351f));
    let var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -531f);
    let var_4 = var_1.c;
    return global1[_wgslsmith_index_u32(global0.a, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f * global0.b.x) * _wgslsmith_f_op_f32(global0.b.x * 142f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(296f, global1[_wgslsmith_index_u32(4294967295u, 3u)], false)) - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(62426u, 3u)], 718f))), _wgslsmith_f_op_f32(-689f - -1000f))), global0.c);
    global3 = array<vec4<i32>, 16>();
    var var_1 = Struct_3(var_0, var_0, Struct_2(u_input.a.x, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-444f, u_input.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1250f, -662f, global1[_wgslsmith_index_u32(global0.c, 3u)], 313f))), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, i32(-1i) * -2147483647i, firstTrailingBit(-23171i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.d), vec3<i32>(-1146i, 1i, -7500i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(147f - global1[_wgslsmith_index_u32(u_input.b, 3u)]) * global1[_wgslsmith_index_u32(~4294967295u, 3u)]))), Struct_2(~(~u_input.d), _wgslsmith_f_op_f32(ceil(302f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-788f, -410f, global0.b.x, global0.b.x)))))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -1i, u_input.d), vec3<i32>(44060i, u_input.a.x, 0i)), _wgslsmith_f_op_f32(sign(-1000f))));
    var var_2 = select(true, any(vec4<bool>(false, false, !all(vec2<bool>(false, true)), true)), true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d.a, var_1.c.a, var_1.d.a), vec3<i32>(var_1.c.a, -2147483647i, -2327i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-5831i, var_1.d.a, var_1.c.d), vec3<i32>(u_input.d, -34323i, var_1.d.a))), -478f, var_1.d.c, 90809i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(round(614f)))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))))), global1[_wgslsmith_index_u32(~88323u, 3u)], var_0.b.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], -241f, var_3.x, var_3.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d.c)))) * _wgslsmith_f_op_vec4_f32(-var_1.c.c));
    var var_5 = select(~vec2<u32>(firstLeadingBit(50080u), ~50213u), vec2<u32>(~reverseBits(global0.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, var_1.b.c), countOneBits(4294967295u))), vec2<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))) >> (vec2<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(60223u, 7010u)), _wgslsmith_clamp_u32(97721u, 6777u, 59686u) & _wgslsmith_mult_u32(u_input.c, u_input.b)), (var_0.a & 34931u) & global0.a) % vec2<u32>(32u));
    var var_6 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_4)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1131f, 945f, _wgslsmith_div_f32(1361f, var_1.c.c.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27664u, 3u)])))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.c.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a >> (~(~var_0.a) % 32u));
}

