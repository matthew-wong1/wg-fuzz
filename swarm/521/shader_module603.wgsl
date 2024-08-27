struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, i32(-2147483648));

var<private> global1: array<bool, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1065f) - vec2<f32>(-478f, -1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-279f, -836f, -173f), vec3<f32>(-1929f, -488f, 457f)))))));
    let var_1 = countOneBits(global0.x) & -1i;
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(~var_1, _wgslsmith_dot_vec3_i32(global0.zwz, vec3<i32>(-12258i, global0.x, arg_1.x)), _wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(global0.x, 3356i)), ~1i) ^ min(~vec4<i32>(-40540i, 0i, 32569i, 1i) & firstLeadingBit(vec4<i32>(-1i, var_1, -1239i, var_1)), _wgslsmith_div_vec4_i32(-vec4<i32>(-45875i, arg_1.x, 0i, var_1), ~vec4<i32>(2147483647i, 15229i, -9542i, 1705i))), min(~(~(-vec4<i32>(-23236i, 2147483647i, -59562i, arg_1.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, var_1, 1i, 2147483647i), firstTrailingBit(vec4<i32>(26169i, -27520i, 30810i, 1i))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-15729i, 1i, global0.x, global0.x), vec4<i32>(1i, arg_1.x, arg_1.x, global0.x))))));
    let var_2 = 1i;
    var var_3 = 2147483647i;
    return select(reverseBits(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-14890i, 0i, -10126i, global0.x), vec4<i32>(1i, var_1, 1i, -52953i)), -vec4<i32>(arg_1.x, arg_1.x, 64825i, global0.x))), ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1, arg_1.x, -8255i), -1i), 61778i, arg_1.x, ~arg_1.x | min(var_1, 0i)), select(select(vec4<bool>(all(vec2<bool>(arg_0, true)), true, true, any(vec3<bool>(true, global1[_wgslsmith_index_u32(24859u, 9u)], arg_0))), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)] && true, !global1[_wgslsmith_index_u32(4294967295u, 9u)], arg_0, true), select(!vec4<bool>(arg_0, false, global1[_wgslsmith_index_u32(u_input.b, 9u)], arg_0), !vec4<bool>(arg_0, true, arg_0, true), arg_0)), !select(vec4<bool>(true, arg_0, true, global1[_wgslsmith_index_u32(4294967295u, 9u)]), !vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.b, 9u)], false, global1[_wgslsmith_index_u32(4294967295u, 9u)]), any(vec4<bool>(false, arg_0, false, true))), vec4<bool>(!(!arg_0), true, any(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 9u)], arg_0, true)), true)));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = Struct_5(!(arg_2.c <= arg_2.c), global1[_wgslsmith_index_u32(~(~arg_1.c), 9u)]);
    let var_1 = -1i;
    global0 = select(-_wgslsmith_div_vec4_i32(vec4<i32>(~var_1, _wgslsmith_div_i32(2147483647i, 37832i), abs(-2147483647i), 40938i), func_3(false & var_0.b, reverseBits(global0.zz))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, var_1), vec4<i32>(-2147483647i, var_1, -2147483647i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-29691i, var_1, var_1, global0.x), vec4<i32>(global0.x, 19996i, global0.x, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-23718i, _wgslsmith_dot_vec3_i32(vec3<i32>(41368i, -47827i, -16980i), vec3<i32>(-23160i, global0.x, global0.x)), global0.x, min(-36727i, var_1)), select(func_3(arg_1.d.x, vec2<i32>(48759i, -36049i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 1i, 7383i, var_1), vec4<i32>(var_1, global0.x, 0i, -2147483647i), vec4<i32>(global0.x, 0i, var_1, 0i)), global1[_wgslsmith_index_u32(arg_1.c, 9u)])), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(29531i, global0.x, global0.x, 0i) & vec4<i32>(-35766i, var_1, -960i, global0.x), -vec4<i32>(-26141i, var_1, global0.x, var_1)), vec4<i32>(global0.x, -39582i, var_1, var_1 & 2147483647i))), global0.x >= _wgslsmith_sub_i32(-(~global0.x), global0.x));
    global0 = -countOneBits(vec4<i32>(0i ^ countOneBits(global0.x), global0.x ^ _wgslsmith_dot_vec3_i32(global0.zyz, global0.xxy), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2147483647i, 2147483647i, -12430i), vec4<i32>(global0.x, -1i, -1i, -22115i)), ~(-13229i)), 2147483647i));
    let var_2 = Struct_5(var_0.a, false);
    return vec2<f32>(_wgslsmith_f_op_f32(-210f + 1f), arg_2.a.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(arg_1.x), 9u)];
    global0 = _wgslsmith_div_vec4_i32(~(~select(vec4<i32>(2147483647i, global0.x, global0.x, -1i), vec4<i32>(global0.x, -67551i, 1i, global0.x), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 9u)], true, false)) << (~select(vec4<u32>(arg_1.x, 1u, 13513u, 44933u), vec4<u32>(45118u, 0u, 16830u, 49968u), global1[_wgslsmith_index_u32(15939u, 9u)]) % vec4<u32>(32u))), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(global0.x, -33589i, 15072i, 2147483647i)));
    var var_1 = !vec4<bool>(!global1[_wgslsmith_index_u32(~17753u, 9u)], true, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1.x, _wgslsmith_clamp_u32(arg_2, u_input.b, arg_1.x)), 9u)], global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(arg_1.x, arg_2)) & arg_2, 9u)]);
    let var_2 = false;
    global0 = vec4<i32>(global0.x, abs(select(~(-62048i), _wgslsmith_mult_i32(global0.x, -5562i), false)), global0.x, global0.x ^ 2147483647i) ^ _wgslsmith_sub_vec4_i32(-(~vec4<i32>(-2147483647i, global0.x, global0.x, global0.x)) ^ (countOneBits(vec4<i32>(-5693i, global0.x, global0.x, global0.x)) << (vec4<u32>(64805u, u_input.a, 399u, 63813u) % vec4<u32>(32u))), min(func_3(var_1.x, vec2<i32>(global0.x, global0.x)), vec4<i32>(global0.x, global0.x, -41205i, global0.x)) | (abs(vec4<i32>(global0.x, 2147483647i, global0.x, 2147483647i)) ^ vec4<i32>(-4712i, -55049i, global0.x, 2147483647i)));
    return Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(round(-447f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -231f)) + _wgslsmith_f_op_f32(-205f - _wgslsmith_f_op_f32(-669f * arg_0.x)))));
}

fn func_1(arg_0: Struct_4) -> i32 {
    global1 = array<bool, 9>();
    var var_0 = Struct_2(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, arg_0.c, 65964u), vec4<u32>(4294967295u, arg_0.c, u_input.b, 2420u)) >> (arg_0.c % 32u))), all(!(!vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x))), func_4(_wgslsmith_div_vec2_f32(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(10432u, Struct_4(vec2<f32>(473f, arg_0.b.a.x), arg_0.b, arg_0.c, arg_0.d), arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b.x, arg_0.a.x)))), reverseBits(vec2<u32>(firstLeadingBit(u_input.a), 1u)), 8914u), false, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-764f, arg_0.b.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, arg_0.a.x, 323f)), vec3<f32>(-482f, _wgslsmith_f_op_f32(sign(289f)), _wgslsmith_f_op_f32(f32(-1f) * -163f)), !select(arg_0.d, vec3<bool>(false, true, arg_0.d.x), arg_0.d)))));
    var var_1 = arg_0.d.yx;
    let var_2 = 1u;
    global1 = array<bool, 9>();
    return select(_wgslsmith_sub_i32(global0.x, 21267i), _wgslsmith_dot_vec3_i32(~(global0.xzw >> ((vec3<u32>(arg_0.c, 34703u, u_input.a) ^ vec3<u32>(4294967295u, var_0.a, 28090u)) % vec3<u32>(32u))), global0.xwx), !arg_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 9>();
    global1 = array<bool, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(338f, 2216f))))), vec3<f32>(838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-905f))), -103f));
    global1 = array<bool, 9>();
    global0 = vec4<i32>(-37348i, 0i, firstTrailingBit(~2147483647i), _wgslsmith_mod_i32(min(global0.x, func_1(Struct_4(vec2<f32>(var_0.a.x, 1387f), Struct_1(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, 1322f)), u_input.b, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false, global1[_wgslsmith_index_u32(1u, 9u)])))), 1i)) ^ -max(~abs(vec4<i32>(-2147483647i, global0.x, 2147483647i, 2147483647i)), -_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -561i, global0.x), vec4<i32>(global0.x, 10595i, global0.x, global0.x)));
    global1 = array<bool, 9>();
    let var_1 = 30921u;
    var var_2 = Struct_2(select(var_1, var_1, !global1[_wgslsmith_index_u32(~56461u, 9u)]), !global1[_wgslsmith_index_u32(var_1 | _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1, 1u), 0u), 9u)], var_0, max(global0.x, global0.x) <= _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 1i, global0.x, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(41414i, global0.x, 43300i, 32597i), vec4<i32>(-1i, -358i, global0.x, 2147483647i), vec4<i32>(-37448i, global0.x, global0.x, global0.x))), reverseBits(vec4<i32>(-12086i, 0i, global0.x, global0.x) << (vec4<u32>(var_1, 1u, var_1, 4294967295u) % vec4<u32>(32u)))), var_0);
    global1 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x)), vec4<u32>(~_wgslsmith_add_u32(max(u_input.a, 0u), 1u << (1u % 32u)), firstTrailingBit(1u), 0u, 83092u));
}

