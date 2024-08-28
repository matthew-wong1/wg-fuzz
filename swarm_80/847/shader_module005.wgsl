struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = vec3<f32>(1f, -1303f, 1000f);
    let var_1 = vec3<u32>(~1u << (~(~min(0u, 32164u)) % 32u), ~abs(1u), countOneBits(34740u));
    var var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(var_1.zz, vec2<u32>(var_1.x, reverseBits(21821u))), var_1.yz);
    var var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, !all(vec3<bool>(true, false, true))));
    var_2 = ~var_1.x;
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> vec3<f32> {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-452f, _wgslsmith_f_op_f32(floor(894f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2756f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2142f) * -859f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1786f, -1295f))) * vec2<f32>(_wgslsmith_f_op_f32(-1127f - 1415f), 160f)), vec2<f32>(1f, -111f), func_3())));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(-1000f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, var_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -1000f)))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(426f))))));
    var_1 = vec2<f32>(var_1.x, 209f);
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f * var_1.x) * _wgslsmith_div_f32(var_1.x, 1328f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(658f, -1137f))), vec2<f32>(1042f, -1182f), select(vec2<bool>(false, arg_1), arg_0.zx, false))) + vec2<f32>(_wgslsmith_f_op_f32(409f + var_1.x), 1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(135f, var_1.x)) - vec2<f32>(var_1.x, var_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(1954f, -1788f)))))));
    return vec3<f32>(-912f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x))) * var_1.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> bool {
    let var_0 = u_input.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-317f, 404f, arg_0.x, 2305f))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -518f), -1306f, _wgslsmith_div_f32(1000f, -1240f)), false))), Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(arg_0.x, -301f))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(arg_0.x >= arg_0.x, true, true) || ((arg_1 >> (0u % 32u)) > 28729u), !all(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, 1i > var_0.x, true))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(90521u, arg_1, 1u, 43286u)), vec4<u32>(arg_1, arg_1, 1u, 65438u)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(3433u, 27172u, 67171u, arg_1), vec4<u32>(14081u, 25708u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, arg_1, arg_1, 1u), vec4<u32>(arg_1, arg_1, 7550u, 1u))), 42997u);
    var var_2 = var_1.b.d;
    var_2 = var_1.b.c;
    var var_3 = vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -10769i, 20040i), vec3<i32>(var_0.x, u_input.c.x, var_0.x)) & -u_input.c);
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = vec3<bool>(true, true, !func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(false, true, true), true, u_input.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(933f, arg_1, -2096f) - vec3<f32>(-1505f, arg_1, 121f)))), select(45345u, 0u, false) << (_wgslsmith_dot_vec4_u32(vec4<u32>(51741u, 11490u, 25415u, 12438u), vec4<u32>(0u, 18721u, 0u, 16996u)) % 32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-261f, -256f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1647f - -1178f) - arg_1)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, -732f), vec3<f32>(arg_1, -332f, -262f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1082f) + vec3<f32>(-1143f, arg_1, 1154f)), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x)))))), var_0.yy, true, var_0.x, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(reverseBits(0u)), 81649u >> (_wgslsmith_div_u32(1u, 1u) % 32u), ~_wgslsmith_mult_u32(32956u, 1u), 1u), vec4<u32>(117732u, 1u, _wgslsmith_mod_u32(min(0u, 48510u), 1u), _wgslsmith_div_u32(1u, min(11453u, 1u)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~2153u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 75686u), vec2<u32>(53212u, 48435u))), _wgslsmith_mod_vec4_u32(vec4<u32>(77724u, 4294967295u, 36499u, 1u), vec4<u32>(19500u, 9177u, 69434u, 20875u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.b.a), select(var_0.yx, var_0.xz, !(countOneBits(u_input.d) >= abs(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1326f), _wgslsmith_f_op_f32(min(-1897f, var_1.a.x)), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2951f, -631f, false)) + _wgslsmith_f_op_f32(step(-2217f, var_1.a.x))) * arg_1), all(var_0.zy), var_0.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a)) + vec4<f32>(var_1.b.a.x, arg_1, _wgslsmith_f_op_f32(trunc(510f)), -543f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.a)))), var_1.a, var_2.c));
    let var_4 = var_1;
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = -757f;
    var_1 = -315f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, 359f, -1000f)) - vec3<f32>(var_0.x, 235f, var_0.x)))), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), !(any(vec4<bool>(true, true, true, true)) & true), true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))));
    let var_3 = 0u;
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(round(var_2.a))), vec2<bool>(!any(var_2.b) | (587f <= _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), (~u_input.d != min(-1i, 43143i)) & false), 0u < func_1(~vec4<i32>(-24510i, 1i, u_input.d, 0i), var_0.x), false, !var_2.d & true);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.x, var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)), 695f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(var_2.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -324f, var_0.x) * vec3<f32>(var_0.x, var_2.a.x, -810f))))), max(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x, 10314i, -2147483647i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)) | firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -1i, -1i, -21201i), vec4<i32>(u_input.b, u_input.a, u_input.b, -2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-38522i), countOneBits(u_input.d), firstLeadingBit(-2147483647i), _wgslsmith_div_i32(-12464i, u_input.c.x)), vec4<i32>(~u_input.c.x, -u_input.b, u_input.c.x, countOneBits(u_input.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1000f, 1271f), vec3<f32>(var_2.a.x, var_0.x, -1106f)), var_2.a)))), var_3);
}

