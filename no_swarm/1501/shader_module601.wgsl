struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<f32, 20>;

var<private> global2: array<u32, 7> = array<u32, 7>(4294967295u, 75560u, 0u, 21256u, 0u, 4294967295u, 72769u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.a.x)))))), 484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * arg_0.a.x))));
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1738f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.a.x)))))));
    let var_2 = Struct_1(!vec3<bool>(all(!vec3<bool>(arg_0.c.x, arg_0.c.x, false)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57885u, 27u)], 27u)], 27u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 20u)] != arg_1.x, true));
    return ~63245u;
}

fn func_2(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(91041u, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(func_3(Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 20u)], global1[_wgslsmith_index_u32(arg_0, 20u)]), false, vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-197f, -658f, 2930f, -268f) * vec4<f32>(global1[_wgslsmith_index_u32(58328u, 20u)], 1074f, -592f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 27u)], 7u)], 27u)], 20u)]))), 20u)]));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1232f * -209f)))))), true, select(vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), true), select(vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(var_0.x < var_0.x, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)))));
    var var_2 = Struct_1(vec3<bool>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, 13718i), 0i) >= _wgslsmith_div_i32(u_input.a >> (1u % 32u), ~u_input.a), !(_wgslsmith_f_op_f32(-687f * var_1.a.x) < _wgslsmith_f_op_f32(max(var_0.x, -880f))), var_1.c.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 2007f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(713f, var_0.x))) + _wgslsmith_div_vec2_f32(var_0.zx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-338f, var_1.a.x), var_0.ww))))), var_1.c.x, !(!(!vec2<bool>(true, var_1.b))));
    var var_4 = Struct_1(select(select(!select(vec3<bool>(true, var_2.a.x, true), vec3<bool>(var_3.b, false, false), vec3<bool>(true, var_1.b, var_1.b)), vec3<bool>(true, !var_2.a.x, !var_1.b), false), !vec3<bool>(all(var_3.c), !var_3.b, var_0.x != 699f), vec3<bool>(0u == min(1u, global0[_wgslsmith_index_u32(1u, 27u)]), select(var_1.b || var_3.b, all(var_3.c), all(vec3<bool>(var_3.c.x, var_1.b, var_3.c.x))), true)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 20u)], 701f, 1000f, var_3.a.x) * vec4<f32>(1543f, 1092f, 1287f, global1[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(10190u, 20u)], -255f, 748f, var_1.a.x) + vec4<f32>(var_1.a.x, var_1.a.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, -297f, -1022f, 115f)))), select(vec4<bool>(true, var_4.a.x, false, all(vec3<bool>(var_4.a.x, var_1.b, var_1.c.x))), select(!vec4<bool>(var_3.b, false, false, false), !vec4<bool>(false, false, var_1.c.x, var_3.c.x), any(vec3<bool>(false, var_3.c.x, var_4.a.x))), true))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(69206u))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-109f * arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-171f, global1[_wgslsmith_index_u32(88446u, 20u)], arg_0)) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(72083u, 27u)], 56874u), 20u)]), arg_3.x, _wgslsmith_f_op_vec4_f32(func_2(global2[_wgslsmith_index_u32(9349u, 7u)])).x), true)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -862f);
    global1 = array<f32, 20>();
    global0 = array<u32, 27>();
    let var_2 = Struct_3(var_0.zyy, vec3<i32>(u_input.a, u_input.a, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-29063i, 2147483647i, -1i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))), Struct_2(vec2<f32>(346f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1294f - var_0.x), arg_3.x)), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29879u, 27u)], 27u)], 27u)], 46678u) > (_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.zx) | 92160u), arg_1.yz), -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3)) * _wgslsmith_f_op_vec3_f32(max(var_0.zzy, vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, -2250f, true)), _wgslsmith_f_op_f32(select(-562f, arg_3.x, arg_2)), _wgslsmith_div_f32(arg_3.x, -1298f))))));
    return Struct_1(!arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = arg_1;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~func_4(func_1(true, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true, _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62840u, 7u)], 7u)], 7u)], 20u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), vec3<f32>(-507f, global1[_wgslsmith_index_u32(24353u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]))), Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(42079u, 20u)], global1[_wgslsmith_index_u32(77733u, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), -vec3<i32>(u_input.a, -53492i, u_input.a), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)], 27u)], 20u)]), false, vec2<bool>(false, true)), ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(30459u, 20u)], 214f, global1[_wgslsmith_index_u32(53500u, 20u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 20u)], 340f, global1[_wgslsmith_index_u32(4284u, 20u)])))), 32878u, global2[_wgslsmith_index_u32(abs(u_input.b.x) << (u_input.c % 32u), 7u)] << ((global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 7u)], 27u)], global2[_wgslsmith_index_u32(19314u, 7u)]), 27u)] ^ ~(~global0[_wgslsmith_index_u32(43696u, 27u)])) % 32u), countOneBits(_wgslsmith_mult_u32(select(~23690u, 1u, true), _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 16058u), 30116u))));
    global0 = array<u32, 27>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(var_0.x, 20u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22227u, 20u)] * -2791f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1000f, global1[_wgslsmith_index_u32(33643u, 20u)]), vec3<f32>(global1[_wgslsmith_index_u32(0u, 20u)], -880f, global1[_wgslsmith_index_u32(103741u, 20u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], -3923f))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, 55414i) & ~vec3<i32>(-64718i, u_input.a, 2147483647i), ~(-vec3<i32>(2147483647i, u_input.a, u_input.a))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1088f), global1[_wgslsmith_index_u32(873u, 20u)]), true, !select(func_1(false, vec3<bool>(true, true, true), false, vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 20u)], -249f, global1[_wgslsmith_index_u32(0u, 20u)])).a.yy, vec2<bool>(true, true), true)), 1i, vec3<f32>(-1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(42037u << (0u % 32u)), 20u)] - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1425f - 976f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(652f, _wgslsmith_f_op_f32(min(-1533f, -940f))))))));
    let var_2 = _wgslsmith_dot_vec2_u32(var_0.ww, u_input.b.xz);
    var var_3 = max(vec2<u32>(func_3(var_1.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], var_1.e.x, var_1.a.x), vec4<f32>(256f, -1000f, -1104f, -1416f)))), ~0u), ~select(~u_input.b.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29533u, 7u)], 7u)], 27u)]), vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 27u)], 32134u)), var_1.c.c)) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, global2[_wgslsmith_index_u32(~4294967295u, 7u)]), var_0.xy, vec2<u32>(~0u, 1u)), vec2<u32>(0u, reverseBits(u_input.b.x))) % vec2<u32>(32u));
    var_3 = vec2<u32>(min(func_4(func_1(var_1.c.b, func_1(false, vec3<bool>(true, true, false), false, var_1.a).a, false, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, global1[_wgslsmith_index_u32(1u, 20u)], 666f) - var_1.a)), var_1), reverseBits(_wgslsmith_dot_vec4_u32(~var_0, min(vec4<u32>(70461u, var_3.x, 26017u, 1u), vec4<u32>(1066u, 37241u, global0[_wgslsmith_index_u32(0u, 27u)], var_0.x))))), ~0u);
    let var_4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.c, 20u)])), -1477f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 20u)], -509f)), -944f), _wgslsmith_f_op_vec4_f32(func_2(global0[_wgslsmith_index_u32(~79972u, 27u)])).x), var_1.b, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.e.xz))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(926f, var_1.e.x))))), true, vec2<bool>(true, false)), 2147483647i & -_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, -47062i), vec2<i32>(-28920i, u_input.a))), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(-1627f, firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, ~var_0.x, 51599u, ~4294967295u), ~_wgslsmith_div_vec4_u32(var_0, vec4<u32>(global2[_wgslsmith_index_u32(1u, 7u)], 1u, var_2, 1u)))));
}

