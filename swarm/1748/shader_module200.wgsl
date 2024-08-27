struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<i32>(i32(-2147483648), -31908i, -1i)), Struct_3(vec3<i32>(11688i, 8834i, 2147483647i)), Struct_3(vec3<i32>(25923i, 57295i, 70607i)), Struct_3(vec3<i32>(-27777i, -45308i, 0i)), Struct_3(vec3<i32>(-37911i, -41914i, -39355i)), Struct_3(vec3<i32>(1i, 0i, -1i)), Struct_3(vec3<i32>(9652i, 26187i, 0i)), Struct_3(vec3<i32>(0i, 11801i, -1i)), Struct_3(vec3<i32>(1i, 1i, 39426i)), Struct_3(vec3<i32>(i32(-2147483648), -9646i, -11884i)));

var<private> global1: u32;

var<private> global2: bool = false;

var<private> global3: Struct_3 = Struct_3(vec3<i32>(70124i, -61911i, 54040i));

var<private> global4: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-1i, 2190i, 4328i, 0i), vec4<i32>(31759i, 18593i, 1i, -32639i), vec4<i32>(-6227i, 2147483647i, 0i, 1i), vec4<i32>(4119i, 2147483647i, -6833i, 1i), vec4<i32>(4602i, -12267i, i32(-2147483648), 1i), vec4<i32>(-31015i, -14704i, -11046i, 0i), vec4<i32>(-1i, 24171i, 26954i, 0i), vec4<i32>(0i, 13702i, i32(-2147483648), 55364i), vec4<i32>(43584i, i32(-2147483648), -26387i, -3623i), vec4<i32>(0i, i32(-2147483648), -2560i, -1i), vec4<i32>(-77372i, -45775i, -6472i, 2147483647i), vec4<i32>(19670i, 21383i, -115481i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -64721i, 0i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -13732i, 22823i, i32(-2147483648)), vec4<i32>(-18202i, i32(-2147483648), 26612i, 1i), vec4<i32>(-42547i, -26848i, 54557i, -21137i), vec4<i32>(-3697i, 1i, 0i, -18918i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 26140i), vec4<i32>(2335i, -7218i, 0i, -22148i), vec4<i32>(19095i, -21869i, 57492i, i32(-2147483648)), vec4<i32>(10125i, -9443i, -11598i, 0i), vec4<i32>(-4763i, -45228i, -13481i, i32(-2147483648)), vec4<i32>(-22765i, 15014i, 0i, -1i), vec4<i32>(2147483647i, -19049i, -1i, 4668i), vec4<i32>(-1i, -17004i, -25033i, 76911i), vec4<i32>(2147483647i, -42170i, 1i, 1i), vec4<i32>(-30179i, 24435i, -1i, -26889i), vec4<i32>(43428i, -17247i, 1i, 2147483647i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = select(!(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))) != true), false, !(true && (true == all(vec3<bool>(true, true, true)))));
    global0 = array<Struct_3, 10>();
    global3 = global0[_wgslsmith_index_u32(51629u, 10u)];
    var var_1 = Struct_2(Struct_1(~(countOneBits(u_input.d.zwz) | u_input.a.zwz), ~u_input.a.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(727f))), u_input.a.wxw, Struct_1(u_input.d.zyx, _wgslsmith_clamp_vec2_u32(~u_input.d.zy, vec2<u32>(u_input.d.x, ~0u), u_input.a.zw)));
    var var_2 = 1364f;
    return global3.a.x;
}

fn func_2() -> Struct_2 {
    global2 = true;
    let var_0 = 0i > _wgslsmith_div_i32(~abs(global3.a.x), _wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(-1231f + -1196f)), -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-112f, -388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(471f)) - _wgslsmith_f_op_f32(f32(-1f) * -1216f)))), 408f) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) * _wgslsmith_f_op_f32(f32(-1f) * -660f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-436f + -1199f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f * -1844f))), _wgslsmith_f_op_f32(f32(-1f) * -240f)));
    global4 = array<vec4<i32>, 29>();
    global3 = Struct_3(vec3<i32>(min(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 0i), ~global3.a.yy), ~_wgslsmith_div_i32(u_input.b, -16099i)), -u_input.b, min(1376i, ~(u_input.c << (4294967295u % 32u)))));
    return Struct_2(Struct_1(abs(u_input.d.yyw & _wgslsmith_mod_vec3_u32(u_input.d.yyw, u_input.a.xzy)), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.d.x), u_input.d.x)), _wgslsmith_f_op_f32(round(-130f)), vec3<u32>(115823u, 35259u, ~_wgslsmith_sub_u32(select(u_input.d.x, 49762u, var_0), u_input.d.x)), Struct_1(~vec3<u32>(countOneBits(0u), u_input.a.x, reverseBits(u_input.a.x)), u_input.d.zz | vec2<u32>(~u_input.a.x, u_input.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_3 {
    global1 = ~(~abs(~(u_input.d.x | u_input.d.x)));
    global1 = 4294967295u;
    let var_0 = func_2();
    let var_1 = ~(_wgslsmith_add_vec4_u32(u_input.a, u_input.a) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.a.b.x, u_input.d.x, ~var_0.a.a.x, _wgslsmith_dot_vec3_u32(u_input.a.xyy, u_input.a.wzz)), u_input.d));
    var var_2 = -1i;
    return global0[_wgslsmith_index_u32(50386u, 10u)];
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    global2 = any(!select(vec2<bool>(true, true), vec2<bool>(arg_0 >= 40421u, all(vec4<bool>(false, true, true, false))), all(vec2<bool>(true, true)) & true));
    let var_0 = abs(0u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -793f);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, 1976f, var_1))))) * vec3<f32>(var_1, _wgslsmith_f_op_f32(-1561f - var_1), _wgslsmith_f_op_f32(-var_1)))))));
    global3 = Struct_3(global3.a);
    return Struct_2(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1671f))), ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 35967u, 73599u), u_input.a.xzw))), func_2().d);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global4 = array<vec4<i32>, 29>();
    global2 = select(select(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), -1153f > arg_1))), !all(vec4<bool>(select(false, true, true), true, true, all(vec3<bool>(false, false, true)))), true);
    let var_0 = global4[_wgslsmith_index_u32(u_input.d.x, 29u)];
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.a.x, global3.a.x, u_input.b), _wgslsmith_add_vec3_i32(var_0.yzy, vec3<i32>(u_input.b, var_0.x, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, global3.a.x), global3.a)), vec3<i32>(391i, countOneBits(-10425i), 5064i)) | _wgslsmith_div_vec3_i32(vec3<i32>(-28869i, var_0.x, -1i << (arg_0.c.x % 32u)), vec3<i32>(u_input.c, abs(var_0.x), _wgslsmith_sub_i32(global3.a.x, 2147483647i))));
    var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    return global0[_wgslsmith_index_u32(~arg_0.d.a.x, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = u_input.c;
    var var_2 = global3.a.yz;
    global0 = array<Struct_3, 10>();
    let var_3 = func_5(func_4(_wgslsmith_mod_u32(reverseBits(~u_input.a.x), u_input.d.x), func_1(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), u_input.d.yxy)), 29u)], 79162u, select(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, global3.a.x), vec2<i32>(2147483647i, global3.a.x)), true))), -487f, Struct_1(u_input.d.zwy, u_input.a.yw));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(countOneBits(1u), ~u_input.a.x, ~48414u, ~u_input.a.x)) | vec4<u32>(~4294967295u, u_input.a.x, _wgslsmith_mod_u32(select(u_input.a.x, 0u, false), ~0u), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 855f))))), u_input.d.x, var_3.a.xy);
}

