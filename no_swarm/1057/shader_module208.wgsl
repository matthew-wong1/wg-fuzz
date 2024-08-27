struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = !arg_1.wz;
    var var_1 = Struct_1(arg_2.x, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(6754u, 0u, 9981u)), ~(~vec3<u32>(1u, 114938u, 0u))));
    global0 = array<i32, 27>();
    var var_2 = vec3<i32>(~43999i, _wgslsmith_dot_vec4_i32(~(-reverseBits(u_input.a)), vec4<i32>(-6156i, u_input.b.x, ~global0[_wgslsmith_index_u32(54232u, 27u)] << (16816u % 32u), firstTrailingBit(firstTrailingBit(2147483647i)))), firstLeadingBit(~(-global0[_wgslsmith_index_u32(~var_1.b.x, 27u)])));
    var var_3 = var_1.b.yz;
    return ~abs(26854u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(firstLeadingBit(abs(min(~vec4<u32>(arg_0, 61337u, 0u, arg_0), vec4<u32>(4294967295u, arg_0, arg_0, 94199u)))), vec3<u32>(4294967295u, _wgslsmith_sub_u32(func_3(false, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, 2047f))), countOneBits(arg_0) << (_wgslsmith_mod_u32(arg_0, 44504u) % 32u)), 23356u), -u_input.a.yxz, 0u);
    var var_1 = vec4<bool>(true, any(vec2<bool>(true, true)), false, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), true)));
    var var_2 = _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-3278f, 546f)), 1258f))));
    let var_3 = countOneBits(~(-1i)) << (firstTrailingBit(~_wgslsmith_div_u32(~1u, 1u | arg_0)) % 32u);
    var_2 = -1000f;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1028f), -870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f + -365f)), var_0.c.x != _wgslsmith_mod_i32(u_input.a.x, var_0.c.x))) - 273f), vec3<u32>(124586u, var_0.a.x, var_0.d));
}

fn func_1() -> f32 {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = func_2(~1u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 816f)) * _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-298f * 116f))))), _wgslsmith_f_op_f32(var_0.a - -1207f), var_0.a);
    global0 = array<i32, 27>();
    return -219f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -919f)))))));
    let var_1 = func_2(firstLeadingBit(4294967295u) >> (func_2(0u).b.x % 32u));
    var var_2 = Struct_2(~firstLeadingBit(firstLeadingBit(~vec4<u32>(53733u, 49264u, var_1.b.x, var_1.b.x))), firstLeadingBit(var_1.b >> ((vec3<u32>(1115u, var_1.b.x, 32475u) & vec3<u32>(var_1.b.x, 4294967295u, 4294967295u)) % vec3<u32>(32u))) | vec3<u32>(var_1.b.x, _wgslsmith_mod_u32(1u >> (var_1.b.x % 32u), 39097u), var_1.b.x), ~(~u_input.a.ywy), 29234u);
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.a, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a * var_3.a)))), all(vec3<bool>(false, false, true)) | all(vec2<bool>(true, true)))));
    let var_5 = Struct_2(~vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, 4294967295u, ~var_1.b.x), 0u, 1u, _wgslsmith_mod_u32(min(34781u, 90407u), var_3.b.x)), ~var_2.b, -var_2.c ^ (countOneBits(var_2.c) << (var_2.b % vec3<u32>(32u))), ~0u & (~(~89167u) << (~(var_2.d >> (10164u % 32u)) % 32u)));
    let var_6 = vec3<u32>(select(var_5.b.x, 1u, true), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, var_3.b.x), var_3.b.x), ~(~vec2<u32>(var_3.b.x, 0u)))), 4294967295u);
    var var_7 = -(abs(u_input.a.wwx) << (firstTrailingBit(var_3.b) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 111163u, vec4<u32>(var_3.b.x, ~min(func_2(73794u).b.x, _wgslsmith_dot_vec4_u32(var_5.a, var_5.a)), 36760u, ~18181u));
}

