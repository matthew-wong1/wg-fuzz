struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-621f, 962f, 487f, -561f), vec4<f32>(1088f, -1910f, -538f, 1000f), vec4<f32>(448f, 814f, 1196f, -1000f), vec4<f32>(-972f, -604f, -1727f, 1420f), vec4<f32>(926f, 325f, 173f, 2038f), vec4<f32>(-483f, 1131f, -1258f, -474f), vec4<f32>(-170f, 783f, 824f, 866f), vec4<f32>(484f, -662f, -693f, -427f), vec4<f32>(1624f, -533f, 154f, 392f), vec4<f32>(796f, -559f, 744f, 1000f), vec4<f32>(-1522f, 374f, -1402f, -1011f), vec4<f32>(-1183f, 450f, -358f, 928f), vec4<f32>(-620f, 108f, -275f, -1434f), vec4<f32>(181f, 698f, 343f, -1000f), vec4<f32>(-452f, 2839f, -247f, 1207f), vec4<f32>(1565f, 807f, 1437f, -206f), vec4<f32>(2455f, 989f, 128f, -391f), vec4<f32>(895f, 865f, 458f, 765f), vec4<f32>(772f, 229f, 1350f, -944f), vec4<f32>(1196f, 421f, 162f, -1000f), vec4<f32>(-996f, 230f, 421f, 304f), vec4<f32>(1422f, -124f, -1686f, -626f), vec4<f32>(-1103f, 572f, 585f, -107f), vec4<f32>(1727f, 2040f, 1002f, 1040f), vec4<f32>(551f, 1000f, -512f, -2537f), vec4<f32>(-515f, 140f, 127f, -612f), vec4<f32>(513f, 364f, -2622f, 150f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-59562i, -25735i), u_input.a.yz), i32(-1i) * -4368i, -arg_0.b.x) ^ vec3<i32>(-4132i, max(2147483647i, global0.b.x) ^ _wgslsmith_div_i32(2147483647i, arg_0.b.x), u_input.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(32678i, var_0.b.x, arg_0.b.x, -2147483647i), arg_0.b), var_0.b) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.c, global0.c, 51772u, 0u) ^ ~vec4<u32>(var_0.c, var_0.c, 20162u, arg_0.c), ~vec4<u32>(global0.c, 52968u, 0u, arg_0.c) << (vec4<u32>(global0.c, 76945u, 31256u, 53471u) % vec4<u32>(32u))) % vec4<u32>(32u)), 4294967295u, global0.d);
    var var_2 = Struct_1(~vec3<i32>(global0.a.x, -1i, ~(~var_0.a.x)), -(vec4<i32>(2147483647i << (var_0.c % 32u), max(var_0.a.x, 1i), ~var_1.a.x, var_1.a.x) | (-vec4<i32>(0i, var_1.b.x, var_1.b.x, var_1.b.x) & ~var_1.b)), global0.c, var_1.d);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(936f, _wgslsmith_f_op_f32(select(-984f, arg_0.d.x, true))))), var_0.d.x, -2256f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1246f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.d.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(select(var_1.d.x, 494f, false)))))));
    let var_4 = arg_0;
    return reverseBits(~_wgslsmith_mod_vec3_i32(u_input.a.wyw, select(var_0.b.www, -vec3<i32>(var_4.a.x, global0.a.x, -1i), true)));
}

fn func_2() -> u32 {
    var var_0 = !all(vec4<bool>(true, true, true, true));
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(global0.b.wxz & -vec3<i32>(u_input.b, 57244i, -43753i), -global0.b.xxz), u_input.a, 33574u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f - global0.d.x) * _wgslsmith_f_op_f32(global0.d.x - global0.d.x)))));
    let var_1 = true;
    var var_2 = Struct_1(select(min(func_3(Struct_1(vec3<i32>(global0.a.x, u_input.a.x, global0.b.x), vec4<i32>(global0.a.x, 19131i, u_input.a.x, 0i), 85897u, global0.d)), global0.b.zyy << (firstLeadingBit(vec3<u32>(global0.c, global0.c, global0.c)) % vec3<u32>(32u))), global0.a, !vec3<bool>(var_1, var_1, all(vec3<bool>(false, false, false)))), global0.b, 69567u, _wgslsmith_f_op_vec3_f32(min(global0.d, global0.d)));
    let var_3 = Struct_1(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(var_2.b, global0.b), vec4<i32>(-1i, 49705i, var_2.a.x, -45481i), select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(true, var_1, var_1, false), var_1)), var_2.b), -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-(~var_2.b.x), var_2.a.x, firstLeadingBit(func_3(Struct_1(global0.a, global0.b, var_2.c, global0.d)).x), global0.a.x), firstTrailingBit(firstLeadingBit(global0.b))), _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_2.c, 44160u, global0.c), vec4<u32>(35113u, 0u, var_2.c, 17010u), vec4<u32>(global0.c, 4294967295u, 1u, 0u)), vec4<u32>(global0.c, var_2.c, 4294967295u, var_2.c))), _wgslsmith_mod_u32(global0.c, 1u)), var_2.d);
    return ~(reverseBits(_wgslsmith_div_u32(var_3.c, 1u)) ^ ~global0.c);
}

fn func_1() -> vec4<bool> {
    global1 = array<vec4<f32>, 27>();
    global0 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(-8627i ^ u_input.a.x, 2147483647i, -23752i), -(global0.b & u_input.a), _wgslsmith_mod_u32(global0.c, global0.c | _wgslsmith_sub_u32(~global0.c, _wgslsmith_sub_u32(41365u, global0.c))), global0.d);
    global0 = Struct_1(u_input.a.zxx, -firstTrailingBit(reverseBits(-vec4<i32>(global0.b.x, -31585i, global0.b.x, u_input.b))), func_2(), global0.d);
    global1 = array<vec4<f32>, 27>();
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i << (func_2() % 32u), global0.a.x, _wgslsmith_add_i32(~2147483647i, u_input.a.x)), global0.a, vec3<i32>(global0.a.x, u_input.b, 1i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global0.a.x, -1i, global0.a.x, 1i)), reverseBits(vec4<i32>(-2147483647i, 1i, firstTrailingBit(u_input.b), 0i))), max(global0.c, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global0.c, global0.c)), vec2<u32>(global0.c, abs(4294967295u)))), _wgslsmith_f_op_vec3_f32(-global0.d));
    return !vec4<bool>(true | ((global0.c == global0.c) || false), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), false, any(vec4<bool>(true, true, true, true)) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 27>();
    let var_0 = vec2<f32>(358f, 374f);
    var var_1 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)));
    let var_2 = select(vec4<bool>(true, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), func_1())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, 1078f)) == -842f, reverseBits(0u >> (global0.c % 32u)) >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.c), vec2<u32>(global0.c, 2265u)), 1u, global0.c)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), func_1(), -u_input.b > -5706i), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, false), func_1().x), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(func_1(), func_1(), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, select(false, false, false)))), vec4<bool>(false, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), -1i == global0.b.x));
    var var_3 = vec4<i32>(u_input.b, global0.b.x, ~(-1i) ^ _wgslsmith_sub_i32(~global0.a.x, -u_input.b >> (~4294967295u % 32u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, global0.b.x) & _wgslsmith_mod_i32(global0.b.x, global0.b.x), ~(~2147483647i)), _wgslsmith_mod_i32(global0.b.x, 9826i) >> (~109035u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1075f, global0.d.x, var_0.x, 1000f))) * vec4<f32>(-813f, -252f, -132f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x)))), 1419f, _wgslsmith_f_op_f32(f32(-1f) * -262f), var_0.x)), _wgslsmith_clamp_u32(19743u, global0.c, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.c, 4294967295u), global0.c, reverseBits(~global0.c))), firstTrailingBit(u_input.a), abs(u_input.a) & ~vec4<i32>(46878i, i32(-1i) * -10811i, u_input.a.x, select(11052i, 7344i, true)));
}

