struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> bool {
    return arg_0.c;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(select(min(vec4<u32>(1u, 15179u, 0u, 30896u), vec4<u32>(arg_0, arg_0, arg_1, arg_0)) >> (~vec4<u32>(arg_1, 14459u, 54990u, arg_1) % vec4<u32>(32u)), abs(max(vec4<u32>(arg_1, 0u, u_input.a, u_input.a), vec4<u32>(1u, 46071u, arg_1, 1u))), vec4<bool>(func_2(Struct_3(1u, vec4<i32>(u_input.d.x, arg_2, 2147483647i, arg_2), true, false, Struct_1(40595i, vec4<f32>(166f, -1874f, -317f, 609f), vec2<f32>(-111f, 696f))), vec3<f32>(487f, -656f, -316f), vec3<u32>(arg_0, 40087u, 0u), vec3<i32>(-2147483647i, 1686i, -67705i)), true, arg_2 <= arg_2, true)), vec4<u32>(67508u, 1u, ~countOneBits(0u), arg_1)), vec4<i32>(abs(min(i32(-1i) * -28889i, arg_2)), arg_2, u_input.b.x, 62344i), false, !(7654i <= _wgslsmith_add_i32(-2147483647i, u_input.d.x)) | (((arg_2 >> (u_input.a % 32u)) <= (i32(-1i) * -20077i)) || true), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(360f, 1347f, true)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_div_f32(1002f, -293f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))));
    let var_1 = Struct_5(Struct_2(var_0.e, select(select(vec2<bool>(var_0.d, var_0.c), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, var_0.c), vec2<bool>(var_0.c, true)), vec2<bool>(true, true)), select(vec2<bool>(var_0.c, false), !vec2<bool>(var_0.d, true), true), arg_2 >= firstLeadingBit(u_input.d.x)), var_0.c), var_0.c && var_0.c, abs(((i32(-1i) * -33571i) & min(arg_2, var_0.b.x)) | 2147483647i), firstLeadingBit(var_0.b), ~vec3<u32>(_wgslsmith_div_u32(0u, 4294967295u) & min(4294967295u, arg_0), max(_wgslsmith_mult_u32(var_0.a, 1u), var_0.a & 1u), select(~1u, ~var_0.a, 8255i == u_input.b.x)));
    var var_2 = false;
    var_2 = false;
    var var_3 = (_wgslsmith_add_u32(min(var_0.a, u_input.e), 30203u) == (~(~var_0.a) << (firstTrailingBit(_wgslsmith_mult_u32(arg_1, u_input.e)) % 32u))) == any(select(var_1.a.b, !vec2<bool>(true, var_1.a.c), any(!vec3<bool>(var_0.d, true, false))));
    return select(!(!(!(!vec4<bool>(var_0.d, var_1.a.c, var_0.d, var_1.a.c)))), !(!vec4<bool>(func_2(var_0, var_0.e.b.xxy, vec3<u32>(15419u, 17874u, arg_1), var_0.b.wzy), var_1.a.a.a < 0i, var_1.b, any(vec2<bool>(true, true)))), !(var_0.e.c.x >= _wgslsmith_f_op_f32(-var_0.e.b.x)));
}

fn func_1() -> StorageBuffer {
    var var_0 = !select(vec4<bool>(_wgslsmith_f_op_f32(trunc(-448f)) != 1000f, true, true, true), vec4<bool>(all(vec3<bool>(false, true, true)), !func_2(Struct_3(u_input.a, vec4<i32>(-30009i, u_input.d.x, 0i, u_input.c.x), true, true, Struct_1(u_input.b.x, vec4<f32>(1300f, 668f, 216f, -884f), vec2<f32>(-862f, 713f))), vec3<f32>(-180f, -1000f, 611f), vec3<u32>(u_input.e, u_input.e, 13117u), u_input.d), select(false, true, true), true), select(vec4<bool>(true, true, true, true), select(func_3(0u, u_input.e, 1i), vec4<bool>(true, true, true, true), true), true));
    var var_1 = Struct_4(Struct_1(min(-11622i, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1498f, 645f, -715f, -371f), vec4<f32>(-2186f, -183f, -553f, 653f))))), vec2<f32>(-735f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(786f, -1198f)) * _wgslsmith_div_f32(880f, -642f)))), Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-257f, -1006f, 1000f, -164f), vec4<f32>(-1000f, -893f, 306f, 1088f), var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(512f, 864f, -265f, 1242f) - vec4<f32>(1424f, -1536f, -1397f, -1924f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(166f)), -2814f, _wgslsmith_f_op_f32(min(605f, -1112f)), _wgslsmith_f_op_f32(f32(-1f) * -597f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f + -699f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1297f + 1000f), 417f)))), Struct_3(~u_input.e ^ u_input.a, -vec4<i32>(-38541i, 2147483647i, u_input.b.x, 1i), func_3(~_wgslsmith_add_u32(65061u, u_input.e), ~reverseBits(6697u), u_input.d.x ^ _wgslsmith_mult_i32(u_input.c.x, -20223i)).x, true, Struct_1(u_input.c.x, vec4<f32>(974f, _wgslsmith_f_op_f32(f32(-1f) * -250f), -758f, _wgslsmith_f_op_f32(1074f + -1000f)), vec2<f32>(_wgslsmith_f_op_f32(min(-261f, 1012f)), _wgslsmith_f_op_f32(707f - -1149f)))), Struct_1(u_input.c.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -361f, 1000f, 738f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -649f, -914f, -604f))), !func_3(u_input.e, 4294967295u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1970f, -229f)))))));
    var_1 = Struct_4(Struct_1(_wgslsmith_mult_i32(u_input.c.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.d.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d.b + var_1.b.b) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1588f, 339f, 178f), vec4<f32>(-1184f, var_1.c.e.b.x, 1366f, 1291f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c.e.b.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, 1000f))))), var_1.b, Struct_3(39072u, var_1.c.b, func_2(var_1.c, _wgslsmith_f_op_vec3_f32(-var_1.d.b.xzx), firstLeadingBit(select(vec3<u32>(u_input.a, 16225u, var_1.c.a), vec3<u32>(var_1.c.a, 12780u, 44179u), vec3<bool>(var_0.x, var_0.x, var_0.x))), var_1.c.b.wyw), all(vec4<bool>(any(var_0.zyx), 947f < var_1.c.e.b.x, true, all(vec4<bool>(var_1.c.c, true, var_0.x, true)))), var_1.c.e), var_1.b);
    var_0 = !func_3(_wgslsmith_add_u32(4294967295u, 0u), abs(4294967295u), _wgslsmith_clamp_i32(u_input.b.x, ~(-var_1.a.a), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)));
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.a, var_1.c.b.x, var_1.b.a), vec3<i32>(var_1.a.a, var_1.a.a, u_input.b.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_1.c.b.wz ^ vec2<i32>(var_1.b.a, -1i), vec2<i32>(0i, var_1.b.a)), vec2<i32>(var_1.b.a | -16299i, u_input.d.x)), _wgslsmith_sub_vec2_i32(select(var_1.c.b.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), u_input.c), any(vec3<bool>(false, var_0.x, var_1.c.c))), var_1.c.b.zy >> (~vec2<u32>(u_input.a, var_1.c.a) % vec2<u32>(32u)))), firstLeadingBit(vec2<i32>(var_1.c.b.x, -select(-16789i, 74743i, var_1.c.d))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(771f, 1313f, var_1.d.b.x), var_1.b.b.xxw) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.e.b.x, var_1.b.b.x, var_1.d.c.x))), var_1.b.b.yyz, var_0.zwy))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.c.x, -1000f, _wgslsmith_f_op_f32(-263f * 123f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.e.b.wwz - var_1.d.b.yxy)))), var_0.zzy)), ~select(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a, var_1.c.a), vec3<u32>(var_1.c.a, 14840u, var_1.c.a)), ~u_input.a), vec3<u32>(0u, ~1091u, u_input.a), var_1.c.d), vec4<i32>(var_1.d.a, -2147483647i, (-2147483647i ^ _wgslsmith_dot_vec2_i32(u_input.c, var_1.c.b.zz)) ^ ~countOneBits(-627i), reverseBits(9104i)), _wgslsmith_sub_vec4_u32(~(~firstTrailingBit(vec4<u32>(0u, var_1.c.a, 95549u, u_input.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, var_1.c.a, u_input.e), select(vec4<u32>(1u, u_input.e, u_input.a, u_input.e), vec4<u32>(4294967295u, 56651u, u_input.a, 34589u), var_1.c.d)) ^ vec4<u32>(55817u, abs(0u), _wgslsmith_add_u32(1u, 24912u), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(select(vec2<i32>(0i, u_input.c.x), -vec2<i32>(u_input.d.x, u_input.b.x), vec2<bool>(true, true)), -(~vec2<i32>(-2147483647i, 2935i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1204f, 140f))));
    let x = u_input.a;
    s_output = func_1();
}

