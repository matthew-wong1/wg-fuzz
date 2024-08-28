struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> vec2<i32> {
    let var_0 = !(!(arg_2 < (i32(-1i) * -16367i)));
    var var_1 = Struct_2(arg_1.b.a.zy, Struct_1(vec3<bool>(arg_1.b.d.x, all(arg_1.b.d.xx), true), 1f, vec2<i32>(u_input.b, 2147483647i), select(!(!vec3<bool>(var_0, var_0, var_0)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_1.a.x, false), vec3<bool>(var_0, false, false)), arg_1.b.d, var_0), vec3<bool>(true, true, true)), 2158f), ~(~(~(-vec2<i32>(arg_2, arg_1.b.c.x)))), _wgslsmith_add_u32(63041u, abs(24597u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_1.b.e, var_1.b.b, _wgslsmith_f_op_f32(floor(-1702f))), vec4<f32>(_wgslsmith_f_op_f32(floor(180f)), _wgslsmith_div_f32(var_1.b.e, arg_0.x), -909f, _wgslsmith_div_f32(-608f, arg_0.x)))) - vec4<f32>(-1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -101f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-781f))), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.b.e, -1468f)), -414f)), arg_0.x, _wgslsmith_f_op_f32(trunc(-182f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x, -215f, _wgslsmith_f_op_f32(f32(-1f) * -500f)))), false));
    var var_3 = vec2<u32>(0u, 11647u) >> ((u_input.d.ww >> (_wgslsmith_add_vec2_u32(u_input.d.wy, vec2<u32>(countOneBits(arg_1.d), ~0u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_4 = _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_3.x, 17052u), vec3<u32>(u_input.d.x, arg_1.d, 79610u))) >> (vec3<u32>(var_3.x | select(u_input.a, 0u, var_1.b.a.x), arg_1.d, 1u) % vec3<u32>(32u)), ~((max(vec3<u32>(arg_1.d, 0u, u_input.a), vec3<u32>(39015u, arg_1.d, 18411u)) >> (u_input.d.xwx % vec3<u32>(32u))) | vec3<u32>(1u >> (0u % 32u), ~arg_1.d, 29029u)), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 12708u, var_1.d), vec3<u32>(arg_1.d, var_1.d, 0u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_3.x, var_1.d), ~u_input.d.wyx)));
    return -var_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_1(!vec3<bool>(arg_0.b.a.x, 1u > arg_0.d, !arg_0.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1206f * arg_0.b.e), -1048f, false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.b))))), select(-arg_3.yz, ~arg_0.c, arg_0.b.a.xx), vec3<bool>(select(arg_0.b.c.x < 1i, arg_2.x, false), arg_0.b.a.x, firstLeadingBit(-54795i) != firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, 36243i, arg_3.x))), _wgslsmith_f_op_f32(step(arg_0.b.b, arg_0.b.e)));
    global0 = array<Struct_2, 29>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -498f);
    var var_2 = _wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(~u_input.d, ~vec4<u32>(u_input.a, 51120u, 21532u, u_input.a)), vec4<u32>(~arg_0.d, 29057u, ~(u_input.a ^ arg_0.d), 1u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) + -259f);
    return ~abs(~firstTrailingBit(i32(-1i) * -58019i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = arg_1.a.xy;
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_2 = Struct_2(vec2<bool>(true, false & arg_1.a.x), arg_1, vec2<i32>(firstTrailingBit(-1i), func_4(Struct_2(vec2<bool>(false, false), Struct_1(vec3<bool>(true, true, true), 250f, var_1.b.c, vec3<bool>(false, false, arg_1.a.x), -1603f), func_3(vec3<f32>(var_1.b.e, 973f, -1798f), Struct_2(vec2<bool>(arg_1.d.x, var_1.a.x), Struct_1(vec3<bool>(false, var_1.b.a.x, false), -1000f, vec2<i32>(arg_0.x, arg_0.x), arg_1.a, 1349f), u_input.e.xy, u_input.a), -2147483647i), u_input.d.x), ~_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(var_1.d, u_input.a, var_1.d, var_1.d), u_input.d), select(arg_1.a.zz, arg_1.d.zx, any(vec3<bool>(var_0.x, false, false))), vec4<i32>(arg_1.c.x, -2147483647i, 9053i, u_input.e.x) << (countOneBits(u_input.d) % vec4<u32>(32u)))), u_input.a);
    global0 = array<Struct_2, 29>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f - -1321f) + -1079f));
    return (_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(-2147483647i, arg_1.c.x, var_1.b.c.x)), -(~vec3<i32>(-1i, arg_0.x, var_1.b.c.x)), vec3<i32>(_wgslsmith_div_i32(52878i, u_input.e.x), _wgslsmith_sub_i32(55208i, 2147483647i), u_input.c.x)) >> ((vec3<u32>(2630u, 0u << (var_2.d % 32u), ~var_1.d) & u_input.d.xzy) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(~(~1u), max(4294967295u, ~31192u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 70934u), 1u | var_1.d)), u_input.d.yyw) % vec3<u32>(32u));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_2, 29>();
    let var_0 = Struct_1(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1183f)), _wgslsmith_f_op_f32(f32(-1f) * -366f)) <= -201f, true, false), 422f, vec2<i32>(u_input.c.x, -abs(u_input.c.x)), !select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1060f))), _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(round(1239f)))), -342f)));
    var var_1 = vec4<i32>(reverseBits(max(-40713i, arg_0.x)), ~(~var_0.c.x), arg_0.x, u_input.c.x);
    var_1 = min(vec4<i32>(func_2(var_1.xw, Struct_1(vec3<bool>(var_0.d.x, true, false), var_0.b, var_1.zx, var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1292f))).x, -_wgslsmith_sub_i32(24553i, 1i), var_1.x, 1i), ~firstLeadingBit(_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_0.x, var_1.x, arg_0.x, -24117i), vec4<i32>(30956i, -53346i, 12451i, 2147483647i), var_0.d.x), select(vec4<i32>(u_input.c.x, -2147483647i, 100728i, -2147483647i), vec4<i32>(9443i, 1i, -2147483647i, u_input.c.x), vec4<bool>(var_0.d.x, false, var_0.a.x, false)))));
    let var_2 = ~(-4908i >> (_wgslsmith_mult_u32(u_input.a, abs(abs(41887u))) % 32u));
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1012f, -584f, -707f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b.b - arg_0.b.b)))));
    var var_1 = Struct_2(arg_0.b.d.xy, func_5(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.b.c.x, arg_1, arg_2.b.c.x), func_2(u_input.c, arg_0.b)), ~3870i)), u_input.e.zz, _wgslsmith_mod_u32(~0u, ~abs(arg_0.d)));
    var_1 = arg_2;
    global0 = array<Struct_2, 29>();
    return _wgslsmith_f_op_f32(f32(-1f) * -762f);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(vec2<bool>(true, true), func_5(arg_0.b.c), -(select(-vec2<i32>(-1i, arg_2.c.x), _wgslsmith_mod_vec2_i32(u_input.e.xz, u_input.e.xz), !arg_1) & firstLeadingBit(arg_2.c | u_input.e.zy)), arg_0.d);
    var_0 = global0[_wgslsmith_index_u32(min(~abs(_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_0.d, 50331u), u_input.d.yx), ~u_input.d.xx)), 5298u), 29u)];
    var var_1 = var_0.b;
    global0 = array<Struct_2, 29>();
    var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(var_0.d) << ((reverseBits(0u) & u_input.d.x) % 32u), 29u)];
    return 1i;
}

fn func_7(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 29>();
    let var_0 = abs(u_input.a);
    let var_1 = arg_0;
    var var_2 = vec4<bool>(arg_2, !arg_2, true, arg_2);
    var var_3 = vec3<i32>(-1i) * -arg_0.zzx;
    return Struct_1(vec3<bool>(true, any(select(!vec2<bool>(var_2.x, true), vec2<bool>(true, true), -5390i >= var_1.x)), arg_2), _wgslsmith_f_op_f32(f32(-1f) * -939f), vec2<i32>(-1i) * -vec2<i32>(u_input.e.x, u_input.e.x), var_2.www, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-846f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = true;
    var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u & _wgslsmith_sub_u32(~abs(1u << (1u % 32u)), ~u_input.a | ~4294967295u), 29u)];
    let var_3 = Struct_2(var_2.a, Struct_1(!vec3<bool>(true, false, all(vec4<bool>(var_2.b.d.x, false, var_2.a.x, true))), var_2.b.e, -_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(2640i, -2409i)), u_input.e.yz), var_2.b.a, _wgslsmith_f_op_f32(f32(-1f) * -1061f)), vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(var_2.b.c.x, -1i, u_input.c.x))), _wgslsmith_sub_i32(var_2.c.x, var_2.c.x ^ -64361i)) | select(-min(vec2<i32>(u_input.c.x, var_2.b.c.x), u_input.c), select(u_input.c, -vec2<i32>(u_input.b, -15804i), any(var_2.b.d)), !any(var_2.b.a)), ~(~55365u));
    let var_4 = func_7(vec4<i32>(0i, func_6(var_3, false, Struct_1(vec3<bool>(var_0, var_0, var_0), _wgslsmith_f_op_f32(func_1(var_3, 36258i, var_3)), var_2.c, vec3<bool>(var_2.a.x, false, var_3.b.a.x), _wgslsmith_f_op_f32(abs(var_2.b.b)))), _wgslsmith_dot_vec3_i32(~u_input.e | vec3<i32>(var_2.b.c.x, 2147483647i, 0i), vec3<i32>(1i, firstTrailingBit(23483i), ~2147483647i)), var_3.c.x), u_input.d.ww, any(!(!(!vec4<bool>(var_3.a.x, var_2.a.x, false, var_3.a.x)))), _wgslsmith_mod_vec3_i32(min(-vec3<i32>(u_input.b, 2147483647i, var_2.b.c.x), vec3<i32>(1i, u_input.b ^ var_3.c.x, _wgslsmith_sub_i32(-10770i, 28215i))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e >> (vec3<u32>(4294967295u, u_input.d.x, var_2.d) % vec3<u32>(32u)), u_input.e), countOneBits(_wgslsmith_add_vec3_i32(u_input.e, u_input.e)))));
    let var_5 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1966f, 1091f, var_3.b.e)))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.e, var_4.b, var_2.b.b), vec3<f32>(var_2.b.b, -546f, var_2.b.e))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(428f, var_4.b), _wgslsmith_f_op_f32(ceil(var_3.b.b)), _wgslsmith_f_op_f32(-var_2.b.e)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1811f, -1734f, var_2.b.b) + vec3<f32>(-389f, -1378f, -480f))))))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

