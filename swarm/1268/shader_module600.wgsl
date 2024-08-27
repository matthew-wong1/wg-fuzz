struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<i32> {
    let var_0 = ~_wgslsmith_clamp_i32(0i, firstTrailingBit(-1i) << (~4294967295u % 32u), max(reverseBits(_wgslsmith_clamp_i32(-40233i, -1619i, 0i)), ~2147483647i));
    var var_1 = Struct_2(Struct_1(u_input.a, -vec3<i32>(i32(-1i) * -44201i, -24215i, firstLeadingBit(1i)), min(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-20074i, -1255i)), select(vec2<i32>(2147483647i, var_0), vec2<i32>(var_0, var_0), true)) << (vec2<u32>(u_input.a, u_input.a | 1u) % vec2<u32>(32u)), var_0), -min(vec2<i32>(-1i, var_0) & vec2<i32>(-9365i, -2147483647i), vec2<i32>(~var_0, 1i)), ~(u_input.b.x ^ ~_wgslsmith_add_u32(u_input.a, 34938u)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, var_0, i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-7525i, 2147483647i), vec2<i32>(var_0, var_0)), vec2<i32>(var_0, var_0))), var_0, var_0));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -330f), -2191f)) + -1507f), _wgslsmith_f_op_f32(-1345f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-239f - -199f), 331f))), true)), _wgslsmith_f_op_f32(select(828f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1130f), -1178f), true)), any(vec3<bool>(true, true, true)))));
    return vec3<i32>(firstTrailingBit(16110i), var_1.a.b.x, var_0);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-559f * _wgslsmith_f_op_f32(step(-207f, -1673f)))))));
    var var_1 = vec4<i32>(arg_0.d, arg_0.b.x, countOneBits(firstTrailingBit(-2147483647i)), 43520i) ^ vec4<i32>(-_wgslsmith_div_i32(abs(6787i), _wgslsmith_add_i32(arg_0.b.x, -2147483647i)), arg_0.a.d, ~arg_1, _wgslsmith_mult_i32(-(~(-55558i)), -_wgslsmith_add_i32(-15237i, arg_0.d)));
    var_1 = abs(vec4<i32>(~(i32(-1i) * -47330i), -43736i, arg_1, 1i ^ (arg_0.d << (firstLeadingBit(1u) % 32u))));
    return select(~3697u, 6373u, _wgslsmith_mod_u32(37503u, u_input.a) < 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_1(arg_3.x, ~vec3<i32>(~firstTrailingBit(2147483647i), ~1i, -1i), _wgslsmith_mod_vec2_i32(-vec2<i32>(-22070i, -14297i), -vec2<i32>(i32(-1i) * -36871i, -1i)), reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), countOneBits(vec2<i32>(-1i, 23156i))), ~vec2<i32>(2147483647i, -40569i))));
    var var_1 = var_0.c.x;
    var var_2 = arg_2.x;
    let var_3 = Struct_1(func_4(Struct_2(Struct_1(13014u, func_3(), vec2<i32>(28866i, var_0.d), _wgslsmith_add_i32(var_0.b.x, -2147483647i)), vec2<i32>(var_0.b.x >> (1u % 32u), var_0.d << (var_0.a % 32u)), arg_3.x, -9861i), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(abs(var_0.b.x), -var_0.b.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a, 53456u), firstLeadingBit(1u)) << (u_input.b.x % 32u)), var_0.b, -select(_wgslsmith_mult_vec2_i32(-vec2<i32>(-42817i, 2147483647i), abs(var_0.c)), vec2<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, var_0.b.x, var_0.d, var_0.d), vec4<i32>(var_0.b.x, var_0.d, var_0.c.x, -1i))), arg_2), firstLeadingBit(-10649i));
    let var_4 = Struct_2(Struct_1(~var_3.a, select(~var_3.b, vec3<i32>(var_0.b.x, _wgslsmith_mult_i32(-17640i, var_0.d), -2147483647i), select(vec3<bool>(arg_2.x, false, arg_2.x), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, true, arg_2.x)), select(arg_2.x, true, arg_2.x))), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(var_3.b, var_0.b)), select(~vec2<i32>(var_0.c.x, 1i), _wgslsmith_div_vec2_i32(var_3.c, var_3.b.xz), select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, arg_2.x), arg_2))), var_3.c.x), ~_wgslsmith_add_vec2_i32(~reverseBits(var_0.b.yx), vec2<i32>(var_0.d, var_0.c.x) | -vec2<i32>(var_3.c.x, var_0.b.x)), ~48607u, _wgslsmith_mod_i32(max(1i, 0i), _wgslsmith_div_i32(_wgslsmith_mult_i32(39188i, var_0.c.x), max(var_3.b.x, var_3.c.x | -73629i))));
    return _wgslsmith_f_op_f32(ceil(1099f));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-674f, -1754f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-898f, 224f), vec2<f32>(-763f, 1155f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(125f, -646f) - vec2<f32>(-806f, -1352f)), vec2<f32>(151f, -558f))), true)) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-526f, -958f)), 569f), vec2<f32>(-222f, 833f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, 498f) * vec2<f32>(510f, 993f)))))));
    let var_2 = select(!(!vec3<bool>(arg_1.x, any(vec3<bool>(arg_2, arg_1.x, arg_1.x)), true)), vec3<bool>(all(vec2<bool>(arg_2, true)) || false, false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(23586u, vec2<f32>(var_1.x, var_1.x), arg_1, vec4<u32>(u_input.a, 24280u, u_input.b.x, u_input.b.x))))) > -967f);
    var var_3 = Struct_2(Struct_1(~(_wgslsmith_div_u32(u_input.a, 0u) >> ((14859u << (u_input.a % 32u)) % 32u)), -select(abs(vec3<i32>(1i, arg_0.x, arg_0.x)), max(vec3<i32>(30709i, 2147483647i, arg_0.x), vec3<i32>(-63746i, arg_0.x, -7204i)), !var_2), vec2<i32>(-arg_0.x & arg_0.x, -42249i), _wgslsmith_dot_vec2_i32(~arg_0, _wgslsmith_mod_vec2_i32(arg_0, vec2<i32>(38357i, arg_0.x)) | -vec2<i32>(arg_0.x, 2147483647i))), -arg_0, u_input.a, arg_0.x);
    let var_4 = var_3.a.b;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1(vec2<i32>(reverseBits(-1i), _wgslsmith_mult_i32(0i, firstLeadingBit(-59967i))), !(!(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(false, true)))), false);
    let var_2 = func_1(func_1(select(vec2<i32>(var_1.b.x, -var_1.d), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.x, var_1.d) | vec2<i32>(var_1.c.x, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-16673i, 16282i), vec2<i32>(var_1.c.x, var_1.b.x))), !vec2<bool>(var_0, var_0)), select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, false), true), select(!vec2<bool>(false, var_0), vec2<bool>(var_0, false), any(vec4<bool>(var_0, false, var_0, true))), true), any(select(!vec2<bool>(true, var_0), vec2<bool>(var_0, false), true))).c, vec2<bool>(var_0, ~max(var_1.d, var_1.b.x) < _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_1.b.x, var_1.c.x, var_1.c.x)), vec4<i32>(0i, var_1.d, 0i, -14188i) << (vec4<u32>(42183u, 3885u, u_input.b.x, var_1.a) % vec4<u32>(32u)))), true);
    let var_3 = Struct_1(~2177u, ~var_2.b, vec2<i32>(_wgslsmith_div_i32(~2147483647i, select(var_2.c.x, 0i, false)) >> (10565u % 32u), select(_wgslsmith_mod_i32(var_1.b.x, 23574i), -var_2.c.x << (~var_1.a % 32u), true)), _wgslsmith_mult_i32(func_1(select(var_2.b.yz, -vec2<i32>(-10343i, var_1.d), select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), true)), select(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), false), select(vec2<bool>(false, var_0), vec2<bool>(true, true), var_0), !var_0), 1i >= ~var_1.c.x).c.x, _wgslsmith_dot_vec2_i32(select(~var_1.b.zz, vec2<i32>(59073i, 11550i), all(vec2<bool>(true, var_0))), func_1(_wgslsmith_add_vec2_i32(var_1.c, vec2<i32>(2147483647i, var_2.c.x)), !vec2<bool>(false, var_0), true).c)));
    var var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(var_1.b.x, abs(reverseBits(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(14902i, 31105i) | var_1.c, ~vec2<i32>(var_3.c.x, 1i) << (u_input.b.zx % vec2<u32>(32u)))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(var_3.b.x, 2147483647i), _wgslsmith_div_i32(var_2.b.x, var_2.d)), var_3.b), ~var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(40859u, _wgslsmith_mod_u32(var_3.a, 1u)));
}

