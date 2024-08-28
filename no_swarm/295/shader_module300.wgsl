struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true, vec4<i32>(-1i, 53274i, -1i, -61654i), vec4<bool>(true, false, true, true), vec2<f32>(-944f, -955f), -1407f);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true, vec4<i32>(2147483647i, 4349i, 43110i, i32(-2147483648)), vec4<bool>(false, true, true, true), vec2<f32>(-1366f, -1102f), -1029f), Struct_1(false, vec4<i32>(1i, 33934i, -4794i, 2147483647i), vec4<bool>(false, false, false, true), vec2<f32>(-115f, -691f), 428f), Struct_1(false, vec4<i32>(-1i, -1i, 47278i, 0i), vec4<bool>(true, false, false, false), vec2<f32>(-597f, 1147f), -688f), Struct_1(true, vec4<i32>(-34412i, 0i, 1i, -35266i), vec4<bool>(true, true, true, false), vec2<f32>(-699f, -1000f), 1326f), Struct_1(false, vec4<i32>(-19109i, 1i, 1i, 0i), vec4<bool>(false, true, true, false), vec2<f32>(-429f, 335f), 783f), Struct_1(false, vec4<i32>(i32(-2147483648), 0i, -50217i, 2147483647i), vec4<bool>(false, false, false, true), vec2<f32>(-511f, -1183f), 115f), Struct_1(false, vec4<i32>(1i, 1i, 51087i, 2147483647i), vec4<bool>(false, true, false, true), vec2<f32>(879f, -1000f), -883f), Struct_1(true, vec4<i32>(31128i, 0i, -1i, 1i), vec4<bool>(true, true, true, true), vec2<f32>(590f, -132f), -1561f), Struct_1(false, vec4<i32>(i32(-2147483648), 0i, -613i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec2<f32>(-431f, -552f), 154f), Struct_1(true, vec4<i32>(-1i, -16274i, i32(-2147483648), -12461i), vec4<bool>(true, true, true, false), vec2<f32>(692f, 878f), 1328f), Struct_1(false, vec4<i32>(-40364i, -17361i, -17935i, -1i), vec4<bool>(true, false, false, false), vec2<f32>(1152f, -791f), 539f), Struct_1(false, vec4<i32>(1i, 38859i, -1i, 18351i), vec4<bool>(true, false, false, false), vec2<f32>(298f, -1000f), 585f), Struct_1(false, vec4<i32>(17959i, 1i, -50136i, 1i), vec4<bool>(true, true, false, true), vec2<f32>(1374f, -230f), 1180f), Struct_1(true, vec4<i32>(-30760i, 1216i, 2147483647i, -42215i), vec4<bool>(false, true, true, true), vec2<f32>(-2112f, -702f), 1574f), Struct_1(true, vec4<i32>(-12933i, -1i, 0i, i32(-2147483648)), vec4<bool>(false, false, false, false), vec2<f32>(-1531f, 170f), -1000f), Struct_1(false, vec4<i32>(-1i, 2147483647i, 0i, 30737i), vec4<bool>(false, false, true, false), vec2<f32>(958f, 1146f), 1220f), Struct_1(true, vec4<i32>(1i, -13591i, -17206i, 1i), vec4<bool>(true, false, true, false), vec2<f32>(-414f, -1000f), 105f), Struct_1(false, vec4<i32>(14456i, -1i, -25457i, 15333i), vec4<bool>(false, false, true, true), vec2<f32>(-162f, 765f), -564f), Struct_1(true, vec4<i32>(-10831i, -1i, 2147483647i, -78804i), vec4<bool>(false, true, true, true), vec2<f32>(-459f, -423f), 1000f), Struct_1(true, vec4<i32>(13962i, 2547i, -1i, -1882i), vec4<bool>(true, true, false, false), vec2<f32>(-1250f, -139f), 156f), Struct_1(false, vec4<i32>(31728i, 32727i, -1i, -35700i), vec4<bool>(false, true, false, false), vec2<f32>(1829f, 1257f), 1080f), Struct_1(true, vec4<i32>(-12406i, -29968i, -1i, 2147483647i), vec4<bool>(true, false, true, false), vec2<f32>(-535f, -955f), 2929f), Struct_1(true, vec4<i32>(2147483647i, 0i, -1i, 2147483647i), vec4<bool>(false, false, true, true), vec2<f32>(730f, -1791f), -277f), Struct_1(true, vec4<i32>(0i, -1i, 30224i, 28047i), vec4<bool>(true, true, true, false), vec2<f32>(796f, 104f), 326f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    global1 = true;
    let var_0 = _wgslsmith_div_u32(~u_input.b.x, min(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(112677u, 13u)], ~vec2<u32>(0u, 5317u))), u_input.b.x));
    let var_1 = u_input.b.xw;
    let var_2 = global4[_wgslsmith_index_u32(27835u, 24u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.e, global2.e) * _wgslsmith_f_op_f32(max(-156f, global2.e))), global2.d.x, _wgslsmith_f_op_f32(-var_2.d.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.e - var_2.e), -201f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-113f - -734f), _wgslsmith_f_op_f32(-global3.e))), _wgslsmith_f_op_f32(ceil(-149f)), var_2.d.x), var_2.a & (select(global2.a, true, any(global3.c.wxz)) & true)));
    return var_2.b.x;
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global3 = Struct_1((!global3.c.x == false) && (((global3.c.x || false) && true) || ((u_input.a == global3.b.x) == true)), arg_0.b, !(!arg_0.c), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(137f)) + arg_0.e)))), _wgslsmith_f_op_f32(arg_0.e + global3.d.x));
    var var_0 = Struct_1(false, vec4<i32>(_wgslsmith_dot_vec4_i32(abs(select(global2.b, arg_0.b, global3.c)), ~select(vec4<i32>(u_input.a, -17086i, global2.b.x, 0i), vec4<i32>(global2.b.x, -7620i, 36484i, u_input.a), arg_0.c)), -_wgslsmith_clamp_i32(u_input.a ^ u_input.a, u_input.a, _wgslsmith_add_i32(global3.b.x, -3273i)), _wgslsmith_mod_i32(-reverseBits(global2.b.x), u_input.a), 1i), !vec4<bool>(false, arg_0.a, all(vec2<bool>(true, true)), global2.a), vec2<f32>(arg_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) - global2.d.x))), 709f);
    global4 = array<Struct_1, 24>();
    global0 = array<vec2<u32>, 13>();
    var_0 = arg_0;
    return vec4<i32>(global3.b.x, 2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, abs(arg_0.b.x), var_0.b.x), select(-61983i, -max(arg_0.b.x, -36152i), arg_0.c.x)), max(_wgslsmith_add_i32(global3.b.x, min(-1i, ~global3.b.x)), _wgslsmith_add_i32(arg_0.b.x, -1i)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3.d.x)))) + -384f) != global2.d.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(firstTrailingBit(-25413i), func_2(), arg_0.x), ~2147483647i, 59546i), _wgslsmith_add_vec4_i32(-global2.b << (~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 11762u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(852i, 22872i, 40208i, -42711i), vec4<i32>(29058i, 1i, global3.b.x, 9607i), vec4<bool>(true, false, global2.a, false)), func_3(global4[_wgslsmith_index_u32(u_input.b.x, 24u)]))), select(global2.b & global3.b, select(global2.b, func_3(Struct_1(global3.a, global3.b, vec4<bool>(global2.c.x, global2.a, true, true), vec2<f32>(global3.d.x, global3.d.x), -404f)), select(global2.c, vec4<bool>(global3.c.x, global2.c.x, true, global3.c.x), global2.c.x)), global3.c)), !global3.c, _wgslsmith_f_op_vec2_f32(-global3.d), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zwz;
    var var_1 = abs(-6789i);
    var var_2 = _wgslsmith_mult_vec3_u32(max(firstLeadingBit(~(~vec3<u32>(3009u, 51561u, 71339u))), vec3<u32>(u_input.b.x << (~u_input.b.x % 32u), 4672u, 1771u)), u_input.b.wxw);
    let var_3 = _wgslsmith_sub_i32(global2.b.x, ~u_input.a);
    let var_4 = func_1(-global2.b.yw);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.wx);
}

