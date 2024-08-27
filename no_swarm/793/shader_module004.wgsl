struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<f32>(-1000f, -409f), -302f), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<f32>(-1346f, 659f), 1000f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<f32>(1585f, -1075f), 867f), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<f32>(1000f, 603f), -118f), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<f32>(-197f, 701f), -110f), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<f32>(-1161f, -312f), 1171f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<f32>(-2108f, -1607f), -509f), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<f32>(1840f, -821f), -183f), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<f32>(-928f, -1066f), -1042f), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<f32>(184f, 1265f), -114f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<f32>(-1055f, -2532f), -228f), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<f32>(199f, -1427f), 163f), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<f32>(456f, 1305f), -700f), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<f32>(-1130f, -1050f), 121f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<f32>(-799f, -493f), 656f), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<f32>(-1006f, -495f), -1225f), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<f32>(755f, -375f), 238f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<f32>(1000f, -1000f), 1303f), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<f32>(164f, -954f), -456f), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<f32>(-311f, -1533f), 1539f), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<f32>(434f, -547f), -840f), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<f32>(-1419f, -221f), -315f), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<f32>(-277f, -235f), -891f), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<f32>(117f, -317f), 160f), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<f32>(577f, -1000f), 1022f), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<f32>(491f, -814f), -254f), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<f32>(-1000f, -735f), 1536f), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<f32>(-380f, 354f), 404f), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<f32>(544f, -1385f), -865f), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<f32>(-855f, 895f), 492f), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<f32>(-249f, -1000f), -839f));

var<private> global1: array<vec3<f32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = 1u;
    global1 = array<vec3<f32>, 5>();
    return Struct_1(select(vec4<bool>(true, false, true, all(vec3<bool>(false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), vec2<bool>(!(!any(vec2<bool>(true, true))), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, 2518f))))), -1833f);
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<f32>, 5>();
    let var_0 = false;
    let var_1 = true;
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1435f))) - -559f) - _wgslsmith_div_f32(1337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -1706f))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))) * var_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)))), _wgslsmith_f_op_f32(max(1f, -133f)), _wgslsmith_f_op_f32(f32(-1f) * -243f));
    return Struct_1(select(var_2.a, select(select(!vec4<bool>(var_0, true, true, var_2.b.x), var_2.a, vec4<bool>(false, var_2.c.x, var_2.c.x, var_1)), !var_2.a, ~1i < firstTrailingBit(-2147483647i)), vec4<bool>(var_2.b.x, var_0, true, any(vec3<bool>(false, false, true)))), var_2.a.yz, select(!(!(!var_2.c)), func_2(var_3.x).c, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, -822f)) - var_2.e) - var_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -178f)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global0 = array<Struct_1, 31>();
    global1 = array<vec3<f32>, 5>();
    let var_0 = ~reverseBits(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(7577i, 8517i), -countOneBits(2147483647i)));
    var var_1 = func_1().a.xxz;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1917f, 598f)))), func_1().e), _wgslsmith_f_op_f32(step(814f, 1337f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f + 101f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2013f)), -222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1808f * 1012f), _wgslsmith_f_op_f32(-800f + 386f), _wgslsmith_f_op_f32(-1122f + -450f), _wgslsmith_f_op_f32(floor(-746f))))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    var var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(max(4294967295u, firstLeadingBit(4294967295u)), 31u)];
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(vec3<bool>(true, var_0.c.x && (var_1.a.x && var_1.a.x), true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(-51425i, 42479i)), select(-vec2<i32>(2147483647i, 2147483647i), abs(vec2<i32>(-8405i, -12390i)), !var_0.c.x)), ~(-_wgslsmith_mod_i32(-9551i, -42850i))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, ~0u), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(37976u, u_input.a, 0u))))), min(-1773i, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-41532i, -1i, -22428i, 22382i), vec4<i32>(2147483647i, 32754i, -44222i, -1i)))), select(68589u, max(reverseBits(u_input.a), 72596u), any(var_1.a)));
}

