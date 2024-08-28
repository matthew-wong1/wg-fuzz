struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-461f, 1346f, 1652f, 307f, 103f, 1037f, -2077f, -926f, -605f, 493f, 304f, 888f, 1536f, 636f, 874f, -1069f, -1367f, -980f, -727f, -583f, 1198f, -1388f);

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> f32 {
    global0 = array<f32, 22>();
    var var_0 = -13845i;
    global1 = array<Struct_2, 15>();
    var_0 = 0i;
    let var_1 = vec4<bool>((50950u >= arg_2.x) || (!(!arg_0) || select(!arg_0, select(arg_0, arg_0, false), all(vec3<bool>(arg_0, arg_0, arg_0)))), true, any(select(vec2<bool>(false, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, arg_0))) & arg_0, any(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, false, arg_0), false)) || any(vec4<bool>(true, false, any(vec3<bool>(false, false, true)), !arg_0)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f))));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.a) ^ u_input.a, 22u)]), _wgslsmith_f_op_f32(step(-1405f, _wgslsmith_f_op_f32(func_3(var_0.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -342f), vec4<u32>(1u, arg_0.x, 25760u, arg_0.x), _wgslsmith_mod_vec2_u32(arg_0.zw, vec2<u32>(25842u, u_input.a))), vec2<u32>(4294967295u, 4949u) ^ ~vec2<u32>(78347u, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1041f, 357f, global0[_wgslsmith_index_u32(u_input.a, 22u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, -464f, global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]) - vec4<f32>(-1000f, -758f, -784f, -211f))))))), (firstLeadingBit(1i) >> (~min(arg_0.x, 41618u) % 32u)) > _wgslsmith_clamp_i32(_wgslsmith_sub_i32(278i, ~0i), _wgslsmith_add_i32(~4371i, -6420i), select(-12761i, _wgslsmith_sub_i32(0i, 27779i), false))));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_2, 15>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-727f, 1f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(-467f, _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, 7544u, 0u, u_input.a)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(60757u, u_input.a), vec2<u32>(1u, 46525u)), 22u)] + _wgslsmith_f_op_f32(-444f * 384f)))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -1285f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, -506f, -1665f)))))));
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 22u)]) <= -2281f;
    global0 = array<f32, 22>();
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(37841u > u_input.a, Struct_1(585f, vec4<u32>(11888u, 0u, u_input.a, 0u), vec2<u32>(1u, 0u)), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(-442f, 1834f, -1000f, global0[_wgslsmith_index_u32(10193u, 22u)]), vec4<f32>(var_1.x, var_0, var_1.x, global0[_wgslsmith_index_u32(u_input.a, 22u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-723f, -738f)) * _wgslsmith_f_op_f32(-806f - -1129f))))), select(max(vec4<u32>(u_input.a, 1u, _wgslsmith_mult_u32(42396u, u_input.a), 6507u), reverseBits(firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 67287u)))), vec4<u32>(46995u, ~u_input.a, ~0u, u_input.a) | abs(abs(vec4<u32>(u_input.a, 43700u, u_input.a, u_input.a))), true), select(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 32376u), max(vec2<u32>(0u, 36373u), vec2<u32>(u_input.a, 5517u))), vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(16462u, u_input.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, 84714u))), vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_4 {
    global0 = array<f32, 22>();
    return Struct_4(!(!arg_0.a | any(select(vec4<bool>(arg_0.a, true, arg_0.a, true), vec4<bool>(false, arg_0.a, false, arg_0.a), arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), false)));
    var var_1 = true;
    global1 = array<Struct_2, 15>();
    global0 = array<f32, 22>();
    let var_2 = vec3<u32>(_wgslsmith_div_u32(2586u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, 1u), ~vec3<u32>(18597u, u_input.a, u_input.a)) << (min(u_input.a, u_input.a >> (u_input.a % 32u)) % 32u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(22948u, 37177u, 5340u, 1u), ~vec4<u32>(4294967295u, 0u, u_input.a, 36062u))), u_input.a);
    let var_3 = vec3<bool>(~(~(~var_2.x)) == ~65809u, true, !((1u ^ firstTrailingBit(var_2.x)) == 4294967295u));
    let var_4 = func_4(global1[_wgslsmith_index_u32(4294967295u, 15u)], func_1(), Struct_3(func_1(), global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_2, var_2), var_2.x << (u_input.a % 32u))), 22u)]), vec3<u32>(max(var_2.x, u_input.a), ~(~(~var_2.x)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(var_2.x), max(var_2.x, 64284u)), 70323u)));
    let x = u_input.a;
    s_output = StorageBuffer(-359f, ~(abs(~var_2.x) | ~20170u), select(var_2.xx, var_2.yx, select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, false), true), vec2<bool>(true, !var_3.x), (u_input.a & u_input.a) <= var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(10528u, 22u)])))) * vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(var_2.x, 65181u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(ceil(615f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(37259u, 22u)]), _wgslsmith_f_op_f32(483f * global0[_wgslsmith_index_u32(57697u, 22u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(42634u, 22u)], 1000f)), true))));
}

