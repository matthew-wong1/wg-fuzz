struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~_wgslsmith_mod_vec3_u32(select(max(vec3<u32>(47334u, 25405u, u_input.a.x), vec3<u32>(u_input.a.x, 13910u, 4294967295u) | vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec3<u32>(u_input.a.x, ~200u, u_input.a.x), any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(27043u, 3u)], global0[_wgslsmith_index_u32(106167u, 3u)])) != true), ~_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(3564u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, 13134u) & vec3<u32>(u_input.a.x, 45739u, u_input.a.x)));
    global0 = array<bool, 3>();
    let var_1 = !select(!vec4<bool>(!global0[_wgslsmith_index_u32(var_0.x, 3u)], u_input.b <= u_input.b, all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(u_input.a.x, 3u)] || global0[_wgslsmith_index_u32(var_0.x, 3u)]), vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(21201u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], false)), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 3u)] & false, global0[_wgslsmith_index_u32(~u_input.a.x, 3u)], any(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(85717u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false), vec2<bool>(false, false)), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false), vec2<bool>(true, true))));
    global0 = array<bool, 3>();
    let var_2 = firstLeadingBit(u_input.c);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -700f, -415f, global1.x) * vec4<f32>(-418f, global1.x, global1.x, 1111f)), vec4<f32>(-272f, global1.x, -588f, global1.x))) * vec4<f32>(-202f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(704f, -1015f), -150f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, global1.x, 1000f, global1.x) + vec4<f32>(global1.x, 1695f, 2090f, 631f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -998f, -142f, 840f) * vec4<f32>(1421f, 991f, global1.x, -810f)), vec4<f32>(1806f, 1003f, global1.x, 260f))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(1399f, _wgslsmith_f_op_f32(342f - -361f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-248f, -399f) * -507f), global1.x, _wgslsmith_f_op_f32(abs(global1.x))))), _wgslsmith_f_op_vec4_f32(func_3()));
    let var_1 = any(select(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_3.b.x, 3u)], global0[_wgslsmith_index_u32(arg_3.b.x, 3u)], arg_3.c.a), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_3.b.x, 3u)], false), false), !vec3<bool>(global0[_wgslsmith_index_u32(24866u, 3u)], global0[_wgslsmith_index_u32(arg_3.b.x, 3u)], arg_3.e), select(vec3<bool>(true, arg_3.c.a, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_3.b.x, 3u)], global0[_wgslsmith_index_u32(103848u, 3u)]), vec3<bool>(true, true, arg_3.d.a))), vec3<bool>(all(!vec4<bool>(arg_3.c.a, true, arg_3.c.a, global0[_wgslsmith_index_u32(arg_3.b.x, 3u)])), var_0.x > -701f, true), select(vec3<bool>(!global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(arg_3.b.x << (u_input.a.x % 32u), 3u)], any(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), select(!vec3<bool>(false, arg_3.c.a, arg_3.e), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false, global0[_wgslsmith_index_u32(arg_3.b.x, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(3776u, 3u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4725u, 3u)])), vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 3u)])), vec3<bool>(arg_3.b.x > 85533u, arg_3.a.a & true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 3u)], false, global0[_wgslsmith_index_u32(arg_2.x, 3u)]))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0)) + var_0.wxx);
    let var_3 = vec3<bool>(true, all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(1u, 3u)]);
    var var_4 = Struct_1(~select(22840u, _wgslsmith_div_u32(u_input.a.x, 1u) | ~0u, _wgslsmith_add_i32(1i, 0i) > (14787i & u_input.b)), select(vec2<bool>(var_3.x | select(var_3.x, false, true), all(!var_3)), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] && arg_3.e, false), select(!vec2<bool>(arg_3.d.a, true), vec2<bool>(true, var_1), var_3.xx), !all(var_3.yx)), var_3.xy));
    return arg_2.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(0u, !select(vec2<bool>(global0[_wgslsmith_index_u32(12750u, 3u)] == global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(func_2(vec3<f32>(181f, global1.x, -1950f), vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<u32>(12173u, 71488u, u_input.a.x), Struct_3(Struct_2(true), vec2<u32>(5163u, 64691u), Struct_2(false), Struct_2(false), global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(117689u, 3u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true), global0[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true)), vec2<bool>(false, true)));
    var var_1 = Struct_1(~(~(~var_0.a ^ var_0.a)), select(var_0.b, var_0.b, !(!any(vec2<bool>(false, false)))));
    let var_2 = Struct_2(any(select(select(!vec3<bool>(true, var_1.b.x, false), vec3<bool>(true, var_1.b.x, var_0.b.x), vec3<bool>(false, false, false)), !vec3<bool>(var_0.b.x, var_0.b.x, var_1.b.x), vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.a & 0u, 3u)], true))));
    var var_3 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_1.a, 3u)]), ~u_input.a, Struct_2(false), var_2, any(!var_1.b));
    let var_4 = Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.a, var_3.b.x), firstTrailingBit(abs(vec3<u32>(var_0.a, 1u, 0u)))) <= _wgslsmith_dot_vec2_u32(~var_3.b, u_input.a));
    return Struct_1(62633u, select(!vec2<bool>(global1.x == global1.x, var_1.b.x), var_1.b, var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = -1530f;
    var var_2 = func_1();
    var var_3 = !(!vec3<bool>(true, !var_2.b.x || true, all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<bool>(false, true), vec2<bool>(var_0.b.x, false)))));
    let var_4 = Struct_2(true);
    let var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.x, 1408f)))), _wgslsmith_f_op_f32(f32(-1f) * -995f))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.wyz));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, var_2.a, 1u), vec3<u32>(37324u, u_input.a.x, 4294967295u), vec3<bool>(var_3.x, true, var_3.x)), abs(vec3<u32>(83142u, var_0.a, var_2.a))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 16498u), vec2<u32>(118090u, 1u)), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_2.a, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, var_0.a, var_0.a, var_0.a))) % vec3<u32>(32u))), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 1i, u_input.b, u_input.c), vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.c, u_input.b, -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1284f, 242f)), global0[_wgslsmith_index_u32(~0u, 3u)])), vec2<f32>(1686f, _wgslsmith_f_op_f32(floor(-346f))))));
}

