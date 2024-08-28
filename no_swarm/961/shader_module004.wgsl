struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(32026i, -22027i), vec2<i32>(i32(-2147483648), 3509i), vec2<i32>(2147483647i, 0i), vec2<i32>(-11856i, 1i), vec2<i32>(23678i, 8594i), vec2<i32>(-4028i, -11540i), vec2<i32>(-7256i, 0i));

var<private> global2: array<f32, 12> = array<f32, 12>(-1374f, 1478f, -511f, 886f, 460f, -197f, -525f, -320f, -281f, -599f, -2543f, -128f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<vec2<i32>, 7>();
    return !(!select(select(vec3<bool>(arg_0.a, arg_2.a, false), !vec3<bool>(arg_0.a, arg_2.a, true), all(vec2<bool>(true, arg_2.a))), vec3<bool>(!arg_0.a, arg_0.a, !arg_2.a), true));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = vec4<bool>(true, false, var_0.a, select(true, any(!func_3(Struct_3(arg_2, u_input.a.x, arg_1.e.x, arg_1.c, arg_1.e), var_0.e.x, Struct_1(arg_1.a, -51409i, vec4<f32>(arg_1.e.x, -863f, global2[_wgslsmith_index_u32(var_0.b, 12u)], -1452f)))), func_3(Struct_3(arg_2, _wgslsmith_dot_vec2_u32(arg_3, u_input.a.yy), _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(abs(1861f)), var_0.e), -1018f, Struct_1(any(vec4<bool>(arg_1.a, arg_1.a, arg_2, var_0.a)), ~(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, -224f, var_0.e.x, 850f)))).x));
    let var_2 = _wgslsmith_mult_u32(29856u, arg_1.b);
    var var_3 = !select(!arg_1.a & (any(vec4<bool>(arg_1.a, var_1.x, false, true)) && any(vec3<bool>(var_0.a, var_1.x, arg_1.a))), any(select(var_1.yy, vec2<bool>(true, true), var_0.a | var_0.a)), any(var_1.yx));
    var var_4 = 138510u;
    return Struct_4(-2147483647i != u_input.b.x, arg_1);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool) -> vec4<f32> {
    var var_0 = max(arg_1.b.b & _wgslsmith_mult_u32(~1u >> (1u % 32u), ~max(u_input.a.x, u_input.a.x)), ~arg_1.b.b);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.b.b << (arg_1.b.b % 32u), abs(min(4294967295u, 1u))), firstLeadingBit(22341u)), 12320u, abs(u_input.a.x));
    return _wgslsmith_f_op_vec4_f32(sign(arg_0));
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec2_u32(~abs(max(~vec2<u32>(52891u, u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.a.zy))), abs(vec2<u32>(u_input.a.x, 22263u)));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 12u)] < _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-133f + global2[_wgslsmith_index_u32(56109u, 12u)]), global2[_wgslsmith_index_u32(~u_input.a.x, 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) * -177f)), -2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(547f, 1618f, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(10466u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], 840f), false)), func_2(u_input.b.x, Struct_3(false, u_input.a.x, -458f, -1000f, vec2<f32>(-534f, global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), false, vec2<u32>(25681u, 1u)), any(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 1008f, 224f, -1149f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, global2[_wgslsmith_index_u32(57086u, 12u)], 2801f, -441f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 1231f, -924f, -2218f) - vec4<f32>(637f, global2[_wgslsmith_index_u32(4294967295u, 12u)], -1678f, global2[_wgslsmith_index_u32(4294967295u, 12u)])))))), vec4<bool>(global2[_wgslsmith_index_u32(~1u, 12u)] < -1995f, false, true, select(false, true, any(vec2<bool>(true, false)))))));
    global1 = array<vec2<i32>, 7>();
    var var_2 = var_1.c.wy;
    global0 = (-2147483647i | min(u_input.b.x, -33125i)) < 1i;
    return ~u_input.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_4 {
    global2 = array<f32, 12>();
    let var_0 = func_2(u_input.b.x, Struct_3(true, reverseBits(~(u_input.a.x & arg_0.x)), global2[_wgslsmith_index_u32(19393u, 12u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_0.x, 12u)], arg_1.x, false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.yy, arg_1.yy))) + arg_1.yz)), false, u_input.a.xx).b;
    let var_1 = min(-_wgslsmith_mod_vec4_i32(-(~vec4<i32>(u_input.b.x, 5626i, 3800i, 1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 62442i, u_input.b.x, 30206i), vec4<i32>(28983i, 2196i, u_input.b.x, 0i) & vec4<i32>(1i, 18406i, u_input.b.x, u_input.b.x))), vec4<i32>(firstTrailingBit(-abs(u_input.b.x)), 0i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(45080i, 47357i), u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -27298i, 1i, u_input.b.x) & vec4<i32>(-6051i, u_input.b.x, -1i, 2147483647i), select(vec4<i32>(0i, u_input.b.x, 31081i, -1i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), var_0.a))), 15544i));
    global1 = array<vec2<i32>, 7>();
    global2 = array<f32, 12>();
    return Struct_4(!var_0.a, func_2(countOneBits(i32(-1i) * -var_1.x), Struct_3(var_0.a, u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1406f), 1827f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 1001f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.e, vec2<f32>(144f, 170f))))), var_0.a, select((vec2<u32>(1u, 0u) >> (vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u))) ^ ~u_input.a.zz, arg_0.xz, !(!vec2<bool>(var_0.a, var_0.a)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(max(~vec2<i32>(u_input.b.x, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(1i, u_input.b.x)))) ^ u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-127f, -2332f, -1000f), vec3<f32>(216f, global2[_wgslsmith_index_u32(37164u, 12u)], -430f), vec3<bool>(false, true, true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-921f, -1290f, 350f), vec3<f32>(1568f, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -921f, -163f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -512f)))))));
    global1 = array<vec2<i32>, 7>();
    global0 = false;
    let var_1 = !(!vec2<bool>(func_2(abs(u_input.b.x), Struct_3(var_0.b.a, 122681u, -551f, var_0.b.e.x, vec2<f32>(var_0.b.c, global2[_wgslsmith_index_u32(30663u, 12u)])), 237f >= var_0.b.c, ~vec2<u32>(u_input.a.x, 12488u)).a, (u_input.a.x <= var_0.b.b) && var_0.b.a));
    var var_2 = _wgslsmith_add_u32(min(_wgslsmith_clamp_u32(u_input.a.x >> (44016u % 32u), var_0.b.b, _wgslsmith_dot_vec2_u32(vec2<u32>(15533u, 4294967295u), vec2<u32>(var_0.b.b, var_0.b.b)) << (func_5(u_input.a, vec3<f32>(924f, -530f, var_0.b.c)).b.b % 32u)), var_0.b.b), 41754u >> (var_0.b.b % 32u));
    global2 = array<f32, 12>();
    global1 = array<vec2<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), ~_wgslsmith_mod_u32(u_input.a.x, 19422u), select(-u_input.b.x, u_input.b.x, func_3(func_2(u_input.b.x, var_0.b, false, u_input.a.yy).b, -1012f, Struct_1(false, u_input.b.x, vec4<f32>(var_0.b.c, -685f, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(45553u, 12u)]))).x) & 18876i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(198f, -437f, var_0.b.e.x, 660f)), func_2(-1i, Struct_3(var_0.b.a, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0.b.c, vec2<f32>(140f, -1000f)), true, vec2<u32>(11400u, var_0.b.b)), var_0.b.a)).x))), 2147483647i);
}

