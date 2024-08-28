struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<i32> {
    return -vec3<i32>(~_wgslsmith_mult_i32(1i, 4140i) & _wgslsmith_dot_vec3_i32(vec3<i32>(-93174i, arg_2.a.x, u_input.d.x) ^ arg_2.b.a, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, -49230i, 17783i), arg_2.a.yxy)), arg_2.b.a.x ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 632i, -2147483647i, u_input.d.x), vec4<i32>(arg_2.b.a.x, u_input.d.x, -2499i, u_input.d.x)), abs(countOneBits(arg_2.a.x)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global1 = vec4<bool>(!all(global1.ywz), all(!select(!global1.yww, global1.zxx, 846f == arg_0.x)), true, true);
    let var_0 = vec4<u32>(abs(_wgslsmith_div_u32(~(u_input.a.x & u_input.a.x), 1u)), u_input.a.x, 19270u, u_input.a.x >> ((26672u ^ ~_wgslsmith_mod_u32(0u, u_input.a.x)) % 32u));
    var var_1 = u_input.a.x;
    var var_2 = u_input.d;
    let var_3 = vec3<bool>(global1.x, global1.x, global1.x);
    return Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.d, vec4<i32>(var_2.x, _wgslsmith_add_i32(43968i, 0i), var_2.x, -2147483647i)), u_input.d), Struct_1(_wgslsmith_sub_vec3_i32(-func_3(666f, u_input.a.yx, Struct_2(u_input.d, Struct_1(vec3<i32>(0i, var_2.x, 83303i))), var_0.wx), firstTrailingBit(vec3<i32>(var_2.x, -2147483647i, var_2.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global0 = 1u;
    global0 = reverseBits(24731u) << (u_input.a.x % 32u);
    global0 = 4294967295u;
    global0 = 4294967295u;
    global0 = ~(~(~_wgslsmith_div_u32(u_input.a.x, 46323u) >> (~(u_input.a.x & u_input.a.x) % 32u)));
    return func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -1000f)), vec2<f32>(-1000f, -1610f), any(global1.yx))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(368f, -394f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-570f, 2151f) + vec2<f32>(1029f, 1846f)), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2017f, -1237f), vec2<f32>(-691f, -432f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2452f, 1648f) + vec2<f32>(218f, -1000f))))))).b;
}

fn func_1() -> Struct_1 {
    global0 = u_input.a.x;
    global1 = !vec4<bool>(global1.x, global1.x, true || !(u_input.a.x > 0u), global1.x);
    global1 = !select(!vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, global1.x, false, any(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), select(vec4<bool>(global1.x, all(vec4<bool>(true, false, global1.x, true)), true, !global1.x), !(!vec4<bool>(global1.x, true, true, true)), select(!vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, global1.x, global1.x, global1.x), global1.x), vec4<bool>(true, false, false, global1.x))));
    let var_0 = u_input.b;
    global1 = vec4<bool>(global1.x, true, any(global1.zyx), _wgslsmith_dot_vec2_u32(~u_input.a.zz ^ min(vec2<u32>(13978u, 7620u), u_input.a.yx), ~(u_input.a.zz << (vec2<u32>(1u, 73899u) % vec2<u32>(32u)))) != _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u, u_input.a.x >> (4294967295u % 32u)), ~0u));
    return func_4(true, func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1128f, 1000f)))), _wgslsmith_f_op_f32(155f - 162f))));
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> Struct_2 {
    var var_0 = ~u_input.a.x;
    var var_1 = vec4<u32>(u_input.a.x, u_input.a.x, firstLeadingBit(0u), firstLeadingBit(u_input.a.x) ^ _wgslsmith_clamp_u32(34188u, ~4294967295u, ~min(u_input.a.x, 5388u)));
    var var_2 = !any(vec2<bool>(u_input.a.x > (var_1.x & 4294967295u), all(select(vec4<bool>(false, false, global1.x, true), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x)))));
    let var_3 = -_wgslsmith_clamp_vec3_i32(-vec3<i32>(i32(-1i) * -23731i, u_input.d.x, u_input.d.x | arg_0.a.a.x), vec3<i32>(arg_0.c.a.x, arg_0.a.a.x >> (var_1.x % 32u), ~_wgslsmith_div_i32(u_input.b, 1i)), func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -965f))))).b.a);
    global0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(max(~countOneBits(var_1.x), ~u_input.a.x), _wgslsmith_add_u32(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, var_1.x))) | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.zwy, u_input.a), ~var_1.x)), ~_wgslsmith_div_u32(~var_1.x, 1u));
    return Struct_2(select(_wgslsmith_mult_vec4_i32(countOneBits(abs(vec4<i32>(u_input.c.x, var_3.x, 21584i, arg_1))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1, u_input.d.x, -1i), vec4<i32>(var_3.x, -30202i, 2147483647i, 16511i)), _wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(2062i, arg_1, u_input.c.x, arg_1)))), u_input.d, false), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 54779i;
    let var_1 = true;
    var_0 = _wgslsmith_div_i32(min(countOneBits(u_input.c.x), 2147483647i), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(-1i << (u_input.a.x % 32u), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-13330i, u_input.c.x), u_input.d.x, u_input.d.x ^ u_input.b) | -max(u_input.d.x, u_input.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1107f))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f + -666f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2157f)))));
    let var_3 = !vec3<bool>(u_input.d.x < 2147483647i, u_input.a.x > ~firstLeadingBit(1u), global1.x);
    let var_4 = func_5(Struct_5(Struct_1(u_input.d.wwz), var_2.x, func_1()), _wgslsmith_dot_vec3_i32(vec3<i32>(-10308i, -firstTrailingBit(u_input.c.x), u_input.c.x ^ (i32(-1i) * -69302i)), -vec3<i32>(2147483647i, 2147483647i, u_input.c.x) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(13407u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 124959u), vec3<u32>(47554u, u_input.a.x, 0u)) | ~u_input.a) % vec3<u32>(32u))));
    let var_5 = Struct_2(_wgslsmith_sub_vec4_i32(var_4.a ^ firstLeadingBit(abs(var_4.a)), firstTrailingBit(u_input.d) | ~(-var_4.a)), Struct_1(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(var_4.a.x, 10498i, 0i)), min(max(vec3<i32>(var_4.a.x, 10611i, 10629i), vec3<i32>(u_input.b, -15514i, -84i)), func_4(true, Struct_2(vec4<i32>(var_4.b.a.x, var_4.b.a.x, var_4.a.x, -2147483647i), Struct_1(vec3<i32>(2147483647i, var_4.a.x, u_input.d.x)))).a))));
    let x = u_input.a;
    s_output = StorageBuffer(100f, 62012u);
}

