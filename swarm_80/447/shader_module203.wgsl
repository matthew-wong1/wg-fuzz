struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec3<f32> = vec3<f32>(988f, -357f, 116f);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(true, false, false), -451f), Struct_1(vec3<bool>(false, false, false), 647f), Struct_1(vec3<bool>(false, false, false), -463f), Struct_1(vec3<bool>(true, false, true), -178f), Struct_1(vec3<bool>(true, true, false), 787f), Struct_1(vec3<bool>(true, false, false), 386f), Struct_1(vec3<bool>(false, true, false), 555f), Struct_1(vec3<bool>(false, false, false), 1363f), Struct_1(vec3<bool>(false, false, false), 272f), Struct_1(vec3<bool>(false, true, false), 668f), Struct_1(vec3<bool>(false, false, false), 348f), Struct_1(vec3<bool>(false, true, true), -574f), Struct_1(vec3<bool>(false, false, false), -156f));

var<private> global2: array<u32, 16> = array<u32, 16>(39005u, 24834u, 0u, 4294967295u, 1u, 42508u, 47166u, 64709u, 11251u, 0u, 41623u, 1u, 1u, 37147u, 0u, 1u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> u32 {
    global2 = array<u32, 16>();
    var var_0 = true;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~(u_input.a << (global2[_wgslsmith_index_u32(35949u, 16u)] % 32u))), countOneBits(4294967295u)), ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 105580u), select(vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 0u), vec2<bool>(false, false)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(any(arg_1.a));
    var var_1 = Struct_2(!(~4294967295u <= u_input.a));
    var var_2 = Struct_1(vec3<bool>(true | !(global2[_wgslsmith_index_u32(122467u, 16u)] <= global2[_wgslsmith_index_u32(19720u, 16u)]), !(_wgslsmith_f_op_f32(105f + arg_1.b) == -666f), var_1.a), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(730f)) * 1000f))))));
    let var_3 = global1[_wgslsmith_index_u32(~(~func_3()), 13u)];
    let var_4 = Struct_2(true);
    return abs(0u);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = -1i;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(global0.zx + global0.zx), Struct_1(arg_2, global0.x), Struct_1(vec3<bool>(!any(vec2<bool>(arg_1.x, true)), !(!arg_2.x), true), _wgslsmith_f_op_f32(min(913f, global0.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yz - _wgslsmith_f_op_vec2_f32(global0.yx - vec2<f32>(974f, global0.x))) - vec2<f32>(-831f, 402f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(123f, -1097f))));
    var var_3 = Struct_2(false);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-670f, 933f), _wgslsmith_f_op_vec2_f32(-global0.xz))))));
    return Struct_2(arg_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global1 = array<Struct_1, 13>();
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1f, 521f)));
    var var_0 = Struct_2(false);
    let var_1 = Struct_1(vec3<bool>(var_0.a, func_1(min(1u, func_3()), vec2<bool>(false, false), !select(vec3<bool>(true, false, arg_1.a), vec3<bool>(true, arg_0.a, var_0.a), vec3<bool>(arg_0.a, false, false))).a, var_0.a), global0.x);
    let var_2 = select(!arg_2.a, select(vec3<bool>(!arg_1.a, arg_1.a, var_1.a.x), select(vec3<bool>(var_0.a | true, !arg_2.a.x, true), vec3<bool>(true, all(var_1.a), true), false), !select(vec3<bool>(true, var_1.a.x, arg_2.a.x), var_1.a, any(vec4<bool>(false, var_1.a.x, arg_0.a, false)))), true);
    return !(!arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(~(~(~select(vec2<i32>(1i, 1i), vec2<i32>(-34444i, -32737i), vec2<bool>(false, false)))), ~(-(~vec2<i32>(1i, 2147483647i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-227f)))), global0.x, -219f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, 1056f, global0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-957f, global0.x, global0.x) - vec3<f32>(-113f, -1080f, global0.x))))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))))));
    var var_2 = abs(vec4<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 61603u, u_input.a, select(0u, ~59841u, 797f != _wgslsmith_f_op_f32(-var_1.x))));
    var_2 = select(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 28920u, u_input.a, var_2.x), vec4<u32>(4294967295u, u_input.a, var_2.x, 17269u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 50618u, var_2.x), vec4<u32>(var_2.x, 19203u, 4294967295u, 4294967295u))), reverseBits(vec4<u32>(1u, var_2.x, ~7229u, 1u)), true) >> (max(vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1929u, 16u)], 27900u), 16u)], max(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 16u)]), 1u, 29743u) >> (~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(42238u, 16u)], u_input.a, 4623u)) % vec4<u32>(32u)), ~vec4<u32>(max(78074u, 89334u), u_input.a, 1599u | u_input.a, 0u)) % vec4<u32>(32u));
    let var_3 = select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(select(true, func_4(func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60899u, 16u)], 16u)], vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_2(false), Struct_1(vec3<bool>(false, false, true), var_1.x)), any(vec3<bool>(true, true, true))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_4 = vec4<u32>(reverseBits(var_2.x), 52864u ^ ~u_input.a, abs(_wgslsmith_clamp_u32(~firstTrailingBit(52532u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18544u, 16u)], 16u)] & global2[_wgslsmith_index_u32(0u, 16u)], ~global2[_wgslsmith_index_u32(u_input.a, 16u)]), ~reverseBits(6759u))), 1u);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), global0.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -547f));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

