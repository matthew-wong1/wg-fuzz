struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: u32) -> vec4<u32> {
    var var_0 = Struct_1(u_input.c.x, ~(-arg_0.x), all(vec4<bool>(true, true, true, true)));
    let var_1 = 0i << ((41027u & abs(_wgslsmith_clamp_u32(max(1u, 0u), arg_2, reverseBits(arg_2)))) % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-847f, -1814f, true)) - _wgslsmith_f_op_f32(1096f * -126f))), 1f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1101f)) + 846f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-1409f, -2239f)), _wgslsmith_f_op_f32(998f * var_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2, var_2))))))), vec2<bool>(!var_0.c, var_0.c)));
    var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(924f, -290f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1864f, _wgslsmith_f_op_f32(-343f - 104f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.x, var_3.x))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.x, var_2)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, var_2), vec2<f32>(var_2, var_3.x), vec2<bool>(false, false)))))))), !(!var_0.c)));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 32279u, arg_2, u_input.d), ~vec4<u32>(u_input.d, u_input.d, 4294967295u, 72178u)), countOneBits(~vec4<u32>(0u, u_input.d, u_input.d, u_input.d))), vec4<u32>(_wgslsmith_add_u32(arg_2, 1u), ~(~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(9676u, arg_2, 1u, 46694u), vec4<u32>(18520u, 0u, 1u, 20820u)), vec4<u32>(u_input.d, 4294967295u, u_input.d, 34903u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, u_input.d), 97239u))), _wgslsmith_dot_vec3_u32(vec3<u32>(33478u, 1u, 51105u), countOneBits(~vec3<u32>(34418u, u_input.d, u_input.d)) ^ vec3<u32>(max(0u, 60831u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(arg_2, u_input.d)), 44491u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(max(vec3<u32>(0u, arg_2, arg_2), ~vec3<u32>(u_input.d, u_input.d, 1u))), reverseBits(abs(vec3<u32>(40640u, arg_2, u_input.d))) & (_wgslsmith_clamp_vec3_u32(vec3<u32>(42878u, 0u, 35995u), vec3<u32>(u_input.d, 91072u, 0u), vec3<u32>(17261u, u_input.d, u_input.d)) & _wgslsmith_add_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(arg_2, 0u, 4294967295u)))), u_input.d);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    var var_0 = func_3(abs(~select(~vec4<i32>(-2147483647i, -44444i, u_input.b.x, 2147483647i), u_input.c, vec4<bool>(false, true, true, true))), vec3<i32>(-2147483647i, select(max(reverseBits(u_input.c.x), -1i), u_input.b.x, true), 1i << (countOneBits(_wgslsmith_sub_u32(u_input.d, 82696u)) % 32u)), ~u_input.d);
    var var_1 = !(true || ((~arg_1 > 1i) && true));
    var var_2 = _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1815f)), -425f)))), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true))));
    let var_3 = Struct_4(~(abs(u_input.d) << (4294967295u % 32u)), arg_0.xx, true, 1u);
    var var_4 = var_3.d;
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = arg_0.zz;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, 1048f, 364f, 202f)))))), ~var_0.x);
    var var_2 = _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(49054u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(1u, arg_1))))), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, u_input.d) << (~vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)), select(vec2<u32>(arg_1, 0u), min(vec2<u32>(77080u, 45209u), vec2<u32>(4294967295u, 47760u)), true))));
    var_2 = vec2<u32>(_wgslsmith_sub_u32(4294967295u ^ (min(arg_1, 1u) ^ var_2.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(10263u, 45181u, arg_1) << (vec3<u32>(70235u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(30224u, 24725u, u_input.d) & vec3<u32>(arg_1, arg_1, var_2.x))), _wgslsmith_div_u32(u_input.d, _wgslsmith_clamp_u32(abs(4294967295u), u_input.d, _wgslsmith_clamp_u32(arg_1, 20592u << (u_input.d % 32u), var_2.x))));
    var_2 = ~vec2<u32>(15892u, ~firstTrailingBit(21721u));
    return max(2147483647i, var_1);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = min(~u_input.b.x, select(_wgslsmith_mod_i32(func_2(vec4<f32>(arg_1.b.x, 1252f, arg_1.c.c.x, arg_2.c.x), arg_1.d.x) >> (u_input.d % 32u), arg_0.x), ~countOneBits(arg_0.x), !(arg_2.a.b == arg_1.e.a) || any(!arg_1.c.d)));
    let var_1 = ~max(u_input.d, _wgslsmith_div_u32(u_input.d, u_input.d));
    let var_2 = i32(-1i) * -15755i;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(~(~(~u_input.c.x)), u_input.a, -12415i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.b.x)), u_input.a)), Struct_3(max(func_1(u_input.c.zyx, _wgslsmith_div_u32(53352u, u_input.d)), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, 752f, 460f, -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(abs(-230f)), _wgslsmith_f_op_f32(530f - -561f), _wgslsmith_f_op_f32(sign(899f)), _wgslsmith_f_op_f32(f32(-1f) * -451f))), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -2147483647i, false), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1049f, 1160f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1225f, 117f) * vec2<f32>(783f, 1000f)), all(vec3<bool>(true, true, true)))), vec3<bool>(true, true, true), u_input.b), select(u_input.b.xxy >> (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u)), max(vec3<i32>(u_input.b.x, u_input.c.x, u_input.a), u_input.b.xxw), true) << (vec3<u32>(~0u, 38777u ^ u_input.d, 44180u) % vec3<u32>(32u)), Struct_1(_wgslsmith_add_i32(63269i, 5491i), u_input.c.x, !any(vec4<bool>(false, false, false, false)))), Struct_2(Struct_1(_wgslsmith_mod_i32(24894i, -u_input.c.x), 0i, select(false, 52013u < u_input.d, true)), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, 727f))))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), (u_input.c << (_wgslsmith_mult_vec4_u32(vec4<u32>(83477u, 0u, 4294967295u, 15537u), vec4<u32>(u_input.d, 4294967295u, u_input.d, 4294967295u)) % vec4<u32>(32u))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(17689u, 1u, 1u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 1410u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, u_input.d), vec4<u32>(u_input.d, 9368u, 0u, u_input.d))) % vec4<u32>(32u))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), true), !(u_input.d <= u_input.d)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(any(vec3<bool>(false, false, false)), true)), u_input.b.x == u_input.c.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -2069f)), 455f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 238f) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 956f))));
    let var_2 = Struct_4(0u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f * var_1.x) + _wgslsmith_f_op_f32(var_1.x - 3186f)), var_1.x), _wgslsmith_div_f32(711f, var_1.x)), true, 0u);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.b.x, var_1.x, var_2.b.x)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(488f, var_1.x, var_2.b.x, -143f), vec4<f32>(var_1.x, var_2.b.x, var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -1437f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, var_2.b.x, var_1.x, var_2.b.x) - vec4<f32>(-707f, -1884f, var_1.x, 182f)))))));
    var var_3 = i32(-1i) * -(~abs(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(2147483647i, u_input.a))));
    var_3 = 18395i & -select(-func_2(vec4<f32>(var_1.x, var_2.b.x, var_2.b.x, -1991f), u_input.c.x), -_wgslsmith_clamp_i32(-2147483647i, 1i, -1i), any(vec3<bool>(var_2.c, var_2.c, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(~8179u));
}

