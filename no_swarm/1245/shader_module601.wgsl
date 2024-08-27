struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1000f, -277f, -978f, -507f), vec4<f32>(-675f, 1182f, -567f, 310f), vec4<f32>(-1988f, 476f, -312f, -406f), vec4<f32>(1561f, -950f, -318f, 519f), vec4<f32>(1000f, -939f, -311f, 1615f), vec4<f32>(-1128f, -1152f, -191f, 854f), vec4<f32>(703f, 677f, 727f, 1369f), vec4<f32>(-695f, 659f, 900f, -852f), vec4<f32>(625f, -589f, -1000f, -2214f), vec4<f32>(-614f, -912f, 1101f, -1388f), vec4<f32>(-598f, -889f, -385f, -429f), vec4<f32>(-996f, -1027f, 1113f, 230f), vec4<f32>(-1010f, -935f, 1132f, 1000f), vec4<f32>(1000f, -730f, 1796f, 1865f), vec4<f32>(897f, 1117f, -624f, -1864f), vec4<f32>(-240f, 140f, -299f, -1327f), vec4<f32>(-1073f, -1049f, 1344f, 338f), vec4<f32>(-1449f, -395f, -1083f, 596f), vec4<f32>(1000f, 190f, 115f, -1280f), vec4<f32>(-103f, 1254f, -878f, -818f), vec4<f32>(496f, 1044f, -914f, 2660f), vec4<f32>(-1476f, 521f, 556f, 552f), vec4<f32>(2598f, -144f, 142f, 130f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<bool, 3>();
    global1 = array<vec4<f32>, 23>();
    global0 = array<bool, 3>();
    var var_0 = (876u & ~arg_1) < ~1u;
    var var_1 = Struct_1(vec3<u32>(arg_0.a.x, 0u, ~_wgslsmith_mult_u32(arg_1, 4294967295u) & reverseBits(reverseBits(u_input.b.x))), arg_0.b);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1291f, 1245f, false)) - 211f))), 1041f, arg_0.b.x));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = !arg_1;
    var var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.d.x, _wgslsmith_div_i32(-6444i, 1i))), u_input.d.x, ~_wgslsmith_sub_i32(~(-15778i), -15365i), _wgslsmith_mult_i32(2204i, u_input.d.x)) | vec4<i32>(_wgslsmith_div_i32(arg_2 & _wgslsmith_mult_i32(0i, 1i), arg_2), u_input.d.x, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 0i, arg_2, u_input.d.x), vec4<i32>(-1i, 2147483647i, u_input.d.x, arg_2)), 33137i), -8774i), -1i);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.xyy, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_0, global0[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_mult_u32(u_input.c, u_input.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1968f), _wgslsmith_f_op_f32(sign(-776f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1161f)) * -493f))), _wgslsmith_f_op_f32(-507f - -533f)), Struct_1(~(~u_input.b.zxz), !(!select(vec3<bool>(false, true, false), vec3<bool>(arg_0, false, arg_1), vec3<bool>(var_0, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], arg_1)))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], true, true, false), max(-1i, ~(-1i)));
    let var_3 = ~((vec2<i32>(-1i, 3657i) & _wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, var_1.yy)) >> (~vec2<u32>(var_2.b.a.x, u_input.e) % vec2<u32>(32u))) << (vec2<u32>(~u_input.e, u_input.a.x) % vec2<u32>(32u));
    var var_4 = var_2.c;
    return any(!var_4.xzy);
}

fn func_1() -> Struct_1 {
    let var_0 = -1000f;
    let var_1 = Struct_1(~vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(43363u), u_input.b.x), 4294967295u, ~4294967295u | u_input.b.x), select(vec3<bool>(true, func_2(global0[_wgslsmith_index_u32(u_input.c, 3u)], true, _wgslsmith_div_i32(4970i, u_input.d.x)), true), !(!select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.e, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(27169u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true), global0[_wgslsmith_index_u32(u_input.c, 3u)])), false));
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u, 3u)];
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(~firstLeadingBit(55802u), ~select(4294967295u, u_input.b.x, true) & _wgslsmith_add_u32(countOneBits(var_1.a.x), abs(33291u)), _wgslsmith_sub_u32(33884u, ~select(var_1.a.x, 6486u, true))), reverseBits(select(select(u_input.b.wzz, vec3<u32>(u_input.b.x, 17925u, var_1.a.x), global0[_wgslsmith_index_u32(8892u, 3u)]), vec3<u32>(4294967295u, u_input.c, 43608u), vec3<bool>(true, true, true))) << (var_1.a % vec3<u32>(32u)));
    let var_4 = -u_input.d.x;
    return Struct_1(var_3, select(var_1.b, select(var_1.b, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_1.b.x), !var_1.b), any(select(!vec4<bool>(var_1.b.x, global0[_wgslsmith_index_u32(var_1.a.x, 3u)], var_1.b.x, global0[_wgslsmith_index_u32(24085u, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], true, false), !global0[_wgslsmith_index_u32(var_1.a.x, 3u)]))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> Struct_2 {
    global1 = array<vec4<f32>, 23>();
    let var_0 = func_1();
    var var_1 = -_wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32((0i ^ arg_0.d) >> (u_input.b.x % 32u), _wgslsmith_mod_i32(arg_0.d, u_input.d.x)));
    var var_2 = countOneBits(~(_wgslsmith_mult_vec4_i32(vec4<i32>(55221i, 2147483647i, arg_0.d, arg_2), vec4<i32>(arg_2, arg_2, 2147483647i, arg_2)) ^ (vec4<i32>(arg_0.d, u_input.d.x, 40198i, arg_2) ^ vec4<i32>(arg_0.d, -101i, arg_2, arg_2)))) >> (abs((vec4<u32>(arg_0.b.a.x, 40787u, arg_0.b.a.x, u_input.b.x) | reverseBits(vec4<u32>(arg_0.b.a.x, 18634u, u_input.c, 27863u))) & (u_input.b | vec4<u32>(arg_0.b.a.x, 25429u, 0u, 23278u))) % vec4<u32>(32u));
    let var_3 = -1000f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    global1 = array<vec4<f32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(625f))))) * _wgslsmith_div_f32(-369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -546f))))));
    var_1 = -960f;
    let var_2 = u_input.b;
    let var_3 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(360f * -422f), _wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(sign(853f)))), func_1(), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 3u)], true, false)), -2147483647i & _wgslsmith_mod_i32(-2147483647i, var_0)), select(func_1().b.yz, select(vec2<bool>(false, global0[_wgslsmith_index_u32(~4294967295u, 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false), global0[_wgslsmith_index_u32(~824u, 3u)]), func_1().b.yy), false), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_0, 1i, -1i, var_0)), -min(vec4<i32>(52125i, 15583i, 15294i, var_0), countOneBits(vec4<i32>(var_0, u_input.d.x, var_0, 264i)))));
    var var_4 = var_3;
    var var_5 = any(vec3<bool>(!var_4.c.x, global0[_wgslsmith_index_u32(961u, 3u)], true));
    var var_6 = 622f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

