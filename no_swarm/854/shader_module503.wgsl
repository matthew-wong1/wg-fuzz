struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 208f;

var<private> global1: array<u32, 4>;

var<private> global2: array<i32, 19>;

var<private> global3: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-32527i, i32(-2147483648), 18633i, 0i), vec4<i32>(3281i, 9043i, 1i, -12657i), vec4<i32>(1i, 0i, 0i, 1i), vec4<i32>(0i, -51078i, 22067i, 2147483647i), vec4<i32>(-21193i, 1i, 0i, 2147483647i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    global1 = array<u32, 4>();
    var var_0 = true;
    var var_1 = vec4<bool>(!(_wgslsmith_add_i32(i32(-1i) * -1i, arg_0.a ^ 1i) == arg_0.b.x), true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), u_input.b >= -1i))), false);
    global3 = array<vec4<i32>, 5>();
    var var_2 = 1330f;
    return _wgslsmith_f_op_f32(f32(-1f) * -584f);
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_4(Struct_1(countOneBits(~vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 19u)], -1i, u_input.b)), reverseBits(~75635u) << ((max(45981u, 1u) & global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]) % 32u), vec4<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(min(u_input.a.x, 68172u), 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), countOneBits(11326u) << (firstTrailingBit(u_input.a.x) % 32u), u_input.a.x, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1304f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-263f)), 244f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-228f, 497f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1375f - 1260f) * -1589f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2232f))), -752f))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-859f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1536f, 1107f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(377f * 320f), -1572f, _wgslsmith_f_op_f32(422f - -627f)))));
    global2 = array<i32, 19>();
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.x)));
    var var_1 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.d - vec2<f32>(-721f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(var_0.a.d - var_0.d.zx), select(var_0.c, var_0.c, var_0.c.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.a.d * var_0.a.d)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(step(1441f, var_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(194f, -1000f))))), any(!select(vec4<bool>(var_0.c.x, var_0.c.x, true, false), vec4<bool>(var_0.c.x, true, false, false), vec4<bool>(true, false, false, var_0.c.x))))), !select(select(select(var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), false), vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, var_0.c.x)), vec2<bool>(false, all(vec3<bool>(var_0.c.x, false, false))), true), var_0.d);
    global2 = array<i32, 19>();
    return vec2<i32>(_wgslsmith_sub_i32(~((global2[_wgslsmith_index_u32(34777u, 19u)] >> (global1[_wgslsmith_index_u32(u_input.a.x, 4u)] % 32u)) | u_input.b), u_input.b), var_0.a.a.x);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    var var_0 = func_3();
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, -12560i), 8662i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-476f + _wgslsmith_f_op_f32(f32(-1f) * -2149f)))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1227f))));
    var_2 = reverseBits(_wgslsmith_mod_i32(func_3().x, _wgslsmith_clamp_i32(var_0.x >> (_wgslsmith_div_u32(arg_3.c.x, arg_3.c.x) % 32u), -2147483647i, -50904i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1759f)) + -1335f) - arg_3.d.x) != _wgslsmith_f_op_f32(f32(-1f) * -1227f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global3 = array<vec4<i32>, 5>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<u32>(0u, 1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * -1488f), _wgslsmith_div_f32(966f, -1128f)))), _wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1084f, 311f))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(395f + 1029f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-851f, -480f, -241f, -779f)))), vec2<bool>(true, true), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(var_0, 19u)], global2[_wgslsmith_index_u32(var_0, 19u)]), 4294967295u, ~vec4<u32>(4294967295u, var_0, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-126f, -1108f), vec2<f32>(-1133f, -2585f), false)))))));
    var var_2 = false;
    let var_3 = -2147483647i;
    global0 = 829f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), reverseBits(var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -702f, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1))))), u_input.b, firstLeadingBit(-1i) & _wgslsmith_dot_vec4_i32(abs(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 4u)], 5u)]), vec4<i32>(-34122i, _wgslsmith_div_i32(u_input.b, var_3), u_input.b, ~var_3)));
}

