struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 4294967295u, 112632u), Struct_1(vec4<i32>(-4617i, 66948i, -1i, -1i), 2733i), Struct_1(vec4<i32>(5991i, 52504i, 0i, 1i), -15160i), vec3<i32>(2147483647i, -3839i, -17337i));

var<private> global1: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(1u, 27019u, 4294967295u), vec3<u32>(1039u, 51559u, 0u));

var<private> global2: array<bool, 18>;

var<private> global3: Struct_4;

var<private> global4: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1242f * -2131f), _wgslsmith_f_op_f32(1985f + -2813f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1318f, 959f))))), 454f);
    global4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x)));
    global1 = array<vec3<u32>, 2>();
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_div_u32(50288u, 4294967295u), _wgslsmith_dot_vec3_u32(global0.a, reverseBits(global1[_wgslsmith_index_u32(u_input.d, 2u)])), ~u_input.d), vec4<u32>(~(0u ^ u_input.b.x), abs(u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(global3.a, u_input.b.x, global0.a.x, global0.a.x)) ^ abs(~u_input.d), 4294967295u));
    global1 = array<vec3<u32>, 2>();
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global3.a, global3.a), global0.a), u_input.b.wxz), _wgslsmith_clamp_u32(450u, global3.a, 1u)), _wgslsmith_mult_u32(firstTrailingBit(global0.a.x), ~23008u) | firstTrailingBit(select(var_1.x, 1u, global2[_wgslsmith_index_u32(global3.a, 18u)]))), _wgslsmith_mult_u32(global3.a, ~_wgslsmith_add_u32(~17196u, global3.a & 41266u)));
}

fn func_2() -> u32 {
    let var_0 = Struct_5(-(reverseBits(global0.b.a) >> (countOneBits(~vec4<u32>(14405u, global3.a, global0.a.x, 68547u)) % vec4<u32>(32u))));
    global4 = 1f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(ceil(-159f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1420f, -172f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1739f, 1722f), vec2<f32>(156f, -656f))))))));
    global3 = Struct_4(func_3(), global3.b);
    var var_2 = Struct_4(~(~(~4294967295u >> (0u % 32u))), !(!vec2<bool>(global2[_wgslsmith_index_u32(global0.a.x, 18u)] != global3.b.x, u_input.d != 51187u)));
    return ~1u;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(global0.b.a, global0.b.a), global0.c.a, _wgslsmith_clamp_vec4_i32(select(global0.b.a, vec4<i32>(19376i, -15309i, 21449i, u_input.e), global3.b.x), global0.b.a, _wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.b, arg_0, global0.b.a.x, arg_0), vec4<i32>(global0.c.b, 2147483647i, -2147483647i, global0.d.x)))), 14525i);
    var var_1 = abs(firstLeadingBit(vec3<u32>(4294967295u, u_input.d, 1u)));
    let var_2 = _wgslsmith_dot_vec4_i32(~reverseBits(countOneBits(abs(vec4<i32>(u_input.e, var_0.a.x, arg_0, u_input.a.x)))), -var_0.a);
    global4 = 716f;
    var var_3 = Struct_4(4294967295u, select(global3.b, !select(vec2<bool>(true, false), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], true), true), vec2<bool>(true, all(global3.b))));
    return Struct_1(vec4<i32>(23992i, -(var_2 | reverseBits(global0.b.a.x)), u_input.e, ~abs(u_input.e)), 6651i);
}

fn func_1(arg_0: bool) -> f32 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f));
    global1 = array<vec3<u32>, 2>();
    let var_0 = firstTrailingBit(global0.d);
    global0 = Struct_2(vec3<u32>(47070u, ~reverseBits(11859u), ~u_input.c.x), func_4(firstLeadingBit(u_input.a.x), ~(abs(u_input.b.x) & func_2()), min(vec4<u32>(global3.a, 4294967295u, 31067u, 0u), reverseBits(u_input.b)) >> (u_input.b % vec4<u32>(32u))), Struct_1(~(-global0.c.a ^ ~global0.c.a), select(min(global0.b.a.x, ~u_input.a.x), 1i, !global2[_wgslsmith_index_u32(global0.a.x & 4035u, 18u)])), abs(_wgslsmith_sub_vec3_i32(-var_0, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -1i, 1i), var_0), firstLeadingBit(vec3<i32>(-43102i, global0.c.b, var_0.x))))));
    var var_1 = vec2<i32>(~(~(i32(-1i) * -u_input.a.x)), 9518i);
    return -874f;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_3(arg_2, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(629f + arg_2), _wgslsmith_f_op_f32(f32(-1f) * -568f))), arg_0)), global2[_wgslsmith_index_u32(global3.a, 18u)]);
    let var_1 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(func_1(all(!select(vec3<bool>(global3.b.x, false, global3.b.x), vec3<bool>(false, false, global2[_wgslsmith_index_u32(22842u, 18u)]), vec3<bool>(false, var_0.c, false))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(arg_0))))))), global2[_wgslsmith_index_u32(34276u, 18u)]);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-488f, arg_0.x)) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_2, arg_1 > -23130i)))));
    var var_4 = Struct_2(~arg_3, Struct_1(-global0.b.a, u_input.e), global0.b, vec3<i32>(global0.d.x, (-u_input.a.x ^ func_4(arg_1, 4294967295u, u_input.b).a.x) >> (8581u % 32u), global0.d.x));
    return Struct_5(-_wgslsmith_mult_vec4_i32(var_4.b.a, global0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, all(global3.b));
    let var_1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(min(147f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(394f, -949f)) * _wgslsmith_f_op_f32(func_1(true)))), global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-827f, _wgslsmith_f_op_f32(-129f * 364f), var_0.x || true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f + -1000f)))), ~vec3<u32>(global0.a.x, ~4047u, _wgslsmith_mult_u32(global0.a.x, global3.a)));
    var var_2 = all(var_0);
    var var_3 = ~vec2<u32>(u_input.c.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.x, global3.a, 1u, global3.a), min(vec4<u32>(17680u, u_input.d, global0.a.x, global3.a), u_input.b))));
    let var_4 = var_0.x;
    var_3 = ~(~select(vec2<u32>(_wgslsmith_clamp_u32(global3.a, global3.a, global3.a), 0u), (u_input.b.yx << (vec2<u32>(4294967295u, global3.a) % vec2<u32>(32u))) | vec2<u32>(31074u, global0.a.x), var_0.zz));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1131f + -1103f))) + 389f);
    var_3 = u_input.b.yz;
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(57047i, _wgslsmith_dot_vec4_i32(var_5.a, var_5.a)));
}

