struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4, arg_3: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.x, -103f, false)), -403f, true))) + _wgslsmith_f_op_f32(f32(-1f) * -678f)), arg_0.x, (u_input.a > min(abs(56084u), ~30790u)) & arg_2.a.a.x));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = vec2<f32>(-879f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(f32(-1f) * -466f))));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, ~vec3<i32>(10820i, 1i, u_input.c)), u_input.b) & _wgslsmith_mod_vec3_i32(u_input.b, -(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -2147483647i, 0i)));
    var var_2 = true;
    let var_3 = select(vec4<bool>(all(select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, false), true), !vec3<bool>(arg_0, true, true), !vec3<bool>(arg_0, true, arg_0))), all(!vec4<bool>(arg_2.x, false, arg_0, arg_0)), !(!any(vec3<bool>(arg_0, arg_2.x, arg_0))), arg_2.x), select(select(!select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, false, false, arg_0), true), !select(vec4<bool>(true, arg_2.x, false, false), vec4<bool>(false, true, true, arg_0), vec4<bool>(false, arg_0, arg_2.x, true)), vec4<bool>(true, arg_2.x, arg_2.x, all(vec3<bool>(false, false, true)))), !select(vec4<bool>(true, false, arg_0, arg_2.x), vec4<bool>(arg_0, false, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, arg_0, arg_0, arg_2.x)), arg_2.x & (all(arg_2) & arg_2.x)), true);
    var var_4 = var_3.ywz;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 800f) + var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec4<f32>(470f, var_0.x, -448f, var_0.x), var_4.x, Struct_4(Struct_2(var_3, arg_2), u_input.c), var_1.zz)), var_0.x, all(vec4<bool>(true, true, false, var_3.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_5) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a << (4294967295u % 32u), 7294u, 10760u), min(~vec3<u32>(u_input.a, 46865u, u_input.a), vec3<u32>(4294967295u, 25638u, u_input.a)) << (select(vec3<u32>(u_input.a, u_input.a, 4294967295u), select(vec3<u32>(arg_2.c.x, arg_2.a, u_input.a), vec3<u32>(u_input.a, arg_2.a, 1u), arg_1.a.x), true) % vec3<u32>(32u)));
    var_0 = _wgslsmith_dot_vec4_u32(~(~min(~vec4<u32>(0u, u_input.a, 12198u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(6693u, u_input.a, 4294967295u, arg_2.a), vec4<u32>(arg_2.c.x, u_input.a, u_input.a, 63087u)))), max(vec4<u32>(_wgslsmith_sub_u32(26622u, u_input.a), ~u_input.a, u_input.a, arg_2.c.x), vec4<u32>(arg_2.c.x, firstTrailingBit(0u), min(19650u, u_input.a), 14458u)) >> (vec4<u32>(firstTrailingBit(~arg_2.a), reverseBits(29417u), countOneBits(~4294967295u), u_input.a) % vec4<u32>(32u)));
    var_0 = arg_2.a;
    var var_1 = ~(~(-1i));
    let var_2 = vec4<bool>(select(arg_2.b, true, false), true, any(vec2<bool>(false, arg_1.b.x)), arg_1.b.x);
    return Struct_1(select(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(33772i, 1i, 17211i) | vec3<i32>(arg_2.d.b.x, 26726i, u_input.c)), u_input.b >> (~vec3<u32>(0u, 47254u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-17550i, arg_2.d.c, u_input.b.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_2.d.b.x), vec3<i32>(arg_2.d.c, arg_2.d.c, u_input.c))), all(!(!vec3<bool>(true, var_2.x, true)))), 4294967295u);
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    return ~abs((~vec4<u32>(4294967295u, 41542u, 4294967295u, arg_2.b) << (firstLeadingBit(vec4<u32>(u_input.a, arg_2.b, u_input.a, arg_2.b)) % vec4<u32>(32u))) << (~vec4<u32>(arg_2.b, u_input.a, 1u, 1153u) % vec4<u32>(32u)));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_5 {
    let var_0 = ~(-54570i);
    let var_1 = ~vec4<i32>(u_input.b.x, abs(2147483647i), 0i, -66899i);
    let var_2 = ~(-vec3<i32>(i32(-1i) * -23146i, -62937i, 1i));
    let var_3 = select(select(select(select(vec2<bool>(arg_2, true), vec2<bool>(true, true), vec2<bool>(arg_2, arg_2)), vec2<bool>(arg_2, arg_2), !(!vec2<bool>(false, arg_2))), vec2<bool>(all(!vec3<bool>(true, true, arg_2)), true), arg_2 != true), select(vec2<bool>(all(select(vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_2, false, arg_2, true), true)), true), vec2<bool>(-68660i >= firstTrailingBit(var_0), true || all(vec3<bool>(false, arg_2, true))), true), (70573u <= _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x), 28367u)) == ((~var_2.x >> (select(u_input.a, u_input.a, true) % 32u)) < firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.b.x, 1434i), vec3<i32>(var_2.x, 0i, u_input.c)))));
    var var_4 = !(29271u > select((u_input.a | 1u) ^ 16836u, 1u, arg_2));
    return Struct_5(reverseBits(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a, arg_1.x)), 4294967295u)), var_3.x, vec2<u32>(1u, func_4(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(-124f, arg_0.x)), arg_0.x), Struct_2(vec4<bool>(var_3.x, var_3.x, var_3.x, true), var_3), Struct_5(4294967295u, true, vec2<u32>(74189u, 20385u), Struct_3(false, vec2<i32>(var_2.x, 2147483647i), 1i, Struct_2(vec4<bool>(arg_2, var_3.x, false, arg_2), var_3)), arg_0.x)).b), Struct_3((true & (false & var_3.x)) || true, ~_wgslsmith_mult_vec2_i32(abs(var_2.yy), vec2<i32>(u_input.c, 7225i)), min(var_2.x, abs(_wgslsmith_dot_vec2_i32(u_input.b.yz, var_1.wy))), Struct_2(vec4<bool>(false || arg_2, any(vec3<bool>(var_3.x, var_3.x, false)), all(vec3<bool>(arg_2, var_3.x, false)), true), var_3)), _wgslsmith_f_op_f32(-316f + 194f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> bool {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1093f, arg_2, 307f))), vec3<f32>(arg_2, arg_2, arg_2)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(141f, arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(554f)), arg_2), arg_2)), func_5(!(!arg_1.a | false), vec2<f32>(arg_2, -318f), func_4(_wgslsmith_f_op_vec3_f32(func_2(arg_1.a, abs(vec3<u32>(u_input.a, 12384u, 1u)), arg_0.b)), Struct_2(select(arg_0.a, arg_0.a, arg_1.d.a), !vec2<bool>(arg_0.b.x, arg_0.a.x)), Struct_5(countOneBits(u_input.a), true, vec2<u32>(4294967295u, u_input.a), Struct_3(arg_1.a, arg_1.b, u_input.c, Struct_2(arg_1.d.a, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1219f)))), any(arg_1.d.a.yyx));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, arg_2, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 317f) - vec3<f32>(1406f, -1091f, var_0.e)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1657f, var_0.e) * vec3<f32>(arg_2, var_0.e, -162f)) - vec3<f32>(var_0.e, arg_2, var_0.e))))));
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-20393i, arg_1.c, 1i), u_input.b)) ^ firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, var_0.d.c, 0i), u_input.b, u_input.b)), u_input.b), 29113u);
    return func_6(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, arg_2, var_0.e) * var_1) - vec3<f32>(496f, var_1.x, -157f)) * vec3<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-var_1.x), 647f)))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(111u, var_0.a) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(4152u, u_input.a), vec2<u32>(62104u, var_2.b)), vec2<u32>(~var_0.a, ~u_input.a)), func_6(var_1, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.c.x, u_input.a, 0u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 27290u, 1u, u_input.a), vec4<u32>(0u, 0u, var_2.b, u_input.a)), ~vec4<u32>(u_input.a, var_2.b, 1u, 4294967295u)), true).a, 10648u, _wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(var_0.c.x, 34140u))), true).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true)), all(vec2<bool>(true, true)), true & !func_1(Struct_2(vec4<bool>(false, true, true, false), vec2<bool>(true, false)), Struct_3(true, u_input.b.zy, -42643i, Struct_2(vec4<bool>(false, true, true, false), vec2<bool>(true, false))), 855f));
    var var_1 = var_0.x;
    var_1 = any(!func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1808f, -533f, 1679f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1510f, 1000f, 367f)))), ~(vec4<u32>(104322u, 1u, u_input.a, u_input.a) << (vec4<u32>(0u, 4294967295u, 4604u, u_input.a) % vec4<u32>(32u))), all(vec4<bool>(var_0.x, var_0.x, false, false))).d.d.a.wyx);
    let var_2 = func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2926f + 805f), func_6(vec3<f32>(2811f, 436f, 602f), vec4<u32>(u_input.a, 0u, u_input.a, 111056u), true).e)), _wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(max(-743f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-848f)), _wgslsmith_f_op_f32(-1331f + -455f))))), ~(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 12169u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(27504u, 4294967295u, u_input.a, u_input.a))) & vec4<u32>(~u_input.a, u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 21043u)))), !var_0.x).d.d;
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x, _wgslsmith_mult_i32(reverseBits(21079i), max(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.c, u_input.c), u_input.b), reverseBits(21312i | u_input.b.x))));
}

