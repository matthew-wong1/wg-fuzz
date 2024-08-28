struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 4294967295u, 0u);

var<private> global2: i32 = 32879i;

var<private> global3: array<u32, 27> = array<u32, 27>(1u, 24896u, 125808u, 84159u, 0u, 0u, 58976u, 56499u, 31602u, 46591u, 1u, 4294967295u, 63563u, 0u, 24642u, 156504u, 36128u, 100960u, 1u, 4294967295u, 0u, 21471u, 23565u, 1u, 4294967295u, 59984u, 4294967295u);

var<private> global4: array<f32, 6> = array<f32, 6>(344f, 986f, 1596f, 841f, -771f, 179f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    global0 = select(select(!vec4<bool>(global0.x, !global0.x, true, true & global0.x), vec4<bool>(any(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x))), false, !(!global0.x), global0.x || (global3[_wgslsmith_index_u32(1u, 27u)] > global1[_wgslsmith_index_u32(25878u, 3u)])), !(-2938f < _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(89921u, 6u)], -180f, true)))), !select(vec4<bool>(global0.x, global0.x | global0.x, true, global0.x), vec4<bool>(true, true, select(false, true, global0.x), all(vec2<bool>(false, true))), vec4<bool>(!global0.x, global0.x || true, global0.x, select(global0.x, false, global0.x))), !all(vec4<bool>(false && global0.x, global0.x, select(false, global0.x, global0.x), select(false, true, global0.x))));
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(~(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 3u)], u_input.a, 1016u)), reverseBits(vec3<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(25655u, 27u)]) | vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 27u)], 2009u, u_input.a)), false), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 58859u, u_input.a, 32311u), vec4<u32>(0u, 0u, u_input.a, global3[_wgslsmith_index_u32(7485u, 27u)])), 68673u, u_input.a)), ~((~vec3<u32>(global3[_wgslsmith_index_u32(12694u, 27u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48566u, 3u)], 27u)], 49u) ^ (vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 3u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50479u, 3u)], 3u)]) | vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]))) << (select(min(vec3<u32>(74824u, 0u, global3[_wgslsmith_index_u32(1u, 27u)]), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 27u)], u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 27u)], 3u)], 3u)], 21394u), vec3<u32>(16700u, 29495u, global3[_wgslsmith_index_u32(4294967295u, 27u)])), any(global0.ww)) % vec3<u32>(32u))));
    global4 = array<f32, 6>();
    var var_1 = global0.xy;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(var_0, 6u)], _wgslsmith_f_op_f32(min(283f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 6u)]))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-353f)), _wgslsmith_f_op_f32(-1392f * -673f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(31872u, 6u)], -594f)))), _wgslsmith_f_op_f32(min(409f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0, 6u)] + -407f))))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 654f) - vec2<f32>(-266f, global4[_wgslsmith_index_u32(1u, 6u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, -1000f))))), vec2<f32>(-1394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-286f, var_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 6u)])))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = vec4<bool>(!global0.x, global0.x, true, true);
    var var_0 = true;
    let var_1 = ~countOneBits(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(51417u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24091u, 27u)], 3u)], 3u)]), vec2<u32>(20007u, 0u))));
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(4294967295u, 6u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + -790f))))), ~(~(~select(vec3<u32>(u_input.a, var_1, var_1), vec3<u32>(1u, u_input.a, var_1), global0.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_div_vec2_f32(vec2<f32>(252f, 1099f), vec2<f32>(1056f, arg_0)), !vec2<bool>(true, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19544u, 3u)], 3u)], 6u)])))), vec2<f32>(1679f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(264f)))))));
    return var_3;
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 3>();
    global3 = array<u32, 27>();
    var var_0 = !(!(!(!global0.wxy)));
    let var_1 = func_2(_wgslsmith_f_op_f32(-1848f - -247f));
    let var_2 = global4[_wgslsmith_index_u32(0u, 6u)];
    return var_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global0 = select(select(vec4<bool>(global0.x, false, false, true), select(vec4<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 6u)] >= 555f, true, u_input.b == 6746i), vec4<bool>(global0.x, any(vec3<bool>(false, global0.x, true)), false, global0.x), !vec4<bool>(false, false, global0.x, global0.x)), !(!vec4<bool>(global0.x, global0.x, true, global0.x))), select(select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, global0.x, global0.x, true)), true), -943f != global4[_wgslsmith_index_u32(54143u, 6u)]), select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, true, false, false))), !vec4<bool>(global0.x, true, true, global0.x), !(!global0.x)), !vec4<bool>(global0.x, all(vec4<bool>(true, true, false, global0.x)), true, any(vec2<bool>(global0.x, false)))), select(_wgslsmith_clamp_i32(-29893i, u_input.b, arg_0.x) <= ~u_input.b, any(global0.ywy), true) & any(select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, false), true != global0.x)));
    global2 = firstLeadingBit(arg_0.x);
    global0 = select(select(select(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, true)), select(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, false, true, false), false), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true), !vec4<bool>(false, any(vec3<bool>(global0.x, global0.x, global0.x)), all(vec3<bool>(true, false, false)), all(global0.xyy)), !select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, false, false, global0.x), global0.x), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, true, true, false), vec4<bool>(false, global0.x, false, true)), !global0.x)), !select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, 52425u <= u_input.a, true), !any(global0.yzz)), !vec4<bool>((0i > arg_2) || any(vec4<bool>(global0.x, false, false, global0.x)), true, true, all(!vec4<bool>(false, false, global0.x, global0.x))));
    let var_0 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1.c.x)))), _wgslsmith_f_op_f32(floor(-380f))) > _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u & ~global3[_wgslsmith_index_u32(8510u, 27u)], 6u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.b, ~vec3<u32>(u_input.a, 1u, 12109u)), 6u)]), arg_2 > (arg_0.x << (~1u % 32u)));
    var var_1 = var_0.x;
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 2147483647i;
    var var_0 = global4[_wgslsmith_index_u32(func_4(vec4<i32>(-21678i, u_input.b, reverseBits(~firstLeadingBit(-2147483647i)), min(abs(0i), min(u_input.b, 12582i) >> (~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9746u, 27u)], 27u)], 3u)] % 32u))), func_1(), u_input.b), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~vec4<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 4294967295u), ~global1[_wgslsmith_index_u32(~47521u, 3u)], 4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(39257u, 3u)]), select(vec2<u32>(global1[_wgslsmith_index_u32(0u, 3u)], 35549u), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 1u), global0.x)), 3u)]), vec2<i32>(-(~select(u_input.b, -2147483647i, global0.x)), _wgslsmith_sub_i32(23448i, _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(1i, u_input.b, u_input.b)))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-41313i, 29458i, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -2147483647i, 28186i), vec4<i32>(-6028i, u_input.b, u_input.b, u_input.b)), vec4<bool>(true, global0.x, false, global0.x)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 27u)], 4294967295u, 41284u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 17724u, global1[_wgslsmith_index_u32(18517u, 3u)]), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(23031u, 3u)], global1[_wgslsmith_index_u32(28745u, 3u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70831u, 3u)], 27u)]))) % vec4<u32>(32u)), ~(-select(vec4<i32>(-1i, -1i, 1860i, u_input.b), vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i), vec4<bool>(false, true, false, false)))), vec2<i32>(-2147483647i, -38843i));
}

