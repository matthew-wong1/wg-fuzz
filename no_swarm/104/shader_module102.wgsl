struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(4004i, -62278i), vec2<i32>(11915i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 21921i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(27489i, -10228i), vec2<i32>(37790i, 1i));

var<private> global2: array<Struct_1, 24>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> i32 {
    global1 = array<vec2<i32>, 7>();
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~firstLeadingBit(1u), countOneBits(arg_2.d), _wgslsmith_dot_vec2_u32(~vec2<u32>(31465u, u_input.a), select(vec2<u32>(u_input.c, arg_0.c), u_input.b.zy, vec2<bool>(true, arg_1))), arg_0.d | abs(11939u)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(45418u, 4294967295u, arg_2.d, u_input.b.x), vec4<u32>(4294967295u, 90269u, 1u, arg_2.c)) << (vec4<u32>(arg_2.c, u_input.c, u_input.a, 0u) % vec4<u32>(32u)))) == 1u;
    var var_1 = vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, -1i, global3.b.x, global3.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(46911i, global3.b.x, 1i, global3.b.x), vec4<i32>(arg_2.b.x, arg_2.b.x, arg_0.b.x, global3.b.x)))), -33786i, 51810i, abs(arg_2.b.x)) | vec4<i32>(i32(-1i) * -16551i, _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(27320i, global3.b.x), vec2<i32>(arg_2.b.x, global3.b.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b, vec2<i32>(u_input.d, u_input.d)), global3.b)), -12459i, countOneBits(-1i));
    var var_2 = arg_2;
    var_1 = select(reverseBits(abs(vec4<i32>(arg_2.b.x, firstLeadingBit(-25974i), 39633i & arg_0.b.x, ~31360i))), ~vec4<i32>(2147483647i, firstLeadingBit(1i), arg_2.b.x, 0i), vec4<bool>(!(global3.c != 0u), true, true, false));
    return _wgslsmith_mult_i32(-1i, -23001i) | _wgslsmith_dot_vec3_i32(var_1.zzz, reverseBits(var_1.wzz));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.a, arg_2.a) * global3.a) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, 117f, _wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(floor(541f))), arg_2.a))), vec2<i32>((arg_1 >> (0u % 32u)) | -(i32(-1i) * -2147483647i), max(-2147483647i, firstLeadingBit(countOneBits(-2147483647i)))), 1u, ~global3.c, _wgslsmith_f_op_f32(sign(-1474f)));
    let var_1 = u_input.d;
    global0 = array<vec3<f32>, 2>();
    var var_2 = -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(~20084i, _wgslsmith_mult_i32(arg_1, arg_2.b.x), func_3(arg_2, arg_0, global2[_wgslsmith_index_u32(0u, 24u)]), firstTrailingBit(arg_2.b.x)), select(max(vec4<i32>(arg_1, 64307i, global3.b.x, var_0.b.x), vec4<i32>(u_input.d, u_input.d, -12530i, arg_2.b.x)), vec4<i32>(arg_1, var_0.b.x, u_input.d, arg_2.b.x), true)));
    var_2 = -(var_0.b.x & var_1);
    return select(false, true, arg_0);
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<f32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-279f, global3.e, func_2(true, global3.b.x, global2[_wgslsmith_index_u32(0u, 24u)], -242f) || true))));
    global0 = array<vec3<f32>, 2>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global3.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -905f, 982f, 1484f), global3.a)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-912f, 719f, -1978f, -506f), vec4<f32>(1529f, global3.a.x, 312f, -233f), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)))))), _wgslsmith_mod_vec2_i32(global3.b, vec2<i32>(select(u_input.d, global3.b.x, true), 736i) & global3.b), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.a, u_input.c, u_input.c) | firstLeadingBit(u_input.a), 1u), global3.c ^ u_input.c, _wgslsmith_f_op_f32(round(global3.a.x)));
    global2 = array<Struct_1, 24>();
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, global3.c, ~u_input.a), 24u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = func_1();
    global1 = array<vec2<i32>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a + var_0.a), _wgslsmith_div_vec2_i32(var_0.b, _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-15872i, -29975i), vec2<i32>(global3.b.x, arg_1.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.x, 11020i), arg_1.b, global3.b) >> (~u_input.b.xz % vec2<u32>(32u)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~26988u, u_input.c & arg_1.c), ~(vec2<u32>(arg_1.c, u_input.b.x) >> ((vec2<u32>(11363u, 1504u) ^ vec2<u32>(global3.d, u_input.b.x)) % vec2<u32>(32u)))), arg_1.c, 505f);
    var var_2 = func_1();
    let var_3 = func_1();
    return vec3<bool>(false, func_2(true, arg_1.b.x, Struct_1(var_2.a, vec2<i32>(var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -18996i, -15498i), vec3<i32>(var_2.b.x, 0i, 7745i))), ~global3.d >> (abs(u_input.c) % 32u), var_1.c, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e), arg_0))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 7>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-42279i, 2147483647i, ~countOneBits(global3.b.x >> (21532u % 32u))), reverseBits(select(vec3<i32>(23505i >> (0u % 32u), -u_input.d, u_input.d), vec3<i32>(global3.b.x, -9670i, 1i), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))));
    global2 = array<Struct_1, 24>();
    global0 = array<vec3<f32>, 2>();
    let var_1 = func_4(_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(-global3.e)), func_1());
    global1 = array<vec2<i32>, 7>();
    let var_2 = select(vec3<u32>(select(global3.d, u_input.c, firstTrailingBit(global3.c) != _wgslsmith_div_u32(4294967295u, 56900u)), global3.c, global3.d), ~(u_input.b | ~_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(global3.c, 34597u, 4294967295u))), var_1.x);
    global1 = array<vec2<i32>, 7>();
    var var_3 = Struct_1(global3.a, global3.b, ~(u_input.b.x | 0u), _wgslsmith_add_u32(u_input.c, 20505u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global3.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, var_3.a.x))), _wgslsmith_f_op_f32(sign(global3.a.x)), global3.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -208f)))), _wgslsmith_sub_vec2_i32(~firstTrailingBit(vec2<i32>(1i, 19990i)), -abs(func_1().b)), vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-561f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * _wgslsmith_f_op_f32(sign(var_3.e))) + -930f), global3.e), ~func_3(func_1(), var_3.b.x <= -2147483647i, global2[_wgslsmith_index_u32(0u, 24u)]));
}

