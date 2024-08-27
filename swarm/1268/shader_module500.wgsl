struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_vec3_i32(abs(u_input.c), -(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_2, arg_2, -27719i), vec3<i32>(2147483647i, arg_2, arg_2), -vec3<i32>(arg_2, u_input.c.x, -28145i))), -reverseBits(u_input.c));
    var_0 = -vec3<i32>(-26039i, _wgslsmith_add_i32(arg_2, var_0.x), -2147483647i);
    var_0 = countOneBits(~reverseBits(u_input.c) & (_wgslsmith_add_vec3_i32(select(u_input.c, vec3<i32>(arg_2, arg_2, -13030i), vec3<bool>(true, false, false)), u_input.c) & abs(-u_input.c)));
    var var_1 = Struct_2(Struct_1(true, -abs(~arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, -355f, _wgslsmith_f_op_f32(step(arg_0.x, -272f))) - vec3<f32>(-124f, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.x, -630f))))), select(~firstTrailingBit(vec3<u32>(59213u, u_input.b.x, 31485u)), u_input.a, true)), !select(vec2<bool>(false, u_input.b.x <= arg_1), vec2<bool>(true, true), all(vec2<bool>(true, true))), -(~u_input.c.x), abs(select(vec4<u32>(~1u, u_input.b.x, 7537u, ~4294967295u), vec4<u32>(_wgslsmith_mod_u32(arg_1, 4294967295u), 32852u, 9907u, ~arg_1), !all(vec3<bool>(true, true, false)))), arg_0.yyz);
    let var_2 = select(select(vec3<bool>(!any(vec3<bool>(false, true, true)), var_1.b.x, var_1.b.x), select(vec3<bool>(var_1.b.x, all(vec2<bool>(false, var_1.b.x)), var_1.b.x != true), !vec3<bool>(true, var_1.b.x, var_1.a.a), 1167f != _wgslsmith_f_op_f32(sign(-1477f))), var_1.b.x), !select(!select(vec3<bool>(var_1.a.a, var_1.b.x, true), vec3<bool>(var_1.b.x, var_1.a.a, false), var_1.b.x), select(select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.b.x, var_1.b.x), true), vec3<bool>(false, true, var_1.b.x), true), vec3<bool>(var_1.b.x, var_1.a.a, true != var_1.a.a)), vec3<bool>(true & !select(true, var_1.b.x, true), var_1.a.a, true));
    return ~firstLeadingBit(_wgslsmith_mult_vec3_u32(min(_wgslsmith_sub_vec3_u32(var_1.d.wxy, u_input.a), vec3<u32>(4294967295u, arg_1, var_1.d.x)), u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = 120f;
    var var_1 = _wgslsmith_sub_i32(max(-arg_3.b, 11230i | u_input.c.x), -2147483647i);
    let var_2 = vec3<u32>(select(31778u, 42139u, true), arg_3.e.x, ~abs(arg_3.e.x));
    var_1 = arg_3.b;
    let var_3 = arg_0.b.x;
    return ~vec2<u32>(_wgslsmith_mod_u32(reverseBits(~74308u), 4294967295u), 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = vec2<u32>(~(~0u), 1951u) | func_4(arg_2, vec2<i32>(~1i, arg_0.x), vec4<i32>(_wgslsmith_mult_i32(arg_2.a.b, -61715i), 1i, u_input.c.x, 0i), Struct_1(false, _wgslsmith_clamp_i32(15590i, 49416i, u_input.c.x ^ -29760i), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1506f, arg_2.a.d, -685f))), 631f, func_3(vec4<f32>(arg_2.a.d, arg_2.e.x, arg_2.e.x, 1337f), u_input.a.x, -45546i) >> (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_2.a.b, arg_2.a.b, 0i)), -1i | u_input.c.x), ~(~vec2<i32>(arg_2.c, 7635i))), -1i), select(-arg_0.x, _wgslsmith_mod_i32(arg_0.x >> (_wgslsmith_mod_u32(arg_2.a.e.x, u_input.a.x) % 32u), _wgslsmith_div_i32(-22005i, arg_2.c >> (52213u % 32u))), !arg_1.x), -arg_2.c, _wgslsmith_dot_vec4_i32(~(vec4<i32>(arg_2.a.b, arg_2.a.b, 2147483647i, u_input.c.x) & -vec4<i32>(-25565i, u_input.c.x, arg_0.x, 10526i)), ~(vec4<i32>(u_input.c.x, 0i, 1559i, u_input.c.x) & vec4<i32>(arg_0.x, u_input.c.x, -9303i, 0i)) | vec4<i32>(arg_0.x, -2147483647i, arg_0.x, countOneBits(2147483647i))));
    var var_2 = u_input.a.x;
    var var_3 = arg_1.xwy;
    let var_4 = arg_1.xx;
    return arg_2.a.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(-1942f, -647f, false));
    var var_1 = vec2<bool>(arg_1.b.x, arg_1.b.x);
    var_0 = 976f;
    var_1 = vec2<bool>(!(var_1.x && all(vec2<bool>(false, false))), true);
    var var_2 = u_input.c;
    return arg_1.a;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = func_5(Struct_1((_wgslsmith_f_op_f32(abs(-1000f)) <= _wgslsmith_f_op_f32(-arg_0)) != any(vec4<bool>(true, true, false, false)), _wgslsmith_clamp_i32(func_2(-vec2<i32>(arg_1.x, arg_1.x), vec4<bool>(true, true, true, true), Struct_2(Struct_1(false, arg_1.x, vec3<f32>(1431f, -1311f, arg_0), arg_0, vec3<u32>(u_input.b.x, 30725u, u_input.a.x)), vec2<bool>(false, false), u_input.c.x, u_input.b, vec3<f32>(arg_0, -832f, arg_0))), select(~arg_1.x, -u_input.c.x, true), -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(797f, -1586f, -1620f) * vec3<f32>(1200f, -432f, arg_0)) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1608f, _wgslsmith_f_op_f32(-arg_0)))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -459f)), func_4(Struct_2(Struct_1(true, 12360i, vec3<f32>(arg_0, -1030f, -1684f), arg_0, vec3<u32>(53451u, u_input.a.x, u_input.a.x)), vec2<bool>(true, false), -21647i, vec4<u32>(1u, u_input.a.x, 47868u, u_input.a.x), vec3<f32>(-273f, -1000f, 1443f)), ~arg_1.zx, -arg_1, Struct_1(false, arg_1.x, vec3<f32>(arg_0, -1034f, 526f), 714f, vec3<u32>(u_input.a.x, u_input.b.x, 1u))).x, 40251i)), Struct_2(Struct_1(true, -20532i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_vec3_u32(firstLeadingBit(u_input.b.xyw), abs(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), ~firstLeadingBit(7686i), ~vec4<u32>(4294967295u, 90390u, 4294967295u, min(u_input.a.x, 78254u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -919f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1606f, arg_0, arg_0), vec3<f32>(arg_0, 664f, arg_0))) + vec3<f32>(664f, arg_0, arg_0)))), u_input.c.yz);
    var_0 = Struct_1(true, func_5(func_5(func_5(func_5(Struct_1(true, 2147483647i, var_0.c, 492f, vec3<u32>(4294967295u, 99876u, u_input.b.x)), Struct_2(Struct_1(true, arg_1.x, vec3<f32>(arg_0, -684f, -341f), arg_0, vec3<u32>(0u, 72222u, u_input.a.x)), vec2<bool>(var_0.a, var_0.a), var_0.b, u_input.b, vec3<f32>(1000f, var_0.c.x, var_0.c.x)), vec2<i32>(var_0.b, var_0.b)), Struct_2(Struct_1(var_0.a, 46923i, var_0.c, -380f, var_0.e), vec2<bool>(var_0.a, var_0.a), -1i, vec4<u32>(50394u, u_input.b.x, 24294u, u_input.a.x), vec3<f32>(-1182f, arg_0, var_0.d)), ~vec2<i32>(0i, -1024i)), Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, 992f, vec3<u32>(var_0.e.x, var_0.e.x, 40302u)), select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true)), var_0.b >> (66052u % 32u), ~u_input.b, _wgslsmith_f_op_vec3_f32(select(var_0.c, var_0.c, vec3<bool>(false, var_0.a, true)))), arg_1.xw), Struct_2(func_5(Struct_1(var_0.a, 2147483647i, var_0.c, var_0.d, u_input.b.zzz), Struct_2(Struct_1(true, 1i, var_0.c, arg_0, vec3<u32>(17861u, u_input.a.x, 0u)), vec2<bool>(true, false), var_0.b, vec4<u32>(var_0.e.x, u_input.b.x, 15025u, var_0.e.x), var_0.c), abs(vec2<i32>(u_input.c.x, 0i))), !(!vec2<bool>(false, var_0.a)), arg_1.x, vec4<u32>(74374u, 4926u, ~var_0.e.x, ~13582u), _wgslsmith_f_op_vec3_f32(floor(var_0.c))), -firstLeadingBit(abs(vec2<i32>(27439i, 2147483647i)))).b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.d * 739f), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1416f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1955f - var_0.d), 1114f, true)))), var_0.d, func_5(Struct_1(true, i32(-1i) * -1i, var_0.c, arg_0, func_3(vec4<f32>(var_0.c.x, 1218f, var_0.d, var_0.d), u_input.b.x & 1u, 0i)), Struct_2(func_5(Struct_1(true, 2147483647i, vec3<f32>(arg_0, arg_0, 647f), 646f, u_input.b.yxz), Struct_2(Struct_1(true, 11510i, var_0.c, -1000f, vec3<u32>(var_0.e.x, 84298u, 0u)), vec2<bool>(var_0.a, false), 0i, vec4<u32>(97626u, 1u, 5267u, var_0.e.x), vec3<f32>(arg_0, var_0.d, var_0.c.x)), select(vec2<i32>(var_0.b, -47154i), arg_1.xx, var_0.a)), select(vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a)), false), arg_1.x & 0i, reverseBits(~u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, arg_0, var_0.c.x) * var_0.c))), vec2<i32>(~_wgslsmith_clamp_i32(21710i, -11505i, arg_1.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 12396i), arg_1.wyz))).e);
    var_0 = Struct_1(all(!vec4<bool>(true, false & var_0.a, !var_0.a, true)), 1i, vec3<f32>(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + arg_0), -628f), arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-var_0.c.x))))), ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, 22748u, var_0.e.x), _wgslsmith_mod_vec3_u32(u_input.b.xwx, var_0.e), select(vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, var_0.a, true), var_0.a)), u_input.a));
    var var_1 = Struct_1(any(!select(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, var_0.a, false), var_0.a), select(vec3<bool>(true, true, var_0.a), vec3<bool>(false, false, false), false), !var_0.a)), 9696i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - 1000f)), -2509f)), _wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_sub_vec3_u32(~var_0.e, vec3<u32>(~7952u, ~u_input.a.x, 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(697f)) - -860f)))));
    return StorageBuffer(vec2<u32>(0u, 32163u), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.b, u_input.c.x, ~var_0.b), _wgslsmith_div_vec3_i32(select(arg_1.ywz, u_input.c, var_1.a), u_input.c)), var_1.b, abs(_wgslsmith_mod_i32(i32(-1i) * -1i, var_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(178f, arg_0, 1105f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, -407f) - var_0.c))))) + var_1.c), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-553f - -1272f) - _wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2059f * -828f)), _wgslsmith_f_op_f32(floor(132f)))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)), true))), abs(vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(22398i), u_input.c.x & 10065i), u_input.c.x, -2147483647i, -u_input.c.x)));
}

