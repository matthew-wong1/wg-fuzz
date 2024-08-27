struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    let var_0 = firstLeadingBit(abs(abs(u_input.a.x)));
    let var_1 = u_input.a;
    var var_2 = -1918i & (u_input.b ^ _wgslsmith_mod_i32(var_1.x, reverseBits(26805i)));
    var var_3 = -vec3<i32>(-2147483647i & _wgslsmith_dot_vec3_i32(var_1.yyw, u_input.a.zyz), 990i, ~(-_wgslsmith_dot_vec3_i32(var_1.yxz, vec3<i32>(arg_0.d, arg_0.d, -1i))));
    var_2 = var_3.x;
    return arg_0;
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(arg_0.e, arg_0.d) << (4294967295u % 32u), ~(~(arg_0.d ^ u_input.a.x)));
    global0 = var_0.x;
    let var_1 = arg_0.b;
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(-139f - global1.b.x);
    return abs(29817u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    global1 = Struct_3(global1.a, vec4<f32>(332f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f + 1157f) * _wgslsmith_f_op_f32(max(1263f, _wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_f32(414f * global1.d)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), -475f), _wgslsmith_f_op_f32(step(271f, global1.c.x)));
    let var_0 = ~(~func_2(func_1(func_1(Struct_4(global1.a.a.yz, global1.a, 36952u, 2147483647i, arg_3), 15609u), 18817u)));
    global0 = 31696i;
    let var_1 = true;
    global1 = Struct_3(global1.a, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -689f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global1.b.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(-529f, 147f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1186f, arg_1, 703f, arg_1)))), _wgslsmith_f_op_vec2_f32(global1.b.yw - vec2<f32>(arg_1, global1.d)), global1.d);
    return global1.a;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    global0 = 21413i;
    global0 = ~u_input.c.x;
    var var_0 = abs(_wgslsmith_mod_i32(-arg_0.a.x << (7770u % 32u), ~(-u_input.c.x))) ^ (i32(-1i) * -_wgslsmith_dot_vec3_i32(~u_input.c.wzy, vec3<i32>(u_input.c.x, 1i, u_input.b)));
    var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(-9199i, firstTrailingBit(_wgslsmith_add_i32(-1i ^ arg_0.a.x, u_input.a.x))), u_input.b);
    var var_1 = arg_2;
    return _wgslsmith_div_i32(-58838i, func_1(Struct_4(vec2<u32>(arg_1.a.x, arg_1.a.x), arg_1, 20691u, u_input.c.x, ~arg_0.a.x), func_1(Struct_4(global1.a.a.yz, Struct_1(arg_1.a), 47783u, 2147483647i, 1i), arg_1.a.x).b.a.x).e) << (firstTrailingBit(~arg_1.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(global1.a.a.x, ~abs(~1u));
    let var_1 = ~(~(vec4<u32>(firstLeadingBit(21848u), 85700u, _wgslsmith_mult_u32(var_0.x, 4294967295u), _wgslsmith_add_u32(1u, 5976u)) ^ max(~vec4<u32>(global1.a.a.x, var_0.x, 43017u, 0u), vec4<u32>(var_0.x, var_0.x, 0u, 0u) >> (vec4<u32>(83517u, 25887u, var_0.x, 55500u) % vec4<u32>(32u)))));
    global0 = func_4(Struct_5(~(vec3<i32>(u_input.c.x, 61751i, 5749i) ^ u_input.a.zyy)), func_3(vec3<u32>(func_2(func_1(Struct_4(vec2<u32>(1u, 33213u), Struct_1(vec3<u32>(4294967295u, 0u, 79024u)), 4294967295u, u_input.a.x, -1i), var_1.x)), var_1.x, countOneBits(_wgslsmith_div_u32(100192u, var_0.x))), 380f, vec3<u32>(global1.a.a.x, var_1.x, max(4294967295u, var_1.x ^ var_0.x)), -8952i), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true)), vec3<bool>(false, false, any(vec2<bool>(true, true))), true), vec3<bool>(!all(vec4<bool>(false, true, true, false)), _wgslsmith_add_u32(global1.a.a.x, global1.a.a.x) <= (1257u | var_1.x), any(vec3<bool>(true, true, true))), select(vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))));
    var var_2 = select(!vec2<bool>(min(-20061i, 36252i) != ~u_input.a.x, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(true, true, false)), vec2<bool>(true, true), true), !vec2<bool>(any(vec3<bool>(true, false, false)), true), vec2<bool>(true, 25445i < (u_input.a.x << (17073u % 32u)))), vec2<bool>(true, all(vec2<bool>(true, true))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.x + global1.d)))), -541f) * global1.d);
    var var_4 = firstLeadingBit(-select(u_input.a, select(u_input.c, u_input.a, var_2.x) << (var_1 % vec4<u32>(32u)), var_2.x));
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(690f, var_3))))), global1.b.x, global1.c.x));
    var var_6 = !any(select(!vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(false, false, true, false || var_2.x), !all(vec4<bool>(var_2.x, false, false, true))));
    var_2 = vec2<bool>(true, var_2.x & any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, var_2.x, var_2.x), true), vec3<bool>(var_2.x, true, true), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1, vec4<u32>(_wgslsmith_dot_vec4_u32(var_1, var_1) ^ 38247u, _wgslsmith_dot_vec2_u32(min(global1.a.a.yy, vec2<u32>(global1.a.a.x, 12115u)), reverseBits(var_1.yy)), _wgslsmith_dot_vec3_u32(func_1(Struct_4(global1.a.a.zy, Struct_1(var_1.zwz), 1u, -13822i, -16759i), 4294967295u).b.a, _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.x, 126783u), vec3<u32>(0u, var_0.x, 23257u))), func_2(Struct_4(global1.a.a.xx, global1.a, var_1.x, 3145i, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) * _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1035f + -115f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, -894f) + _wgslsmith_f_op_f32(f32(-1f) * -436f)) - 134f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-647f, 316f, -181f, global1.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, var_3, -1072f, var_5.x))))));
}

