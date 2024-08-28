struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 6> = array<f32, 6>(-1936f, -1186f, -845f, 758f, -390f, 1700f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = ~u_input.c;
    global1 = array<f32, 6>();
    var var_1 = true;
    var_1 = (arg_1.c.a | countOneBits(u_input.d)) <= -1i;
    var_1 = all(arg_0);
    return vec2<i32>(-arg_1.c.a & (-arg_2.b.x & arg_2.b.x), -2147483647i);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.c;
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_1 = _wgslsmith_f_op_f32(select(2734f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-883f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~33294u, 6u)] * _wgslsmith_f_op_f32(trunc(886f))), false)), arg_1.x, false)), global0.a.x == global0.d.b.x));
    global0 = arg_2;
    return Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_2.a, u_input.e), firstLeadingBit(2147483647i)), u_input.e, ~vec2<i32>(-7703i, u_input.d)), func_3(!(!vec3<bool>(arg_2.e, var_0.d, false)), Struct_2(abs(vec2<i32>(57118i, 0i)), Struct_1(var_0.b.x, vec4<i32>(2147483647i, 93192i, -23216i, var_0.a), vec2<u32>(67104u, 46120u), global0.e), Struct_1(-45263i, vec4<i32>(-27515i, arg_2.b.b.x, arg_2.b.a, -34515i), global0.c.c, arg_2.e), Struct_1(u_input.e.x, vec4<i32>(arg_2.b.b.x, -1i, arg_2.a.x, 41040i), u_input.b.yx, true), global0.c.d), arg_2.c, arg_1)), ~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(arg_2.b.b, vec4<i32>(arg_0.x, global0.b.b.x, 1i, 37673i), vec4<i32>(global0.a.x, u_input.e.x, 50631i, 41724i))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(10031u, 4294967295u), vec2<u32>(76728u, 13553u)), vec2<u32>(~global0.d.c.x, 79505u)), vec2<u32>(39721u, _wgslsmith_dot_vec3_u32(u_input.a.xyx, u_input.a.yww >> (u_input.a.xxy % vec3<u32>(32u)))), vec2<u32>(arg_2.d.c.x, arg_2.d.c.x)), !all(select(vec3<bool>(arg_2.b.d, arg_2.b.d, false), select(vec3<bool>(var_0.d, true, false), vec3<bool>(global0.b.d, true, arg_2.e), true), vec3<bool>(false, true, arg_2.d.d))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = array<f32, 6>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = arg_0.b.c.x;
    var var_2 = arg_0;
    var var_3 = abs(vec4<i32>(-1i, countOneBits(arg_0.a.x), 2147483647i, -1i));
    return -(~(select(_wgslsmith_mod_i32(u_input.d, -21602i), -22696i, arg_2.d && true) | (~(-1850i) | ~var_3.x)));
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 6>();
    global0 = Struct_2(u_input.e, global0.c, Struct_1(firstLeadingBit(1i), vec4<i32>(func_4(Struct_2(vec2<i32>(global0.c.b.x, global0.c.a), Struct_1(-2147483647i, vec4<i32>(1i, 5030i, global0.c.b.x, 4775i), vec2<u32>(31398u, 8700u), global0.b.d), global0.d, Struct_1(2147483647i, vec4<i32>(global0.b.b.x, 1561i, -43167i, global0.a.x), vec2<u32>(global0.d.c.x, global0.d.c.x), false), global0.e), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, global0.c.c.x), 6u)], func_2(global0.d.b, vec4<f32>(global1[_wgslsmith_index_u32(1u, 6u)], 1422f, global1[_wgslsmith_index_u32(0u, 6u)], -552f), Struct_2(u_input.e, global0.c, global0.c, Struct_1(global0.d.b.x, global0.d.b, u_input.a.zy, false), true)), firstLeadingBit(global0.b.b.x)), ~u_input.d, ~(~global0.a.x), ~u_input.d ^ (i32(-1i) * -1i)), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.b.x), _wgslsmith_clamp_u32(1u, ~0u, countOneBits(1u))), !(!any(vec4<bool>(false, true, global0.d.d, true)))), func_2(firstLeadingBit(vec4<i32>(1i, -u_input.e.x, 2147483647i, -30905i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1547f, -1000f, -1452f, -750f)))), Struct_2(abs(func_3(vec3<bool>(false, global0.e, true), Struct_2(vec2<i32>(-2147483647i, -1i), global0.c, Struct_1(global0.b.a, vec4<i32>(-33822i, 18708i, u_input.d, 2147483647i), global0.c.c, false), global0.b, global0.e), Struct_1(global0.d.b.x, global0.c.b, u_input.b.yy, true), vec4<f32>(global1[_wgslsmith_index_u32(68252u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 2344f))), func_2(select(vec4<i32>(31503i, 0i, 85041i, 32196i), global0.b.b, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global0.d.c.x, 6u)], -326f)), Struct_2(global0.c.b.zy, global0.b, global0.c, Struct_1(u_input.e.x, vec4<i32>(global0.b.b.x, global0.d.a, u_input.e.x, u_input.d), u_input.a.wz, false), global0.c.d)), Struct_1(global0.a.x, ~global0.b.b, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.xz), global0.d.d || true), global0.d, !any(vec4<bool>(global0.b.d, global0.c.d, true, global0.c.d)))), global0.b.d);
    var var_0 = all(!vec3<bool>(_wgslsmith_add_i32(u_input.e.x, global0.a.x) <= (u_input.d >> (u_input.c.x % 32u)), any(select(vec3<bool>(false, true, global0.c.d), vec3<bool>(global0.d.d, global0.d.d, global0.e), vec3<bool>(global0.d.d, true, global0.c.d))), true));
    let var_1 = Struct_2(-(vec2<i32>(-1i) * -(u_input.e << (vec2<u32>(global0.c.c.x, 1u) % vec2<u32>(32u)))), Struct_1(u_input.d, func_2(max(vec4<i32>(33623i, 2147483647i, -2853i, u_input.d), ~vec4<i32>(global0.c.b.x, -2147483647i, 1i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, -1481f, 1512f, global1[_wgslsmith_index_u32(2058u, 6u)]))), Struct_2(min(u_input.e, vec2<i32>(70805i, global0.a.x)), Struct_1(u_input.d, global0.c.b, vec2<u32>(u_input.c.x, 4294967295u), global0.c.d), func_2(vec4<i32>(-2147483647i, 21524i, -2147483647i, global0.b.b.x), vec4<f32>(-117f, 2116f, -239f, -1518f), Struct_2(vec2<i32>(1i, global0.c.b.x), global0.c, global0.d, global0.d, false)), func_2(global0.d.b, vec4<f32>(global1[_wgslsmith_index_u32(61188u, 6u)], 873f, global1[_wgslsmith_index_u32(global0.b.c.x, 6u)], global1[_wgslsmith_index_u32(51963u, 6u)]), Struct_2(global0.a, global0.b, Struct_1(0i, global0.c.b, vec2<u32>(u_input.a.x, global0.b.c.x), global0.e), global0.b, global0.e)), true)).b, func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d, global0.a.x, -27375i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.b.b.x, u_input.e.x, 2147483647i), global0.b.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(538f, -1017f, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 6u)], -520f, 476f, global1[_wgslsmith_index_u32(1u, 6u)])))), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.a, global0.d.a), u_input.e), Struct_1(u_input.d, global0.d.b, vec2<u32>(1u, 1u), false), global0.c, Struct_1(u_input.d, global0.b.b, global0.c.c, true), select(global0.c.d, true, global0.b.d))).c, all(!(!vec2<bool>(false, global0.c.d)))), Struct_1(18049i, max(~func_2(vec4<i32>(34459i, -1i, -2147483647i, -10112i), vec4<f32>(global1[_wgslsmith_index_u32(61244u, 6u)], global1[_wgslsmith_index_u32(global0.b.c.x, 6u)], 662f, 1895f), Struct_2(global0.d.b.zx, Struct_1(global0.d.a, vec4<i32>(global0.b.b.x, -45544i, global0.c.b.x, -1i), vec2<u32>(32783u, 1u), false), Struct_1(global0.c.b.x, global0.b.b, u_input.b.yy, global0.c.d), Struct_1(-34325i, global0.b.b, u_input.a.zx, true), global0.c.d)).b, vec4<i32>(_wgslsmith_div_i32(global0.a.x, 1i), ~global0.a.x, _wgslsmith_sub_i32(global0.b.a, global0.c.a), -4236i)), select(_wgslsmith_mod_vec2_u32(global0.c.c, u_input.c.yy), max(u_input.c.zx, global0.c.c), false), global0.d.d), Struct_1(~0i, ~global0.b.b, func_2(func_2(global0.c.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(1u, 6u)], 180f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], -975f))), Struct_2(global0.d.b.wy, global0.b, Struct_1(u_input.e.x, vec4<i32>(1i, 0i, u_input.d, global0.c.a), global0.d.c, global0.d.d), global0.d, global0.b.d)).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1150f, global1[_wgslsmith_index_u32(22150u, 6u)], -573f, 937f) + vec4<f32>(global1[_wgslsmith_index_u32(13805u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(57366u, 6u)], global1[_wgslsmith_index_u32(46579u, 6u)])), Struct_2(abs(u_input.e), global0.c, Struct_1(-41146i, global0.b.b, global0.b.c, false), global0.d, all(vec2<bool>(global0.d.d, global0.e)))).c, !any(select(vec4<bool>(false, global0.b.d, global0.e, false), vec4<bool>(true, global0.b.d, false, global0.d.d), false))), ~0u != u_input.a.x);
    var var_2 = !all(!vec3<bool>(select(false, global0.e, true), all(vec3<bool>(var_1.d.d, var_1.d.d, true)), false));
    return Struct_2(~abs(-u_input.e), var_1.b, var_1.d, func_2(global0.d.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1228f, global1[_wgslsmith_index_u32(41967u, 6u)], 467f, 759f), vec4<f32>(803f, -1997f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(var_1.d.c.x, 6u)])))))), var_1), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, var_1.e, global0.d.d), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global0.c.d || global0.e, false, false, true);
    var var_1 = ~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(select(-1299i, u_input.d, global0.e), _wgslsmith_mult_i32(global0.a.x, u_input.d), _wgslsmith_div_i32(0i, -1i)), global0.d.b.yyz));
    global0 = func_1();
    var_1 = global0.d.b.yyw;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f + global1[_wgslsmith_index_u32(1u, 6u)]) + _wgslsmith_f_op_f32(781f * global1[_wgslsmith_index_u32(global0.b.c.x, 6u)])) + _wgslsmith_f_op_f32(select(292f, 1f, !var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_u32(1u, 1u)), u_input.a.x);
}

