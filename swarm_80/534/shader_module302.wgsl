struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(76653i, -18303i, i32(-2147483648), 1i), 24781i);

var<private> global1: array<f32, 14> = array<f32, 14>(-1961f, -156f, 277f, 119f, 210f, -564f, -334f, 406f, -137f, -733f, 811f, -1205f, 140f, -300f);

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(52431i, -68929i, -1i), -1544f, -1i), Struct_2(vec3<i32>(i32(-2147483648), -5829i, 0i), -1203f, 2147483647i), Struct_2(vec3<i32>(35173i, 20640i, 1i), 251f, -52376i), Struct_2(vec3<i32>(48233i, 1i, 0i), 164f, 2147483647i), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 4752i), 2162f, 28806i), Struct_2(vec3<i32>(-20457i, 41879i, 18518i), -160f, 32222i), Struct_2(vec3<i32>(-62337i, 2147483647i, 62712i), -1132f, -55554i), Struct_2(vec3<i32>(i32(-2147483648), -12216i, i32(-2147483648)), 309f, -30016i), Struct_2(vec3<i32>(2147483647i, -21702i, 0i), 1498f, 1i), Struct_2(vec3<i32>(-1i, -10526i, -2240i), 252f, -12965i), Struct_2(vec3<i32>(-91274i, -4891i, -1i), -516f, -1i), Struct_2(vec3<i32>(1i, 0i, 2147483647i), -602f, 33694i), Struct_2(vec3<i32>(11282i, 2147483647i, 4140i), 110f, 0i), Struct_2(vec3<i32>(-10059i, 29322i, -27154i), 490f, -1i), Struct_2(vec3<i32>(-1i, -1i, 58412i), 466f, i32(-2147483648)), Struct_2(vec3<i32>(-22993i, 1i, 17435i), -263f, 63272i), Struct_2(vec3<i32>(-6474i, 0i, -33436i), -351f, -46811i), Struct_2(vec3<i32>(-17768i, 2147483647i, 0i), -824f, -4706i), Struct_2(vec3<i32>(2146i, -1i, i32(-2147483648)), 939f, -7104i), Struct_2(vec3<i32>(37236i, 2147483647i, 0i), 2204f, 11467i), Struct_2(vec3<i32>(55066i, 1i, 0i), -2833f, 2147483647i), Struct_2(vec3<i32>(1i, 29730i, -5504i), 572f, 1i), Struct_2(vec3<i32>(i32(-2147483648), -22227i, -1i), 482f, 1i), Struct_2(vec3<i32>(1i, -26644i, -1i), -471f, i32(-2147483648)), Struct_2(vec3<i32>(31932i, -11607i, 39692i), 321f, -57269i), Struct_2(vec3<i32>(-10463i, i32(-2147483648), -6909i), -730f, -17681i), Struct_2(vec3<i32>(i32(-2147483648), -14757i, 1i), -1340f, -24576i), Struct_2(vec3<i32>(31345i, -14943i, 0i), 846f, 18024i), Struct_2(vec3<i32>(-1i, -47549i, 1i), -255f, 0i), Struct_2(vec3<i32>(i32(-2147483648), 24547i, i32(-2147483648)), 1555f, 10445i), Struct_2(vec3<i32>(2147483647i, 12993i, 15644i), 964f, -2942i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec4<i32> {
    global2 = array<Struct_2, 31>();
    global2 = array<Struct_2, 31>();
    return _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, abs(global0.a)), firstLeadingBit(vec4<i32>(abs(21139i), -1i, i32(-1i) * -2147483647i, u_input.c.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_1.a.x & 21820i, u_input.a.x), 11528i, max(2147483647i, select(arg_1.a.x, 0i, false)), countOneBits(global0.b) >> (abs(4294967295u) % 32u)), firstTrailingBit(global0.a), global0.a));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1074f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 14u)]), 603f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, 244f, 905f))))));
    var var_1 = min(_wgslsmith_clamp_vec4_i32(global0.a, global0.a, global0.a >> ((~vec4<u32>(69317u, 403u, u_input.b, 1u) << (~vec4<u32>(1u, 0u, 17154u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), func_3(Struct_4(8743u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], var_0.x, global1[_wgslsmith_index_u32(56995u, 14u)]), vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(0u, 14u)], 1271f)) + vec3<f32>(global1[_wgslsmith_index_u32(17499u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]))), Struct_2(vec3<i32>(-global0.a.x, -global0.a.x, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global1[_wgslsmith_index_u32(abs(u_input.b), 14u)]), ~(-global0.a.x))));
    var_1 = vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(global0.a.x, var_1.x))), firstTrailingBit(_wgslsmith_mult_i32(var_1.x, var_1.x))), var_1.x, min(-2147483647i, -2147483647i), firstLeadingBit(-(~global0.b))) ^ (firstTrailingBit(firstLeadingBit(select(vec4<i32>(42553i, global0.a.x, 29817i, var_1.x), global0.a, vec4<bool>(true, true, false, true)))) << (vec4<u32>(24320u ^ ~u_input.d.x, u_input.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), 11342u), select(1u, u_input.b, any(vec2<bool>(true, false)))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, firstTrailingBit(-u_input.a.x)), countOneBits(var_1.x & 2147483647i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, -1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 14u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, 4294967295u), 14u)]))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1934u, 14u)]), -1000f, var_0.x, 1000f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(u_input.d.x, 14u)], -1005f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], 1028f, 1202f, var_0.x))) - vec4<f32>(var_0.x, 763f, -1333f, -178f)))))));
    return Struct_3(Struct_1(func_3(Struct_4(u_input.d.x, _wgslsmith_f_op_vec3_f32(var_3.zzz + vec3<f32>(708f, -690f, -2183f))), Struct_2(vec3<i32>(-1i, 8670i, 32754i), -676f, -2147483647i)), _wgslsmith_clamp_i32(u_input.c.x, global0.a.x, 34521i)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<f32, 14>();
    var var_0 = func_2();
    global2 = array<Struct_2, 31>();
    global0 = var_0.a;
    var_0 = func_2();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 14u)] - global1[_wgslsmith_index_u32(u_input.b, 14u)])) + -1000f), _wgslsmith_dot_vec4_i32(vec4<i32>(6238i, -11793i | global0.b, global0.a.x, i32(-1i) * -11147i), global0.a), vec3<u32>(~u_input.d.x >> (1u % 32u), u_input.d.x, ~8898u)));
    let var_1 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, select(true, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, false)), !select(true, false, false)), all(vec4<bool>(true, true, true, false))), vec3<bool>(countOneBits(1u) >= (_wgslsmith_mult_u32(4294967295u, u_input.d.x) << ((u_input.b ^ 4294967295u) % 32u)), false, all(vec4<bool>(true, true, true, true))), !(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false))));
    var var_2 = Struct_2(vec3<i32>(var_0.a.a.x, _wgslsmith_dot_vec3_i32(global0.a.yzy, global0.a.xww), ~(var_0.a.a.x >> (u_input.b % 32u))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d.x, select(~(u_input.d.x << (u_input.d.x % 32u)), u_input.b, select(true, true, !var_1.x))), 14u)], _wgslsmith_dot_vec2_i32(firstTrailingBit(-global0.a.yx | _wgslsmith_mod_vec2_i32(u_input.a.zy, vec2<i32>(0i, 48462i))), select(~(~var_0.a.a.wx), select(vec2<i32>(var_0.a.b, global0.b), vec2<i32>(3281i, global0.b), vec2<bool>(var_1.x, true)), any(select(vec3<bool>(false, var_1.x, false), var_1, var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1489f, var_2.b, 668f))))))));
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    let var_4 = var_0.a.a.wx;
    let var_5 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global0.a, var_0.a.a), vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, global0.b), firstLeadingBit(var_0.a.a.x)), _wgslsmith_mult_i32(var_2.c, -1i), firstLeadingBit(1i), ~_wgslsmith_sub_i32(u_input.a.x, 30847i) ^ func_3(Struct_4(4294967295u, vec3<f32>(817f, var_2.b, global1[_wgslsmith_index_u32(u_input.b, 14u)])), Struct_2(var_2.a, -1129f, var_0.a.a.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.zz), 23456u ^ u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.d.x, 13987u, 1u)), firstTrailingBit(1u))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -2070f) + _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.d.x, 14u)]))))), var_3.x, -365f), ~abs(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.zz, vec2<u32>(u_input.b, u_input.b)), u_input.d.xx)), vec2<u32>(u_input.b, _wgslsmith_mult_u32(u_input.d.x, ~u_input.b)) & max(vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(u_input.b, u_input.b)), vec2<u32>(_wgslsmith_div_u32(27447u, 4294967295u), firstTrailingBit(4294967295u))));
}

