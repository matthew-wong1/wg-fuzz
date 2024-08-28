struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-906f, 149f, 406f, -836f), vec4<f32>(734f, 157f, -1332f, -506f), vec4<f32>(1419f, 1399f, 1383f, -1511f), vec4<f32>(-869f, 279f, 1000f, 167f), vec4<f32>(-480f, -269f, 1753f, 295f), vec4<f32>(314f, -1581f, -1110f, 1000f), vec4<f32>(624f, 2297f, -1428f, -1000f));

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(43652u, 41235u, 3937u, 26939u), vec4<u32>(3111u, 1u, 1u, 73220u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(25192u, 99065u, 33240u, 0u), vec4<u32>(4294967295u, 6028u, 10382u, 26843u), vec4<u32>(7870u, 1u, 1855u, 1u), vec4<u32>(0u, 16190u, 4294967295u, 55202u), vec4<u32>(28385u, 12046u, 1u, 4294967295u), vec4<u32>(1u, 69701u, 48426u, 31452u), vec4<u32>(18946u, 4294967295u, 50169u, 7350u), vec4<u32>(4294967295u, 76460u, 0u, 1502u), vec4<u32>(4294967295u, 56154u, 49876u, 4294967295u), vec4<u32>(54453u, 58040u, 1u, 0u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(0u, 1u, 7633u, 8554u), vec4<u32>(18327u, 93885u, 1u, 1136u), vec4<u32>(19260u, 4294967295u, 64272u, 17925u), vec4<u32>(4294967295u, 1u, 51376u, 58479u), vec4<u32>(59347u, 0u, 23484u, 18327u), vec4<u32>(4294967295u, 4294967295u, 107641u, 0u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = vec4<bool>(true, true, true, true);
    return 47635i ^ _wgslsmith_mult_i32(countOneBits(abs(-u_input.b)), -(i32(-1i) * -1i));
}

fn func_2(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = Struct_1(-(vec3<i32>(func_3(arg_0.x), u_input.a, -1i) << (~arg_0 % vec3<u32>(32u))), 2206f, !all(vec2<bool>(true, true)) | any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), false)), vec2<bool>(true, true));
    global2 = array<vec2<u32>, 31>();
    global0 = array<Struct_1, 22>();
    return vec2<u32>(4479u, ~55143u);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = (countOneBits(~arg_3.x & (arg_0.x & 1i)) >> (1u % 32u)) | (-8467i | _wgslsmith_mult_i32(arg_3.x << (_wgslsmith_mult_u32(4294967295u, 0u) % 32u), u_input.b));
    let var_1 = Struct_1(max(vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(arg_0), vec2<i32>(-66596i, -3283i)), 17543i, firstLeadingBit(select(arg_2, u_input.b, arg_1))), -arg_3), _wgslsmith_f_op_f32(-1322f * -509f), true, vec2<bool>(arg_1, !(!select(arg_1, false, arg_1))));
    var var_2 = reverseBits(13551u ^ ~abs(_wgslsmith_clamp_u32(42639u, 0u, 4294967295u)));
    var var_3 = select(select(!(!(!vec4<bool>(var_1.d.x, arg_1, var_1.d.x, true))), vec4<bool>(false, arg_1, any(vec4<bool>(arg_1, false, false, arg_1)), true), !vec4<bool>(arg_1, false, var_1.d.x, true)), vec4<bool>(all(vec4<bool>(any(vec2<bool>(true, false)), var_1.b != var_1.b, all(vec4<bool>(true, var_1.c, true, arg_1)), true)), any(!(!vec3<bool>(false, false, arg_1))), select(true & any(vec3<bool>(arg_1, arg_1, true)), var_1.c, any(select(vec2<bool>(false, arg_1), vec2<bool>(var_1.c, var_1.c), var_1.d.x))), !any(vec2<bool>(true, arg_1))), vec4<bool>(true, ~reverseBits(31061i) >= (_wgslsmith_mod_i32(0i, arg_0.x) >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)), arg_3.x < _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, var_0), var_1.a.x), true));
    var var_4 = countOneBits(max(abs(firstTrailingBit(abs(4294967295u))), select(29093u, _wgslsmith_div_u32(4294967295u, 13210u) >> (~4294967295u % 32u), true)));
    return Struct_1(_wgslsmith_sub_vec3_i32(abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.a.x, arg_0.x), arg_3)), _wgslsmith_add_vec3_i32(arg_3, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(95762i, var_1.a.x, var_0), arg_3), arg_3 & var_1.a, vec3<i32>(19681i, var_0, 2147483647i) & vec3<i32>(u_input.b, 2147483647i, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -112f))), any(vec4<bool>(_wgslsmith_f_op_f32(var_1.b * -693f) == 1f, all(var_3.xzw), all(var_3.ww), any(vec4<bool>(true, false, var_1.d.x, var_1.d.x)))), vec2<bool>(var_3.x, (~var_0 >> (~1u % 32u)) > (i32(-1i) * -1i)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4((vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.c, u_input.c))) >> (select(func_2(~vec3<u32>(31424u, 38088u, 4294967295u)), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(23113u, 20505u), 31u)], vec2<bool>(true, true)) % vec2<u32>(32u)), select(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, false), u_input.c, vec3<i32>(-2147483647i, 2147483647i, firstTrailingBit(u_input.a)));
    global2 = array<vec2<u32>, 31>();
    var var_1 = ~(~reverseBits(abs(vec4<u32>(0u, 0u, 0u, 15698u))));
    var var_2 = false;
    global2 = array<vec2<u32>, 31>();
    return func_4(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -11753i), ~var_0.a.xy) ^ vec2<i32>(abs(u_input.b), ~1i)), false, _wgslsmith_mod_i32((2147483647i & var_0.a.x) | var_0.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, u_input.a, var_0.a.x), vec3<i32>(u_input.c, u_input.b, -1i)), firstLeadingBit(var_0.a))) ^ func_4(var_0.a.zy, !var_0.d.x, select(u_input.a, i32(-1i) * -2147483647i, var_0.d.x), vec3<i32>(_wgslsmith_sub_i32(u_input.b, var_0.a.x), u_input.c & -20302i, -1i)).a.x, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, var_0.a.x), _wgslsmith_dot_vec3_i32(var_0.a, var_0.a)), -var_0.a.x), (var_0.a | var_0.a) << (min(~var_1.zwy, min(var_1.zxw, vec3<u32>(var_1.x, 11033u, var_1.x))) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2501f - -1000f), _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(floor(arg_0.b)))))));
    let var_1 = func_4(_wgslsmith_mod_vec2_i32(arg_0.a.xz, reverseBits(_wgslsmith_clamp_vec2_i32(select(arg_0.a.xz, vec2<i32>(2147483647i, 1i), vec2<bool>(arg_0.c, arg_0.c)), -vec2<i32>(arg_0.a.x, u_input.c), ~vec2<i32>(arg_0.a.x, arg_0.a.x)))), !arg_1, 0i, arg_0.a);
    let var_2 = Struct_1(vec3<i32>(1i, ~_wgslsmith_sub_i32(var_1.a.x, var_1.a.x << (1u % 32u)), (u_input.b << (~42882u % 32u)) << (21778u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_1.b)))) * var_0)), any(func_1().d), func_4(arg_0.a.xx, all(!select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), false)), min(-13146i, 1i), var_1.a).d);
    global2 = array<vec2<u32>, 31>();
    let var_3 = 93400u;
    return func_2(vec3<u32>(var_3, var_3, ~20903u)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(u_input.c, u_input.a, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(992f - _wgslsmith_f_op_f32(132f - 1058f))))), all(vec2<bool>(true, false)), select(vec2<bool>(false, !all(vec3<bool>(false, true, true))), vec2<bool>(true, true | any(vec2<bool>(false, false))), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(abs(4294967295u), 20u)], global3[_wgslsmith_index_u32(~func_5(func_1(), var_0.d.x), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(func_1().b, -752f))), -max(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.a.x, 23360i, -1i), vec4<i32>(-35369i, 1i, u_input.c, var_0.a.x))), ~vec4<i32>(var_0.a.x, 36987i, 21248i, -2147483647i)), vec4<u32>(var_1.x, 1u, var_1.x, ~1u));
}

