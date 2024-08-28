struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-38488i, -26111i, i32(-2147483648), 1i);

var<private> global1: array<vec4<f32>, 32>;

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    global1 = array<vec4<f32>, 32>();
    var var_0 = 1000f;
    let var_1 = !(!(all(vec4<bool>(true, true, true, true)) & !(u_input.a.x < 15017u)));
    var var_2 = firstTrailingBit(~_wgslsmith_mult_vec3_u32(u_input.b.xyz, vec3<u32>(_wgslsmith_div_u32(1u, u_input.a.x), 1u, 1u)));
    var var_3 = -1071f;
    return 0u;
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_2(~((i32(-1i) * -58585i) << (0u % 32u)) < firstLeadingBit(global0.x & countOneBits(0i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2332f + -367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2936f, -562f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1009f)))))));
    let var_1 = vec4<bool>(true, false, false, !any(select(!vec4<bool>(var_0.a, false, false, false), vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a))));
    var var_2 = Struct_3(Struct_2(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-232f)))))), global0.x, var_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * var_0.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c.b - _wgslsmith_f_op_f32(-var_0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(2059f)), _wgslsmith_f_op_f32(-var_2.a.b), var_0.b)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 693f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.b + -2119f)))), select(var_1.xyx, vec3<bool>(var_2.c.a == any(var_1), false | any(vec3<bool>(true, var_1.x, false)), firstLeadingBit(var_2.b) == -8631i), vec3<bool>(true, false, !all(var_1)))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1029f)) + var_0.b)))), var_2.c.b, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(select(713f, _wgslsmith_div_f32(1013f, 1000f), all(var_1.yz))))), var_2.c.b);
    return u_input.d.x | _wgslsmith_mod_i32(-(1i << (_wgslsmith_mult_u32(u_input.b.x, 4294967295u) % 32u)), -2147483647i);
}

fn func_1(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(func_2() & _wgslsmith_sub_u32(1u, u_input.c.x)), u_input.c.x << (30053u % 32u)), 22u)];
    var var_1 = _wgslsmith_f_op_f32(-577f + 1000f);
    let var_2 = ~min(1i, -func_3(_wgslsmith_mod_i32(35683i, -2147483647i)));
    var var_3 = vec3<u32>(abs(71318u), ~13873u >> (_wgslsmith_clamp_u32(var_0.d, ~_wgslsmith_mult_u32(0u, var_0.d), 7539u) % 32u), 4294967295u);
    let var_4 = arg_0;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 22>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(121f, _wgslsmith_f_op_f32(f32(-1f) * -534f))), -1216f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1382f), -922f)))), ~u_input.b.xzz, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-select(vec4<i32>(7465i, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(-22542i, -15845i, -71353i, u_input.d.x), vec4<bool>(false, false, true, true)), ~vec4<i32>(u_input.d.x, u_input.d.x, -36385i, u_input.d.x)), vec4<i32>(~(global0.x | 33618i), i32(-1i) * -68718i, select(global0.x, -2147483647i, u_input.a.x == u_input.c.x), reverseBits(_wgslsmith_add_i32(-39652i, -1i)))), countOneBits(0u), _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, -1i, -29372i) | -u_input.d, ~func_1(Struct_4(Struct_3(Struct_2(true, -1768f), u_input.d.x, Struct_2(true, 783f)), vec3<f32>(-478f, -517f, 906f), u_input.c.x))));
    var var_1 = vec2<bool>(false, true);
    var var_2 = ~(abs(u_input.b) | u_input.b);
    var var_3 = Struct_3(Struct_2(any(select(vec2<bool>(var_1.x, false), vec2<bool>(false, true), vec2<bool>(true, var_1.x))), -2887f), var_0.c, Struct_2(any(select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, false, false), select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_4 = true;
    global4 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_mult_u32(var_0.d, ~55884u));
}

