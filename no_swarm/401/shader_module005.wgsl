struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(2147483647i, 2147483647i, 36792i, -38914i), vec3<bool>(false, false, true), 4294967295u, vec3<f32>(2572f, -1116f, -445f), 15184i), Struct_1(vec4<i32>(-1i, i32(-2147483648), -8062i, -41814i), vec3<bool>(false, false, true), 4294967295u, vec3<f32>(1000f, 1053f, -1618f), -30251i), Struct_1(vec4<i32>(-12083i, -38358i, -1i, 25775i), vec3<bool>(false, false, true), 0u, vec3<f32>(1323f, 611f, -915f), -42430i), Struct_1(vec4<i32>(34959i, -7932i, 2147483647i, 0i), vec3<bool>(false, true, false), 96386u, vec3<f32>(-297f, -780f, 1931f), -1i), Struct_1(vec4<i32>(0i, 2147483647i, -70294i, 22415i), vec3<bool>(true, true, false), 4294967295u, vec3<f32>(492f, 1174f, 1111f), -35832i), Struct_1(vec4<i32>(2147483647i, 60141i, i32(-2147483648), 0i), vec3<bool>(true, true, false), 40274u, vec3<f32>(-470f, -223f, -305f), -35336i));

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<vec3<bool>, 25>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(0i, -40951i, 2147483647i, -27274i), vec3<bool>(false, false, false), 23997u, vec3<f32>(125f, 688f, -1000f), -25123i);

var<private> global4: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-522f, 440f), vec2<f32>(1000f, 2009f), vec2<f32>(811f, 393f), vec2<f32>(-1000f, 488f), vec2<f32>(-387f, 1513f), vec2<f32>(-333f, -347f), vec2<f32>(-1312f, 407f), vec2<f32>(862f, 242f), vec2<f32>(-2520f, -313f), vec2<f32>(633f, -266f), vec2<f32>(-567f, -1000f), vec2<f32>(-156f, 474f), vec2<f32>(2354f, 2633f), vec2<f32>(1202f, -115f), vec2<f32>(-1000f, -366f), vec2<f32>(-270f, -920f), vec2<f32>(-441f, -713f), vec2<f32>(2759f, 1000f), vec2<f32>(-617f, 838f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>) -> i32 {
    global3 = Struct_1(-global3.a, select(!select(vec3<bool>(arg_1.x, false, arg_1.x), select(arg_1, arg_1, arg_1.x), select(global3.b, vec3<bool>(arg_1.x, arg_1.x, global3.b.x), arg_1.x)), arg_1, true), 0u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d)))))), _wgslsmith_dot_vec3_i32(global3.a.yxz, vec3<i32>(41169i, (52654i ^ u_input.b.x) | global3.e, 42651i)));
    let var_0 = Struct_1(global3.a ^ firstLeadingBit(max(firstTrailingBit(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -2147483647i)), vec4<i32>(global3.a.x, 0i, -60821i, 7714i))), !(!vec3<bool>(global3.b.x, false, global3.b.x)), arg_0.x, global3.d, -1i);
    let var_1 = true;
    var var_2 = (vec3<u32>(_wgslsmith_mult_u32(71847u, _wgslsmith_dot_vec3_u32(arg_0, arg_0)), var_0.c, min(0u, var_0.c) | firstTrailingBit(u_input.a.x)) & vec3<u32>(_wgslsmith_div_u32(min(arg_0.x, global3.c), arg_0.x), _wgslsmith_add_u32(var_0.c, u_input.a.x) | _wgslsmith_add_u32(1u, var_0.c), var_0.c)) << (arg_0 % vec3<u32>(32u));
    global3 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, 0i), 23119i), -_wgslsmith_mod_i32(global3.e, 5254i), var_0.a.x, ~1i) >> (select(_wgslsmith_mod_vec4_u32(u_input.c, ~vec4<u32>(u_input.c.x, global3.c, u_input.c.x, 45556u)), ~(u_input.c >> (u_input.a % vec4<u32>(32u))), false) % vec4<u32>(32u)), select(arg_1, global3.b, false), ~(abs(7118u) >> ((_wgslsmith_add_u32(var_0.c, var_2.x) >> (0u % 32u)) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.d.x)) * _wgslsmith_f_op_f32(-global3.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global3.d.x)))))), var_0.d.x, var_0.d.x), ~(-(~global3.e & abs(18989i))));
    return 1i;
}

fn func_2(arg_0: vec4<i32>) -> vec2<f32> {
    global3 = Struct_1(vec4<i32>(firstTrailingBit(~(~arg_0.x)), reverseBits(u_input.b.x), -91537i >> (~global3.c % 32u), -32325i), vec3<bool>((all(global3.b) && global3.b.x) | true, true, true), global3.c, vec3<f32>(global3.d.x, -386f, global3.d.x), abs(_wgslsmith_mult_i32(firstLeadingBit(arg_0.x), func_3(select(u_input.a.xxx, vec3<u32>(43702u, 25012u, 23092u), global3.b.x), select(vec3<bool>(false, global3.b.x, true), vec3<bool>(global3.b.x, true, false), global3.b)))));
    let var_0 = global3.d;
    global3 = global0[_wgslsmith_index_u32(~1u, 6u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(select(1666f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2157f, var_0.x)))), select(global3.b.x, 28123u >= u_input.a.x, global3.b.x & global3.b.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xx);
    return _wgslsmith_f_op_vec2_f32(select(global3.d.zy, var_0.xx, global3.b.xy));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1287f)) + _wgslsmith_f_op_f32(1444f + -1324f))))));
    let var_1 = global3.a.xxx << (u_input.c.zzy % vec3<u32>(32u));
    global4 = array<vec2<f32>, 19>();
    let var_2 = arg_2.x;
    var var_3 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -51509i, var_1.x, global3.e), global3.a), vec4<i32>(firstLeadingBit(-63291i), -1i | global3.a.x, 2147483647i, -26727i)) >> (4294967295u % 32u), -28555i, i32(-1i) * -(~25802i));
    return !(!select(select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(true, arg_0, true, global3.b.x), vec4<bool>(arg_0, arg_0, global3.b.x, arg_0)), select(vec4<bool>(arg_0, false, arg_0, global3.b.x), vec4<bool>(true, arg_0, arg_0, global3.b.x), vec4<bool>(global3.b.x, false, false, false)), global3.b.x || true), !(!vec4<bool>(true, true, arg_0, false)), arg_0));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(674f, global3.d.x)) - _wgslsmith_f_op_f32(abs(-1263f)));
    var var_1 = func_4(!select(global3.b.x, 1u > ~arg_0.x, arg_3), _wgslsmith_f_op_f32(global3.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) + _wgslsmith_f_op_f32(select(-1258f, global3.d.x, global3.b.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.d.x, global3.d.x))), global3.d.xz), _wgslsmith_f_op_vec2_f32(func_2(global3.a >> (vec4<u32>(global3.c, 1u, arg_0.x, 0u) % vec4<u32>(32u)))), !select(select(vec2<bool>(arg_3, global3.b.x), vec2<bool>(arg_3, true), vec2<bool>(false, false)), !vec2<bool>(global3.b.x, global3.b.x), global3.b.yy))));
    global4 = array<vec2<f32>, 19>();
    var var_2 = select(vec3<i32>(~(~2620i), -countOneBits(arg_2), max(~0i, min(u_input.b.x, arg_1))) >> (vec3<u32>(_wgslsmith_sub_u32(0u, abs(global3.c)), (arg_0.x >> (0u % 32u)) ^ ~65977u, arg_0.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(firstTrailingBit(-2147483647i), arg_2, global3.e)), func_4(true, global3.d.x, _wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.c, ~20412u), 19u)] - global3.d.yx)).x);
    return global3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.zw;
    var var_1 = ~u_input.c.x;
    global4 = array<vec2<f32>, 19>();
    global3 = Struct_1(vec4<i32>(-2147483647i, var_0.x, _wgslsmith_mult_i32(-(var_0.x & 5084i), 38477i), _wgslsmith_mod_i32(func_1(vec2<u32>(2227u, global3.c), _wgslsmith_dot_vec2_i32(global3.a.zw, vec2<i32>(25901i, global3.e)), reverseBits(u_input.b.x), true), 1i)), vec3<bool>(global3.b.x, (-global3.e | -1i) > -6598i, !func_4(any(vec4<bool>(false, global3.b.x, global3.b.x, global3.b.x)), _wgslsmith_f_op_f32(floor(global3.d.x)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 33468u), 19u)]).x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, ~u_input.a), select(_wgslsmith_mult_vec4_u32(abs(u_input.a), min(vec4<u32>(global3.c, u_input.c.x, u_input.c.x, 0u), vec4<u32>(4294967295u, 0u, 1u, 52755u))), ~u_input.a, all(!vec3<bool>(global3.b.x, global3.b.x, true)))), _wgslsmith_f_op_vec3_f32(step(global3.d, _wgslsmith_f_op_vec3_f32(ceil(global3.d)))), global3.e);
    let x = u_input.a;
    s_output = StorageBuffer((firstTrailingBit(abs(vec2<u32>(1u, 4294967295u))) & u_input.a.ww) << (u_input.a.wx % vec2<u32>(32u)), select(u_input.b.yx, vec2<i32>(1i, firstTrailingBit(u_input.b.x)) & ~(vec2<i32>(var_0.x, -25511i) >> (u_input.c.xz % vec2<u32>(32u))), global3.b.x), ~_wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 51524u));
}

