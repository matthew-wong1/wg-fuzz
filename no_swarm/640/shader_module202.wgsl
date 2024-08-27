struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    let var_0 = Struct_2(2147483647i, Struct_1(~vec4<u32>(arg_0.x, 1u, ~43990u, arg_2)), Struct_1(select(~(~vec4<u32>(arg_2, 0u, arg_0.x, 99814u)), ~vec4<u32>(arg_2, 31164u, arg_2, arg_2), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))), arg_1.x);
    let var_1 = vec2<i32>(max(0i, countOneBits(abs(~u_input.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(-22105i, var_0.a)) & firstTrailingBit(arg_1), vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(39753i, var_0.a, -1i))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-486f, _wgslsmith_f_op_f32(floor(-478f)), 551f) - vec3<f32>(-972f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1838f - 917f))), -320f))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(1106f + var_2.x), var_2.x)))) - vec3<f32>(442f, var_2.x, 743f));
    let var_3 = !select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, false, true, all(vec3<bool>(true, true, true))), vec4<bool>(any(vec3<bool>(false, true, false)), true, true, all(vec4<bool>(true, false, false, true)) && all(vec4<bool>(true, false, true, false))));
    return _wgslsmith_sub_i32(countOneBits(abs(firstTrailingBit(arg_1.x))), _wgslsmith_add_i32(var_1.x & ~21628i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_1.x, 2147483647i), vec3<i32>(arg_1.x, -2147483647i, -6879i))) | 2147483647i);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_2(arg_0.x, arg_1.b, arg_1.b, func_3(~vec3<u32>(~1u, 1418u, arg_1.b.a.x), firstLeadingBit(-(~vec2<i32>(arg_1.c.x, -2147483647i))), 4294967295u));
    var var_1 = Struct_3(!(true | any(vec2<bool>(true, true))), Struct_1(arg_1.b.a), Struct_2(-abs(var_0.a), arg_1.b, Struct_1(~(~vec4<u32>(u_input.b.x, var_0.c.a.x, 18109u, 112984u))), _wgslsmith_sub_i32(8312i, u_input.a.x)), 1813f);
    var var_2 = var_1.a;
    var_0 = var_1.c;
    var_0 = Struct_2(arg_1.c.x, arg_1.b, var_1.b, u_input.a.x);
    return var_1.d;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = -abs(u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, 942f) - _wgslsmith_f_op_f32(sign(-2734f))), _wgslsmith_f_op_f32(func_2(~var_0.yy, Struct_4(vec2<f32>(1556f, 2305f), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 53662u)), u_input.a.xy))), _wgslsmith_f_op_f32(step(-399f, -459f)))) + vec3<f32>(-1329f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(650f)))), -932f)));
    var var_2 = Struct_2(-12505i, Struct_1(firstLeadingBit(max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(16717u, 11250u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 70575u))))), Struct_1(vec4<u32>(_wgslsmith_mod_u32(countOneBits(60573u), ~u_input.b.x), 4294967295u, u_input.b.x, u_input.b.x)), firstLeadingBit((i32(-1i) * -18181i) ^ _wgslsmith_add_i32(arg_2, u_input.a.x)) | ~countOneBits(1i));
    var_1 = vec3<f32>(_wgslsmith_div_f32(-1120f, -615f), _wgslsmith_f_op_f32(func_2(select(_wgslsmith_add_vec2_i32(var_0.xx, u_input.a.zx), vec2<i32>(countOneBits(1i), -6465i), vec2<bool>(true, false)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, -484f)), Struct_1(~vec4<u32>(1u, var_2.c.a.x, var_2.c.a.x, u_input.b.x)), max(vec2<i32>(arg_2, var_0.x), -var_0.yz)))), 1002f);
    var_2 = Struct_2(func_3(vec3<u32>(min(var_2.b.a.x, 64131u) ^ 1u, abs(1u), 24916u), -var_0.zx, _wgslsmith_clamp_u32(u_input.b.x, var_2.b.a.x, 0u)), Struct_1(vec4<u32>(1u, countOneBits(56411u), u_input.b.x, 4294967295u)), var_2.b, select(~var_2.d, 2147483647i, all(select(!vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, true), true))));
    return Struct_2(_wgslsmith_dot_vec2_i32(max(_wgslsmith_mod_vec2_i32(u_input.a.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, var_2.d), var_0.zz)), reverseBits(~vec2<i32>(31236i, -3774i))), vec2<i32>(-2147483647i, select(arg_2, -1i ^ var_0.x, arg_2 < -22952i))), var_2.c, Struct_1(var_2.b.a), i32(-1i) * -34075i);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = u_input.a.yy;
    var var_1 = Struct_3(true, Struct_1(countOneBits(arg_1.b.a)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-298f, _wgslsmith_f_op_f32(f32(-1f) * -504f)))))));
    var var_2 = !(!select(vec4<bool>(true, var_1.a && false, var_1.a, var_1.a | var_1.a), !select(vec4<bool>(var_1.a, false, false, true), vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec4<bool>(false, true, false, true)), !vec4<bool>(false, var_1.a, false, true)));
    let var_3 = _wgslsmith_dot_vec4_u32(var_1.c.c.a, ~var_1.c.b.a);
    let var_4 = countOneBits(_wgslsmith_dot_vec4_u32(max(arg_1.c.a, ~var_1.b.a), vec4<u32>(0u, 29849u, 27673u, 6467u) << (arg_1.c.a % vec4<u32>(32u)))) >> (~(~_wgslsmith_mult_u32(firstTrailingBit(1u), abs(arg_0))) % 32u);
    return Struct_1(arg_1.c.a);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1358f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1658f + -886f))))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, 430f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-289f, -219f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-271f, -619f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1130f, 629f) * vec2<f32>(-1265f, -701f))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -983f)))), Struct_1(vec4<u32>(_wgslsmith_div_u32(8296u, 4294967295u >> (arg_1 % 32u)), abs(u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, ~arg_1, 1u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, arg_1), ~arg_1, arg_1))), _wgslsmith_mult_vec2_i32(vec2<i32>(func_3(~arg_0.a.yxz, vec2<i32>(2147483647i, u_input.a.x) ^ vec2<i32>(u_input.a.x, -33506i), _wgslsmith_clamp_u32(u_input.b.x, 53560u, 0u)), -29200i), u_input.a.yz));
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = select(-abs(~select(vec4<i32>(u_input.a.x, 5469i, 0i, 1i), vec4<i32>(15845i, u_input.a.x, 35012i, 0i), false)), firstTrailingBit(max(min(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, -15633i, arg_1.c.x), vec4<i32>(-9775i, u_input.a.x, -1i, 33529i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 10908i) | vec4<i32>(0i, u_input.a.x, u_input.a.x, 49124i)), vec4<i32>(select(2147483647i, arg_1.c.x, false), func_1(false, true, arg_1.c.x).a, arg_1.c.x, u_input.a.x))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), any(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, any(vec2<bool>(false, false))), vec4<bool>(true, all(vec3<bool>(false, false, false)), true, false), all(vec3<bool>(true, true, true))), any(vec2<bool>(u_input.a.x < -6097i, true))));
    var var_1 = u_input.b ^ ~(~_wgslsmith_sub_vec2_u32(abs(arg_1.b.a.zx), arg_1.b.a.zz));
    var var_2 = Struct_1(~arg_1.b.a);
    var_1 = _wgslsmith_clamp_vec2_u32(u_input.b, ~select(vec2<u32>(~var_2.a.x, _wgslsmith_div_u32(u_input.b.x, 0u)), vec2<u32>(countOneBits(31168u), var_1.x & var_1.x), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), ~(vec2<u32>(u_input.b.x, 1u) << (abs(u_input.b) % vec2<u32>(32u))));
    return Struct_3(any(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), all(vec4<bool>(false, true, false, false)))), arg_1.b, Struct_2(~_wgslsmith_dot_vec2_i32(~u_input.a.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, arg_1.c.x), arg_1.c)), arg_1.b, arg_1.b, var_0.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec2_i32(var_0.wz, abs(abs(var_0.wz)), var_0.wx), Struct_4(vec2<f32>(_wgslsmith_div_f32(798f, 929f), 774f), arg_1.b, ~u_input.a.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a.yy >> (~(u_input.b ^ u_input.b) % vec2<u32>(32u)));
    let var_1 = func_6(-916f, func_5(func_4(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) >> (abs(4294967295u) % 32u), func_1(true, select(false, false, false), -var_0.x), countOneBits(~0u)), countOneBits(u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, 933f, 423f))))));
    var var_2 = 268f;
    let var_3 = var_1.c.b.a.x;
    var_2 = var_1.d;
    let var_4 = !select(vec2<bool>(true, any(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, true, var_1.a), true))), vec2<bool>(!var_1.a, all(vec4<bool>(true, false, var_1.a, true))), true);
    let var_5 = !vec2<bool>(var_4.x, func_1(false, var_4.x, var_0.x & -23669i).a < -29117i);
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(1i, u_input.a.x), Struct_4(vec2<f32>(-638f, 1000f), var_1.b, vec2<i32>(var_0.x, var_0.x)))) + var_1.d) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f * 559f)))), -151f, _wgslsmith_div_f32(var_1.d, -312f));
    var var_7 = Struct_2(0i, var_1.c.c, var_1.b, -(-var_1.c.a >> (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(u_input.b, var_1.c.b.a.xx ^ var_1.b.a.xy), _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.x) - 2243f)));
}

