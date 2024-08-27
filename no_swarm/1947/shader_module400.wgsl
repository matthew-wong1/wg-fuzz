struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<i32> {
    global0 = array<vec2<i32>, 22>();
    global1 = Struct_4(-(~_wgslsmith_div_i32(-34583i, firstLeadingBit(global1.a))));
    let var_0 = -arg_1;
    var var_1 = Struct_5(Struct_2(0u, _wgslsmith_dot_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 69093u), u_input.a.zz), vec2<u32>(u_input.d, u_input.a.x) ^ vec2<u32>(27832u, u_input.d)), max(vec2<u32>(u_input.a.x, 50094u), u_input.a.wy >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))))), ~reverseBits(4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * arg_0))), Struct_4(abs(26019i)), Struct_4(-countOneBits(abs(0i))));
    let var_2 = Struct_5(var_1.a, _wgslsmith_clamp_u32(4294967295u, var_1.a.b, 41733u), _wgslsmith_f_op_f32(trunc(var_1.c)), Struct_4(~global1.a), Struct_4(13955i));
    return -min(vec4<i32>(u_input.c, 62100i, -12876i, -15397i), -select(vec4<i32>(-1i, var_0, 1i, u_input.b), vec4<i32>(2147483647i, 2147483647i, var_0, 2147483647i), vec4<bool>(false, true, false, true))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(~(-var_1.d.a), (var_1.d.a >> (var_1.a.b % 32u)) & ~32887i, ~(~16840i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -2147483647i, var_0), vec3<i32>(var_0, var_0, -1i)) & -var_0), _wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_1, 1i, -27573i, global1.a)) | ~vec4<i32>(1i, global1.a, global1.a, -1i), vec4<i32>(i32(-1i) * -1i, max(1i, arg_1), countOneBits(var_1.d.a), 2147483647i)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<i32>, 22>();
    global1 = Struct_4(-global1.a);
    let var_0 = reverseBits(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f)), select(-1i, -global1.a, true))) ^ vec4<i32>(13802i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global1.a, -2147483647i, global1.a)), -vec3<i32>(u_input.b, u_input.c, 20363i) ^ abs(vec3<i32>(global1.a, u_input.b, -1780i))), -(~(~0i)), global1.a);
    var var_1 = false;
    let var_2 = select(u_input.a.yyy, vec3<u32>(~_wgslsmith_mod_u32(u_input.a.x & 7844u, ~u_input.a.x), u_input.d, 5073u), 1026f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(412f * -690f), 1161f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(step(390f, -2455f)))));
    return Struct_1(firstTrailingBit(_wgslsmith_mod_i32(var_0.x, -var_0.x) << (~4294967295u % 32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~398i;
    var var_1 = func_2();
    var var_2 = Struct_1(var_1.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-621f, -517f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(1021f)), 458f), vec2<bool>(any(vec2<bool>(false, false)), true))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, -225f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-788f, 490f)))), _wgslsmith_f_op_f32(f32(-1f) * -1015f))));
    let var_4 = Struct_3(arg_1, func_2(), select(vec2<bool>(true, true), vec2<bool>(false & all(vec4<bool>(false, true, false, false)), var_3.x == _wgslsmith_f_op_f32(-var_3.x)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(all(vec2<bool>(false, false)), true))), global0[_wgslsmith_index_u32(u_input.a.x, 22u)]);
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(519f, -702f) * vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1048f, -1214f))))))));
    var var_2 = func_1(u_input.b, Struct_2(4294967295u, abs(reverseBits(1u))));
    var var_3 = vec4<u32>(var_2.b, 1u, select(var_0, var_2.b, all(vec2<bool>(true, true))), ~firstLeadingBit(var_2.a));
    var_2 = Struct_2(~firstTrailingBit(var_2.a), _wgslsmith_div_u32(firstLeadingBit(var_3.x), 1u));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-156f, -553f)), _wgslsmith_f_op_f32(select(1078f, _wgslsmith_f_op_f32(-1228f - var_1.x), all(vec2<bool>(true, false))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, var_1.x)), vec2<f32>(var_1.x, var_1.x), vec2<bool>(true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))));
}

