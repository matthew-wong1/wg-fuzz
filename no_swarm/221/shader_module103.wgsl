struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(-7796i, 2147483647i, 35624i, 1i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 7863i), vec4<i32>(40608i, 0i, -1i, 14590i), vec4<i32>(10430i, 0i, i32(-2147483648), 38857i), vec4<i32>(16970i, -1i, -1i, 8395i), vec4<i32>(2147483647i, 2147483647i, 1i, 7125i), vec4<i32>(-1i, -36080i, 27671i, 21693i), vec4<i32>(14084i, i32(-2147483648), -1i, -3616i), vec4<i32>(-39733i, 2147483647i, 31756i, -47442i), vec4<i32>(0i, 8661i, 0i, 1i), vec4<i32>(1i, 787i, -40614i, -63536i), vec4<i32>(2147483647i, 1i, -12064i, -13898i), vec4<i32>(2147483647i, 0i, 17738i, 4458i), vec4<i32>(2147483647i, i32(-2147483648), -33627i, 1i), vec4<i32>(1i, 1i, -1i, -1i), vec4<i32>(-35634i, i32(-2147483648), -63419i, -27923i), vec4<i32>(7741i, -1i, -1i, 1i), vec4<i32>(6234i, 6669i, 51385i, 1i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    global0 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global0.x, u_input.d, u_input.d, u_input.d) | vec4<u32>(global0.x, 0u, u_input.d, u_input.d)) | ~vec4<u32>(u_input.d, 1u, global0.x, u_input.d)), vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, u_input.d, global0.x) >> (vec4<u32>(38647u, global0.x, 4294967295u, 0u) % vec4<u32>(32u)), ~vec4<u32>(global0.x, global0.x, global0.x, u_input.d), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 73160u, 2207u, 0u), ~vec4<u32>(0u, u_input.d, 8496u, u_input.d))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(24105u, 0u, 0u, 1u)), ~vec4<u32>(global0.x, global0.x, global0.x, u_input.d)), ~1u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(32550u, 4294967295u, 1u, global0.x)), vec4<u32>(4294967295u, ~24598u, u_input.d, 4294967295u))));
    global1 = array<vec4<i32>, 18>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + 881f), _wgslsmith_f_op_f32(floor(arg_1))))))), -1616f, 511f);
    global1 = array<vec4<i32>, 18>();
    global0 = vec4<u32>(~7004u, ~_wgslsmith_add_u32(firstLeadingBit(global0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global0.xx, global0.wz), global0.yy)), u_input.d, u_input.d);
    return !(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) && true);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    let var_0 = !arg_0;
    var var_1 = ~(vec2<u32>(4294967295u, arg_3) | vec2<u32>(~(~global0.x), 0u));
    let var_2 = !select(!vec3<bool>(true, true, func_3(arg_2.x, -397f)), select(vec3<bool>(arg_0, var_1.x != 0u, any(vec4<bool>(false, var_0, arg_0, arg_0))), select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, var_0, true), select(vec3<bool>(false, false, true), vec3<bool>(var_0, arg_0, false), vec3<bool>(true, false, arg_0))), !(!vec3<bool>(var_0, var_0, var_0))), select(!select(vec3<bool>(var_0, true, arg_0), vec3<bool>(false, true, var_0), var_0), vec3<bool>(arg_0, !var_0, func_3(arg_2.x, 1756f)), select(!vec3<bool>(var_0, arg_0, arg_0), !vec3<bool>(var_0, arg_0, arg_0), !vec3<bool>(false, arg_0, false))));
    let var_3 = var_2.xz;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1106f, -1288f)))) - vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(737f - arg_2.x))), 1442f)));
    return arg_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_3(select(firstLeadingBit(~(~global0.yz)), abs(abs(vec2<u32>(4294967295u, 121257u))), false), abs(arg_0.yw));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))));
    global1 = array<vec4<i32>, 18>();
    var var_3 = vec2<i32>(arg_0.x, u_input.a);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.b.x)) + vec3<f32>(-382f, _wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(round(arg_3.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1658f, 248f, 262f))), vec3<f32>(var_2, -2206f, var_2), vec3<bool>(true, all(vec3<bool>(arg_1.x, arg_3.c.b.x, true)), arg_3.c.b.x)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = 70413u;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(select(~vec4<i32>(_wgslsmith_add_i32(arg_0.a, u_input.e.x), arg_0.a, -1i, func_2(arg_0.b.x, -53953i, vec2<f32>(-1317f, 361f), u_input.d)), -_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(~28060u, 18u)], _wgslsmith_mult_vec4_i32(vec4<i32>(10655i, 0i, arg_0.a, arg_1.a), global1[_wgslsmith_index_u32(u_input.d, 18u)]), ~vec4<i32>(u_input.b, arg_0.a, 1i, 43194i)), false), !select(arg_0.b, select(select(vec4<bool>(false, true, arg_0.b.x, false), vec4<bool>(false, false, false, arg_1.b.x), vec4<bool>(true, true, arg_0.b.x, arg_1.b.x)), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), true), select(arg_0.b, arg_0.b, false)), vec3<u32>(global0.x, ~u_input.d ^ abs(u_input.d), select(_wgslsmith_div_u32(~global0.x, firstTrailingBit(1u)), min(abs(67391u), 62294u), !(!arg_1.b.x))), Struct_2(select(vec3<bool>(true, true, func_3(1773f, 205f)), vec3<bool>(true, arg_0.b.x, u_input.d > 29776u), arg_1.b.x && true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -2302f), vec2<f32>(672f, 1177f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, -443f) - vec2<f32>(-1226f, 426f))))), arg_0, vec4<i32>(firstTrailingBit(1i), _wgslsmith_sub_i32(select(87049i, arg_1.a, arg_1.b.x), arg_1.a), -37103i, -(-1i & arg_1.a)))));
    var var_2 = Struct_3(select(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(4294967295u, 75126u))), vec2<u32>(~(global0.x | 23154u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d, u_input.d), firstTrailingBit(24254u))), true), max(-u_input.e.zz, u_input.e.yz));
    let var_3 = arg_1.b.x;
    var var_4 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -726f));
    return 1f < var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, func_1(Struct_1(70127i, vec4<bool>(true, true, true, false)), Struct_1(u_input.e.x, vec4<bool>(false, true, true, true))), true), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, 558f))))), Struct_1(1i, !vec4<bool>(true, true, true, all(vec3<bool>(true, false, false)))), vec4<i32>(-2147483647i, 7681i, reverseBits(u_input.a) ^ _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), 2147483647i), i32(-1i) * -1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), vec4<f32>(-850f, 353f, _wgslsmith_f_op_f32(-284f - var_0.b.x), 877f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, var_0.b.x, 946f, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1019f, var_0.b.x, 567f, var_0.b.x) + vec4<f32>(1000f, -306f, var_0.b.x, 567f)))), vec4<bool>(true, false, var_0.b.x < _wgslsmith_f_op_f32(-360f + 644f), var_0.a.x)))));
    let var_2 = var_0.d.x << (firstTrailingBit(_wgslsmith_dot_vec2_u32(reverseBits(global0.ww), global0.xy & global0.yy)) % 32u);
    let var_3 = Struct_2(select(select(!vec3<bool>(true, true, var_0.a.x), var_0.a, var_0.c.b.yzw), !(!select(vec3<bool>(true, var_0.c.b.x, var_0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.c.b.ywx)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wx, vec2<f32>(-359f, _wgslsmith_f_op_f32(-1509f - var_1.x)), !var_0.a.x))), var_0.c, global1[_wgslsmith_index_u32(~(~73442u), 18u)]);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_0.b);
    var var_5 = Struct_2(vec3<bool>(all(select(var_0.c.b.ywz, vec3<bool>(true, var_3.c.b.x, var_3.a.x), true)) | var_3.c.b.x, !all(!vec4<bool>(false, var_0.a.x, var_3.a.x, var_3.c.b.x)), var_3.c.b.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1685f, var_1.x), _wgslsmith_div_vec2_f32(var_3.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(634f, var_0.b.x) + vec2<f32>(-329f, 807f))))), Struct_1(var_3.c.a, !var_3.c.b), reverseBits(_wgslsmith_mult_vec4_i32(var_3.d, ~vec4<i32>(32341i, u_input.b, u_input.a, -31800i))) | (var_0.d >> (vec4<u32>(_wgslsmith_dot_vec3_u32(global0.yyy, global0.xzy), _wgslsmith_mult_u32(0u, global0.x), 0u, u_input.d) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b.x, 770f, 651f)))))))), 475f, ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 38658u, u_input.d), vec4<u32>(global0.x, 1637u, u_input.d, u_input.d)), reverseBits(vec4<u32>(6078u, u_input.d, 15780u, 4294967295u)))), -717f);
}

