struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, select(_wgslsmith_mod_u32(0u, 20345u), firstLeadingBit(u_input.d.x), arg_1.a >= 37676i) & u_input.a, u_input.d.x, reverseBits(firstTrailingBit(reverseBits(u_input.d.x)))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(28u, u_input.d.x, 60202u, 31264u)), ~vec4<u32>(u_input.d.x, 127578u, 55653u, u_input.a) ^ select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), false)) << (vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(u_input.a, 4294967295u)), u_input.a, u_input.d.x, ~(u_input.a ^ u_input.d.x)) % vec4<u32>(32u)));
    var_0 = ~_wgslsmith_sub_vec4_u32(~reverseBits(firstLeadingBit(vec4<u32>(1u, var_0.x, 107477u, var_0.x))), ~countOneBits(vec4<u32>(16844u, u_input.a, u_input.d.x, 1u)));
    var_0 = reverseBits(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.d.x, var_0.x, var_0.x)), min(vec4<u32>(u_input.a, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, 133083u) | vec4<u32>(1u, 0u, 47231u, 12192u))));
    let var_1 = ~(~4294967295u);
    let var_2 = 22118u;
    return _wgslsmith_sub_vec3_i32(u_input.e << (~vec3<u32>(11130u << (u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 16616u, var_2), vec4<u32>(var_1, 23015u, var_0.x, var_1)), var_2 & var_0.x) % vec3<u32>(32u)), reverseBits(vec3<i32>(4499i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -36216i, 33399i, -35932i), vec4<i32>(u_input.c.x, u_input.b, 2147483647i, u_input.e.x)), -24653i >> (1u % 32u))) >> (_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a, var_0.x, 23826u), vec3<u32>(var_2, 1u, 4294967295u)), (var_0.wzw & var_0.xyx) ^ countOneBits(vec3<u32>(0u, var_1, var_2))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = ~u_input.a;
    var var_1 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, true)), false), false), vec4<bool>(_wgslsmith_f_op_f32(ceil(191f)) > arg_2.x, true, true, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(838f, 2486f, arg_2.x, 1667f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1846f, -1000f, arg_2.x, arg_0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 218f, arg_0.a, arg_2.x))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(113f, -436f, -1000f, -859f), vec4<f32>(arg_0.a, -238f, arg_2.x, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 636f, 826f, 675f) * vec4<f32>(-748f, 1098f, arg_0.a, -1138f))))))), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1392f - -240f)) * var_1.c.x)));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -346f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(769f), func_3(-1000f, Struct_5(22891i, vec4<bool>(true, true, false, true), Struct_2(369f)), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1814f, -1000f))))))), true);
    var_0 = Struct_4(var_0.a, var_0.b, any(select(vec2<bool>(var_0.c & var_0.c, all(vec4<bool>(var_0.c, var_0.c, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), var_0.c), vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(var_0.c, true), vec2<bool>(true, false), var_0.c)), !var_0.c || true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), var_0.a);
    let var_2 = Struct_3(-1i, Struct_1(vec3<bool>(var_0.c, all(vec3<bool>(var_0.c, var_0.c, false)) != false, u_input.c.x < (i32(-1i) * -1i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, var_0.b.a, var_1.x, 372f) - vec4<f32>(987f, 2464f, var_1.x, var_1.x)))), select(select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c), all(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))), select(vec2<bool>(var_0.c, true), select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c), var_0.c), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c))), !(!vec2<bool>(var_0.c, var_0.c)))), u_input.c, Struct_2(1156f));
    var_0 = Struct_4(var_0.a, var_2.d, true);
    return _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(var_2.c), vec3<i32>(2147483647i, 1i, 15493i), vec3<i32>(var_2.c.x, -21102i, var_2.c.x)), -var_2.c), vec3<i32>(_wgslsmith_mult_i32(6082i, var_2.c.x), 2147483647i, _wgslsmith_add_i32(-u_input.c.x | 1i, -2147483647i)));
}

fn func_1() -> bool {
    var var_0 = all(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, true, true), true)) && true;
    let var_1 = u_input.c.x;
    var_0 = all(vec3<bool>(true, true, true));
    var_0 = true;
    let var_2 = _wgslsmith_dot_vec3_i32((u_input.e | func_2()) | select(vec3<i32>(2147483647i, -20606i, u_input.b), vec3<i32>(2147483647i, 1i, -1i), true), -min(u_input.e, u_input.e)) | -15252i;
    return true;
}

fn func_5(arg_0: bool) -> u32 {
    let var_0 = vec3<u32>(~59876u, 0u, _wgslsmith_mod_u32(60580u, _wgslsmith_dot_vec4_u32(max(abs(vec4<u32>(u_input.a, u_input.d.x, u_input.a, 10099u)), ~vec4<u32>(1u, u_input.d.x, u_input.a, 30384u)), ~(~vec4<u32>(24729u, 1u, 1u, 13570u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-827f))));
    var var_2 = var_1;
    var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-244f, _wgslsmith_f_op_f32(-650f * -1452f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(var_1.a - -563f), true)), true)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(882f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1544f, 1000f)), _wgslsmith_div_f32(-1414f, _wgslsmith_div_f32(var_2.a, 180f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-310f, var_2.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(711f, 952f, -360f, var_1.a)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), _wgslsmith_f_op_f32(round(657f)), _wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(-var_1.a))))), any(select(vec4<bool>(arg_0 || false, arg_0, arg_0, func_1()), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true)), true))));
    return ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 44999u), u_input.d), vec2<u32>(firstTrailingBit(var_0.x), var_0.x)), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 7744u, 1u) >> (vec4<u32>(var_0.x, 79751u, 4294967295u, 0u) % vec4<u32>(32u)), max(vec4<u32>(var_0.x, 1u, u_input.a, 81295u), vec4<u32>(u_input.a, 74813u, var_0.x, 34227u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -575f;
    let var_1 = ((1u <= _wgslsmith_add_u32(~u_input.a, _wgslsmith_sub_u32(u_input.d.x, u_input.a))) || (false & (-u_input.c.x <= (i32(-1i) * -1i)))) || any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_add_u32(~abs(u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(35442u, u_input.a, 1u) | _wgslsmith_mod_vec3_u32(vec3<u32>(24542u, 1u, 39415u), vec3<u32>(u_input.d.x, u_input.a, u_input.a)), vec3<u32>(u_input.a, 60625u, u_input.d.x)), vec3<u32>(~firstTrailingBit(u_input.a), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), u_input.d.x), ~493u)));
    let x = u_input.a;
    s_output = StorageBuffer(-820f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, -280f, -2276f, -501f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2363f, 2334f, -906f, -370f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 676f, 971f, -545f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2111f, -2136f), vec2<f32>(-391f, 744f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(671f, 2014f) - vec2<f32>(804f, -502f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-165f, 1912f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(-677f, 1081f)))), vec3<u32>(~u_input.a, u_input.a, func_5(func_1())) << (min(vec3<u32>(u_input.d.x, 8913u, u_input.a), select(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 0u)), abs(vec3<u32>(38142u, 1u, u_input.d.x)), select(var_1, false, var_1))) % vec3<u32>(32u)), u_input.d.x);
}

