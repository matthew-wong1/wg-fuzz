struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(26616u, 25828u)), ~(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_add_vec2_u32(vec2<u32>(51735u, u_input.a), abs(vec2<u32>(0u, 19649u))) | _wgslsmith_mult_vec2_u32(max(vec2<u32>(68393u, 40167u), vec2<u32>(u_input.a, 50168u)), firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(18081u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])))), vec2<u32>(4294967295u, abs(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(1u, u_input.a)))));
    let var_1 = !(!select(vec4<bool>(true, true, any(vec4<bool>(false, arg_2.e.x, true, true)), true), vec4<bool>(true, select(true, arg_0.a.e.x, true), arg_2.e.x, any(vec4<bool>(arg_2.e.x, false, arg_2.e.x, true))), arg_2.e.x));
    var var_2 = true;
    global0 = array<u32, 12>();
    let var_3 = arg_2;
    return var_3.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_2(arg_2.b);
    global0 = array<u32, 12>();
    let var_1 = var_0;
    var var_2 = Struct_2(Struct_1(select(select(var_1.a.e.xx, !vec2<bool>(true, arg_2.b.a.x), true), !select(var_1.a.a, vec2<bool>(true, true), var_1.a.a.x), select(!vec2<bool>(arg_2.b.a.x, true), arg_2.b.a, !var_1.a.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.a.b), _wgslsmith_f_op_vec3_f32(var_0.a.b + vec3<f32>(var_1.a.b.x, var_1.a.b.x, -1163f))))), vec4<i32>(1i, ~_wgslsmith_mod_i32(var_1.a.c.x, 1i), var_0.a.d, 1i), firstLeadingBit(_wgslsmith_sub_i32(abs(-53152i), -arg_0.x)), select(!var_0.a.e, !vec3<bool>(false, true, var_0.a.e.x), _wgslsmith_f_op_f32(var_1.a.b.x - 1395f) != _wgslsmith_f_op_f32(abs(var_1.a.b.x)))));
    var var_3 = arg_2.d.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_1, 41030i, Struct_1(arg_2.b.a, vec3<f32>(-863f, -1000f, var_1.a.b.x), var_2.a.c, 30130i, vec3<bool>(true, true, false)))))), 1289f, var_2.a.b.x, _wgslsmith_f_op_f32(trunc(var_2.a.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b.x + arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c, var_0.a.b.x)) * -1892f))), arg_1));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_3, max(-arg_3.a.d, _wgslsmith_mult_i32(arg_2.e.x << (4294967295u % 32u), ~(-21209i))), Struct_1(select(!vec2<bool>(false, arg_2.b.a.x), arg_2.b.a, vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2227f, arg_1.a.x, 490f))) * arg_2.a.xyz), -_wgslsmith_sub_vec4_i32(vec4<i32>(-36836i, arg_1.e.x, -13405i, 2147483647i), arg_3.a.c), abs(~arg_3.a.c.x), select(select(vec3<bool>(true, arg_2.b.a.x, arg_2.b.a.x), arg_3.a.e, arg_3.a.e.x), arg_2.b.e, vec3<bool>(false, arg_2.b.e.x, arg_1.b.a.x)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * 1000f)), -673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a.b.x))), -233f)), Struct_1(arg_3.a.e.yx, arg_2.b.b, countOneBits(-abs(arg_3.a.c)), arg_1.e.x, select(select(!arg_1.b.e, !vec3<bool>(arg_3.a.a.x, arg_2.b.a.x, arg_3.a.e.x), !arg_3.a.e), vec3<bool>(true | arg_3.a.a.x, any(vec4<bool>(arg_3.a.e.x, arg_1.b.a.x, arg_2.b.a.x, false)), any(vec4<bool>(true, true, true, arg_3.a.a.x))), false)), 930f, vec2<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(arg_1.d, ~arg_1.d)), 18361u), vec3<i32>(1i, -arg_2.b.c.x, _wgslsmith_sub_i32(~arg_2.e.x, arg_3.a.d)) << (select(_wgslsmith_add_vec3_u32(vec3<u32>(43717u, arg_2.d.x, global0[_wgslsmith_index_u32(arg_2.d.x, 12u)]), abs(vec3<u32>(0u, u_input.a, 1u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 74814u, arg_0), ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.d.x, 12u)], 12u)], global0[_wgslsmith_index_u32(20527u, 12u)])), arg_3.a.e) % vec3<u32>(32u)));
    global0 = array<u32, 12>();
    let var_2 = vec2<bool>(false, true);
    global0 = array<u32, 12>();
    return abs(_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(var_1.e, _wgslsmith_sub_vec3_i32(var_1.e, vec3<i32>(43218i, 2147483647i, arg_3.a.d))), (firstLeadingBit(vec3<i32>(var_1.b.d, var_1.e.x, 2147483647i)) ^ select(arg_1.e, arg_1.b.c.zxx, vec3<bool>(arg_3.a.e.x, var_1.b.a.x, false))) << (((vec3<u32>(var_1.d.x, arg_2.d.x, 63507u) & vec3<u32>(arg_0, 1u, u_input.a)) ^ reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 12u)], 0u, global0[_wgslsmith_index_u32(u_input.a, 12u)]))) % vec3<u32>(32u))));
}

fn func_5(arg_0: i32) -> vec2<bool> {
    global0 = array<u32, 12>();
    var var_0 = ~(~abs(-vec2<i32>(arg_0, -2147483647i)));
    var_0 = select(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(var_0.x, -1i)), reverseBits(vec2<i32>(54808i, arg_0))), firstTrailingBit(~(-min(vec2<i32>(var_0.x, 3384i), vec2<i32>(26948i, var_0.x)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-481f, -1814f, 1948f), vec4<i32>(arg_0, 1646i, arg_0, var_0.x), var_0.x, vec3<bool>(false, false, true))), ~(-19811i), Struct_1(vec2<bool>(false, true), vec3<f32>(-830f, -634f, 1959f), vec4<i32>(2147483647i, 2147483647i, -49258i, arg_0), arg_0, vec3<bool>(false, true, false))))) - _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, -278f, -712f)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 1i), vec4<i32>(var_0.x, -2147483647i, -21684i, -1i)), var_0.x, select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), -14681i, Struct_1(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(475f, 224f, 1221f), vec3<f32>(1609f, -725f, 1000f), vec3<bool>(true, true, false)))), vec4<i32>(select(2147483647i, var_0.x, true), ~(-1i), ~arg_0, 12629i), ~abs(arg_0), vec3<bool>(true, true, true))))));
    var_0 = vec2<i32>((func_4(global0[_wgslsmith_index_u32(11190u, 12u)] >> (global0[_wgslsmith_index_u32(4294967295u, 12u)] % 32u), Struct_3(vec4<f32>(var_1, -1109f, var_1, 2239f), Struct_1(vec2<bool>(true, true), vec3<f32>(var_1, var_1, -550f), vec4<i32>(1i, arg_0, var_0.x, -35163i), -83724i, vec3<bool>(false, true, true)), var_1, vec2<u32>(u_input.a, 1u), vec3<i32>(arg_0, -2147483647i, -59526i)), Struct_3(vec4<f32>(var_1, var_1, var_1, 453f), Struct_1(vec2<bool>(true, true), vec3<f32>(var_1, -633f, var_1), vec4<i32>(38739i, 2147483647i, -2147483647i, var_0.x), 35690i, vec3<bool>(true, false, true)), -1159f, vec2<u32>(34101u, u_input.a), vec3<i32>(-35865i, arg_0, var_0.x)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(var_1, -363f, var_1), vec4<i32>(arg_0, arg_0, var_0.x, 48840i), arg_0, vec3<bool>(true, false, true)))) | arg_0) << (global0[_wgslsmith_index_u32(u_input.a, 12u)] % 32u), max(0i, 1i));
    return select(vec2<bool>(!(!all(vec3<bool>(false, false, true))), !all(vec2<bool>(false, false))), vec2<bool>(any(vec4<bool>(true, true, false, any(vec3<bool>(false, false, true)))), true), vec2<bool>(true, (all(vec3<bool>(true, true, false)) | any(vec4<bool>(true, true, true, false))) | false));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(func_5(func_4(~u_input.a, Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1304f, -1477f, 1000f, 822f), vec4<f32>(-1329f, -538f, -345f, -377f), true)), Struct_1(vec2<bool>(true, false), vec3<f32>(1266f, 302f, 1371f), vec4<i32>(2147483647i, 0i, -4376i, 17520i), 50022i, vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(-708f * 357f), ~vec2<u32>(1u, 18246u), -vec3<i32>(17195i, -23009i, -1i)), Struct_3(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(-1i, -2147483647i, 10760i), -1427f, Struct_3(vec4<f32>(-1292f, -131f, 1560f, -1665f), Struct_1(vec2<bool>(false, true), vec3<f32>(1932f, 868f, 748f), vec4<i32>(24267i, 14869i, 0i, 22711i), -2147483647i, vec3<bool>(true, true, false)), 1027f, vec2<u32>(28151u, 37568u), vec3<i32>(-2147483647i, 10791i, -615i)), vec3<u32>(global0[_wgslsmith_index_u32(11389u, 12u)], u_input.a, 21510u))), Struct_1(vec2<bool>(true, false), vec3<f32>(-393f, -588f, -626f), vec4<i32>(7840i, 1i, 1i, -1i), -1i, vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-1877f - 2264f), vec2<u32>(15228u, global0[_wgslsmith_index_u32(1u, 12u)]) & vec2<u32>(u_input.a, 26226u), -vec3<i32>(2147483647i, -44262i, -2147483647i)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1771f, 2435f, -1184f), vec4<i32>(-1i, 2147483647i, -21568i, 0i), 2147483647i, vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-121f, -524f, -889f), vec3<f32>(1013f, 1075f, 2418f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, 948f, 433f))) - vec3<f32>(1f, 515f, 311f)), vec3<f32>(795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + 2281f)), _wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(f32(-1f) * -1301f))))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, -29282i), 54890i, i32(-1i) * -1i, ~0i), select(_wgslsmith_add_vec4_i32(vec4<i32>(32363i, 1i, 0i, -2124i), vec4<i32>(27761i, -5501i, -28304i, 35405i)), ~vec4<i32>(0i, 4531i, 6111i, -2147483647i), true)) | ~(~abs(vec4<i32>(0i, 2417i, -2147483647i, 2147483647i))), -firstLeadingBit(~_wgslsmith_div_i32(-16451i, -2147483647i)), vec3<bool>(true, !(~4294967295u <= ~u_input.a), all(vec4<bool>(true, true, true, true)) & true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x + -1460f))), _wgslsmith_f_op_f32(ceil(1812f)), -2504f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-861f, var_1.x, var_0.b.x, -839f)), _wgslsmith_f_op_vec4_f32(-var_1)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2010f))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), var_0.c.zzw), _wgslsmith_div_f32(-1308f, var_1.x), Struct_3(var_1, Struct_1(vec2<bool>(false, var_0.a.x), vec3<f32>(var_1.x, 351f, -191f), vec4<i32>(-68496i, 52676i, var_0.d, 1i), var_0.d, vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x)), var_0.b.x, vec2<u32>(0u, 4294967295u), vec3<i32>(2147483647i, var_0.c.x, var_0.c.x)), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 12u)], 102329u, 0u)))).x), _wgslsmith_f_op_f32(floor(280f))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1378f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -1545f) * _wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-443f - 1919f)))), _wgslsmith_f_op_f32(sign(776f)), var_1.x));
    let var_3 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(-5292i, var_0.c.x, var_0.c.x), -426f, Struct_3(vec4<f32>(var_2.x, var_0.b.x, var_2.x, 266f), Struct_1(var_0.a, var_1.wzw, var_0.c, var_0.d, vec3<bool>(true, var_0.a.x, true)), var_0.b.x, vec2<u32>(4294967295u, u_input.a), var_0.c.yzx), vec3<u32>(u_input.a, 22558u, 22341u))).wzx), var_1.xyw))), min(var_0.c, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, 0i, var_0.d, var_0.d), _wgslsmith_clamp_vec4_i32(var_0.c, var_0.c, var_0.c)))), _wgslsmith_mod_i32(reverseBits(var_0.d), var_0.c.x), !var_0.e);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-191f, -542f)), _wgslsmith_f_op_f32(704f - 409f), _wgslsmith_f_op_f32(-101f + -825f), _wgslsmith_f_op_f32(780f * -2176f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(sign(-451f)), _wgslsmith_f_op_f32(776f + 425f), _wgslsmith_f_op_f32(f32(-1f) * -426f))))), vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = false && !(var_0.x >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), 177f, any(vec2<bool>(false, false)))));
    var_1 = false;
    var_1 = true;
    let var_2 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(var_0.xwy + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_0.zzy, vec3<f32>(var_0.x, 1860f, var_0.x), true)), var_0.yzx, vec3<bool>(true, true, true))), var_0.yxy))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(20478i, -42397i, -25004i, -55575i) << (vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, 8019u) % vec4<u32>(32u))), countOneBits(min(vec4<i32>(-18387i, 12811i, -2147483647i, -15538i), vec4<i32>(33898i, 1i, 23293i, -2147483647i))) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(34171i, -33326i, -1i), vec3<i32>(-2147483647i, 1i, -7326i)), abs(-7030i), firstLeadingBit(0i), _wgslsmith_mod_i32(-2147483647i, -2147483647i))), _wgslsmith_dot_vec3_i32(countOneBits(~firstTrailingBit(vec3<i32>(14436i, 2147483647i, 12070i))), ~(-(~vec3<i32>(-1i, 11913i, 27655i)))), !select(func_1(), vec3<bool>(all(vec4<bool>(true, true, true, true)), var_0.x <= -1894f, true), func_1()));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1409f - -467f), _wgslsmith_f_op_f32(max(var_3.b.x, var_3.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f - var_3.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_3.b.x, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.b.x)))))), var_3.b.x, _wgslsmith_f_op_f32(481f * var_2.b.x)));
}

