struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 25>;

var<private> global2: array<f32, 1>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 1u)] * -327f))))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.d.x, 1u)]))));
    let var_1 = u_input.a.xy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 1u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 1u)])), -860f))));
    return !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, max(40377u, 1u)), 1u)]) >= -104f);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(50482u, 1u)] - global2[_wgslsmith_index_u32(61937u, 1u)]), _wgslsmith_div_f32(823f, global2[_wgslsmith_index_u32(4294967295u, 1u)])))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-870f, global2[_wgslsmith_index_u32(u_input.c, 1u)]))), -194f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global2[_wgslsmith_index_u32(52781u, 1u)])))))));
    let var_1 = select(vec3<bool>(true, !(!any(vec2<bool>(true, false))), !arg_1.x), select(!arg_1.xzw, arg_1.wzw, vec3<bool>(true, any(vec3<bool>(arg_1.x, false, arg_1.x)), false)), select(arg_1.wzz, vec3<bool>(!(false || arg_1.x), u_input.b != u_input.a.x, arg_1.x), arg_1.xzz));
    var var_2 = ~10758u;
    let var_3 = max(88317u, min(u_input.d.x, 18172u));
    global1 = array<u32, 25>();
    return any(var_1);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_3 {
    global1 = array<u32, 25>();
    let var_0 = max(~arg_1.b, ~(~arg_1.b));
    let var_1 = 0i;
    var var_2 = arg_1.a;
    var var_3 = 1u;
    return Struct_3(-2557f, vec4<f32>(global2[_wgslsmith_index_u32(~37335u, 1u)], arg_1.a.e, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(35180u, 1u)])))), vec4<bool>(global2[_wgslsmith_index_u32(min(~arg_1.a.b.x, 4294967295u << (0u % 32u)), 1u)] != -1772f, all(vec2<bool>(true, true)), func_4(abs(var_2.b), vec4<bool>(all(vec2<bool>(true, false)), false, func_3(), 1u >= arg_2)), true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1678f, 445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(906f)) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 1u)]))), -879f));
    global2 = array<f32, 1>();
    let var_1 = Struct_3(581f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c, var_0.x, -1000f, 891f) + arg_0.b)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1007f + 1000f), -323f, -336f, 1544f))), arg_0.c);
    var_0 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, 9678u), _wgslsmith_div_u32(arg_1.a.b.x, u_input.e)), 1u)], _wgslsmith_f_op_f32(f32(-1f) * -1248f)))));
    return _wgslsmith_clamp_u32(0u, global0.x, _wgslsmith_mod_u32(1u, ~(~u_input.e)));
}

fn func_1() -> i32 {
    var var_0 = global0.x;
    global1 = array<u32, 25>();
    let var_1 = firstLeadingBit(~u_input.b);
    global0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(func_5(func_2(Struct_1(vec4<i32>(var_1, -17916i, 15225i, u_input.a.x), vec4<u32>(52320u, u_input.e, 67940u, u_input.c), global2[_wgslsmith_index_u32(63589u, 1u)], 0i, 459f), Struct_2(Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.b, 5636i), vec4<u32>(global0.x, 71043u, 7383u, 267u), global2[_wgslsmith_index_u32(1u, 1u)], 16599i, global2[_wgslsmith_index_u32(4294967295u, 1u)]), 0i), 4294967295u, 0u), Struct_2(Struct_1(vec4<i32>(var_1, var_1, -25578i, var_1), vec4<u32>(global0.x, 0u, 28403u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 25u)], 25u)]), global2[_wgslsmith_index_u32(global0.x, 1u)], 2147483647i, 541f), var_1)), ~(1u ^ global0.x), u_input.e, _wgslsmith_mult_u32(u_input.d.x, ~u_input.d.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(51827u, global0.x, 14473u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(5398u, 1u, u_input.e, 10469u), vec4<u32>(4294967295u, global0.x, u_input.c, 1u))), vec4<u32>(11687u, ~global0.x, ~global0.x, u_input.e))));
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(-9061i, var_1));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, all(vec2<bool>(true, true)), select(any(vec4<bool>(true, true, true, true)) == false, !all(vec3<bool>(true, true, true)), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), true);
    var var_1 = max(select(-countOneBits(vec4<i32>(3251i, 1i, -1i, u_input.b)), vec4<i32>(~2147483647i, 19294i, _wgslsmith_div_i32(0i, 1i), ~0i), true), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, firstTrailingBit(-2801i))), func_1(), i32(-1i) * -42818i, -countOneBits(select(u_input.a.x, u_input.b, false))));
    var var_2 = false;
    let var_3 = -2898i;
    var_1 = vec4<i32>(2147483647i, u_input.a.x, u_input.b, var_3);
    var var_4 = Struct_3(global2[_wgslsmith_index_u32(~u_input.d.x, 1u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, global2[_wgslsmith_index_u32(29962u, 1u)], 1012f, -772f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 1u)], global2[_wgslsmith_index_u32(105005u, 1u)], global2[_wgslsmith_index_u32(global0.x, 1u)]) - vec4<f32>(-378f, global2[_wgslsmith_index_u32(36266u, 1u)], global2[_wgslsmith_index_u32(global0.x, 1u)], 2193f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 1u)], _wgslsmith_f_op_f32(round(-1000f)), -482f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(10497u, 1u)]))))), !vec4<bool>(true, var_0.x, !(var_0.x | true), var_0.x));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -851f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1228f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(floor(352f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -970f), global2[_wgslsmith_index_u32(1u, 1u)], !var_0.x)), 1394f), !(!vec4<bool>(var_0.x, all(var_0.xx), all(var_0.zy), var_0.x)));
    var var_6 = firstTrailingBit(min(~(-(vec4<i32>(var_1.x, -43672i, u_input.a.x, var_3) << (vec4<u32>(u_input.c, 1u, global0.x, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_i32(var_1.yw, u_input.a.yx), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.x, -2147483647i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), var_3), _wgslsmith_dot_vec2_i32(vec2<i32>(33598i, u_input.b), u_input.a.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a + -452f) + _wgslsmith_f_op_f32(round(var_4.b.x))) + 190f)));
}

