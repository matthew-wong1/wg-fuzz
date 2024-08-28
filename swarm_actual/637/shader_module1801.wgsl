struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: array<f32, 10> = array<f32, 10>(438f, 1383f, -413f, -934f, -254f, 451f, 2046f, -1578f, -541f, 950f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(abs(-u_input.b), -2147483647i, abs(_wgslsmith_sub_i32(u_input.b, ~u_input.e.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -603f), global1[_wgslsmith_index_u32(u_input.c.x >> (77898u % 32u), 10u)]))))));
    global0 = array<vec4<f32>, 11>();
    global1 = array<f32, 10>();
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(805f, 274f)) + vec2<f32>(1681f, -1010f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1949f, -1270f) + vec2<f32>(262f, -422f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(198f, -2276f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 805f), true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(global1[_wgslsmith_index_u32(37200u, 10u)], var_1.x)), all(vec3<bool>(true, false, true))))))));
    return ~abs(0u);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    var var_0 = arg_0;
    let var_1 = Struct_1(32887u, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(33785u, var_0.b.x), arg_1 | u_input.c.x), ~select(37874u, arg_1, false)), ~arg_0.d, func_3(), max(arg_0.d, arg_0.d | _wgslsmith_sub_u32(4294967295u, 44726u))), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e), var_0.a);
    global0 = array<vec4<f32>, 11>();
    return global1[_wgslsmith_index_u32(u_input.c.x, 10u)];
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(61206u), 10u)]), 1071f)), _wgslsmith_f_op_f32(trunc(arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2, 48645u)) * _wgslsmith_f_op_f32(round(-1000f))) * -1284f)));
    global0 = array<vec4<f32>, 11>();
    let var_1 = select(!vec4<bool>(false, true, true, any(vec2<bool>(true, true))), select(vec4<bool>(false, false, arg_2.b.x > _wgslsmith_div_u32(4294967295u, u_input.a.x), true), vec4<bool>(true, true, true, true), true), false && any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))));
    var var_2 = ~(~arg_2.b.xwy);
    let var_3 = global0[_wgslsmith_index_u32(0u, 11u)];
    return u_input.e.zz;
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(~(~u_input.c.x), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(u_input.c << (u_input.a % vec4<u32>(32u)), u_input.a)), abs(u_input.a), countOneBits(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)))), u_input.b, ~(~4294967295u));
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.e, firstLeadingBit(vec4<i32>(~13294i, arg_0.x, countOneBits(-27793i), var_0.c)));
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    let var_2 = true;
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs((countOneBits(~arg_0.b.x) << ((arg_3.a >> (arg_0.b.x % 32u)) % 32u)) ^ 1u);
    var_0 = u_input.c.x >> (u_input.a.x % 32u);
    let var_1 = _wgslsmith_dot_vec4_i32(-abs(u_input.e), arg_1);
    let var_2 = arg_3;
    global1 = array<f32, 10>();
    return func_5(arg_1.yw & ~vec2<i32>(26293i, _wgslsmith_dot_vec2_i32(arg_1.xw, vec2<i32>(-26671i, arg_3.c))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 11>();
    var var_0 = -15974i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 10u)] - 113f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(46679u, 10u)] + 746f));
    global1 = array<f32, 10>();
    var var_2 = ~vec2<i32>(u_input.e.x, 2147483647i);
    return func_6(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_3, 1u)) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_3.d, 10u)], -920f)), abs(arg_3.c) | ~(-1i), arg_3)), u_input.e, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, global1[_wgslsmith_index_u32(arg_2, 10u)]), var_1.x, u_input.c.x == ~min(4294967295u, 1u))), arg_3);
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = (max(arg_3.a, 0u) << (~abs(30210u) % 32u)) != 48756u;
    global1 = array<f32, 10>();
    let var_1 = u_input.d;
    var var_2 = abs(-u_input.e);
    let var_3 = vec2<bool>(-702f == _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), !(!all(vec4<bool>(arg_1, true, false, false)) & (u_input.a.x < (u_input.c.x | 41621u))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(786f - _wgslsmith_f_op_f32(-1566f * global1[_wgslsmith_index_u32(27343u, 10u)])), 1442f) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f - global1[_wgslsmith_index_u32(arg_0, 10u)]) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_3.d, 10u)]))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1026f, global1[_wgslsmith_index_u32(arg_3.a, 10u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(2538u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_7(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx), u_input.a.x), true, func_1(-u_input.e.xz, vec2<i32>(46298i, u_input.b), _wgslsmith_mult_u32(4294967295u, u_input.a.x), Struct_1(11815u, vec4<u32>(u_input.c.x, 0u, 0u, 9041u), 0i, u_input.a.x)), func_5(firstTrailingBit(u_input.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1702f)))), (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) == _wgslsmith_mult_u32(u_input.a.x, 1u)) || !all(vec4<bool>(true, true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.c.x, ~0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(73799u, u_input.c.x), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x)), vec4<i32>(-1i, _wgslsmith_mod_i32(-51348i, u_input.e.x), ~(-20128i), func_5(vec2<i32>(u_input.d.x, -1i)).c) << (vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzx, u_input.a.ywx), u_input.c.x ^ 10370u), ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.zyz, ~u_input.c.wwz), u_input.a.x) % vec4<u32>(32u)), u_input.a.wxz, min(~73729u, 1u), vec2<u32>(50172u, 0u));
}

