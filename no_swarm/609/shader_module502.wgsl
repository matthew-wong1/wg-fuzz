struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<Struct_2, 14>;

var<private> global2: vec2<i32> = vec2<i32>(-1i, -1i);

var<private> global3: Struct_3;

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 14u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(959f)), 550f), vec2<f32>(381f, 333f)))), firstLeadingBit(max(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, global4.a, global3.a)), ~vec3<u32>(15064u, 10774u, arg_0.a)), ~vec3<u32>(77536u, 36750u, u_input.c))), ~(firstLeadingBit(vec3<u32>(global3.a, 1u, arg_0.a)) | select(vec3<u32>(global3.a, 102447u, arg_0.a), vec3<u32>(104179u, global4.a, 7669u), vec3<bool>(var_0.a, false, true))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_0.a, 87133u, arg_0.a)), firstLeadingBit(vec3<u32>(36840u, arg_0.a, global3.a))), ~select(vec3<u32>(25439u, 1u, 48653u), vec3<u32>(0u, 36034u, 20710u), true)), -66974i);
    global4 = Struct_3(~_wgslsmith_mod_u32(global4.a, ~(~0u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(176f, 613f, -225f) + vec3<f32>(var_1.a.x, 188f, var_1.a.x)), vec3<f32>(var_1.a.x, var_1.a.x, 780f), all(vec4<bool>(false, var_0.a, false, var_0.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -1000f) + vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1018f, 1492f, 1222f), vec3<f32>(320f, var_1.a.x, var_1.a.x))))), var_0.a))), (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 8718u), vec2<u32>(u_input.c, global3.a)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 28312u, 102579u, 37713u), vec4<u32>(0u, 89716u, u_input.c, global4.a)) % 32u)) > (select(1u, 1u, var_0.a) << (~(~9053u) % 32u))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(-929f))))), _wgslsmith_f_op_f32(-var_2.x), -638f);
    return vec4<bool>(true | (var_2.x > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1494f))), false, var_0.a, var_1.a.x <= 555f);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    global3 = Struct_3(~_wgslsmith_add_u32(~arg_0.b.x, ~1u));
    let var_0 = !any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), func_3(Struct_3(13498u)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)), ~abs(arg_0.b), _wgslsmith_sub_vec3_u32(vec3<u32>(~(~u_input.c), global4.a, ~1u), arg_0.b), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(global2.x, -45345i, global2.x, arg_0.d)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, 8508i), vec2<i32>(2147483647i, -1i)), reverseBits(global2.x), -47599i, ~(-82883i)), firstLeadingBit(vec4<i32>(-19072i, u_input.a.x, 1i, -46673i) << (vec4<u32>(1u, 1u, global4.a, arg_1) % vec4<u32>(32u))))));
    global0 = array<Struct_1, 13>();
    var var_2 = Struct_2(!(all(func_3(Struct_3(arg_1))) || var_0));
    return Struct_3(arg_0.c.x);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = func_2(global0[_wgslsmith_index_u32(firstTrailingBit((arg_0 << (_wgslsmith_mod_u32(global3.a, u_input.b) % 32u)) << (_wgslsmith_add_u32(~28109u, abs(arg_0)) % 32u)), 13u)], 4294967295u);
    var var_1 = u_input.b;
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -119f);
    global3 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_div_f32(445f, arg_2)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1194f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -768f)))), ~max(vec3<u32>(arg_0, 4294967295u, 36274u), vec3<u32>(45870u, u_input.b, 1u)) & firstLeadingBit(vec3<u32>(1u, global4.a, var_0.a)), firstLeadingBit(vec3<u32>(func_2(global0[_wgslsmith_index_u32(var_2.a, 13u)], global4.a).a, 28669u, global3.a & global4.a)), min(22948i, reverseBits(-global2.x))), global3.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(4294967295u);
    global0 = array<Struct_1, 13>();
    var var_1 = 556f;
    let var_2 = Struct_3(~(_wgslsmith_div_u32(~4294967295u, global4.a) | ~(~1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2082f, 400f)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) - _wgslsmith_f_op_f32(max(953f, 692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1u, Struct_3(0u), 526f))))), vec3<u32>(global3.a, _wgslsmith_mod_u32(35666u, max(_wgslsmith_div_u32(u_input.b, 1u), var_2.a)), 0u), vec3<u32>(_wgslsmith_div_u32((var_2.a >> (u_input.c % 32u)) | ~54055u, u_input.c), abs(global3.a), 4294967295u), -11681i);
    var var_4 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(false, false, false, true))), func_3(func_2(Struct_1(var_3.a, var_3.c, vec3<u32>(0u, 26774u, 2110u), -8271i), 4294967295u)), vec4<bool>(reverseBits(u_input.c) > (global4.a << (0u % 32u)), false, select(any(vec2<bool>(true, true)), true, false), true)));
    global3 = var_2;
    global3 = func_2(global0[_wgslsmith_index_u32(global3.a, 13u)], _wgslsmith_dot_vec3_u32(var_3.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.a, u_input.c, u_input.c) | _wgslsmith_mult_vec3_u32(var_3.b, vec3<u32>(global4.a, global4.a, u_input.c)), countOneBits(vec3<u32>(1u, var_2.a, var_2.a)), ~var_3.b)));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.a, var_3.b.x, var_2.a), var_3.b) | (_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.b.x, 7420u, 33124u), var_3.b) ^ var_3.c)), ~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(39109u, 1u, var_2.a, u_input.c) >> (vec4<u32>(global4.a, 4294967295u, 1u, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 58803u, global4.a, 0u), vec4<u32>(var_3.b.x, 0u, 1u, 132760u)))), global2.x);
}

