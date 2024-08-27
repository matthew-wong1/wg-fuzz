struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = (~(~61085u) << (_wgslsmith_mult_u32(u_input.a.x | _wgslsmith_div_u32(u_input.b, 4294967295u), u_input.a.x) % 32u)) ^ _wgslsmith_div_u32(u_input.b, u_input.b);
    var var_1 = Struct_1(u_input.c.x, _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(u_input.b, 42738u)), ~(~u_input.a.xy), true || (u_input.c.x > -2147483647i)), ~firstTrailingBit(vec2<u32>(0u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-673f, 820f, 1000f, -679f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-759f, 1294f, -693f, -1086f))))), 44962u, u_input.c.yw);
    var_1 = Struct_1(-(reverseBits(_wgslsmith_sub_i32(var_1.a, -31299i)) | -71558i), ((var_1.b & u_input.b) >> (((1u & u_input.a.x) ^ reverseBits(1826u)) % 32u)) ^ 1u, var_1.c, var_1.d, vec2<i32>(select(2147483647i, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 14212i, var_1.a), vec3<i32>(33123i, var_1.a, u_input.c.x))), false), var_1.a));
    let var_2 = var_1.c.xxw;
    let var_3 = var_1.c;
    return ~_wgslsmith_div_i32(-2999i, _wgslsmith_div_i32(firstLeadingBit(abs(u_input.c.x)), var_1.e.x));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, -8204i, countOneBits(1i))), u_input.c.xwz), ~reverseBits(func_2()));
    let var_1 = arg_1;
    var var_2 = var_1.c;
    var var_3 = vec3<i32>(u_input.c.x, 2147483647i, var_1.a);
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(420f, 836f, arg_1.c.x, -1062f) - _wgslsmith_f_op_vec4_f32(var_1.c - vec4<f32>(var_2.x, -2397f, -1000f, var_2.x))))))));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = ~(abs(~vec4<u32>(arg_3, 0u, arg_1.x, 4294967295u)) << ((max(select(vec4<u32>(arg_0.d, u_input.b, u_input.b, arg_1.x), vec4<u32>(63079u, arg_0.b, 1u, u_input.a.x), vec4<bool>(arg_2, false, arg_2, false)), min(vec4<u32>(0u, arg_0.d, 1u, 91366u), vec4<u32>(arg_1.x, 28873u, arg_3, 20086u))) << (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, 71627u, arg_0.b, arg_3), vec4<u32>(arg_0.d, u_input.a.x, arg_1.x, u_input.a.x), vec4<u32>(104325u, 15505u, 0u, 1u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = ~vec4<u32>(4294967295u ^ _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(var_0.x, u_input.a.x)), 4294967295u, firstTrailingBit(firstTrailingBit(~u_input.b)), firstTrailingBit(~(~arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var_2 = _wgslsmith_f_op_f32(abs(744f));
    let var_3 = _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)));
    return Struct_1(abs(arg_0.e.x), arg_0.b, arg_0.c, ~63388u, select(abs(_wgslsmith_mod_vec2_i32(arg_0.e, _wgslsmith_sub_vec2_i32(u_input.c.yx, vec2<i32>(-38648i, u_input.c.x)))), ~(-vec2<i32>(u_input.c.x, 0i)), !select(vec2<bool>(true, true), !vec2<bool>(arg_2, false), select(vec2<bool>(true, true), vec2<bool>(true, arg_2), true))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    var var_0 = func_1(!(!(u_input.c.x > -2147483647i) && any(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), vec2<bool>(true, false)))), func_3(arg_2, select(vec2<u32>(~4294967295u, arg_2.b | 9811u), vec2<u32>(arg_1.b, u_input.b) >> (countOneBits(vec2<u32>(0u, arg_1.b)) % vec2<u32>(32u)), arg_0 && (arg_3 >= arg_3)), true, 1u << (_wgslsmith_clamp_u32(4345u, ~arg_2.d, countOneBits(1u)) % 32u)), 4294967295u, -924f).c.x;
    var var_1 = Struct_1(2147483647i, 4294967295u << (arg_2.b % 32u), _wgslsmith_f_op_vec4_f32(-func_3(func_1(arg_0, func_3(arg_1, vec2<u32>(arg_1.b, u_input.a.x), arg_0, u_input.a.x), arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1180f)), ~(~u_input.a.yx), true, 4294967295u).c), 1u, ~firstTrailingBit(arg_2.e));
    var_1 = func_3(func_3(func_3(Struct_1(-2147483647i, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.a.zx), _wgslsmith_f_op_vec4_f32(-var_1.c), countOneBits(u_input.b), vec2<i32>(32116i, 474i)), abs(u_input.a.zx), true, func_3(Struct_1(-321i, 75055u, var_1.c, 78430u, arg_2.e), ~u_input.a.xy, any(vec3<bool>(arg_0, arg_0, true)), ~2541u).b), vec2<u32>(u_input.b, ~u_input.b), !arg_0, _wgslsmith_mod_u32(arg_1.b, var_1.d)), ~(~u_input.a.yz), arg_0, abs(arg_2.d));
    let var_2 = _wgslsmith_mod_u32(min(arg_2.b, ~var_1.b), ~arg_2.d >> (1u % 32u)) << (~0u % 32u);
    var_0 = 1101f;
    return _wgslsmith_div_vec2_f32(arg_1.c.yx, _wgslsmith_f_op_vec2_f32(-arg_1.c.xx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1718f, -527f))))) - _wgslsmith_f_op_vec2_f32(func_4(false, func_3(func_1(true, Struct_1(u_input.c.x, 6481u, vec4<f32>(-334f, -441f, -1000f, 904f), u_input.a.x, vec2<i32>(u_input.c.x, -28166i)), ~u_input.b, _wgslsmith_f_op_f32(-583f * 505f)), ~(u_input.a.zz & u_input.a.zy), !all(vec4<bool>(true, true, true, true)), (u_input.a.x ^ u_input.a.x) | 1u), Struct_1(-22331i, ~(~u_input.a.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 135f, 560f, -1539f)))), firstTrailingBit(9086u), -u_input.c.wx << ((u_input.a.xx ^ u_input.a.yz) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2488f)), _wgslsmith_f_op_f32(floor(-1488f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 139f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-695f, 399f, true)) - func_1(true, Struct_1(0i, u_input.a.x, vec4<f32>(1000f, var_0.x, var_0.x, var_0.x), u_input.a.x, u_input.c.xz), 5627u, -900f).c.x)), var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(true, Struct_1(-31647i >> (u_input.a.x % 32u), u_input.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-921f, 742f, var_0.x, var_0.x))), 1u, vec2<i32>(u_input.c.x, u_input.c.x)), Struct_1(func_2(), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), vec4<f32>(-407f, 1251f, var_0.x, var_0.x), abs(u_input.a.x), ~vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(func_4(true, func_1(false, Struct_1(-2147483647i, 61771u, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 56057u, u_input.c.yy), u_input.a.x, -694f), func_3(Struct_1(u_input.c.x, u_input.b, vec4<f32>(-2191f, -373f, -1888f, -1511f), u_input.a.x, vec2<i32>(1i, 0i)), u_input.a.xz, false, 0u), var_0.x)).x)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(u_input.c.x, 0i), _wgslsmith_add_i32(1i, 19331i), -66719i | max(u_input.c.x, -2147483647i), -67953i & -u_input.c.x), select((u_input.c >> (vec4<u32>(u_input.a.x, u_input.a.x, 27692u, 4294967295u) % vec4<u32>(32u))) << ((vec4<u32>(u_input.b, 4294967295u, 0u, 21015u) | vec4<u32>(4294967295u, 0u, u_input.b, u_input.a.x)) % vec4<u32>(32u)), -u_input.c, !any(vec3<bool>(true, false, false)))), -678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f + _wgslsmith_f_op_f32(round(-2191f))))));
}

