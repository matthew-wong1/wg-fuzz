struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<i32, 10> = array<i32, 10>(-1i, 0i, -1i, 3609i, -22723i, 0i, 7783i, 2147483647i, -3840i, 2147483647i);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-322f, 1105f, -1007f, 743f), true, vec2<i32>(-36121i, i32(-2147483648)), false);

var<private> global4: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1307f, -101f, -894f, -239f), vec4<f32>(1000f, 611f, 1201f, 1160f), vec4<f32>(1772f, 2042f, 686f, 1421f), vec4<f32>(1453f, 587f, -151f, -261f), vec4<f32>(690f, -481f, 759f, -777f), vec4<f32>(1390f, -132f, 1090f, -900f), vec4<f32>(909f, 803f, -202f, -671f), vec4<f32>(-197f, 1000f, 1000f, -1537f), vec4<f32>(1000f, -804f, 764f, -682f), vec4<f32>(380f, 614f, 1687f, 171f), vec4<f32>(-253f, 1213f, -1000f, -488f), vec4<f32>(2418f, 369f, -1333f, 693f), vec4<f32>(538f, 1708f, 277f, -178f), vec4<f32>(1579f, -263f, -519f, 866f), vec4<f32>(-845f, -1103f, 310f, 1088f), vec4<f32>(1810f, -341f, 163f, 1181f), vec4<f32>(183f, -541f, -1039f, -1129f), vec4<f32>(511f, -167f, -1000f, 494f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = reverseBits(firstLeadingBit(~(-vec3<i32>(global3.c.x, -5620i, u_input.a.x))) | vec3<i32>(2898i, -46717i, select(global3.c.x, -5590i, true)));
    var var_1 = vec3<bool>(global3.d, _wgslsmith_mult_i32(u_input.b.x | (39980i << (1u % 32u)), arg_0) != (var_0.x >> (abs(_wgslsmith_add_u32(52474u, 1093u)) % 32u)), !any(select(select(vec2<bool>(true, true), vec2<bool>(false, global3.d), vec2<bool>(global3.d, global3.d)), !vec2<bool>(false, global3.d), global3.b)));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(740f * global3.a.x), global3.a.x, _wgslsmith_f_op_f32(ceil(global3.a.x)), _wgslsmith_f_op_f32(-global3.a.x)), global4[_wgslsmith_index_u32(29763u, 18u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(57958u, 18u)] * vec4<f32>(global3.a.x, 3560f, 1439f, -1000f))))), !any(!select(global0[_wgslsmith_index_u32(1u, 18u)], vec4<bool>(false, global3.b, false, true), false)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(select(2147483647i, -1i, var_1.x), 0i), vec2<i32>(global3.c.x, -u_input.b.x)), select(global3.d, global3.d, false));
    var var_2 = ~abs(vec4<u32>(1u, 1u, 1u, 1u));
    global4 = array<vec4<f32>, 18>();
    return -vec4<i32>(-1i, 80714i, var_0.x, max(var_0.x, 1i));
}

fn func_4(arg_0: vec4<i32>) -> bool {
    global1 = array<Struct_1, 12>();
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(58491u << (1u % 32u), 1u)), 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, global3.a.x, 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, -973f, -647f, 1101f) - global3.a))))), _wgslsmith_f_op_f32(abs(global3.a.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a.x, -1574f)))), vec2<i32>(~58941i, 1i), !(!(!select(true, true, false))));
    var var_0 = Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(_wgslsmith_mult_u32(max(1u, 57861u), firstTrailingBit(14856u)), 1u), 4294967295u), 18u)], true, reverseBits(u_input.a.xx), global3.d);
    let var_1 = 0u;
    global1 = array<Struct_1, 12>();
    return !var_0.b;
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    global3 = global1[_wgslsmith_index_u32(var_0, 12u)];
    var var_1 = true;
    var var_2 = _wgslsmith_mult_i32(-72219i, u_input.a.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, 553f, global3.a.x)))), any(vec3<bool>(global3.a.x != _wgslsmith_f_op_f32(round(global3.a.x)), any(vec3<bool>(global3.d, true, global3.d)) | (global3.a.x != 1000f), func_4(func_3(u_input.b.x)))), u_input.a.zx, !global3.d);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-750f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.x))))), 1514f), true, _wgslsmith_add_vec2_i32(~(u_input.a.zx & var_3.c), vec2<i32>(-reverseBits(42484i), abs(-1i))), false);
}

fn func_1(arg_0: i32) -> i32 {
    global3 = func_2();
    let var_0 = global1[_wgslsmith_index_u32(~24961u, 12u)];
    var var_1 = vec2<u32>(4294967295u, 4294967295u);
    global3 = func_2();
    global3 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-global3.a.x), var_0.a.x, 624f), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(9334i, _wgslsmith_sub_i32(1i, var_0.c.x), 0i, abs(u_input.a.x)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 48279i, 1i, global2[_wgslsmith_index_u32(58300u, 10u)]), vec4<i32>(2147483647i, global3.c.x, global3.c.x, 0i)), ~vec4<i32>(14541i, 25261i, global3.c.x, var_0.c.x)))), vec2<i32>(func_2().c.x, global2[_wgslsmith_index_u32(26750u, 10u)]), true);
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global3.a.x);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), -138f), global3.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -560f))), global3.a.x), true, vec2<i32>(1i, global3.c.x), !global3.b);
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, var_1.a.x, _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), -575f) - _wgslsmith_f_op_vec4_f32(global3.a - _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(9314u, 18u)]))) * vec4<f32>(global3.a.x, 1146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(103f))), -736f)), all(!vec2<bool>(false, all(vec3<bool>(var_1.d, true, global3.d)))), vec2<i32>(i32(-1i) * -1i, ~(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 10u)], u_input.a.x) | ~var_1.c.x)), true);
    var var_4 = global3.c;
    global2 = array<i32, 10>();
    var var_5 = -firstTrailingBit((var_3.c.x | global3.c.x) << (1u % 32u)) != ~_wgslsmith_add_i32(func_1(var_1.c.x), global2[_wgslsmith_index_u32(8543u, 10u)]);
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(max(vec4<i32>(u_input.b.x, var_3.c.x, 45231i, var_4.x), vec4<i32>(u_input.b.x, global3.c.x, -35459i, 29804i)) ^ abs(vec4<i32>(63652i, global3.c.x, 0i, -26205i)))), -1i, 11960u, _wgslsmith_f_op_f32(383f + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x + global3.a.x), -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(686f)), _wgslsmith_f_op_f32(global3.a.x * var_1.a.x)))), select(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, ~36158u), ~1u), ~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(34034u, 29384u), vec2<u32>(1u, 1u), vec2<u32>(28367u, 4294967295u))), !vec2<bool>(var_6 | var_1.b, !global3.d)));
}

