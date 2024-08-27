struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-544f, 1104f, -483f), vec4<u32>(0u, 0u, 1u, 1u), vec2<f32>(-840f, 156f), 861f, vec2<f32>(1212f, 251f));

var<private> global1: f32 = 1376f;

var<private> global2: f32;

var<private> global3: vec3<f32> = vec3<f32>(-863f, 157f, -351f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(-404f, global0.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3.x, -1000f)))))), vec4<u32>(max(~u_input.b, ~(u_input.b | 28081u)), abs(global0.b.x), _wgslsmith_dot_vec3_u32(global0.b.xxz, _wgslsmith_mod_vec3_u32(global0.b.xzy, global0.b.ywx) >> (global0.b.zwx % vec3<u32>(32u))), u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(452f - global3.x)), vec2<f32>(_wgslsmith_f_op_f32(805f * -864f), global3.x)))), -1426f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 844f)), _wgslsmith_f_op_vec2_f32(ceil(global0.a.yx))))));
    var var_1 = 4294967295u & _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(0u, 4294967295u)) ^ u_input.b, 3660u);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), vec4<u32>(global0.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, global0.b.x, u_input.b, 0u), firstTrailingBit(vec4<u32>(1u, u_input.b, global0.b.x, 59472u))), 30974u), u_input.b, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 41238u, 38876u, 1u), var_0.b)), 4294967295u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(ceil(global0.c)))))), -772f, vec2<f32>(_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x), _wgslsmith_f_op_f32(step(323f, -1000f))));
    let var_2 = u_input.a;
    var var_3 = Struct_2(global0.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - -1000f)), _wgslsmith_f_op_f32(-global3.x), global0.d, global0.a.x), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, -714f, -135f, -274f), vec4<f32>(-187f, var_0.d, global0.a.x, var_0.c.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_0.c.x, -547f, -303f)) + vec4<f32>(global3.x, global0.e.x, -803f, global0.a.x)))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(0u), ~reverseBits(4267u), ~global0.b.x, global0.b.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0.b.x, var_3.c.b.x), _wgslsmith_mult_u32(1704u, 1u), ~0u, 4294967295u), firstLeadingBit(vec4<u32>(32813u, u_input.b, u_input.b, 0u))));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    global1 = global3.x;
    var var_0 = u_input.a;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global3.x, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(1580f - -1427f)))));
    let var_1 = Struct_2(_wgslsmith_mod_u32(reverseBits(3740u), 18942u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f + -202f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_f32(-global3.x)), -245f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x * global3.x), global3.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-361f, global3.x, 212f), vec3<f32>(global0.c.x, global3.x, global3.x)))), func_3(), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-172f, _wgslsmith_f_op_f32(-1457f * global0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.zz) - vec2<f32>(322f, 878f)), vec2<bool>(any(vec3<bool>(arg_0, true, arg_0)), all(vec2<bool>(false, arg_0))))), _wgslsmith_f_op_f32(1f * global3.x), vec2<f32>(_wgslsmith_div_f32(global0.c.x, global0.c.x), global3.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-873f, global3.x, global3.x, 1838f) - vec4<f32>(global3.x, 519f, -1467f, global0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 296f, 696f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, global3.x, 277f, 305f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(608f, 2163f, -276f, -326f))))))));
    let var_2 = 4294967295u;
    return _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(_wgslsmith_mult_i32(44261i, -u_input.c), -(~_wgslsmith_add_i32(u_input.a, -2147483647i))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.c, u_input.a) & _wgslsmith_sub_vec2_i32(vec2<i32>(-11167i, u_input.c), vec2<i32>(u_input.a, 56514i))), max(vec2<i32>(~u_input.c, u_input.a), vec2<i32>(1i, 1i))) ^ (_wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(8174i), ~0i), ~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(25395i, u_input.a))) | _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 3238i), vec2<i32>(-1i, -10454i)), func_2(true)));
    let var_1 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(true, any(vec4<bool>(false, true, true, true)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(304f)) + global3.x)), global3.x, any(var_1.yz))));
    global0 = Struct_1(vec3<f32>(-144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.e.x * -1564f))) + global0.e.x), _wgslsmith_f_op_f32(ceil(-169f))), vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b) >> (global0.b.xzw % vec3<u32>(32u)), global0.b.zxx), func_3().x, any(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 13937u), min(func_3().wy, global0.b.zx)), 26047u, ~(u_input.b & 4294967295u) ^ 69256u), vec2<f32>(global3.x, 208f), -799f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.d)), global3.x))));
    var_0 = reverseBits(vec2<i32>(i32(-1i) * -u_input.c, var_0.x)) << ((~firstLeadingBit(~global0.b.xz) >> (abs(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(global0.b, global0.b))) % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_2(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b, global0.b.x, _wgslsmith_clamp_u32(102329u, u_input.b, global0.b.x)), 0u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.e.x, 733f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f) + 1158f), -932f))), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), vec4<u32>(1u, 0u, _wgslsmith_mult_u32(1u, u_input.b), func_3().x), _wgslsmith_f_op_vec2_f32(-global0.e), -772f, _wgslsmith_div_vec2_f32(global3.zy, global3.xz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-121f + 211f), _wgslsmith_div_f32(global0.c.x, -2078f), _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(trunc(global0.c.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.c.x), global3.x, global0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-441f, global0.e.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(abs(2026f))))) + global3.x)));
    global2 = global0.c.x;
    let var_0 = 39783u;
    var var_1 = !(!(_wgslsmith_mod_i32(~(-8251i), -u_input.a) < _wgslsmith_add_i32(~(-2147483647i), firstTrailingBit(0i))));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-683f + -1474f)));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.x), var_2.c.b.xwy, _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(1194f - global3.x))), func_1().c.b.zy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.x, -1318f)));
}

