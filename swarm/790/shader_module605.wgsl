struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<f32, 1> = array<f32, 1>(139f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> f32 {
    global1 = array<f32, 1>();
    var var_0 = Struct_1(true, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(78182u, 4294967295u), 1u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 1u)])))));
    let var_1 = Struct_1(!(true && var_0.a), vec2<i32>(20360i, 37352i), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(652f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-924f, global1[_wgslsmith_index_u32(u_input.b, 1u)]), vec2<f32>(-1428f, var_1.d))))))));
    var_2 = vec2<f32>(var_0.d, var_0.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, var_2.x, global0.x)), -2162f);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    let var_0 = u_input.a.yyx;
    global0 = !(!(!vec3<bool>(true, true, any(global0.yx))));
    let var_1 = arg_2.a.c;
    let var_2 = vec2<bool>(!arg_1.x, ~u_input.b <= 89734u);
    global1 = array<f32, 1>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.e, firstLeadingBit(~u_input.e)), 1u)];
}

fn func_1() -> vec4<f32> {
    global1 = array<f32, 1>();
    let var_0 = -3618i;
    let var_1 = ~u_input.b;
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, global0.zz, Struct_2(Struct_1(global0.x, vec2<i32>(12350i, -19353i), u_input.a, global1[_wgslsmith_index_u32(var_1, 1u)])), vec2<i32>(28846i, 17265i))) * global1[_wgslsmith_index_u32(firstLeadingBit(var_1), 1u)]), 1444f) - 415f), global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 76800u, 8958u, 4294967295u), vec4<u32>(u_input.b, 0u, 0u, 9181u)))), 1u)], global1[_wgslsmith_index_u32(select(47944u, var_1, true), 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, 0i, -16224i) >> (~vec3<u32>(u_input.b, u_input.b, u_input.e.x) % vec3<u32>(32u)), u_input.a.xxz));
    global1 = array<f32, 1>();
    var var_1 = vec3<bool>(true, true, _wgslsmith_f_op_f32(-268f + 641f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 1u)]) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2168f + global1[_wgslsmith_index_u32(29426u, 1u)]), _wgslsmith_f_op_f32(1662f - -1689f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    let var_3 = Struct_1(!all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, var_1.x), global0.x), !vec3<bool>(false, false, var_1.x))), ~_wgslsmith_mod_vec2_i32(max(u_input.a.ww, vec2<i32>(0i, var_0)), firstLeadingBit(vec2<i32>(u_input.c, -26223i)) << (u_input.e % vec2<u32>(32u))), vec4<i32>((i32(-1i) * -2147483647i) ^ u_input.d, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0, 34780i, u_input.d), abs(u_input.a)), min(~(-2147483647i), ~var_0) >> (firstLeadingBit(u_input.e.x) % 32u), _wgslsmith_clamp_i32(17581i, select(-var_0, u_input.a.x, true), 0i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 1u)] - global1[_wgslsmith_index_u32(u_input.e.x, 1u)]), _wgslsmith_f_op_f32(1165f + 2095f))))));
    var var_4 = !select(vec4<bool>(true, true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), global0.x))), !vec4<bool>(!global0.x, true, true, false), select(select(vec4<bool>(var_3.a, true, var_1.x, global0.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, var_3.a, false, false), var_1.x), vec4<bool>(false, global0.x, false, true)), vec4<bool>(u_input.b >= 1u, var_3.a, global0.x & global0.x, all(vec4<bool>(var_3.a, true, true, true))), !any(vec4<bool>(global0.x, false, true, false))));
    global1 = array<f32, 1>();
    global0 = vec3<bool>(!all(!(!vec4<bool>(var_1.x, false, global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) > _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -703f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(~firstLeadingBit(var_0)), 1i), ~firstTrailingBit(firstTrailingBit(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), reverseBits(max(0u, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)))));
}

