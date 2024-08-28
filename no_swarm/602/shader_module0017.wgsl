struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.b.ww, arg_2.b.zz)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(0u, 5u)], arg_2.d))), _wgslsmith_div_vec2_f32(vec2<f32>(1305f, 1278f), arg_3.b.wy), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.b.wz - _wgslsmith_div_vec2_f32(arg_3.b.wx, arg_3.b.yx))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(942f + 112f), _wgslsmith_f_op_f32(f32(-1f) * -519f))))));
    return vec2<u32>(u_input.a.x, u_input.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(~(~(u_input.a.x | 0u) | ~u_input.a.x), true, ~(62163u << (~u_input.a.x % 32u)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, 1u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 7095u, 4294967295u, 4294967295u), ~(~vec4<u32>(0u, 22697u, 0u, var_0.c))) % 32u), 21514u);
    let var_2 = _wgslsmith_sub_vec2_u32(min(u_input.a.wz, ~vec2<u32>(0u, u_input.a.x)) ^ vec2<u32>(101176u, 136367u), _wgslsmith_div_vec2_u32(func_3(Struct_2(1u, var_0.b, 22058u), vec3<i32>(1i, -27441i, -2147483647i), Struct_1(vec4<i32>(-2147483647i, 28605i, 2147483647i, 2147483647i), vec4<f32>(global0[_wgslsmith_index_u32(31355u, 5u)], 811f, 1000f, 699f), -769f, 320f), Struct_1(vec4<i32>(-125i, -2147483647i, 33868i, 1i), vec4<f32>(-941f, 851f, 1280f, -968f), global0[_wgslsmith_index_u32(0u, 5u)], -516f)), vec2<u32>(2834u, 0u) ^ u_input.a.wx) << (~func_3(Struct_2(4294967295u, var_0.b, u_input.a.x), vec3<i32>(0i, 2147483647i, 1i), Struct_1(vec4<i32>(23698i, -1i, 43051i, 60757i), vec4<f32>(627f, global0[_wgslsmith_index_u32(var_0.a, 5u)], 1286f, global0[_wgslsmith_index_u32(1070u, 5u)]), 414f, global0[_wgslsmith_index_u32(var_0.a, 5u)]), Struct_1(vec4<i32>(0i, 11661i, 208i, 6404i), vec4<f32>(global0[_wgslsmith_index_u32(var_0.c, 5u)], 169f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -1477f), 206f, -552f)) % vec2<u32>(32u))) & u_input.a.zw;
    var_1 = abs(4294967295u);
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -25223i), firstTrailingBit(i32(-1i) * -17695i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-6602i, 2147483647i, 88039i, 0i), abs(vec4<i32>(2147483647i, 1i, 5069i, -1i))), _wgslsmith_div_i32(-(~(-72599i)), 7847i), _wgslsmith_mod_i32(23952i, countOneBits(abs(-1i)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_2.x, 5u)])) * -869f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1424f - global0[_wgslsmith_index_u32(20879u, 5u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64901u, 5u)] - global0[_wgslsmith_index_u32(var_0.a, 5u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24695u, 5u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c, 5u)])))), global0[_wgslsmith_index_u32(~var_0.a, 5u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 5u)]));
    return Struct_1(-vec4<i32>(1i, 52888i, -var_3.a.x, var_3.a.x >> (60424u % 32u)) ^ var_3.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(abs(101f))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~var_2.x, 5u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(max(1551f, var_3.c)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(var_3.b)))), vec4<bool>(17558u < firstTrailingBit(var_0.a), true, true, false))), -1005f, 1084f);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    return Struct_2(~u_input.a.x, ~(~firstLeadingBit(1u)) <= (u_input.a.x >> ((146474u ^ u_input.a.x) % 32u)), 58437u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    global0 = array<f32, 5>();
    let var_0 = arg_0;
    global0 = array<f32, 5>();
    var var_1 = !vec4<bool>(var_0.b, true, !(!(2429i < arg_1.a.x)), var_0.b);
    var_1 = select(!(!vec4<bool>(arg_0.b | false, false, global0[_wgslsmith_index_u32(var_0.c, 5u)] >= global0[_wgslsmith_index_u32(0u, 5u)], any(var_1.www))), select(!(!(!vec4<bool>(false, var_1.x, true, false))), select(select(vec4<bool>(arg_0.b, var_1.x, false, arg_0.b), !vec4<bool>(true, true, false, arg_0.b), select(vec4<bool>(false, true, true, var_0.b), vec4<bool>(var_1.x, arg_0.b, false, true), var_0.b)), !vec4<bool>(false, true, true, var_0.b), !(!var_0.b)), select(!select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_0.b, arg_0.b, false, var_0.b), vec4<bool>(var_1.x, var_0.b, true, var_0.b)), select(vec4<bool>(var_1.x, var_0.b, var_1.x, var_0.b), !vec4<bool>(arg_0.b, arg_0.b, var_1.x, true), true), select(select(vec4<bool>(arg_0.b, false, true, var_0.b), vec4<bool>(var_1.x, false, false, true), arg_0.b), !vec4<bool>(var_1.x, var_0.b, var_0.b, false), false))), vec4<bool>(false, false, !(!var_0.b), (var_0.b | arg_0.b) && !arg_0.b));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_1(~vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~0u, 5u)], func_2().c, 161f, 870f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(24407u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, global0[_wgslsmith_index_u32(~48630u, 5u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24240u, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(92731u, 5u)] - -987f)))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-35717i, 2147483647i), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 45625i, -8876i), vec4<i32>(-2147483647i, 2147483647i, -30140i, -1i))), vec3<i32>(1i, 1i, 1i)) ^ (vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 2873i, 2147483647i)));
    let var_1 = !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), var_0.b), !select(vec4<bool>(true, true, var_0.b, true), vec4<bool>(true, false, false, var_0.b), true), !vec4<bool>(var_0.b, var_0.b, false, var_0.b)), select(select(select(vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(false, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, var_0.b, true)), !vec4<bool>(var_0.b, var_0.b, var_0.b, false), !vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), vec4<bool>(any(vec4<bool>(false, var_0.b, var_0.b, var_0.b)), true, false, !var_0.b), !(!vec4<bool>(false, false, var_0.b, var_0.b))), true);
    let var_2 = var_0;
    global0 = array<f32, 5>();
    let var_3 = any(var_1.xwz) & true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, 375f, global0[_wgslsmith_index_u32(50579u, 5u)], 226f) * vec4<f32>(global0[_wgslsmith_index_u32(var_0.c, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -502f, -162f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, global0[_wgslsmith_index_u32(22979u, 5u)], -845f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 5u)], 178f, global0[_wgslsmith_index_u32(1u, 5u)], 547f))) - vec4<f32>(global0[_wgslsmith_index_u32(~var_0.c, 5u)], _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)]), -1008f))));
}

