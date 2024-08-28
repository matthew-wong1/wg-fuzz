struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: vec2<u32> = vec2<u32>(40977u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> bool {
    var var_0 = true;
    let var_1 = 1u;
    global1 = max(arg_1.xy, u_input.d.xz);
    global1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(~var_1, _wgslsmith_dot_vec3_u32(~arg_1, select(arg_1, vec3<u32>(448u, u_input.b, 0u), vec3<bool>(arg_0, arg_0, arg_0)))), vec2<u32>(13889u, arg_1.x), max(vec2<u32>(~select(global1.x, global1.x, arg_0), firstLeadingBit(global1.x) & firstTrailingBit(20596u)), arg_1.xx));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1133f)))))));
    return min(u_input.a, u_input.c) < (min(_wgslsmith_mult_i32(u_input.c, u_input.c), ~_wgslsmith_sub_i32(0i, u_input.c)) >> (var_1 % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a)), _wgslsmith_div_f32(arg_1.c.x, -1060f))), 737f)) * _wgslsmith_div_f32(797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a * _wgslsmith_f_op_f32(sign(194f))))));
    let var_1 = all(arg_2.wzw);
    var var_2 = arg_1.a.a;
    let var_3 = arg_1.a;
    var var_4 = var_3;
    return vec4<i32>(0i, _wgslsmith_sub_i32(~(-50024i), reverseBits(u_input.c)), u_input.c, ~max(~_wgslsmith_add_i32(u_input.a, u_input.c), -_wgslsmith_div_i32(u_input.a, u_input.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    var var_0 = vec2<u32>(~(~1u), u_input.b ^ _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, global1.x), select(u_input.d.zx, u_input.d.yx, arg_2.x)), vec2<u32>(u_input.b, 85274u)));
    var var_1 = Struct_4(select(vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(26888u, global1.x, u_input.b, u_input.b), vec4<u32>(global1.x, var_0.x, global1.x, 30375u), false), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 14760u, var_0.x), vec4<u32>(global1.x, u_input.d.x, 12910u, var_0.x))), global1.x, 50630u), u_input.d, arg_2.xzw), Struct_2(~reverseBits(max(vec4<u32>(global1.x, 4294967295u, 107825u, u_input.b), vec4<u32>(global1.x, 4294967295u, 45220u, var_0.x))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), arg_2.x, func_4(false, Struct_5(Struct_1(-741f), 1u, _wgslsmith_div_vec2_f32(vec2<f32>(1160f, -610f), vec2<f32>(arg_1, arg_1))), vec4<bool>(func_3(arg_2.x, u_input.d, arg_2, vec3<bool>(false, arg_2.x, false)), true, true, arg_2.x), !vec4<bool>(false, true, true, arg_2.x))), arg_1, Struct_3(_wgslsmith_add_i32(-42292i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, u_input.c, arg_3), vec3<i32>(u_input.a, 0i, 2147483647i)), arg_0.x)), ~vec4<i32>(u_input.c, arg_0.x, arg_3, u_input.c), Struct_1(_wgslsmith_f_op_f32(arg_1 - -1000f)), Struct_2(countOneBits(~vec4<u32>(4294967295u, 32132u, 1u, global1.x)), _wgslsmith_f_op_f32(-arg_1), false, countOneBits(~vec4<i32>(arg_3, arg_3, u_input.a, arg_0.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.b), -288f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-903f, var_1.d.d.b) + 1506f)), _wgslsmith_f_op_f32(select(-450f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.b.b, 795f)), _wgslsmith_f_op_f32(var_1.c + var_1.c), !arg_2.x)), false)), 351f, _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(112f, 1000f, 1446f, 904f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1353f, 237f, -681f) - vec4<f32>(533f, var_1.b.b, -414f, arg_1)), select(arg_2, vec4<bool>(var_1.b.c, true, true, true), var_1.d.d.c)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(542f, var_1.c)), _wgslsmith_f_op_f32(-var_1.d.c.a), var_1.b.b))))), !(!var_1.b.c) || true));
    let var_3 = _wgslsmith_dot_vec3_u32(var_1.d.d.a.yyz, _wgslsmith_mod_vec3_u32(abs(var_1.d.d.a.zzy), ~(u_input.d | max(var_1.b.a.wzw, var_1.b.a.yzy))));
    var_1 = Struct_4(~(~vec3<u32>(_wgslsmith_add_u32(global1.x, 0u), var_0.x ^ var_1.a.x, 1u)), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, arg_1)) + _wgslsmith_div_f32(arg_1, -928f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b.b, -261f)))) * _wgslsmith_f_op_f32(578f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))))), Struct_3(2147483647i, vec4<i32>(u_input.c, -1i, arg_0.x, u_input.a), Struct_1(_wgslsmith_f_op_f32(var_2.x + -477f)), Struct_2(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_0.x, 22829u, 53648u)), global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(56952u, 22226u), vec2<u32>(52069u, 0u))), arg_1, var_1.b.c, _wgslsmith_clamp_vec4_i32(abs(var_1.b.d), -var_1.d.b, firstLeadingBit(vec4<i32>(681i, -9085i, arg_0.x, arg_3))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, var_1.d.d.b))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.d.b, arg_1))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = u_input.d;
    var var_1 = Struct_4(_wgslsmith_mult_vec3_u32(~u_input.d, _wgslsmith_sub_vec3_u32(vec3<u32>(min(global1.x, 36069u), reverseBits(1u), 0u), vec3<u32>(~77615u, ~var_0.x, 1u))), Struct_2(~countOneBits(vec4<u32>(4294967295u, 0u, global1.x, 0u)), arg_1.a, true, ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.a, -2147483647i, 9815i), vec4<i32>(u_input.a, 36356i, -22880i, u_input.c)) & (vec4<i32>(u_input.a, -1542i, -2147483647i, 50847i) ^ ~vec4<i32>(u_input.a, 0i, u_input.a, 16693i))), _wgslsmith_f_op_f32(-arg_1.a), Struct_3(func_4(true, Struct_5(arg_1, _wgslsmith_div_u32(u_input.b, 69955u), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 607f) + arg_0.xx)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, true)))).x, vec4<i32>(u_input.a & _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), firstTrailingBit(-u_input.c), -2147483647i, 1i), arg_1, Struct_2(_wgslsmith_mod_vec4_u32(min(vec4<u32>(global1.x, u_input.d.x, 4294967295u, 23614u), vec4<u32>(var_0.x, var_0.x, var_0.x, global1.x)), vec4<u32>(u_input.b, var_0.x, 0u, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f - arg_0.x)), !(global1.x < var_0.x), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), 1i | u_input.c, 33620i, u_input.c))));
    var var_2 = arg_1;
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(~24521u ^ var_1.d.d.a.x, _wgslsmith_sub_u32(var_1.d.d.a.x, 60530u), _wgslsmith_dot_vec3_u32(firstLeadingBit(select(vec3<u32>(38674u, 1u, var_1.a.x), var_1.a, vec3<bool>(false, false, var_1.b.c))), reverseBits(vec3<u32>(u_input.d.x, var_0.x, var_0.x)))), var_0.x, var_1.b.a.x, firstTrailingBit(~var_0.x));
    let var_4 = arg_1;
    return abs(~(35176i & var_1.d.a));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = ~min(~(~(~vec4<i32>(0i, 0i, 0i, u_input.a))), _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(u_input.a, u_input.a, -32704i, arg_1)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_1, arg_1, u_input.a), vec4<i32>(arg_1, -1i, -2147483647i, arg_1)), -vec4<i32>(arg_1, u_input.a, 2147483647i, 1i))));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(245f, -1556f, 1904f, -674f), vec4<f32>(-1033f, -427f, 1207f, -1143f), vec4<bool>(arg_3, false, arg_3, true))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1334f, 436f, 425f, 2400f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, 1346f, 200f, 1774f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1143f, -375f, 115f, 361f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, 1003f, 2077f, 509f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, -672f, 1192f, -921f)))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.c, arg_2), 269f, vec4<bool>(arg_3, arg_3, arg_3, arg_3), arg_2))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1713f + 1190f), _wgslsmith_f_op_f32(887f * 1125f))))));
    let var_2 = vec2<u32>(max(abs(4294967295u), global1.x), ~firstLeadingBit(~0u));
    var var_3 = var_0.wwz;
    return Struct_2(vec4<u32>(_wgslsmith_clamp_u32(4925u, global1.x, select(~u_input.b, arg_0, true)), ~(~_wgslsmith_add_u32(6496u, u_input.d.x)), ~95862u, ~1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f + 165f) + -1059f), _wgslsmith_f_op_f32(func_2(-vec2<i32>(u_input.a, var_3.x), _wgslsmith_f_op_f32(-661f * 376f), vec4<bool>(true, true, true, arg_3), firstLeadingBit(7829i))))), any(!vec2<bool>(false, arg_3)) == any(select(!vec2<bool>(false, arg_3), !vec2<bool>(false, arg_3), vec2<bool>(false, true))), vec4<i32>(-_wgslsmith_clamp_i32(-2147483647i, arg_2, abs(0i)), _wgslsmith_mod_i32(func_5(vec4<f32>(248f, 178f, -449f, 1000f), Struct_1(-681f)), 2147483647i) & func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(2235f, 185f, -2202f, 826f) + vec4<f32>(853f, 293f, 734f, 1203f)), Struct_1(429f)), ~arg_1, min(var_0.x, _wgslsmith_add_i32(u_input.a, var_3.x))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = !all(vec2<bool>(true, any(vec3<bool>(arg_1.c, false, arg_2.d.c)) || true));
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(~4294967295u), 1u), (arg_1.a.ww ^ vec2<u32>(u_input.b, ~u_input.d.x)) ^ func_1(global1.x, -11267i, -func_1(44803u, -1i, 49039i, false).d.x, var_0).a.xy);
    let var_1 = vec2<f32>(155f, _wgslsmith_f_op_f32(round(arg_1.b)));
    var var_2 = select(!vec4<bool>(true, arg_0.c > 1435f, true, true), select(select(select(!vec4<bool>(true, var_0, false, true), !vec4<bool>(true, arg_1.c, false, arg_1.c), !arg_1.c), !vec4<bool>(true, true, true, arg_0.b.c), true), !(!select(vec4<bool>(false, arg_1.c, true, var_0), vec4<bool>(arg_0.b.c, true, true, arg_2.d.c), true)), func_3(arg_2.d.a.x < 1u, vec3<u32>(~arg_1.a.x, firstLeadingBit(arg_2.d.a.x), 47129u << (0u % 32u)), vec4<bool>(!arg_2.d.c, arg_1.c, func_3(arg_0.b.c, vec3<u32>(arg_0.d.d.a.x, 1u, arg_0.d.d.a.x), vec4<bool>(arg_0.d.d.c, false, false, false), vec3<bool>(false, true, false)), all(vec2<bool>(false, false))), select(select(vec3<bool>(false, arg_1.c, arg_0.d.d.c), vec3<bool>(arg_1.c, arg_1.c, true), arg_0.b.c), vec3<bool>(true, arg_2.d.c, false), true))), vec4<bool>(func_3(!arg_2.d.c, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 34922u, 1u) ^ vec3<u32>(45650u, arg_1.a.x, global1.x), vec3<u32>(arg_0.a.x, 4294967295u, 1u)), select(!vec4<bool>(true, arg_0.d.d.c, false, arg_2.d.c), vec4<bool>(arg_0.d.d.c, arg_1.c, false, arg_1.c), var_0), vec3<bool>(arg_2.d.c && arg_2.d.c, any(vec2<bool>(false, var_0)), false)), true, any(!select(vec2<bool>(arg_2.d.c, false), vec2<bool>(false, true), vec2<bool>(arg_0.b.c, arg_2.d.c))), any(select(!vec3<bool>(false, var_0, arg_1.c), vec3<bool>(true, false, true), select(vec3<bool>(arg_2.d.c, false, true), vec3<bool>(false, true, arg_0.b.c), true)))));
    return Struct_4(arg_0.d.d.a.xwx, arg_1, arg_0.d.d.b, arg_0.d);
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> Struct_5 {
    let var_0 = Struct_5(arg_1.d.c, _wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2038f, -695f) - vec2<f32>(arg_2.b, arg_1.d.d.b)))))))));
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(622f - _wgslsmith_f_op_f32(f32(-1f) * -696f))), abs(~arg_1.b.a.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.d.b) * arg_3.a), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-1294f, func_6(Struct_4(_wgslsmith_mod_vec3_u32(reverseBits(u_input.d), ~u_input.d), func_1(0u, ~u_input.c, i32(-1i) * -1i, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1666f + 640f)), Struct_3(u_input.c, ~vec4<i32>(-2147483647i, u_input.a, u_input.c, -36881i), Struct_1(1000f), Struct_2(vec4<u32>(global1.x, global1.x, 1u, 36728u), -234f, false, vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.c)))), func_1(28002u, u_input.a >> (4294967295u % 32u), u_input.c, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_3(u_input.c, _wgslsmith_sub_vec4_i32(~vec4<i32>(1375i, -1375i, 0i, u_input.c), vec4<i32>(1i, u_input.a, -31860i, 24943i)), Struct_1(_wgslsmith_f_op_f32(1239f - 150f)), func_1(41240u, 1i << (1u % 32u), func_5(vec4<f32>(2073f, -753f, -267f, 1929f), Struct_1(422f)), false))), Struct_2(select(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global1.x, 25461u, 1u, 0u)), vec4<u32>(u_input.d.x, u_input.b, 0u, 1u) | vec4<u32>(4294967295u, global1.x, global1.x, u_input.d.x)), abs(vec4<u32>(u_input.b, global1.x, global1.x, 1u) | vec4<u32>(31946u, 4294967295u, 0u, 1u)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.d.x, 2147483647i, 9308i, true).b - _wgslsmith_f_op_f32(f32(-1f) * -203f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1045f, 1693f), -1126f))), true, vec4<i32>((84530i << (global1.x % 32u)) >> (func_1(0u, u_input.c, u_input.c, true).a.x % 32u), u_input.a, -u_input.c, -36247i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f + -219f))));
    let var_1 = func_6(Struct_4(~u_input.d, func_1(global1.x, u_input.a, -(u_input.a ^ u_input.a), true), var_0.a.a, Struct_3(24663i, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 38916i, -55685i, u_input.a), vec4<i32>(42692i, 64602i, -17978i, u_input.c), -vec4<i32>(-1i, u_input.a, -2147483647i, u_input.a)), var_0.a, Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(2293u, global1.x, var_0.b, 1u), vec4<u32>(var_0.b, global1.x, global1.x, 1u)), var_0.a.a, false, -vec4<i32>(1i, u_input.a, 10942i, 21917i)))), func_1(1u, firstTrailingBit(u_input.a >> (var_0.b % 32u)) << (~global1.x % 32u), firstTrailingBit(2147483647i), !(true && all(vec4<bool>(true, true, false, true)))), Struct_3(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(37226i, 33707i)), firstLeadingBit(global0[_wgslsmith_index_u32(var_0.b, 24u)])), (countOneBits(vec4<i32>(18865i, 30445i, u_input.a, u_input.c)) | -vec4<i32>(u_input.a, u_input.c, u_input.a, 1i)) ^ ~vec4<i32>(-1i, u_input.c, 23450i, u_input.a), var_0.a, func_1(_wgslsmith_mod_u32(global1.x, 38754u) ^ max(var_0.b, 4294967295u), u_input.c, ~28846i, true))).d.d;
    let var_2 = var_0.a;
    global0 = array<vec2<i32>, 24>();
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(var_0.c));
    global1 = u_input.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-31032i, reverseBits(40114i), var_1.d.x), vec4<u32>(_wgslsmith_clamp_u32(20148u, 71u, 0u), ~global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~77438u, ~u_input.d.x), ~var_1.a.zz), 13550u));
}

