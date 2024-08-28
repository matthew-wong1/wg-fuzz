struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5) -> vec2<i32> {
    global0 = arg_0.d.x;
    global1 = arg_0.b.a.x;
    let var_0 = arg_0.b.c.yyw;
    var var_1 = max(~0i, countOneBits(u_input.b >> (abs(~110856u) % 32u)));
    let var_2 = Struct_3(_wgslsmith_mult_u32(28298u ^ u_input.a, ~(u_input.c.x >> (u_input.c.x % 32u))) > ~_wgslsmith_mult_u32(29398u, 91796u), arg_0.b, _wgslsmith_add_i32(-1i, i32(-1i) * -min(arg_0.b.b.a.x, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-177f, _wgslsmith_f_op_f32(-arg_0.b.a.x))) + arg_0.d.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x), 509f)));
    return _wgslsmith_mod_vec2_i32(abs(select(var_2.b.b.a, ~firstLeadingBit(arg_0.b.b.a), -112f > var_2.d)), _wgslsmith_mult_vec2_i32(var_2.b.b.a << ((_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(1u, arg_0.a)) << (_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(0u, arg_0.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(1i, 25176i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>) -> f32 {
    var var_0 = ~u_input.b;
    global1 = 1286f;
    var var_1 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, -36136i), arg_0.a << (u_input.c % vec2<u32>(32u))) >> (vec2<u32>(15442u, ~48361u) % vec2<u32>(32u)), max(_wgslsmith_sub_vec2_i32(arg_1.d.a, func_3(Struct_5(58466u, arg_1.c.b, arg_1.c.b.c.zwx, arg_1.c.b.a.xww))), arg_0.a));
    var var_2 = !arg_1.c.b.c.wy;
    var var_3 = all(!vec3<bool>(4294967295u >= _wgslsmith_clamp_u32(1u, u_input.c.x, arg_1.b.x), false, arg_1.a.x));
    return -130f;
}

fn func_1() -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2461f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1132f, 528f))), all(vec2<bool>(true, true))))));
    let var_0 = ~min(-2147483647i, -20844i);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(731f)))));
    let var_1 = true;
    var var_2 = true;
    return vec4<bool>(true, (_wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(-2147483647i, u_input.b)), Struct_4(vec2<bool>(var_1, var_1), vec3<u32>(69u, 1u, 4294967295u), Struct_3(false, Struct_2(vec4<f32>(961f, -1000f, -489f, -836f), Struct_1(vec2<i32>(u_input.b, 10835i)), vec4<bool>(var_1, var_1, var_1, var_1), vec2<bool>(var_1, true)), u_input.b, 529f), Struct_1(vec2<i32>(75713i, -1i)), vec2<i32>(-34767i, u_input.b)), reverseBits(vec3<u32>(u_input.d, 107210u, 4294967295u)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f + -711f) + -1463f)) | var_1, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1649f - 1000f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(314f, 394f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -225f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(-25263i, 2147483647i)), Struct_4(vec2<bool>(var_1, true), vec3<u32>(u_input.d, u_input.a, 62524u), Struct_3(var_1, Struct_2(vec4<f32>(976f, 870f, 567f, 610f), Struct_1(vec2<i32>(var_0, var_0)), vec4<bool>(true, true, var_1, var_1), vec2<bool>(false, true)), 30498i, 109f), Struct_1(vec2<i32>(1i, u_input.b)), vec2<i32>(var_0, var_0)), vec3<u32>(u_input.d, 36604u, u_input.c.x))) - -1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = vec4<bool>(arg_1.a, !any(arg_0.d), select(arg_0.d.x, true, all(!vec2<bool>(false, arg_1.a))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2334f)) != _wgslsmith_f_op_f32(func_2(arg_1.b.b, Struct_4(arg_0.d, vec3<u32>(u_input.d, u_input.d, 103798u), Struct_3(arg_0.c.x, Struct_2(arg_1.b.a, arg_0.b, vec4<bool>(arg_0.c.x, false, arg_0.d.x, true), arg_1.b.d), -1i, 1712f), arg_0.b, arg_1.b.b.a), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(210f + arg_0.a.x) - _wgslsmith_f_op_f32(arg_0.a.x - -680f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.x + -1580f))))), -1524f)) + -1000f);
    global1 = 1566f;
    global1 = _wgslsmith_f_op_f32(arg_0.a.x + -939f);
    var var_2 = vec4<i32>(u_input.b, -18978i, -1i, countOneBits(1i));
    return select(select(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, 11306u, u_input.c.x, u_input.c.x)), abs(u_input.a), u_input.c.x), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.d, 42424u), vec3<u32>(51515u, u_input.c.x, 6153u)), vec3<u32>(1u, 1u, 1u)), arg_1.b.c.yyy), ~(~(vec3<u32>(4294967295u, 43702u, 0u) >> (vec3<u32>(u_input.c.x, 0u, u_input.d) % vec3<u32>(32u))) << (firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.c.x, 8066u, 4294967295u), vec3<u32>(1u, 44863u, 7686u))) % vec3<u32>(32u))), !vec3<bool>(1i != ~arg_1.c, !arg_0.c.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec2<bool>(false, false), func_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1302f, -212f, 242f, -172f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-896f, -1000f, 1573f, -1000f)))), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-2147483647i, u_input.b))), func_1(), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_3(all(vec3<bool>(true, false, true)) || all(vec4<bool>(false, true, true, true)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(175f, -432f, 1007f, -372f) * vec4<f32>(-570f, -1121f, -125f, -1883f)), Struct_1(vec2<i32>(u_input.b, u_input.b)), vec4<bool>(true, true, true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), 4956i, _wgslsmith_f_op_f32(min(-1419f, -1144f)))), Struct_3(2147483647i >= ~_wgslsmith_add_i32(u_input.b, -30388i), Struct_2(vec4<f32>(-300f, _wgslsmith_f_op_f32(step(-1000f, 299f)), 1000f, -566f), Struct_1(vec2<i32>(u_input.b, -1i)), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, 0i))), _wgslsmith_f_op_f32(min(263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-940f)))))), Struct_1(_wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-u_input.b, u_input.b))), ~_wgslsmith_mod_vec2_i32(-countOneBits(vec2<i32>(0i, -1i)), -(vec2<i32>(2147483647i, -1i) | vec2<i32>(u_input.b, u_input.b))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.a.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.b.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.d))), _wgslsmith_f_op_f32(select(-157f, var_0.c.d, false)))));
    global0 = var_0.c.b.a.x;
    var var_1 = abs((-select(24019i, u_input.b, false) << (var_0.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.b.x, u_input.d, 7911u, 4294967295u), vec4<u32>(25308u, u_input.c.x, 0u, var_0.b.x)) | vec4<u32>(4294967295u, var_0.b.x, 0u, 10487u), ~select(vec4<u32>(u_input.c.x, 0u, 0u, 40782u), vec4<u32>(u_input.a, 0u, 61160u, var_0.b.x), var_0.c.b.c)) % 32u));
    var_1 = 1i;
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(~var_0.d.a, abs(vec2<i32>(var_0.d.a.x, -u_input.b))));
    global1 = 1288f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-9739i, -_wgslsmith_sub_i32(-var_0.e.x, firstLeadingBit(var_0.d.a.x)), 31837i));
}

