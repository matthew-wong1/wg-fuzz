struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-776f, -1754f, 670f, 626f), vec4<f32>(591f, -858f, 1139f, 1464f), vec4<f32>(361f, -494f, -164f, 1076f), vec4<f32>(-478f, -549f, -721f, -803f), vec4<f32>(-1233f, 184f, 985f, -707f), vec4<f32>(515f, -208f, -1441f, -1122f), vec4<f32>(-294f, -942f, -1973f, -1199f), vec4<f32>(-1000f, -719f, 334f, 576f), vec4<f32>(-314f, 1000f, -982f, -1845f), vec4<f32>(579f, -610f, 2086f, 804f), vec4<f32>(-1017f, 321f, -1000f, -394f), vec4<f32>(-329f, 834f, -649f, -134f), vec4<f32>(-1420f, 440f, 1128f, 183f));

var<private> global3: Struct_1;

var<private> global4: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(select(global3.a, !vec4<bool>(arg_0.x, false, false, global1.a.a.x), countOneBits(22684u) <= ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b * -516f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b + -558f)))));
    global0 = array<i32, 21>();
    let var_1 = Struct_2(!select(arg_0.xy, vec2<bool>(true, true), 31662i == (global0[_wgslsmith_index_u32(global4.x, 21u)] & -2147483647i)), 1u, global1.a.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(max(-1652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(906f * 1300f)))))) + global3.b);
    var var_3 = all(select(select(select(vec2<bool>(true, true), !arg_0.yw, select(global3.a.wy, var_1.a, arg_0.x)), arg_0.wz, !select(global1.a.a.zx, vec2<bool>(true, arg_0.x), var_0.a.a.x)), select(var_1.a, !select(global1.a.a.zw, vec2<bool>(global1.a.a.x, var_1.a.x), global1.a.a.x), vec2<bool>(true, true)), select(vec2<bool>(var_1.c, true), vec2<bool>(any(global3.a), var_1.c), !select(vec2<bool>(false, arg_0.x), vec2<bool>(false, true), true))));
    return select(vec4<bool>(false, !select(905f >= var_0.a.b, var_1.c, true), false != var_0.a.a.x, true), vec4<bool>(all(vec3<bool>(var_0.a.a.x, true, arg_0.x)), any(vec4<bool>(var_0.a.a.x, false, global1.a.a.x, var_0.a.a.x)) & var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1490f, global1.a.b))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), true), arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    global4 = u_input.a.xz;
    var var_0 = global3.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b * arg_0.b)) - _wgslsmith_f_op_f32(-global3.b));
    var var_2 = !global1.a.a.x;
    let var_3 = arg_0;
    return Struct_3(Struct_1(!func_3(!vec4<bool>(var_3.a.x, false, arg_0.a.x, false), min(u_input.a.x, global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + global1.a.b))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_3 {
    global2 = array<vec4<f32>, 13>();
    global0 = array<i32, 21>();
    var var_0 = global1.a;
    let var_1 = func_2(Struct_1(!select(!global1.a.a, vec4<bool>(arg_1.c, global3.a.x, false, global1.a.a.x), global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec4<i32>(-(global0[_wgslsmith_index_u32(u_input.a.x, 21u)] ^ 2147483647i) | (3989i & global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(global0[_wgslsmith_index_u32(global4.x, 21u)], 2147483647i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, global0[_wgslsmith_index_u32(arg_1.b, 21u)]), vec3<i32>(-34119i, global0[_wgslsmith_index_u32(11944u, 21u)], global0[_wgslsmith_index_u32(11407u, 21u)]))), ~firstLeadingBit(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(74316u, 21u)], global0[_wgslsmith_index_u32(5623u, 21u)])), -(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global4.x, 21u)], global0[_wgslsmith_index_u32(arg_1.b, 21u)]))));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~arg_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 17741u), vec2<u32>(1u, arg_1.b)), 47762u >> (global4.x % 32u), 4294967295u & global4.x), ~(~max(vec4<u32>(global4.x, 4294967295u, 108245u, u_input.a.x), vec4<u32>(arg_1.b, 0u, arg_1.b, arg_1.b))), max(firstLeadingBit(vec4<u32>(global4.x, 0u, 0u, u_input.a.x)), select(vec4<u32>(u_input.a.x, global4.x, 0u, arg_1.b), vec4<u32>(41742u, global4.x, 57296u, 8653u), arg_1.c)) >> (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_1.b, arg_1.b, global4.x, 44406u)), vec4<u32>(global4.x, 26336u, arg_1.b, 14996u) << (vec4<u32>(arg_1.b, global4.x, 0u, 47214u) % vec4<u32>(32u)), vec4<u32>(48296u, arg_1.b, 25603u, 4802u) << (vec4<u32>(11163u, arg_1.b, u_input.a.x, 14676u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(max(~vec4<u32>(arg_1.b, 33508u, 22750u, 1u) >> (~vec4<u32>(4294967295u, global4.x, 53549u, 57449u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, arg_1.b, 9773u) & select(vec4<u32>(28720u, arg_1.b, 4294967295u, 26893u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4029u), false)), vec4<u32>(3177u, global4.x, 2454u, 1u), vec4<bool>(true, false, true, true)));
    return func_2(func_2(Struct_1(!(!vec4<bool>(true, global1.a.a.x, arg_1.a.x, false)), _wgslsmith_f_op_f32(arg_0.x - global1.a.b)), ~reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(global4.x, 21u)], global0[_wgslsmith_index_u32(global4.x, 21u)], 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 21u)]))).a, max(vec4<i32>(-abs(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(9923u | var_2.x, abs(4294967295u)), 21u)], global0[_wgslsmith_index_u32(~(~arg_1.b), 21u)], -global0[_wgslsmith_index_u32(0u, 21u)]), ~select(~vec4<i32>(-2147483647i, -7969i, 37180i, global0[_wgslsmith_index_u32(83222u, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4141u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.b, 517f, -1524f), vec3<f32>(global1.a.b, global3.b, 1000f)) + vec3<f32>(159f, 534f, 1558f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, -281f, -286f))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2570f), global3.b), -1753f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(394f - -1850f))))), Struct_2(!vec2<bool>(true, all(global1.a.a)), 13980u, !all(vec2<bool>(false, global1.a.a.x))));
    global2 = array<vec4<f32>, 13>();
    global4 = u_input.a.zx;
    let var_0 = Struct_2(!(!func_3(global3.a, 21653u | u_input.a.x).wy), firstTrailingBit(4294967295u), global1.a.a.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f), -777f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b));
    global2 = array<vec4<f32>, 13>();
    var var_2 = -923f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

