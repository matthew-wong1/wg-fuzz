struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1470f, 192f, 957f, 482f, -1000f);

var<private> global1: f32 = 2299f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    let var_0 = min(_wgslsmith_div_vec2_i32(vec2<i32>(-2449i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3.d.x, 1i, -2147483647i), countOneBits(arg_1))), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_3.d.x), vec2<i32>(0i, -36544i))) >> (vec2<u32>(34691u, 800u) % vec2<u32>(32u))), abs(~abs(vec2<i32>(arg_3.d.x, arg_1.x)) | min(vec2<i32>(arg_1.x, arg_3.d.x), vec2<i32>(arg_2.a, arg_1.x))));
    var var_1 = u_input.b;
    var var_2 = arg_0.x;
    var_1 = 33225u;
    var var_3 = true;
    return 1u;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(2511u, u_input.d.x), 5u)] + 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25824u, 5u)]))), 136f);
    var var_1 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    global1 = -2406f;
    let var_2 = vec2<i32>(~0i, u_input.a.x) >> (~firstTrailingBit(u_input.d.wz) % vec2<u32>(32u));
    global0 = array<f32, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true), firstTrailingBit(vec4<i32>(-2147483647i, -1i, arg_1.x, var_2.x)), Struct_3(var_2.x), Struct_2(Struct_1(u_input.c.x, vec4<bool>(true, true, true, false), u_input.d.x, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1084f, 685f, 815f) * var_0), true, vec4<i32>(-2147483647i, var_2.x, 0i, 18129i) ^ vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, var_2.x))), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -156f))))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u), u_input.d), 4294967295u), -(vec2<i32>(u_input.a.x, u_input.a.x) << (u_input.c % vec2<u32>(32u))))), _wgslsmith_f_op_f32(round(-999f)))));
    let var_0 = Struct_1(u_input.c.x, vec4<bool>(true, arg_0, any(!vec4<bool>(true, arg_0, arg_0, arg_0)) && true, true == arg_0), _wgslsmith_add_u32(1u >> (0u % 32u), u_input.b), true, any(vec2<bool>(arg_0, ~u_input.c.x > abs(u_input.b))));
    global1 = global0[_wgslsmith_index_u32(select(~1u >> (~(~_wgslsmith_mod_u32(u_input.c.x, var_0.a)) % 32u), 86314u, !select(true, true, all(var_0.b.xz)) || (_wgslsmith_div_u32(3533u, firstTrailingBit(19284u)) > ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, u_input.b, 4294967295u, 84719u)))), 5u)];
    return Struct_3(~u_input.a.x & _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, 0i), -2147483647i), u_input.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global0 = array<f32, 5>();
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1096f + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, arg_3.c, 87u), vec4<u32>(38183u, 4294967295u, u_input.b, var_0.c)), var_0.a), func_3(!var_0.b.xw, vec4<i32>(-43710i, -2404i, 2147483647i, 1i), func_1(true), Struct_2(arg_3, vec3<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(26482u, 5u)]), true, vec4<i32>(0i, u_input.a.x, 1i, arg_2.a)))), 5u)]) + _wgslsmith_f_op_f32(f32(-1f) * -679f));
    var var_2 = -938f;
    var_1 = global0[_wgslsmith_index_u32(arg_3.c, 5u)];
    return all(vec3<bool>(!any(!vec4<bool>(arg_3.b.x, false, arg_1, true)), arg_1, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~0u, vec4<bool>(true & all(vec4<bool>(false, false, true, true)), func_4(Struct_3(1i), true, func_1(true), Struct_1(2124u, vec4<bool>(true, true, true, false), u_input.c.x, true, any(vec4<bool>(false, false, false, true)))), 34842u != ((u_input.c.x >> (13614u % 32u)) | u_input.b), true), 1u, ~(-func_1(true).a) != -abs(_wgslsmith_add_i32(2147483647i, u_input.a.x)), true);
    global0 = array<f32, 5>();
    var var_1 = abs(u_input.d);
    global1 = _wgslsmith_f_op_f32(max(-448f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x & u_input.d.x, 5u)] + 1687f)));
    var_1 = ~vec4<u32>(2563u, var_1.x, var_0.a, var_0.c) | (vec4<u32>(_wgslsmith_clamp_u32(var_1.x, _wgslsmith_mult_u32(0u, var_0.c), func_3(vec2<bool>(var_0.d, var_0.b.x), vec4<i32>(u_input.a.x, u_input.a.x, 20498i, -1i), Struct_3(0i), Struct_2(Struct_1(var_1.x, var_0.b, 14992u, var_0.d, true), vec3<f32>(global0[_wgslsmith_index_u32(var_0.a, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(var_1.x, 5u)]), false, vec4<i32>(-35123i, 17787i, u_input.a.x, 2624i)))), 0u, _wgslsmith_clamp_u32(1u, abs(u_input.b), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 0u) << (~u_input.d % vec4<u32>(32u)));
    global0 = array<f32, 5>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(10587u, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d ^ u_input.d, ~vec4<u32>(551u, 4294967295u, 21008u, 40936u)), 5u)]) + vec2<f32>(-562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1510f)) - -1398f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], -976f)));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~(var_1.x << (20244u % 32u)), 5u)])))));
    var var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~var_1.xy, vec2<u32>(~var_1.x, u_input.b)), ~min(~var_1.xy, _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(var_0.a, 14221u)), vec2<u32>(48579u, 11659u) << (vec2<u32>(53611u, var_1.x) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(0u >> (_wgslsmith_mod_u32(var_0.a >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1.x, u_input.d.x))) % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.a, 8364u)), u_input.c)), ~_wgslsmith_mod_u32(~31707u, ~select(var_3.x, 22634u, var_0.b.x)), reverseBits(abs(u_input.a.x)));
}

