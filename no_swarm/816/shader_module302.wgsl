struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, false, true, true, false, true, false, false);

var<private> global1: array<f32, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = vec4<i32>(17299i, u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(max(_wgslsmith_mod_i32(1i, -1382i), abs(-48631i)), _wgslsmith_clamp_i32(u_input.e, -1189i, 0i)), _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.e, u_input.e))))), (i32(-1i) * -2147483647i) ^ (u_input.e | u_input.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(1u, 2u)], -527f, 504f))) * vec3<f32>(-2055f, _wgslsmith_f_op_f32(-1000f * -247f), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(69987u, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, -676f, global1[_wgslsmith_index_u32(u_input.b, 2u)]) - vec3<f32>(-1000f, global1[_wgslsmith_index_u32(4294967295u, 2u)], 413f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 2u)], -1763f, global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<f32>(1472f, -1000f, global1[_wgslsmith_index_u32(0u, 2u)])))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], 295f), vec3<f32>(1000f, -667f, global1[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 412f, -1876f) + vec3<f32>(312f, -1146f, -2372f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(43106u, 2u)] * 796f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 2u)] * -422f)), global1[_wgslsmith_index_u32(66031u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 67326u), vec4<u32>(u_input.b, u_input.a.x, 36448u, u_input.a.x)) % 32u), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 2u)] * 1163f))))));
    var_0 = vec4<i32>(u_input.e, firstTrailingBit(~max(var_0.x, -u_input.e)), -2147483647i, ~35469i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1374f);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(round(-431f)), vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], false, global0[_wgslsmith_index_u32(10958u, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)])), !(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] & true)));
    return 1f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> Struct_5 {
    return Struct_5(-712f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * _wgslsmith_f_op_f32(func_3())), ~_wgslsmith_mod_vec3_i32(~arg_1.zxy, arg_1.zzw), Struct_2(~countOneBits(vec3<i32>(-31067i, -1i, u_input.e)), -(~firstTrailingBit(-17279i))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(arg_1 >> (arg_1 % vec3<u32>(32u))), ~arg_1), vec3<u32>(~40647u, 4294967295u, firstLeadingBit(29816u))) ^ u_input.c;
    let var_1 = ~(min(abs(select(vec3<u32>(50925u, arg_1.x, 46390u), vec3<u32>(4294967295u, u_input.a.x, arg_1.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(arg_1.x, 10u)], false))), arg_1) | _wgslsmith_mult_vec3_u32(min(arg_1 ^ vec3<u32>(u_input.b, 4294967295u, u_input.a.x), min(vec3<u32>(32654u, arg_1.x, u_input.d.x), arg_1)), countOneBits(select(vec3<u32>(u_input.a.x, 1u, 50835u), arg_1, false))));
    global1 = array<f32, 2>();
    var var_2 = ~max(vec4<i32>(-43703i, 27118i, 20767i, arg_0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(27591i, -2147483647i, u_input.e, 13092i), vec4<i32>(1i, 0i, -28799i, -49337i)) << ((firstTrailingBit(vec4<u32>(0u, var_1.x, var_1.x, 4294967295u)) | (vec4<u32>(u_input.b, 69622u, 4294967295u, arg_1.x) ^ vec4<u32>(49785u, u_input.a.x, 4294967295u, 19649u))) % vec4<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_2.x, 6927i) | vec3<i32>(u_input.e, arg_2, var_2.x), max(var_2.zzw, arg_0.b)), vec3<i32>(-318i << (1u % 32u), -1i, ~45584i)) ^ ((arg_0.b << ((vec3<u32>(42092u, u_input.b, 5686u) >> (arg_1 % vec3<u32>(32u))) % vec3<u32>(32u))) & min(~vec3<i32>(u_input.e, -1i, 20626i), firstTrailingBit(vec3<i32>(1i, 2147483647i, var_2.x)))), !(!arg_0.a), vec4<i32>(_wgslsmith_sub_i32(~arg_2, var_2.x), 1i, -27087i, 0i));
    return func_2(select(~(~vec2<u32>(arg_1.x, var_1.x)) ^ var_1.zy, vec2<u32>(34023u, arg_1.x), true), -firstLeadingBit(vec4<i32>(~(-2147483647i), arg_2, 1i, 0i)), ~(~1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(113928u, 2u)] * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_1.x, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)], var_3.b))) * -1000f)))).c;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_5 {
    global1 = array<f32, 2>();
    var var_0 = select(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.c > u_input.d.x)), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])) | all(select(vec4<bool>(global0[_wgslsmith_index_u32(48632u, 10u)], global0[_wgslsmith_index_u32(4393u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(28147u, 10u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(28750u, 10u)]))), 362f < _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)), false), !vec4<bool>(true, !global0[_wgslsmith_index_u32(1u, 10u)], false, true), vec4<bool>(!all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], false, true, true)), func_2(~u_input.d, vec4<i32>(_wgslsmith_mult_i32(-61209i, arg_3.b), arg_3.b, max(35656i, -23177i), firstTrailingBit(arg_1.b)), 45560u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_0 + -620f))).a, global0[_wgslsmith_index_u32(reverseBits(62177u), 10u)], true));
    global1 = array<f32, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(775f, _wgslsmith_f_op_f32(select(arg_0, -570f, true)), -1217f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.c, 2u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2389f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], -516f, arg_0))), vec4<f32>(-1030f, 694f, global1[_wgslsmith_index_u32(32032u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)])) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-372f, arg_0, 213f, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<f32>(arg_0, -755f, arg_0, -457f)))))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-698f, -268f, -199f, arg_0))))))));
    let var_2 = arg_2;
    return func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, reverseBits(u_input.c)), countOneBits(_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(4294967295u, u_input.a.x) ^ vec2<u32>(u_input.d.x, 1u), u_input.d)), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 54229u)), max(vec3<u32>(11397u, u_input.a.x, u_input.c), vec3<u32>(4316u, u_input.c, 0u))), _wgslsmith_clamp_u32(30688u, 0u, 16112u) << (_wgslsmith_sub_u32(0u, u_input.b) % 32u))), firstLeadingBit(vec4<i32>(-1i, _wgslsmith_mult_i32(-2147483647i, arg_3.a.x), arg_1.a.x, ~arg_3.a.x) << (~(~vec4<u32>(u_input.c, u_input.c, 4395u, u_input.d.x)) % vec4<u32>(32u))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
}

fn func_6(arg_0: Struct_5, arg_1: bool) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(func_3()), vec2<bool>(false, !(func_2(u_input.d, vec4<i32>(45874i, -1625i, arg_0.c.a.x, arg_0.b.x), u_input.b, global1[_wgslsmith_index_u32(0u, 2u)]).a && func_2(vec2<u32>(0u, 37997u), vec4<i32>(-2147483647i, u_input.e, u_input.e, u_input.e), u_input.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]).a)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    var var_0 = abs(~_wgslsmith_div_u32(select(abs(4294967295u), ~u_input.b, func_2(vec2<u32>(0u, u_input.d.x), vec4<i32>(-10079i, -36106i, 21172i, -20914i), 41751u, -1000f).a), u_input.b));
    let var_1 = u_input.e;
    var var_2 = func_2(countOneBits(u_input.d), max(vec4<i32>(~func_2(vec2<u32>(u_input.a.x, 47170u), vec4<i32>(arg_0.b, var_1, u_input.e, u_input.e), 0u, arg_2.a).b.x, select(2147483647i, _wgslsmith_div_i32(var_1, arg_0.a.x), true), 2147483647i, abs(var_1)), max(abs(vec4<i32>(50324i, arg_0.a.x, -1i, arg_0.a.x)) << (max(vec4<u32>(1u, u_input.a.x, u_input.b, u_input.d.x), vec4<u32>(u_input.c, u_input.d.x, 1u, 1u)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.b, -2147483647i, 2147483647i), vec4<i32>(-51928i, arg_0.b, var_1, -47196i))))), 4294967295u, _wgslsmith_f_op_f32(round(arg_2.a)));
    let var_3 = vec4<f32>(global1[_wgslsmith_index_u32(85857u, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 2u)]))))), _wgslsmith_f_op_f32(step(-1000f, 1288f)), _wgslsmith_f_op_f32(f32(-1f) * -2149f));
    var var_4 = Struct_3(Struct_2(var_2.b, 15145i), Struct_1(reverseBits(firstTrailingBit(countOneBits(var_2.c.a))), arg_2.b.x, ~vec4<i32>(u_input.e, ~2147483647i, ~var_1, ~(-20450i))), select(u_input.e, u_input.e, false));
    return 50362u & ~u_input.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 10>();
    let var_0 = func_7(Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2.c.yy, arg_2.a.yz) << (25073u % 32u), 6428i, firstLeadingBit(u_input.e)), -2147483647i), func_6(func_5(_wgslsmith_div_f32(arg_1, global1[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 2u)]), Struct_2(max(vec3<i32>(19006i, 2147483647i, u_input.e), arg_2.c.wyz), _wgslsmith_mod_i32(64750i, u_input.e)), ~_wgslsmith_add_i32(1i, arg_2.a.x), func_4(func_2(arg_0.xy, vec4<i32>(u_input.e, u_input.e, arg_2.c.x, 72167i), arg_0.x, 303f), vec3<u32>(u_input.d.x, 16493u, 23017u), u_input.e)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], true)), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false)))), func_6(Struct_5(func_6(Struct_5(false, vec3<i32>(arg_2.c.x, -5217i, -1i), Struct_2(vec3<i32>(arg_2.c.x, 0i, -1i), -27450i)), arg_2.b).b.x | false, abs(firstTrailingBit(vec3<i32>(arg_2.c.x, 1i, u_input.e))), Struct_2(arg_2.c.xxx << (vec3<u32>(arg_0.x, 1u, 45165u) % vec3<u32>(32u)), u_input.e)), arg_0.x > ~(~10969u)));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(select(36481u, arg_0.x, false), 10u)], vec3<i32>(-u_input.e, _wgslsmith_dot_vec3_i32(arg_2.c.xyy, arg_2.a), arg_2.c.x) ^ vec3<i32>(arg_2.a.x, 12615i, arg_2.a.x), Struct_2(_wgslsmith_mod_vec3_i32(reverseBits(arg_2.a), arg_2.a), -41987i));
    let var_2 = ~_wgslsmith_sub_vec4_i32(-firstLeadingBit(_wgslsmith_clamp_vec4_i32(arg_2.c, arg_2.c, vec4<i32>(var_1.c.b, 51995i, 2147483647i, 13654i))), vec4<i32>(-1i, u_input.e, var_1.c.a.x, _wgslsmith_dot_vec4_i32(arg_2.c, firstTrailingBit(arg_2.c))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(525f)), _wgslsmith_f_op_f32(step(776f, _wgslsmith_f_op_f32(-1415f + 421f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 2u)] + global1[_wgslsmith_index_u32(u_input.c, 2u)])), _wgslsmith_f_op_f32(floor(-864f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.x, 2u)]) * _wgslsmith_div_f32(-722f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c, 2u)])))), arg_1, _wgslsmith_div_f32(-183f, 742f), -790f));
    return -620f;
}

fn func_8(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec4_i32(firstTrailingBit(max(select(_wgslsmith_mod_vec4_i32(vec4<i32>(72015i, -1i, u_input.e, u_input.e), vec4<i32>(-50476i, u_input.e, 53339i, -1i)), vec4<i32>(1i, -76638i, 32809i, -76359i), arg_1), max(-vec4<i32>(u_input.e, u_input.e, 0i, u_input.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(14644i, 36109i, 0i, u_input.e), vec4<i32>(u_input.e, -2147483647i, 20535i, 0i), vec4<i32>(-1i, u_input.e, u_input.e, u_input.e))))), -vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-43288i, -1i, u_input.e, 0i), vec4<i32>(u_input.e, 18624i, u_input.e, u_input.e)), _wgslsmith_sub_vec4_i32(vec4<i32>(-7721i, u_input.e, -74284i, u_input.e), vec4<i32>(u_input.e, -1i, u_input.e, 1i))), _wgslsmith_div_i32(u_input.e, u_input.e), -select(u_input.e, u_input.e, true), 8145i));
    global0 = array<bool, 10>();
    var var_1 = Struct_5(!all(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_2, false, arg_1), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], arg_2, true, global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), arg_1)), var_0.wzw, func_5(arg_0.x, Struct_2(vec3<i32>(min(u_input.e, u_input.e), _wgslsmith_div_i32(u_input.e, 2147483647i), var_0.x & -9679i), _wgslsmith_clamp_i32(u_input.e, i32(-1i) * -50358i, -var_0.x)), -var_0.x | var_0.x, Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 68922i, -25117i) << (vec3<u32>(u_input.b, u_input.d.x, 30264u) % vec3<u32>(32u)), vec3<i32>(7222i, var_0.x, var_0.x)), i32(-1i) * -88294i)).c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1556f) + _wgslsmith_f_op_f32(f32(-1f) * -161f)), _wgslsmith_f_op_f32(floor(-511f))))));
    let var_3 = -(~(2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.e), vec2<i32>(var_0.x, 2147483647i))));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_f32(f32(-1f) * -785f)), !select(!(!vec2<bool>(var_1.a, arg_2)), select(vec2<bool>(true, var_1.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], true), arg_2), any(func_6(Struct_5(arg_2, vec3<i32>(0i, 15213i, u_input.e), var_1.c), false).b)));
}

fn func_9(arg_0: Struct_4, arg_1: vec3<i32>) -> u32 {
    global1 = array<f32, 2>();
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 2u)]));
    global1 = array<f32, 2>();
    let var_1 = any(!(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(49097u, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(11225u, 10u)], false, false), true)));
    global0 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-13383i, vec2<u32>(~u_input.c, _wgslsmith_mult_u32(~u_input.c, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(u_input.c, ~1u << (u_input.a.x % 32u)), u_input.c), 2u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 144f) - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(3512u, 2u)], var_0, var_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f * global1[_wgslsmith_index_u32(u_input.b, 2u)]))), global1[_wgslsmith_index_u32(func_9(func_8(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(40136u, 2u)], var_0, 1703f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], var_0, 209f))), var_1, true, _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b, u_input.c, 4294967295u), global1[_wgslsmith_index_u32(u_input.c, 2u)], Struct_1(vec3<i32>(0i, u_input.e, u_input.e), true, vec4<i32>(u_input.e, u_input.e, -10616i, u_input.e))))), vec3<i32>(select(u_input.e, u_input.e, false), -u_input.e, u_input.e)), 2u)], -1078f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
}

