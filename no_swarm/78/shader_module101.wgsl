struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = array<bool, 31>();
    let var_0 = 37087u;
    let var_1 = vec2<bool>(true, true);
    global0 = array<bool, 31>();
    var var_2 = arg_0;
    return firstTrailingBit(u_input.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    global0 = array<bool, 31>();
    let var_0 = Struct_3(-796f, !select(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_1, false), !global0[_wgslsmith_index_u32(u_input.e.x, 31u)]), vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_3.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), 0u >= arg_3.a, global0[_wgslsmith_index_u32(0u ^ arg_3.a, 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e.zx, u_input.e.xz), _wgslsmith_mult_vec2_u32(u_input.e.xy, vec2<u32>(0u, 4294967295u))), 31u)]), vec3<i32>(~35842i, 1i, _wgslsmith_dot_vec3_i32(-u_input.a.xzx, vec3<i32>(u_input.d.x, 0i | u_input.c.x, u_input.c.x))), -(u_input.d.x | -27494i));
    let var_1 = max(~abs(vec4<u32>(0u, u_input.e.x, 40342u, u_input.e.x) & vec4<u32>(0u, 1u, arg_0.x, arg_0.x)), ~reverseBits(vec4<u32>(arg_3.a, 1u, u_input.e.x, arg_0.x))) | (~_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_0.x, arg_3.a, 0u, 4294967295u), vec4<u32>(27250u, arg_3.a, u_input.e.x, 1u)), vec4<u32>(4294967295u, arg_3.a, arg_3.a, 0u)) & max(abs(vec4<u32>(arg_3.a, u_input.e.x, arg_3.a, 92071u) & vec4<u32>(27015u, arg_3.a, arg_3.a, arg_0.x)), (vec4<u32>(68396u, arg_3.a, 1u, 4294967295u) | vec4<u32>(arg_0.x, 0u, arg_0.x, u_input.e.x)) | vec4<u32>(u_input.e.x, u_input.e.x, 73271u, u_input.e.x)));
    let var_2 = arg_3.b;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1471f, -809f, -1812f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_0.a, 935f) * vec3<f32>(var_0.a, global1.x, arg_3.b.b))), vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.b * arg_3.b.b), -1000f, _wgslsmith_f_op_f32(ceil(358f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, var_0.a, -161f) - vec3<f32>(var_0.a, 451f, var_0.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, var_2.b, 579f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_2.b, var_0.a)))), vec3<f32>(1162f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.b.b - arg_3.b.b), _wgslsmith_f_op_f32(trunc(-363f)))), _wgslsmith_f_op_f32(631f - var_0.a)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-969f, var_0.a, var_2.b)) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 422f, -1118f), vec3<f32>(var_0.a, var_2.b, -1926f)))))));
}

fn func_2(arg_0: u32, arg_1: bool) -> i32 {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 516f) + _wgslsmith_f_op_f32(exp2(global1.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(261f, global1.x, global1.x) - vec3<f32>(-590f, global1.x, -611f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1042f, global1.x)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 597f, 1000f) - vec3<f32>(1415f, -582f, global1.x)))))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~func_3(-u_input.a.x), arg_0 <= ~11573u, all(select(!vec3<bool>(global0[_wgslsmith_index_u32(20110u, 31u)], arg_1, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], arg_1, false), !vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 31u)], true))), Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 38514u), func_3(u_input.d.x).zy), Struct_1(select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0, 31u)]), vec2<bool>(false, arg_1), arg_1), _wgslsmith_f_op_f32(global1.x * -1171f))))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1228f - global1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_f_op_f32(min(global1.x, global1.x)), global0[_wgslsmith_index_u32(~25426u, 31u)])), all(vec3<bool>(arg_1, arg_1, false)))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))))));
    global0 = array<bool, 31>();
    let var_0 = Struct_2(~reverseBits(reverseBits(~u_input.e.x)), Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true), vec2<bool>(true, true))), global1.x));
    let var_1 = var_0.b.b;
    return _wgslsmith_dot_vec3_i32(-u_input.b.yyy, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.wzx, u_input.b.zwx << (u_input.e % vec3<u32>(32u))), -u_input.b.yzw), vec3<i32>(~(-1i) >> (arg_0 % 32u), select(0i, ~u_input.d.x, all(vec4<bool>(var_0.b.a.x, false, false, true))), -abs(u_input.b.x))));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_2(1u, global0[_wgslsmith_index_u32(arg_0.x, 31u)]), -u_input.c.x, ~u_input.b.x, u_input.a.x) >> (~vec4<u32>(1u, 4294967295u, u_input.e.x, 1u) % vec4<u32>(32u)), u_input.b | min(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -1i, -55435i), u_input.a, u_input.b))) ^ select(vec4<i32>(u_input.b.x, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.c.x, -8050i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), vec2<i32>(-1i, u_input.d.x) ^ u_input.b.yw)), ~u_input.a, vec4<bool>(_wgslsmith_f_op_f32(-725f * global1.x) != -648f, false, select(all(vec2<bool>(true, true)), !global0[_wgslsmith_index_u32(arg_0.x, 31u)], true), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(472f, global1.x))), _wgslsmith_f_op_f32(global1.x - 1000f))) > global1.x;
    var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.b, _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x))), u_input.a), firstTrailingBit(-vec4<i32>(1i, var_0.x, var_0.x, var_0.x))), (firstLeadingBit(-1i) ^ _wgslsmith_mult_i32(7721i, var_0.x)) | _wgslsmith_mod_i32(firstTrailingBit(u_input.d.x), select(_wgslsmith_div_i32(1i, 1i), u_input.b.x, all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(7111u, 31u)], global0[_wgslsmith_index_u32(u_input.e.x, 31u)])))), ~_wgslsmith_dot_vec3_i32(u_input.a.xwz, -vec3<i32>(var_0.x, u_input.c.x, -71581i)) & 1i, ~(-countOneBits(0i)));
    let var_2 = vec3<u32>(0u, 0u, abs(35649u));
    let var_3 = Struct_3(global1.x, select(vec3<bool>(any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.e.x, 31u)])), !global0[_wgslsmith_index_u32(u_input.e.x, 31u)] & false, any(vec4<bool>(false, true, false, false))), vec3<bool>(false, true, any(vec2<bool>(true, false))), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global0[_wgslsmith_index_u32(6815u, 31u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 31u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 31u)], global0[_wgslsmith_index_u32(var_2.x, 31u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)], false), false), true), false & global0[_wgslsmith_index_u32(1955u, 31u)])), var_0.zyx, u_input.c.x);
    return global1.x;
}

fn func_5(arg_0: f32, arg_1: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(4294967295u, ~(~u_input.e.x)));
    var var_1 = select(vec4<bool>(arg_1.x, global1.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), false, arg_1.x || !global0[_wgslsmith_index_u32(u_input.e.x, 31u)]), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, arg_1.x, true), select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global0[_wgslsmith_index_u32(u_input.e.x, 31u)], false, arg_1.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(32471u, 31u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 31u)], false, global0[_wgslsmith_index_u32(15521u, 31u)], arg_1.x))), true);
    var var_2 = var_1.ywz;
    let var_3 = Struct_3(1241f, arg_1, u_input.a.yxw, min(-2147483647i, -2147483647i));
    let var_4 = _wgslsmith_mod_u32(~u_input.e.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.e.yy, _wgslsmith_mod_vec2_u32(u_input.e.zz, u_input.e.zx)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.xz), vec2<u32>(4898u, u_input.e.x) << (u_input.e.yx % vec2<u32>(32u))), ~(~u_input.e.yy))));
    return select(_wgslsmith_add_vec3_i32(firstTrailingBit(~u_input.a.wzw), select(countOneBits(reverseBits(vec3<i32>(var_3.d, 1i, 30545i))), vec3<i32>(u_input.d.x, firstTrailingBit(-2147i), countOneBits(u_input.c.x)), any(vec4<bool>(arg_1.x, false, true, var_1.x)))), u_input.a.yyw, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 310f, global1.x)) * vec3<f32>(378f, 1849f, -746f)) * vec3<f32>(344f, global1.x, _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_0 = u_input.c.x;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 31u)];
    global0 = array<bool, 31>();
    var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(func_5(_wgslsmith_f_op_f32(func_1(u_input.e)), select(vec3<bool>(global0[_wgslsmith_index_u32(39668u, 31u)], false, true), select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true, false), global0[_wgslsmith_index_u32(0u, 31u)]), true)), ~vec3<i32>(func_5(global1.x, vec3<bool>(true, true, global0[_wgslsmith_index_u32(18939u, 31u)])).x, -18246i, ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -486f, -267f, -754f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-557f, global1.x, global1.x, -1015f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 656f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -133f), 1000f))))), _wgslsmith_div_u32(u_input.e.x, u_input.e.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)) ^ func_3(~1i));
}

