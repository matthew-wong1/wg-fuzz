struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    let var_0 = vec2<bool>(161f <= arg_3.x, false);
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(max(arg_0, vec3<i32>(arg_0.x, 8454i, u_input.c)), ~arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), -216f, _wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_f_op_f32(arg_3.x * 732f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-539f - 980f), _wgslsmith_f_op_f32(sign(arg_3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-376f, 1278f))))), 553f));
    var var_2 = Struct_3(true, _wgslsmith_mod_i32(1i, (arg_0.x & u_input.c) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -7820i, -1216i, u_input.c), vec4<i32>(26331i, arg_0.x, -2147483647i, 14279i))) != var_1.a.a.x, ~vec4<u32>(~arg_2, arg_2, 4294967295u, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.xz), _wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(arg_1, 1u)))), Struct_1(vec3<i32>(max(2147483647i, ~var_1.a.a.x), reverseBits(_wgslsmith_clamp_i32(u_input.c, u_input.c, 5040i)), _wgslsmith_dot_vec2_i32(var_1.a.a.xx, arg_0.zy) << (~arg_2 % 32u)), _wgslsmith_f_op_vec4_f32(max(var_1.a.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_1.a.b, vec4<f32>(886f, 1000f, arg_3.x, -143f), vec4<bool>(var_0.x, var_0.x, false, var_0.x))))))), arg_3.zx, _wgslsmith_f_op_f32(floor(var_1.a.b.x))));
    let var_3 = var_1.a;
    var var_4 = Struct_4(var_2.d);
    return 80050u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> vec4<i32> {
    global0 = array<vec2<u32>, 19>();
    let var_0 = Struct_3(true, true, countOneBits(firstLeadingBit(vec4<u32>(u_input.b, min(u_input.a.x, u_input.a.x), u_input.b << (u_input.a.x % 32u), func_3(vec3<i32>(32665i, u_input.c, u_input.c), u_input.b, u_input.b, vec3<f32>(699f, arg_0.x, -233f))))), Struct_1(vec3<i32>(u_input.c, u_input.c, -42848i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -1078f, -1000f, arg_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + -2141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-243f, 342f)))), _wgslsmith_f_op_f32(237f * -1054f)));
    global0 = array<vec2<u32>, 19>();
    var var_1 = Struct_4(var_0.d);
    var var_2 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(abs(min(2147483647i, 0i)), -(var_0.d.a.x >> (var_0.c.x % 32u)), ~select(44649i, 1i, false)), _wgslsmith_mod_vec3_i32(~var_1.a.a >> (reverseBits(~vec3<u32>(var_0.c.x, 957u, u_input.b)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.a.x, var_1.a.a.x, min(var_1.a.a.x, 91551i)), var_1.a.a)), vec3<i32>(~u_input.c, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(var_1.a.a, var_1.a.a)), abs(countOneBits(var_0.d.a))), -(_wgslsmith_dot_vec2_i32(var_0.d.a.yy, var_0.d.a.xy) | -u_input.c)));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-abs(vec2<i32>(-2147483647i, -1i))), var_2.xy), var_0.d.a.x, u_input.c, ~(-1i));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_4 {
    global0 = array<vec2<u32>, 19>();
    var var_0 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.c, ~u_input.c, 1i, -arg_2.x)), -(~min(func_2(vec2<f32>(1602f, 753f), vec4<bool>(true, false, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_2.x, u_input.c, 2147483647i), vec4<i32>(u_input.c, arg_2.x, -1i, arg_2.x)))));
    var_0 = arg_2.x;
    var var_1 = Struct_5(Struct_1(~(~(vec3<i32>(u_input.c, -13839i, 3105i) >> (vec3<u32>(arg_0, 4294967295u, 43143u) % vec3<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-218f))), _wgslsmith_f_op_f32(f32(-1f) * -1125f), -712f, 2265f), vec2<f32>(1f, 1f), 903f), ~(((vec3<i32>(-56266i, arg_2.x, -1i) | vec3<i32>(-9069i, -66370i, -3515i)) & select(vec3<i32>(arg_2.x, 0i, -6150i), vec3<i32>(-1i, 21679i, u_input.c), vec3<bool>(false, false, true))) | -abs(vec3<i32>(1i, -51133i, u_input.c))), _wgslsmith_add_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.c, u_input.c, arg_2.x)) | min(vec3<i32>(1i, -1i, arg_2.x), vec3<i32>(arg_2.x, arg_2.x, u_input.c))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(62007i, 1i, u_input.c) & vec3<i32>(18578i, 2147483647i, u_input.c), vec3<i32>(u_input.c, 21175i, 0i)), -countOneBits(arg_2.x), countOneBits(abs(-49190i)))), Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -23798i, -63427i), vec3<i32>(-19175i, arg_2.x, -1i), vec3<i32>(-2147483647i, -1i, arg_2.x)), vec4<f32>(_wgslsmith_div_f32(697f, 685f), 2547f, _wgslsmith_div_f32(-630f, 1000f), _wgslsmith_f_op_f32(492f + 424f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1003f, 1094f))), -1343f)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_0, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.yz), firstTrailingBit(arg_1.x)), u_input.a.zx)));
    var var_2 = u_input.c;
    return Struct_4(Struct_1(vec3<i32>(-10629i, -10687i, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.c, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d.a.b)) + var_1.d.a.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, var_1.a.d) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1232f, -121f) + var_1.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.c.x * _wgslsmith_f_op_f32(max(2024f, var_1.d.a.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 115831u;
    let var_1 = func_1(var_0, vec4<u32>(_wgslsmith_sub_u32(1u, ~(~var_0)), 25946u, max(_wgslsmith_div_u32(u_input.a.x, 79607u >> (0u % 32u)), 21827u), 0u), -countOneBits(firstLeadingBit(vec2<i32>(u_input.c, u_input.c))));
    var var_2 = !select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), true, true, any(vec4<bool>(true, true, true, false)) && all(vec3<bool>(false, true, false))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var_2 = vec4<bool>(var_2.x, var_2.x, var_2.x, u_input.c == _wgslsmith_clamp_i32(-71669i, -35653i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.a.a.x, 23854i, u_input.c), var_1.a.a, true), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.a.x, 1i, u_input.c), vec3<i32>(2147483647i, var_1.a.a.x, var_1.a.a.x)))));
    var var_3 = ~(~(~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-1i, 1i, u_input.c)) ^ (vec3<i32>(26326i, u_input.c, 19066i) | var_1.a.a))));
    var_2 = select(vec4<bool>((var_2.x | false) || all(select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x), var_2.x)), any(vec2<bool>(11365u != u_input.a.x, true)), select(true, var_2.x, true), true), select(vec4<bool>(true, !(!var_2.x), var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(58571i, 6678i, -44978i), vec3<i32>(var_1.a.a.x, var_3.x, u_input.c)) != abs(var_3.x)), select(select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), !vec4<bool>(var_2.x, false, false, var_2.x), select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(var_2.x, var_2.x, false, false))), !select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, true, true)), select(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(false, var_2.x, true, true)), vec4<bool>(false, var_2.x, true, var_2.x), 1u <= var_0)), any(select(!var_2.xyx, select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, false, true), true), true))), all(!(!(!var_2.wzw))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(var_1.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, var_1.a.d, 325f, -1372f)))))), _wgslsmith_f_op_f32(var_1.a.c.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1f)), -160f, all(!vec3<bool>(true, var_4, false))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), var_1.a.c.x, -1337f));
}

