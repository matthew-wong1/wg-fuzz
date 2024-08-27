struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = true;
    global3 = -2147483647i;
    let var_2 = ~(-1i);
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1538f)) * -756f);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-411f + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(4694i))) - _wgslsmith_f_op_f32(185f * arg_0.x)))))));
    global3 = 55242i;
    let var_0 = -(~firstTrailingBit(-max(vec3<i32>(-14648i, global1.a, global1.a), vec3<i32>(global1.a, global1.a, global2.a))));
    var var_1 = !((~arg_1 << (35417u % 32u)) <= _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(1u, arg_1, 4294967295u, 1u)));
    var var_2 = vec4<bool>(true, true, true, true);
    return global0[_wgslsmith_index_u32(0u, 7u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(vec2<f32>(450f, _wgslsmith_f_op_f32(select(-824f, _wgslsmith_f_op_f32(-1452f * -1163f), true))), ~_wgslsmith_dot_vec2_u32(~abs(u_input.a.yy), ~select(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true))));
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), _wgslsmith_f_op_f32(func_3(Struct_1(2147483647i))), true)))), _wgslsmith_f_op_f32(ceil(1000f))), u_input.a.x);
    var var_2 = _wgslsmith_div_vec3_u32(~firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.yzw, vec3<u32>(u_input.a.x, u_input.a.x, 1u))), ~(~vec3<u32>(firstTrailingBit(4294967295u), 0u, u_input.a.x)));
    var_2 = _wgslsmith_add_vec3_u32(u_input.a.wzx, ~reverseBits(vec3<u32>(60394u, var_2.x, 4294967295u) ^ u_input.a.wxz)) >> (min(u_input.a.xzz, vec3<u32>(abs(~1u), u_input.a.x, 10289u)) % vec3<u32>(32u));
    global4 = 797f;
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, 1556f)), vec2<f32>(617f, -272f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-737f - -337f)))), _wgslsmith_sub_u32(var_2.x, 0u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = u_input.a.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(33253i))))), 1308f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(625f + 2066f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(348f, -1299f, arg_2.x))))) * -609f));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -481f);
    var var_3 = func_2(var_1, u_input.a.x);
    global3 = ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(22143i, global2.a, 18994i) | vec3<i32>(arg_1.a, 1i, 65263i), vec3<i32>(global1.a, global1.a, 853i)) & var_3.a);
    return -(max(countOneBits(vec3<i32>(global2.a, 1i, 2147483647i)), abs(vec3<i32>(0i, arg_1.a, global1.a))) & -vec3<i32>(global2.a, var_3.a, 0i)) ^ ~vec3<i32>(select(_wgslsmith_sub_i32(-1i, 2147483647i), ~var_3.a, all(vec3<bool>(arg_2.x, false, false))), firstLeadingBit(var_3.a), var_3.a);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = vec4<bool>(true, all(vec2<bool>(true, true)), true, false | !select(false, arg_1.x <= 1i, false));
    global4 = -1000f;
    global1 = arg_2;
    let var_1 = global0[_wgslsmith_index_u32(1u, 7u)];
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1096f * 676f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1060f)))))), 1u);
    return StorageBuffer(~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = countOneBits(reverseBits(firstTrailingBit(_wgslsmith_sub_i32(global1.a, global1.a))) ^ 1i);
    global4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(step(-1000f, -356f)))) + -1011f)));
    var var_0 = global0[_wgslsmith_index_u32(~((u_input.a.x ^ u_input.a.x) >> (~u_input.a.x % 32u)), 7u)];
    var var_1 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(0i == global2.a, true, true, true), true);
    let x = u_input.a;
    s_output = func_5(func_4(4294967295u, func_1(), vec2<bool>(true, any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x))), global0[_wgslsmith_index_u32(~u_input.a.x, 7u)]), (_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 7017i, 44239i) ^ vec3<i32>(55020i, global1.a, -1i), vec3<i32>(global1.a, var_0.a, global2.a) | vec3<i32>(-2147483647i, -29297i, global2.a)) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, 75208u)) % vec3<u32>(32u))) | ~abs(vec3<i32>(17835i, var_0.a, -2147483647i)), global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_sub_u32(54557u, _wgslsmith_mult_u32(24511u, u_input.a.x))), 7u)]);
}

