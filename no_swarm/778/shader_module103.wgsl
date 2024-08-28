struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_4) -> u32 {
    var var_0 = countOneBits(2424i);
    let var_1 = arg_3.d.a.d.ywy;
    let var_2 = Struct_2(arg_3.a, _wgslsmith_f_op_vec3_f32(min(arg_3.d.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_3.d.a.b)))))), arg_3.a, _wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-16682i, 13129i, 10784i))), -71707i, arg_3.e.x), ~(_wgslsmith_div_vec4_i32(arg_3.d.a.d, vec4<i32>(-47064i, var_1.x, 0i, -33597i)) | vec4<i32>(-1i, -1i, -7438i, arg_3.e.x))), arg_3.a);
    var var_3 = vec4<i32>(-2147483647i, -arg_3.d.a.d.x, -arg_3.e.x, _wgslsmith_dot_vec2_i32(select(-vec2<i32>(var_1.x, arg_3.e.x), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.e.x, 0i), var_2.d.wx), !arg_3.d.a.e.b), arg_3.e.zy)) ^ _wgslsmith_mult_vec4_i32(~var_2.d ^ vec4<i32>(abs(var_2.d.x), var_2.d.x, -29259i, countOneBits(var_2.d.x)), var_2.d);
    return 22390u;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_u32(select(firstLeadingBit(select(~vec4<u32>(35122u, 4294967295u, 0u, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b, u_input.a), vec4<u32>(u_input.c, 55583u, 0u, u_input.c)), vec4<bool>(true, true, false, true))), ~(~(~vec4<u32>(28663u, u_input.c, u_input.d, 0u))), false), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(func_3(68996u, vec4<f32>(504f, 518f, 748f, -2795f), vec4<u32>(u_input.c, u_input.c, u_input.c, 45574u), Struct_4(Struct_1(vec2<f32>(-523f, 446f), false, u_input.c, vec2<f32>(-129f, 1269f)), vec4<u32>(u_input.b, u_input.d, u_input.a, u_input.b), false, Struct_3(Struct_2(Struct_1(vec2<f32>(-1218f, 830f), true, u_input.d, vec2<f32>(168f, -803f)), vec3<f32>(296f, 1000f, -1300f), Struct_1(vec2<f32>(477f, 231f), true, 0u, vec2<f32>(606f, 1227f)), vec4<i32>(-2147483647i, -1i, 1i, -80168i), Struct_1(vec2<f32>(412f, 1690f), true, u_input.d, vec2<f32>(714f, 1636f))), 204f), vec3<i32>(31635i, -2147483647i, 0i))), u_input.b, 1u, ~u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(36505u, 24855u, 1u, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 2509u, 8299u), vec4<u32>(u_input.b, 23883u, u_input.b, 41586u))))));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, 744f) + vec2<f32>(573f, -1467f)), vec2<f32>(-781f, -1000f)), any(vec4<bool>(false, true, true, true)) | true, firstTrailingBit(_wgslsmith_div_u32(35370u, 6001u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, -845f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, -1626f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-389f, -1352f), _wgslsmith_f_op_f32(2461f + 387f), _wgslsmith_f_op_f32(select(-829f, -328f, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-637f, 1199f, -214f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(271f, 637f), vec2<f32>(212f, 944f)))), all(vec3<bool>(true, false, true)) || any(vec3<bool>(true, false, false)), ~(~var_0.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-532f, 360f), vec2<f32>(-123f, -527f)), vec2<f32>(-495f, -1168f)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, 29748i, 27358i) >> (vec4<u32>(var_0.x, 53774u, u_input.c, 63436u) % vec4<u32>(32u)), vec4<i32>(7510i, 1i, 24642i, 20582i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(193f, -998f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, 1705f))), true, 62782u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, -364f)))))), _wgslsmith_f_op_f32(-539f * -262f));
    var_0 = firstLeadingBit(vec4<u32>(var_0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.d, 1u) | vec4<u32>(u_input.b, var_0.x, u_input.d, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.a.c.c, 42179u, 4294967295u), vec4<u32>(u_input.c, 15642u, var_0.x, 4294967295u))), 52355u, 91342u));
    var var_2 = 1i;
    var var_3 = select(var_1.a.d.zxy, var_1.a.d.wyz, any(select(vec2<bool>(all(vec2<bool>(var_1.a.a.b, true)), var_1.a.c.b), !select(vec2<bool>(false, false), vec2<bool>(var_1.a.c.b, var_1.a.e.b), vec2<bool>(var_1.a.c.b, var_1.a.e.b)), select(select(vec2<bool>(true, var_1.a.c.b), vec2<bool>(false, true), vec2<bool>(var_1.a.c.b, var_1.a.e.b)), vec2<bool>(true, true), select(vec2<bool>(var_1.a.e.b, false), vec2<bool>(true, var_1.a.c.b), vec2<bool>(var_1.a.c.b, true))))));
    return var_1.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    let var_0 = func_2();
    var var_1 = Struct_4(func_2().e, vec4<u32>(u_input.a, ~u_input.b, _wgslsmith_mult_u32(var_0.c.c, 0u), ~arg_2), arg_0.x, Struct_3(Struct_2(func_2().e, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.d.x, -720f, -348f))), _wgslsmith_f_op_vec3_f32(trunc(var_0.b)), !vec3<bool>(false, var_0.e.b, arg_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, var_0.c.d.x) - vec2<f32>(var_0.c.d.x, 1252f)), true, 60449u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1364f, arg_1.x))), vec4<i32>(-2147483647i, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 10773i, var_0.d.x, -66690i), var_0.d), var_0.d.x), func_2().e), var_0.b.x), min(max(vec3<i32>(_wgslsmith_sub_i32(var_0.d.x, var_0.d.x), abs(var_0.d.x), _wgslsmith_clamp_i32(var_0.d.x, -46834i, 0i)), -select(var_0.d.xwy, var_0.d.xwz, vec3<bool>(var_0.e.b, arg_0.x, arg_0.x))), reverseBits(-_wgslsmith_div_vec3_i32(var_0.d.zxz, var_0.d.yww))));
    let var_2 = Struct_4(func_2().e, var_1.b, 58914u != var_1.b.x, Struct_3(func_2(), var_1.a.d.x), firstTrailingBit(vec3<i32>(func_2().d.x, firstLeadingBit(-var_0.d.x), var_0.d.x)));
    let var_3 = select(select(arg_0, select(vec2<bool>(!var_0.a.b, arg_0.x), arg_0, vec2<bool>(true, any(vec2<bool>(arg_0.x, true)))), all(!vec2<bool>(true, arg_0.x))), !vec2<bool>(false, !arg_0.x), !(24442u < (u_input.b | var_1.d.a.c.c)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-var_1.d.a.b.x)) + _wgslsmith_f_op_vec2_f32(arg_1.ww - vec2<f32>(var_2.d.a.b.x, -274f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.d.x, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-arg_1.x))))), all(vec4<bool>(false, -var_2.e.x < ~var_0.d.x, false, var_1.d.b <= _wgslsmith_f_op_f32(-var_1.a.a.x)))));
    return 876f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(select(~vec2<u32>(max(7627u, 24717u), 4294967295u), _wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(9503u, u_input.a) >> (vec2<u32>(u_input.c, u_input.d) % vec2<u32>(32u))), 1294f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), vec4<f32>(-105f, -166f, -532f, 308f), u_input.c))))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, ~u_input.d), firstLeadingBit(vec2<u32>(u_input.b, u_input.c) & vec2<u32>(u_input.d, 3409u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, select(u_input.a, 38117u, true)), ~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)));
    let var_1 = countOneBits(27217i);
    var var_2 = u_input.a;
    var_0 = vec2<u32>(~(func_3(~u_input.d, vec4<f32>(152f, -1113f, -875f, 1000f), ~vec4<u32>(u_input.a, u_input.c, 4294967295u, u_input.b), Struct_4(Struct_1(vec2<f32>(731f, 573f), true, u_input.c, vec2<f32>(683f, -655f)), vec4<u32>(var_0.x, 1u, 1u, u_input.d), true, Struct_3(Struct_2(Struct_1(vec2<f32>(395f, -673f), true, u_input.b, vec2<f32>(-389f, -487f)), vec3<f32>(1000f, -567f, 398f), Struct_1(vec2<f32>(-471f, -1679f), false, 0u, vec2<f32>(-2417f, -567f)), vec4<i32>(-2147483647i, var_1, -37642i, var_1), Struct_1(vec2<f32>(236f, 1603f), true, 66757u, vec2<f32>(-423f, -120f))), -980f), vec3<i32>(-2147483647i, -6988i, var_1))) & var_0.x), ~(u_input.a >> (func_3(~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, -361f, 1000f, -2310f)), vec4<u32>(u_input.d, 1u, 1u, 1u), Struct_4(Struct_1(vec2<f32>(-733f, -2210f), true, 32940u, vec2<f32>(-804f, -846f)), vec4<u32>(3560u, var_0.x, var_0.x, var_0.x), false, Struct_3(Struct_2(Struct_1(vec2<f32>(1162f, -657f), false, u_input.b, vec2<f32>(2032f, 974f)), vec3<f32>(-459f, -690f, 735f), Struct_1(vec2<f32>(659f, 628f), true, 33298u, vec2<f32>(-235f, 1000f)), vec4<i32>(6992i, 1i, var_1, var_1), Struct_1(vec2<f32>(1323f, -2333f), false, 61571u, vec2<f32>(319f, -164f))), 1159f), vec3<i32>(-4196i, 2147483647i, var_1))) % 32u)));
    var_2 = _wgslsmith_clamp_u32(var_0.x, _wgslsmith_add_u32(~var_0.x, 4294967295u) << (68438u % 32u), reverseBits(countOneBits(_wgslsmith_sub_u32(0u, var_0.x)) ^ 4294967295u));
    var_0 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a >> (1u % 32u), func_2().a.c) << (20419u % 32u), ~(var_0.x ^ (48594u >> (u_input.c % 32u)))), ~(~_wgslsmith_mod_u32(min(u_input.a, 89747u), var_0.x >> (53945u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_i32(vec2<i32>(10410i, var_1), ~vec2<i32>(var_1, var_1)) & ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_1, var_1)), -2147483647i));
}

