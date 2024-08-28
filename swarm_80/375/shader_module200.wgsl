struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1000f, vec4<u32>(48417u, 0u, 54049u, 32101u), -2178f), Struct_1(484f, vec4<u32>(62903u, 58517u, 0u, 37325u), -272f), Struct_1(570f, vec4<u32>(10938u, 86901u, 14926u, 43709u), -589f), Struct_1(2242f, vec4<u32>(1u, 48503u, 0u, 15554u), 1044f));

var<private> global1: Struct_1 = Struct_1(-850f, vec4<u32>(1u, 4294967295u, 2568u, 19163u), 752f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~select(global1.b, vec4<u32>(global1.b.x, u_input.c.x, u_input.e.x, 0u), vec4<bool>(false, false, false, false))), arg_0.b) << (firstLeadingBit(_wgslsmith_mult_u32(14948u, 0u)) % 32u);
    global1 = global0[_wgslsmith_index_u32(41366u, 4u)];
    global0 = array<Struct_1, 4>();
    var var_1 = u_input.d.x;
    global0 = array<Struct_1, 4>();
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    global0 = array<Struct_1, 4>();
    let var_0 = Struct_1(612f, vec4<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, arg_0.b.x, arg_1.b.x) | vec4<u32>(0u, 3366u, u_input.a, arg_1.b.x), arg_0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4127u, global1.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, arg_0.b.x), arg_1.b.yz)) & min(~arg_1.b.x, firstLeadingBit(global1.b.x)), _wgslsmith_mod_u32(53086u, 53507u)), -515f);
    global1 = Struct_1(-446f, ~(~(~select(vec4<u32>(global1.b.x, var_0.b.x, 16662u, var_0.b.x), arg_1.b, vec4<bool>(true, true, true, false)))), -1000f);
    let var_1 = 1185f;
    var var_2 = vec4<f32>(-704f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c))))), var_1), var_1, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(abs(arg_1.a))));
    return ~(-2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -3241i, u_input.d.x, max(u_input.d.x, -2147483647i), 1i), -vec4<i32>(26149i, arg_3, u_input.d.x, -11678i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.x, arg_0.b.x, 4294967295u, arg_1.b.x), global1.b) % vec4<u32>(32u))) ^ vec4<i32>(func_3(Struct_1(_wgslsmith_f_op_f32(-global1.a), vec4<u32>(25001u, 4294967295u, arg_1.b.x, arg_1.b.x) ^ arg_0.b, _wgslsmith_f_op_f32(max(1051f, 167f))), func_1(arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, arg_1.a, arg_0.a)))), 18387i, _wgslsmith_clamp_i32(max(_wgslsmith_div_i32(24105i, arg_3), countOneBits(2147483647i)), abs(0i ^ u_input.d.x), _wgslsmith_div_i32(arg_3, select(-44894i, u_input.d.x, arg_2.x))), min(min(_wgslsmith_dot_vec4_i32(vec4<i32>(5163i, 2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(arg_3, arg_3, arg_3, 8690i)), u_input.d.x), u_input.d.x));
    var var_1 = arg_2.x;
    global0 = array<Struct_1, 4>();
    return ~arg_0.b.x;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * -1291f) * -941f) * arg_0.c))), -1701f);
    global0 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(704f, 2378f, 681f, global1.a), vec4<f32>(1157f, arg_0.c, 890f, arg_0.a), vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c, var_0.x, 270f, -1344f))))), vec4<f32>(826f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -955f)), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -427f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-714f, -101f, 1315f, -1868f) * vec4<f32>(981f, arg_0.a, -278f, arg_0.c)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, -1067f, -1832f, 1263f), vec4<f32>(-1898f, var_0.x, -934f, -748f))))))));
    global1 = Struct_1(-518f, ~vec4<u32>(~0u, _wgslsmith_add_u32(2102u, u_input.c.x), ~u_input.c.x, 249u ^ arg_0.b.x) ^ ~(~(u_input.b & vec4<u32>(0u, arg_0.b.x, global1.b.x, 0u))), -1232f);
    var var_2 = u_input.b;
    return ~(vec3<i32>(-1i, 1i, -33062i) << (~arg_0.b.zxw % vec3<u32>(32u))) << (~(~vec3<u32>(u_input.b.x, ~var_2.x, u_input.b.x | arg_0.b.x)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(-179f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1634f, -1818f) - _wgslsmith_f_op_f32(abs(global1.a))), 641f))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e << (countOneBits(global1.b) % vec4<u32>(32u)), ~(~u_input.b)), min(global1.b & global1.b, global1.b) << ((vec4<u32>(global1.b.x, global1.b.x, global1.b.x, u_input.e.x) << (vec4<u32>(1u, u_input.a, u_input.e.x, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_div_u32(120797u, 20154u), ~1u, global1.b.x, 1u)), 140f);
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) + _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(abs(var_0.a))), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-588f, _wgslsmith_f_op_f32(-183f - _wgslsmith_f_op_f32(f32(-1f) * -640f)))) + global1.c));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(29708i, _wgslsmith_add_i32(countOneBits(u_input.d.x), -1i)), firstTrailingBit(-11710i), 0i, _wgslsmith_dot_vec3_i32(func_4(global0[_wgslsmith_index_u32(func_2(func_1(Struct_1(global1.c, vec4<u32>(var_0.b.x, u_input.a, global1.b.x, 132410u), global1.a)), global0[_wgslsmith_index_u32(~u_input.e.x, 4u)], select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), 18908i), 4u)]), vec3<i32>(_wgslsmith_clamp_i32(-5156i, i32(-1i) * -1i, abs(u_input.d.x)), -22064i, 71208i)));
    var var_2 = -(_wgslsmith_clamp_i32(34973i, 24614i, u_input.d.x) ^ _wgslsmith_add_i32(1i, ~var_1.x));
    let var_3 = global1.a;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 22483u), 1u), 4u)];
    var var_4 = _wgslsmith_mod_u32(func_1(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_0.b, global1.b) >> (global1.b.x % 32u), 4u)]).b.x, u_input.a);
    let var_5 = ~_wgslsmith_div_i32(2147483647i, u_input.d.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(min(var_0.a, global1.c)))))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 25991u, 1u, 4294967295u | var_0.b.x), vec4<u32>(_wgslsmith_mult_u32(var_0.b.x, u_input.a), global1.b.x << (9510u % 32u), 5626u, _wgslsmith_mult_u32(global1.b.x, u_input.b.x))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x, -1245f);
}

