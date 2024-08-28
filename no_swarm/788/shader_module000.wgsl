struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(1i, i32(-2147483648), -28970i), vec3<i32>(56262i, 0i, 38712i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-1335i, 78545i, -1i), vec3<i32>(5771i, 1i, -17738i), vec3<i32>(i32(-2147483648), -26969i, 100202i), vec3<i32>(0i, -1i, 55463i), vec3<i32>(i32(-2147483648), 1i, -9157i), vec3<i32>(22088i, 43373i, -1i), vec3<i32>(i32(-2147483648), -7114i, i32(-2147483648)), vec3<i32>(7857i, 8092i, -22082i), vec3<i32>(2147483647i, -60744i, 0i), vec3<i32>(2147483647i, 10876i, i32(-2147483648)), vec3<i32>(-1i, 0i, -67477i));

var<private> global1: Struct_1;

var<private> global2: array<i32, 28> = array<i32, 28>(2706i, 18253i, 59267i, -25137i, -40264i, -4485i, 8544i, 40236i, -41431i, -20415i, 21282i, 5226i, 0i, 4595i, i32(-2147483648), 1i, 0i, 1i, -31294i, -1i, -1i, 48286i, i32(-2147483648), -1i, i32(-2147483648), -17080i, -1i, 4068i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = false;
    global1 = Struct_1(_wgslsmith_clamp_vec2_i32(arg_0.a, -global1.a, arg_0.a));
    let var_2 = i32(-1i) * -1i;
    global2 = array<i32, 28>();
    return 990u;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = Struct_2(select(arg_2.a, vec3<bool>(all(vec3<bool>(false, true, true)), true, true), vec3<bool>(50649u > arg_2.b.x, arg_2.a.x, arg_2.a.x)), vec3<u32>(1u, 1u, min(4294967295u, 1653u)) << (arg_2.b % vec3<u32>(32u)));
    global0 = array<vec3<i32>, 14>();
    var var_1 = Struct_2(select(select(arg_2.a, var_0.a, true | var_0.a.x), vec3<bool>(var_0.a.x, true, select(all(var_0.a), var_0.a.x, false)), arg_2.a), arg_2.b);
    var var_2 = u_input.b;
    let var_3 = var_0.a.yx;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-1059f, arg_1)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(311f, arg_1) + vec2<f32>(-1099f, arg_1)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-339f, arg_1), vec2<f32>(arg_1, arg_1)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1000f) + vec2<f32>(1350f, arg_1)))))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_mod_u32(~u_input.c.x, func_2(arg_0.b, -reverseBits(_wgslsmith_add_i32(arg_0.a, 2147483647i)), vec2<bool>(true, !select(false, true, true)), vec3<u32>(~u_input.c.x, 0u, 1u)));
    global0 = array<vec3<i32>, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -394f)))) - _wgslsmith_f_op_vec2_f32(func_3(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * var_1.x), Struct_2(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, 9068u), vec3<u32>(1u, u_input.c.x, arg_0.c)))))));
    var var_2 = arg_1;
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(~min(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), firstTrailingBit(4294967295u)), 88018u), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(global2[_wgslsmith_index_u32(~u_input.c.x, 28u)] ^ reverseBits(global1.a.x), u_input.a.x)));
    var var_0 = 1867i;
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, -3915i), -15111i);
    var var_2 = u_input.c.x;
    let var_3 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_1), abs(u_input.b.wx) << (vec2<u32>(func_1(Struct_4(global1.a.x, Struct_1(u_input.a), u_input.c.x), Struct_3(vec4<f32>(-1763f, 755f, -1708f, -993f), 1083f, global1.a.x), vec2<f32>(618f, 119f)), ~u_input.c.x) % vec2<u32>(32u))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(362f)), 453f, _wgslsmith_f_op_f32(abs(-1447f)), _wgslsmith_f_op_f32(f32(-1f) * -665f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1886f)))), 501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1654f + 1745f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) > _wgslsmith_f_op_f32(sign(356f)))), _wgslsmith_clamp_i32(var_3.a.x, 1i, var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, select(firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u), _wgslsmith_sub_u32(u_input.c.x, 4294967295u))), ~countOneBits(vec2<u32>(1u, u_input.c.x)), 514f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) * var_4.a.x)), var_4.a.x, select(select(min(vec4<i32>(1i, 8064i, -2147483647i, var_3.a.x), abs(vec4<i32>(25762i, global2[_wgslsmith_index_u32(u_input.c.x, 28u)], -1i, 48946i))), ~vec4<i32>(-1i, -22239i, var_1, var_4.c), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)), _wgslsmith_div_vec4_i32(~firstLeadingBit(u_input.b), u_input.b), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(444f * _wgslsmith_f_op_f32(var_4.b - 355f)), var_4.b, _wgslsmith_f_op_vec2_f32(func_3(i32(-1i) * -39023i, -1209f, Struct_2(vec3<bool>(true, true, true), vec3<u32>(56923u, u_input.c.x, 1u)))).x, var_4.a.x)));
}

