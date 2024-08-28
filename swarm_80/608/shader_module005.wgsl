struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(-min(vec3<i32>(-5359i, 0i, arg_0.a), vec3<i32>(-2147483647i, 24954i, u_input.e)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1708f, 1000f, 666f, 1330f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-863f, 328f, 376f, 870f))), false)), arg_1.x), ~arg_2), ~arg_1.yy, Struct_1(abs(max(vec3<i32>(arg_0.a, -2147483647i, 21200i), ~vec3<i32>(u_input.b, -40955i, arg_2))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, -1000f, 1029f, 2004f) - vec4<f32>(-511f, -862f, -216f, 901f)))))), ~(~(~72834u))), abs(~_wgslsmith_mod_u32(~arg_1.x, _wgslsmith_mod_u32(28387u, u_input.a.x))));
    var var_1 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(!select(var_0.b.x >= var_0.a.a.c, true, true)));
    var_1 = !(!select(vec2<bool>(false, arg_2 >= arg_2), select(vec2<bool>(false, true), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(false, false))), vec2<bool>(!var_1.x, var_1.x)));
    let var_2 = Struct_5(!(!(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)))), var_0.a, var_0.c.a, _wgslsmith_div_vec2_i32(var_0.a.a.a.xy, -(~_wgslsmith_mod_vec2_i32(var_0.c.a.xy, vec2<i32>(0i, u_input.e)))), var_0.c.b.zw);
    var var_3 = Struct_5(vec4<bool>(var_2.a.x, var_2.a.x, var_1.x, var_1.x), Struct_2(Struct_1(~abs(var_2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b.a.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.b.x, var_2.b.a.b.x, var_0.a.a.b.x, 305f) - vec4<f32>(2041f, var_0.a.a.b.x, 1323f, 489f))), abs(1u)), ~_wgslsmith_dot_vec3_i32(var_0.c.a, var_0.a.a.a)), var_2.c, countOneBits(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.c.a.xz, vec2<i32>(var_2.c.x, arg_2)), -var_2.d)), var_2.e);
    return select(-var_0.c.a, ~firstTrailingBit(var_3.b.a.a), var_2.a.yzw);
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-14228i, u_input.e), 18197i, abs(49436i)), -vec3<i32>(-1i, -2147483647i, arg_0) ^ vec3<i32>(-1i, u_input.c, u_input.b))), firstTrailingBit(select(-(~vec3<i32>(18381i, 21328i, 29464i)), -func_3(Struct_4(2147483647i), vec4<u32>(0u, u_input.a.x, 45903u, 19860u), u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    var_1 = ~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b | 2147483647i, -8948i, arg_0), firstLeadingBit(func_3(Struct_4(-34041i), u_input.a, -arg_0)));
    var_1 = vec3<i32>(_wgslsmith_div_i32(arg_0, 1i) >> (u_input.d.x % 32u), arg_0, var_1.x);
    let var_2 = (_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, 20007u), ~(~0u)) != _wgslsmith_dot_vec3_u32(~u_input.d, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x))) && all(select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.x > _wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(arg_0, 23130i))));
    return Struct_5(vec4<bool>(all(select(vec3<bool>(false, var_2, true), !vec3<bool>(var_2, false, var_2), !vec3<bool>(true, var_2, false))), _wgslsmith_dot_vec4_u32(u_input.a, select(vec4<u32>(u_input.a.x, u_input.a.x, 42939u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.d.x, u_input.d.x), vec4<bool>(false, true, var_2, var_2))) >= 0u, true, max(~u_input.c, arg_0) != (0i ^ countOneBits(u_input.c))), Struct_2(Struct_1(reverseBits(abs(vec3<i32>(0i, u_input.e, -18368i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1375f, -1029f, var_0, var_0), vec4<f32>(var_0, 237f, 277f, -175f), var_2))), 1u), arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -1272i, ~(-2147483647i), reverseBits(1i)), ~(~vec3<i32>(var_1.x, var_1.x, u_input.b))) << (u_input.a.yxy % vec3<u32>(32u)), var_1.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(1053f, -667f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 973f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), var_0), vec2<f32>(_wgslsmith_f_op_f32(step(287f, var_0)), -142f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_3) -> i32 {
    let var_0 = true;
    return firstLeadingBit(31213i);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_5 {
    var var_0 = func_2((u_input.c | 1i) ^ _wgslsmith_mult_i32(abs(2147483647i ^ arg_1), u_input.c));
    var_0 = func_2(0i);
    var var_1 = var_0.e.x;
    var var_2 = var_0.a;
    let var_3 = func_2(arg_0).b;
    return func_2(-20724i);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(vec3<i32>(27958i, ~_wgslsmith_add_i32(-5430i, 1i), _wgslsmith_clamp_i32(~59216i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.e, 16996i, 1i), vec4<i32>(u_input.b, 11460i, 0i, 2147483647i)), 1i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(452f, 702f, 588f, -576f) * vec4<f32>(-1504f, 986f, -410f, 689f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, -353f, 296f, -661f))))), 85883u), -1i);
    let var_1 = func_5(36339i, u_input.e, min(func_4(_wgslsmith_clamp_u32(0u, 0u, arg_0.x), Struct_5(vec4<bool>(false, true, false, true), var_0, var_0.a.a, var_0.a.a.zx, vec2<f32>(1000f, var_0.a.b.x)), func_2(var_0.b), Struct_3(Struct_2(Struct_1(vec3<i32>(var_0.a.a.x, u_input.c, -5348i), var_0.a.b, 1u), var_0.a.a.x), vec2<u32>(46585u, 1u), var_0.a, u_input.d.x)) ^ 13709i, ~var_0.a.a.x), 1315f);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -252f);
    var_3 = func_5(-1i, 39251i, func_2(_wgslsmith_mod_i32(var_1.d.x, 2147483647i)).d.x, _wgslsmith_f_op_f32(step(var_0.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.e.x, var_1.b.a.b.x, var_2))), _wgslsmith_f_op_f32(193f * -746f))))).e.x;
    return vec3<bool>(!any(var_1.a.wy), max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_0.a.c), ~u_input.d.xz), 4294967295u) < 1u, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(421f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f * 1000f)), 555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1086f)) + -1960f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(848f, 529f))))));
    let var_1 = ~(-2147483647i);
    let var_2 = !vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), any(!func_1(vec4<u32>(u_input.d.x, u_input.a.x, 1u, 0u))), !any(func_2(var_1).a.yx));
    let var_3 = ~func_5(2147483647i, func_3(Struct_4(firstTrailingBit(u_input.b)), select(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 37471u, 22314u, 4294967295u)), countOneBits(vec4<u32>(u_input.d.x, 1u, 104219u, u_input.d.x)), select(var_2.x, false, false)), max(_wgslsmith_div_i32(var_1, 0i), var_1)).x, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.x)))) * var_0.x)).b.a.a;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1000f, -328f) + vec4<f32>(var_0.x, 638f, var_0.x, -2168f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -428f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, var_0.x, -332f, var_0.x)), !vec4<bool>(true, true, true, var_2.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1441f, var_0.x, var_0.x) * vec4<f32>(-1000f, var_0.x, var_0.x, -752f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~min(vec4<i32>(26196i, u_input.e, u_input.e, -27068i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 35285u), vec4<u32>(u_input.a.x, 0u, u_input.d.x, 4294967295u)) % vec4<u32>(32u)), firstLeadingBit(firstTrailingBit(vec4<i32>(2147483647i, var_3.x, var_1, var_1)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(340f * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(104f, _wgslsmith_f_op_f32(f32(-1f) * -514f)), var_0.x, _wgslsmith_div_f32(var_0.x, -507f)));
}

