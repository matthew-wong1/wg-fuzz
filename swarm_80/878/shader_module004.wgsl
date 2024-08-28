struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(vec4<u32>(select(1u, ~55248u, false), firstTrailingBit(0u) >> (~22485u % 32u), 29864u, 30882u) << (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    let var_1 = global2.a.x;
    var var_2 = vec4<bool>(!(!(var_0.x == _wgslsmith_add_u32(2794u, var_0.x))), any(vec4<bool>(_wgslsmith_f_op_f32(step(1000f, 1000f)) < -172f, false, true, !(!global2.a.x))), any(select(vec2<bool>(global2.a.x, true || global2.a.x), vec2<bool>(global2.a.x && global2.a.x, global2.a.x | true), global2.a.x)), global2.a.x);
    let var_3 = -300f;
    var var_4 = ~select(~(~vec2<u32>(7263u, var_0.x)), ~vec2<u32>(var_0.x, var_0.x), !select(vec2<bool>(true, true), var_2.wx, all(vec3<bool>(false, global2.a.x, var_2.x))));
    return global3[_wgslsmith_index_u32(var_0.x, 22u)];
}

fn func_3() -> vec3<f32> {
    global0 = 0u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 2195f, -423f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-569f, -724f, -1096f) * vec3<f32>(-160f, 265f, 720f)) + vec3<f32>(-299f, 1355f, 2452f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(494f)), _wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(f32(-1f) * -300f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_1 = _wgslsmith_dot_vec2_i32(abs(~(~(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)))), ~select(vec2<i32>(u_input.a, ~u_input.a), ~select(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a), true), arg_1.xw));
    global3 = array<Struct_1, 22>();
    var var_2 = ~(~(vec4<i32>(var_1, 0i, var_1, _wgslsmith_sub_i32(var_1, var_1)) << (countOneBits(vec4<u32>(1u, 0u, 4294967295u, 45166u)) % vec4<u32>(32u))));
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.a, ~(-1i)), _wgslsmith_dot_vec3_i32(max(var_2.www, var_2.yww), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -86357i, var_2.x), vec3<i32>(u_input.a, var_2.x, 2147483647i)))), ~((u_input.a ^ u_input.a) & u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(min(var_2.x, 24183i), i32(-1i) * -44850i, ~var_2.x, 0i ^ var_1), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -31075i, u_input.a, 42404i), vec4<i32>(44500i, 43611i, -8112i, var_2.x) >> (vec4<u32>(52812u, 1u, 40464u, 76362u) % vec4<u32>(32u))))) | vec4<i32>(select(29427i, 1i, !(arg_0.a.x && arg_0.a.x)), abs(_wgslsmith_add_i32(var_2.x, 1i)), var_2.x << (~_wgslsmith_sub_u32(60354u, 1u) % 32u), var_1);
    return _wgslsmith_f_op_vec2_f32(-var_0.xz);
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_1();
    var var_1 = any(vec3<bool>(!(!var_0.a.x), false | !any(vec4<bool>(false, var_0.a.x, true, true)), !all(!vec3<bool>(var_0.a.x, global2.a.x, true))));
    global2 = func_1();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-587f + 1244f) * -751f), arg_0.x, -186f, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<bool>(var_2, true)), vec4<bool>(global2.a.x, true, global2.a.x, var_0.a.x), Struct_1(vec2<bool>(false, false)))).x, _wgslsmith_f_op_f32(round(arg_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), -815f, _wgslsmith_f_op_f32(-2655f + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1414f - arg_0.x))))));
    return func_1();
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -(min(abs(abs(vec4<i32>(2147483647i, -4894i, 1i, -27443i))), vec4<i32>(-1i, -2147483647i, u_input.a, 24505i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, -26358i, 2147483647i, u_input.a))) | vec4<i32>(~u_input.a | u_input.a, ~u_input.a >> (~4294967295u % 32u), 46391i, _wgslsmith_mod_i32(u_input.a, -1i) & 2147483647i));
    var var_1 = select(!select(arg_0.a, func_1().a, vec2<bool>(select(global2.a.x, global2.a.x, arg_0.a.x), true)), vec2<bool>(all(!select(vec2<bool>(global2.a.x, true), arg_0.a, arg_0.a)), all(!vec4<bool>(global2.a.x, true, true, false))), false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-460f))) * _wgslsmith_f_op_f32(-1f)));
    global2 = func_5(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(func_1(), select(vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x), vec4<bool>(global2.a.x, true, true, global2.a.x), vec4<bool>(global2.a.x, true, true, false)), Struct_1(global2.a))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(step(-666f, 1028f))))));
    let var_1 = !(!select(!select(vec3<bool>(true, true, global2.a.x), vec3<bool>(false, false, global2.a.x), vec3<bool>(global2.a.x, true, global2.a.x)), vec3<bool>(select(global2.a.x, global2.a.x, global2.a.x), all(vec3<bool>(global2.a.x, true, true)), true), any(select(vec3<bool>(true, global2.a.x, global2.a.x), vec3<bool>(global2.a.x, global2.a.x, false), global2.a.x))));
    var var_2 = func_5(global1[_wgslsmith_index_u32(min(~countOneBits(~4294967295u), abs(reverseBits(1u) | _wgslsmith_clamp_u32(14145u, 0u, 1u))), 26u)]);
    let var_3 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(func_4(var_0.zx), select(vec4<bool>(false, global2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, var_2.a.x, var_1.x, false), var_2.a.x), Struct_1(vec2<bool>(var_2.a.x, false)))).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-522f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))))));
    global3 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), countOneBits(83330u), _wgslsmith_sub_vec3_i32(vec3<i32>(-min(u_input.a, u_input.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, u_input.a)), u_input.a & select(-2147483647i, -1i, false)), countOneBits(firstTrailingBit(-vec3<i32>(-1730i, 70127i, u_input.a)))), u_input.a);
}

