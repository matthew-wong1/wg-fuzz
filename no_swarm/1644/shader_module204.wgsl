struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-37110i);

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    global0 = array<i32, 1>();
    var var_0 = arg_1;
    let var_1 = _wgslsmith_clamp_vec3_u32(abs(abs(vec3<u32>(46108u, 18985u, u_input.d) >> (max(vec3<u32>(25701u, u_input.d, 0u), vec3<u32>(15512u, 33659u, 1u)) % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u ^ u_input.d, u_input.d, ~u_input.d), countOneBits(~vec3<u32>(25444u, u_input.d, u_input.c)), ~min(vec3<u32>(u_input.c, u_input.d, u_input.d), vec3<u32>(u_input.c, 4294967295u, u_input.d))), firstLeadingBit(~vec3<u32>(5551u, ~u_input.c, reverseBits(4294967295u))));
    global0 = array<i32, 1>();
    let var_2 = select(select(!select(vec4<bool>(false, true, var_0.x, arg_1.x), vec4<bool>(var_0.x, arg_1.x, var_0.x, var_0.x), true), select(select(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, true, true, var_0.x), var_0.x), select(vec4<bool>(var_0.x, var_0.x, arg_1.x, var_0.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(var_0.x, false, false, var_0.x)), false == var_0.x), select(vec4<bool>(false, arg_1.x, true, true), select(vec4<bool>(arg_1.x, false, var_0.x, false), vec4<bool>(true, false, var_0.x, true), vec4<bool>(false, var_0.x, true, false)), arg_0.b.x <= global0[_wgslsmith_index_u32(u_input.c, 1u)]), vec4<bool>(any(vec2<bool>(var_0.x, true)), var_0.x, global0[_wgslsmith_index_u32(0u, 1u)] <= arg_0.b.x, true)), !select(!vec4<bool>(var_0.x, arg_1.x, var_0.x, true), select(vec4<bool>(arg_1.x, var_0.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, true), true), !vec4<bool>(var_0.x, var_0.x, false, true))), select(vec4<bool>(true && var_0.x, true, false, true), select(select(!vec4<bool>(var_0.x, false, true, arg_1.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), all(vec3<bool>(true, var_0.x, true))), select(!vec4<bool>(false, true, true, var_0.x), vec4<bool>(arg_1.x, false, false, arg_1.x), arg_1.x), !select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(var_0.x, false, false, true), var_0.x)), vec4<bool>(false, any(!arg_1), all(!vec4<bool>(var_0.x, false, false, true)), !var_0.x)), !any(!(!vec3<bool>(false, var_0.x, true))));
    return _wgslsmith_f_op_f32(ceil(1111f));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1115f, -423f, -348f))), -u_input.b.wyw, firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -414f, -335f), vec3<f32>(660f, -117f, -134f), vec3<bool>(false, false, true)))), select(vec2<bool>(false, true), vec2<bool>(true, false), false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + -367f)), 1000f);
    var var_1 = Struct_4(!any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(674f - var_0.b) + -1188f)), _wgslsmith_mod_vec2_i32(vec2<i32>(max(13205i, -1i), 68585i), ~u_input.b.zw >> (max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 730f)))))), vec3<i32>(_wgslsmith_div_i32(arg_0, -14170i), firstLeadingBit(41897i), ~(-48783i)) | u_input.b.wyx, arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.b, -539f))), !(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(55772u, u_input.d, u_input.c, 49278u), vec4<u32>(4294967295u, 0u, u_input.d, 1u)), 1u)]) == 0i));
    global0 = array<i32, 1>();
    var var_2 = var_1.c;
    global1 = array<vec2<i32>, 1>();
    return var_1.b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = array<i32, 1>();
    let var_0 = func_2(-_wgslsmith_mod_i32(-17569i, ~(35426i << (arg_2.x % 32u))));
    var var_1 = select(vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)), true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, any(vec4<bool>(-288f != var_0.a, true, false, all(vec4<bool>(true, false, true, true))))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true)) && any(vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), !vec3<bool>(true, any(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, true)))));
    var var_2 = any(!select(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, false, false, var_1.x), var_1.x), !var_1.x), vec4<bool>(true, true, false, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-arg_0.a);
    return vec2<u32>(0u, min(u_input.d, arg_2.x));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1053f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -870f)), _wgslsmith_f_op_f32(step(-2442f, -489f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(f32(-1f) * -154f), -1848f)))), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, 30823u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(arg_2.x, arg_2.x, 1u)) % 32u), 1u)] & u_input.a, arg_0, countOneBits(u_input.b.x)), ~(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(705f, -1054f, -417f), vec3<f32>(-477f, 183f, 483f))))), vec3<f32>(-2388f, _wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(-739f - -949f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(906f)) + -1195f), _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(-1077f + 356f)), _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(-2227f, 1035f, 246f), u_input.b.wzx, global0[_wgslsmith_index_u32(u_input.c, 1u)], vec3<f32>(396f, 359f, 1089f)), vec2<bool>(true, true)))), !select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)))));
    let var_2 = min(~75475u, arg_2.x) >= _wgslsmith_mult_u32(1u, 4294967295u);
    let var_3 = -vec3<i32>(abs(var_1.c), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(reverseBits(37109u) | ~arg_2.x, 1u)], func_2(-33646i).b.x), 1i);
    let var_4 = func_2(_wgslsmith_clamp_i32(~(~firstTrailingBit(global0[_wgslsmith_index_u32(0u, 1u)])), -39209i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_sub_u32(reverseBits(37722u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.c, 1u), vec4<u32>(arg_2.x, 0u, 1u, u_input.c))), 1u), 1u)]));
    return Struct_2(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-948f - 1425f)) - _wgslsmith_f_op_f32(trunc(var_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(vec3<bool>(!(_wgslsmith_add_u32(79058u, u_input.c) != 1u), true, true));
    let var_1 = -990f;
    global0 = array<i32, 1>();
    let var_2 = func_4(-40729i, vec2<bool>(true, true), ~vec3<u32>(abs(u_input.c), 1u, _wgslsmith_dot_vec2_u32(func_1(Struct_3(vec3<f32>(-416f, 532f, var_1), vec3<i32>(u_input.a, u_input.b.x, u_input.a), global0[_wgslsmith_index_u32(u_input.d, 1u)], vec3<f32>(263f, -135f, var_1)), Struct_2(-1605f, -3097f), vec2<u32>(26873u, 27974u)), ~vec2<u32>(20004u, u_input.d))));
    let var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1629f, 852f, -630f) * vec3<f32>(var_1, 761f, -831f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(634f, var_1, -698f), vec3<f32>(var_2.a, 728f, -152f))) - vec3<f32>(1000f, 1115f, var_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1491f, 1298f, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(953f, 1616f, var_1)))))), u_input.b.zwx, 29249i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-970f, -1000f)))), _wgslsmith_f_op_f32(floor(-1035f))))));
    global1 = array<vec2<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.d))), var_3.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(floor(807f)), _wgslsmith_f_op_f32(-func_4(1i, vec2<bool>(false, true), vec3<u32>(45952u, u_input.d, 4880u)).b)) - vec3<f32>(var_1, var_3.d.x, var_3.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(447f * _wgslsmith_f_op_f32(trunc(var_2.b))) - var_2.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_3, vec2<bool>(false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2202f, _wgslsmith_f_op_f32(-1140f * var_3.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_3.a.x) * _wgslsmith_f_op_f32(ceil(var_2.b)))), var_2.a));
}

