struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: array<bool, 8>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)));

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)));

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> i32 {
    global2 = array<Struct_1, 9>();
    global3 = array<Struct_1, 6>();
    var var_0 = vec3<f32>(906f, 122f, arg_1.x);
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(665f, arg_1.x, -917f) * vec3<f32>(var_0.x, 490f, arg_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x)), var_0.x, 767f))));
    var_0 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))));
    return _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(-18059i, arg_0, -1i), vec3<i32>(-18350i, u_input.c, 18009i) ^ vec3<i32>(arg_0, 1i, arg_0))) ^ countOneBits(~min(vec3<i32>(-1i, 1i, -24668i), vec3<i32>(arg_0, arg_0, u_input.e))), vec3<i32>(arg_0, i32(-1i) * -arg_0, -3633i | arg_0));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<i32>(-u_input.c, _wgslsmith_clamp_i32(func_3(-u_input.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1196f, 614f), vec2<f32>(237f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(873f, -459f) + vec2<f32>(-435f, -387f)), vec2<bool>(false, false)))), u_input.c, -u_input.a));
    global3 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1219f)), _wgslsmith_f_op_f32(max(-1178f, -749f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(913f - 711f))), _wgslsmith_f_op_f32(653f * _wgslsmith_f_op_f32(f32(-1f) * -620f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1038f * 762f)))));
    let var_2 = global4[_wgslsmith_index_u32(~(~firstTrailingBit(~u_input.b)), 7u)];
    global4 = array<Struct_1, 7>();
    return Struct_1(!(!var_2.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec4<u32> {
    global0 = array<vec4<i32>, 12>();
    var var_0 = firstLeadingBit(vec3<u32>(1u, u_input.d, ~28350u));
    let var_1 = func_2(~var_0.x);
    var_0 = abs(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(22255u, var_0.x, u_input.d)) << (vec3<u32>(28116u, 50632u, u_input.b) % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(15744u, 39914u), vec2<u32>(u_input.b, 0u)), var_0.x)), ~2980u, u_input.d));
    global1 = array<bool, 8>();
    return (~(~(~vec4<u32>(0u, var_0.x, 34478u, var_0.x))) & (min(vec4<u32>(0u, 0u, 4294967295u, var_0.x) << (vec4<u32>(100311u, 0u, 3759u, u_input.b) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_0.x, u_input.d, 1u, 15775u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(18865u, 4294967295u, u_input.b, 1u) & vec4<u32>(0u, u_input.d, 1u, u_input.d), vec4<u32>(4294967295u, u_input.b, var_0.x, 0u)) % vec4<u32>(32u)))) >> (vec4<u32>(u_input.b, 49477u, ~0u, ~abs(54464u >> (0u % 32u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~u_input.b, 7u)];
    var var_1 = 13344u;
    global4 = array<Struct_1, 7>();
    global0 = array<vec4<i32>, 12>();
    global3 = array<Struct_1, 6>();
    global2 = array<Struct_1, 9>();
    var var_2 = ~vec4<u32>(~u_input.d, countOneBits(u_input.d), _wgslsmith_dot_vec4_u32(func_1(vec2<f32>(-970f, -1264f), -409f) | (vec4<u32>(u_input.b, u_input.d, 0u, u_input.b) >> (vec4<u32>(27155u, 19100u, 1u, 31172u) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(4291u, u_input.d, u_input.b, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)));
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(12386u, u_input.b)), var_2.zw), _wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(22306u, 0u)) & ~6012u, ~u_input.d));
}

