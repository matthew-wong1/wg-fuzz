struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
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

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(38617u, vec3<i32>(-19421i, 5343i, -1i)), Struct_1(1u, vec3<i32>(2438i, -1i, 6252i)), Struct_1(3656u, vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_1(0u, vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_1(0u, vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(1u, vec3<i32>(-44232i, -56310i, -33155i)), Struct_1(1u, vec3<i32>(0i, 0i, 10859i)), Struct_1(0u, vec3<i32>(-6482i, -18201i, 1i)), Struct_1(4148u, vec3<i32>(-9118i, i32(-2147483648), -55021i)), Struct_1(33173u, vec3<i32>(-39586i, 2147483647i, 4845i)), Struct_1(48343u, vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(34981u, vec3<i32>(68305i, 67810i, 838i)), Struct_1(1u, vec3<i32>(1i, 1i, 8119i)), Struct_1(5610u, vec3<i32>(-86599i, i32(-2147483648), -15612i)), Struct_1(4294967295u, vec3<i32>(1i, 2147483647i, 2147483647i)));

var<private> global2: Struct_1;

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = min(~(select(select(vec4<u32>(72977u, 7751u, 4294967295u, arg_2.a), vec4<u32>(36278u, arg_2.a, arg_2.a, arg_2.a), true), vec4<u32>(arg_0.a, arg_0.a, 3256u, arg_2.a) >> (vec4<u32>(global2.a, 4294967295u, arg_0.a, arg_2.a) % vec4<u32>(32u)), true) ^ (~vec4<u32>(u_input.b.x, 1u, 17729u, u_input.b.x) | vec4<u32>(22624u, 70367u, u_input.b.x, global2.a))), countOneBits(vec4<u32>(32078u, firstTrailingBit(_wgslsmith_sub_u32(36367u, u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(48829u, 1u, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, 1u, 1u, global2.a)), reverseBits(arg_0.a)), 1u)));
    global0 = array<vec3<f32>, 9>();
    let var_1 = vec2<u32>(~var_0.x, 4294967295u) & u_input.b;
    var var_2 = Struct_1(~1u, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.b.x, 2147483647i, ~(-34842i)), vec3<i32>(~arg_0.b.x, i32(-1i) * -global2.b.x, -_wgslsmith_sub_i32(-3726i, -230i))));
    let var_3 = abs(var_0.yyy);
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = 73251i;
    let var_1 = Struct_1(arg_2.a, global2.b);
    let var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1000f, global3.x, 1460f) * vec4<f32>(arg_0.x, -888f, -138f, -1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1250f, 1960f, 1504f, -408f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, arg_0.x, arg_0.x, -1624f) + vec4<f32>(-172f, arg_0.x, -501f, 1975f)))))));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_add_u32(~(~(u_input.b.x >> (arg_2.a % 32u))), var_2.a << (var_1.a % 32u)), abs(~min(11124u, abs(arg_2.a))));
    return _wgslsmith_clamp_u32(91636u, 1u, select((global2.a ^ ~u_input.b.x) << (arg_2.a % 32u), 4294967295u, func_3(var_1, vec4<i32>(9229i, select(var_1.b.x, arg_3.b.x, true), -21973i, 1i), var_2)));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(u_input.b.x, firstLeadingBit(~u_input.b.x)) | func_2(global3.zz, u_input.a, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~4294967295u), 15u)], global4[_wgslsmith_index_u32(select(_wgslsmith_div_u32(18356u, u_input.b.x), u_input.b.x & 1u, arg_0), 15u)]), firstTrailingBit(global2.b));
    var var_1 = all(select(select(!vec3<bool>(arg_0, arg_0, true), select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), true), vec3<bool>(!arg_0, arg_0, !all(vec3<bool>(true, false, arg_0))), true));
    global0 = array<vec3<f32>, 9>();
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(0u, max(0u, 49378u))), 15u)];
    var_1 = arg_0;
    return _wgslsmith_sub_u32(1802u, _wgslsmith_sub_u32(~(21882u >> (var_2.a % 32u)), _wgslsmith_mod_u32(global2.a, firstLeadingBit(u_input.b.x))));
}

fn func_4(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(~global2.a, _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 43055u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), func_2(_wgslsmith_f_op_vec2_f32(-global3.wx), u_input.a, Struct_1(u_input.b.x, vec3<i32>(arg_1, 2147483647i, u_input.a.x)), Struct_1(u_input.b.x, vec3<i32>(9622i, global2.b.x, u_input.a.x))))), u_input.a.ywx);
    let var_1 = abs(~select(u_input.a, vec4<i32>(~45050i, select(-2147483647i, global2.b.x, true), var_0.b.x, -88732i), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, true, true, true), func_3(Struct_1(u_input.b.x, vec3<i32>(0i, -9897i, -2147483647i)), vec4<i32>(-1i, u_input.a.x, 39271i, -28891i), Struct_1(54471u, global2.b)))));
    let var_2 = -global2.b.x;
    let var_3 = Struct_1(1u, ~vec3<i32>(u_input.a.x, -20203i, -u_input.a.x));
    let var_4 = global1[_wgslsmith_index_u32(var_0.a, 15u)];
    return -444f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 9>();
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(select(-40985i, global2.b.x, true), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(func_4(max(func_1(true), _wgslsmith_clamp_u32(max(u_input.b.x, global2.a), _wgslsmith_clamp_u32(8023u, 0u, 21069u), 7529u)) > u_input.b.x, var_0.x));
    global4 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

