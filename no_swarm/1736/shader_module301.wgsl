struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.c + -268f);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-264f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(613f, arg_1.c, false)) * _wgslsmith_f_op_f32(round(-2133f))), _wgslsmith_f_op_f32(-1f), true))), arg_2, true);
    let var_2 = !(!(!select(vec3<bool>(var_1.c, var_1.c, false), select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(true, false, var_1.c), vec3<bool>(false, var_1.c, false)), true)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.c)), _wgslsmith_f_op_f32(-836f - arg_1.a.x))), var_1.b ^ _wgslsmith_dot_vec2_u32(~select(vec2<u32>(1u, var_1.b), vec2<u32>(arg_2, 26158u), var_2.x), firstLeadingBit(vec2<u32>(0u, 41419u))), var_1.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f * -1511f) + var_1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)), _wgslsmith_div_f32(230f, _wgslsmith_div_f32(var_1.a.x, arg_0.a.x))))));
    return _wgslsmith_clamp_u32(max(~64937u, ~var_1.b), ~0u, _wgslsmith_div_u32(arg_2, arg_2));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_3(arg_2, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_2.a, arg_1.a.a), vec2<f32>(arg_2.a.x, arg_2.a.x)))), -u_input.b.x & _wgslsmith_div_i32(firstTrailingBit(2147483647i), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2463f)), u_input.a), arg_1.b.b);
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.d.b), arg_1.c.yy);
    var_1 = vec2<u32>(~8487u, 40184u);
    var_1 = arg_1.c.yx;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-468f, _wgslsmith_div_f32(arg_1.d.a.x, 464f), _wgslsmith_f_op_f32(step(arg_1.a.a.x, -642f)), arg_2.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1088f, -179f, arg_2.c, arg_2.a.x) - vec4<f32>(arg_2.a.x, arg_2.a.x, -643f, arg_2.a.x)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.a.x, arg_2.a.x, arg_1.a.a.x, arg_2.c), vec4<f32>(472f, -324f, 1000f, arg_2.c))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.c, arg_1.d.a.x, -763f))))))));
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = !arg_0.a.c;
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_div_i32(2147483647i, -2147483647i) ^ ((-79960i >> (arg_0.a.b % 32u)) | _wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2, -2147483647i), vec3<i32>(-28923i, u_input.a, u_input.b.x)))), ~(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2, -2147483647i), reverseBits(-1i)) | arg_2));
    var_0 = any(vec3<bool>(true, all(!select(vec3<bool>(false, arg_1.c, false), vec3<bool>(true, false, arg_1.c), arg_0.b.c)), arg_1.c));
    var_1 = u_input.b.x;
    var_0 = all(vec3<bool>(!any(!vec4<bool>(arg_0.b.c, arg_1.c, arg_1.c, true)), true, all(select(vec3<bool>(false, arg_0.a.c, arg_0.d.c), vec3<bool>(arg_0.d.c, arg_1.c, false), arg_1.c)) && arg_0.d.c));
    return arg_0.b.a.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<f32>(-1603f, -1023f), 86411u, true), Struct_1(vec2<f32>(242f, -367f), 39368u, true), vec4<u32>(74728u, 13659u, 17718u, 0u), Struct_1(vec2<f32>(-2188f, 1329f), 4294967295u, false)), func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), Struct_2(Struct_1(vec2<f32>(1333f, 1568f), 31179u, false), Struct_1(vec2<f32>(521f, -193f), 4294967295u, true), vec4<u32>(38680u, 72539u, 4294967295u, 1u), Struct_1(vec2<f32>(1000f, -164f), 13016u, true)), Struct_3(vec2<f32>(-1426f, -1571f), 2147483647i, 828f, u_input.a)), max(2147483647i, u_input.a))), 699f), 57549u, true), Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1336f)))), 37144u, true || all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(~4294967295u, 1u, 0u, func_2(vec3<i32>(-1i, -24957i, u_input.b.x), Struct_2(Struct_1(vec2<f32>(-1000f, 878f), 56902u, false), Struct_1(vec2<f32>(1000f, -1000f), 1u, false), vec4<u32>(42369u, 1u, 0u, 0u), Struct_1(vec2<f32>(-243f, -148f), 63874u, false)), Struct_3(vec2<f32>(-465f, 634f), 54047i, 1562f, u_input.a)).b)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1138f + 2281f)), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<f32>(753f, -760f), 1u, true), Struct_1(vec2<f32>(810f, -354f), 4294967295u, true), vec4<u32>(31871u, 23543u, 4294967295u, 4294967295u), Struct_1(vec2<f32>(-459f, 507f), 17066u, true)), func_2(vec3<i32>(1i, u_input.a, 54178i), Struct_2(Struct_1(vec2<f32>(-689f, 1177f), 1u, false), Struct_1(vec2<f32>(-1000f, 120f), 16855u, true), vec4<u32>(4294967295u, 1u, 0u, 27285u), Struct_1(vec2<f32>(-648f, 448f), 0u, false)), Struct_3(vec2<f32>(-1031f, -218f), u_input.a, 1280f, u_input.a)), u_input.b.x))), 0u, true));
    let var_1 = -reverseBits(select(firstTrailingBit(vec3<i32>(-70445i, -1i, u_input.a)) >> ((var_0.c.zzz & var_0.c.zyw) % vec3<u32>(32u)), -(~vec3<i32>(-7686i, u_input.a, 13126i)), select(vec3<bool>(false, true, var_0.d.c), vec3<bool>(var_0.b.c, true, var_0.a.c), var_0.a.c)));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(min(_wgslsmith_sub_i32(abs(u_input.a), _wgslsmith_dot_vec2_i32(u_input.b, var_1.xx)), u_input.a), u_input.b.x), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.a, 32924i, -683i, 44261i)) >> (~firstLeadingBit(var_0.c) % vec4<u32>(32u)), -(~vec4<i32>(var_1.x, u_input.a, u_input.b.x, var_1.x) | (vec4<i32>(1i, var_1.x, u_input.a, var_1.x) & vec4<i32>(-35392i, 1i, u_input.a, -25272i)))), -(_wgslsmith_mod_i32(-45724i, 15977i) | firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.b.x, var_1.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a)))), reverseBits(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_mult_i32(-11272i, var_1.x)), max(var_1.x, var_1.x), -17521i)));
    var_2 = firstTrailingBit((_wgslsmith_div_vec4_i32(vec4<i32>(-27832i, 33293i, 8082i, 4279i), vec4<i32>(-1i, -2147483647i, -1i, 2147483647i)) << (abs(vec4<u32>(var_0.c.x, 4294967295u, var_0.c.x, 4294967295u)) % vec4<u32>(32u))) << ((var_0.c ^ ~vec4<u32>(26549u, 1395u, 53550u, var_0.b.b)) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.x & -1i, ~9855i, _wgslsmith_clamp_i32(u_input.a, u_input.b.x, -3732i), var_2.x), _wgslsmith_div_vec4_i32(-(vec4<i32>(var_2.x, var_2.x, var_2.x, var_1.x) | vec4<i32>(-48351i, u_input.b.x, 4507i, 27400i)), ~select(vec4<i32>(var_2.x, 2147483647i, 48530i, var_2.x), vec4<i32>(-1i, -252i, 11663i, -977i), true)));
    var_2 = countOneBits(abs(countOneBits(vec4<i32>(2147483647i, var_2.x, 0i, var_1.x)) | _wgslsmith_div_vec4_i32(max(vec4<i32>(var_1.x, u_input.a, var_2.x, 2147483647i), vec4<i32>(-50725i, var_2.x, 30730i, 0i)), -vec4<i32>(u_input.a, u_input.b.x, 2147483647i, var_1.x))));
    return StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) - _wgslsmith_f_op_f32(-var_0.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.x - var_0.d.a.x)), _wgslsmith_f_op_f32(round(var_0.a.a.x)), -348f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(2243f + var_0.a.a.x), 570f, 383f))), max(_wgslsmith_sub_vec2_i32(-firstTrailingBit(vec2<i32>(var_2.x, 22112i)), ~_wgslsmith_sub_vec2_i32(u_input.b, u_input.b)), select(min(var_2.wx << (vec2<u32>(var_0.d.b, var_0.b.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(var_1.x, var_2.x))), vec2<i32>(~2147483647i, _wgslsmith_add_i32(u_input.a, 6706i)), false)), var_0.c.wwy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.a.x))), var_0.a.a.x, select(any(vec2<bool>(var_0.b.c, true)), var_0.b.c, var_0.d.c | var_0.b.c))))), vec2<f32>(-269f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(abs(-1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

