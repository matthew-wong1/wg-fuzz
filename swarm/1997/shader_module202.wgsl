struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<bool, 25>;

var<private> global2: array<bool, 8> = array<bool, 8>(true, false, true, true, true, true, true, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, -151f)))), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 21486i, u_input.b.x), u_input.b.zzz)), u_input.b, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1386f + -696f), _wgslsmith_f_op_f32(f32(-1f) * -532f))), Struct_1(firstLeadingBit(vec4<i32>(-40633i, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_u32(7339u, _wgslsmith_dot_vec3_u32(vec3<u32>(43435u, 1930u, 76669u), vec3<u32>(14320u, 69254u, 1u)))), u_input.a), Struct_2(_wgslsmith_f_op_f32(-1f), Struct_1(-select(vec4<i32>(u_input.b.x, 2147483647i, u_input.a, -1i), u_input.b, false)), 4294967295u), Struct_2(266f, Struct_1(-select(vec4<i32>(1i, -2147483647i, u_input.b.x, u_input.a), vec4<i32>(67702i, 31237i, 2147483647i, -29724i), vec4<bool>(global1[_wgslsmith_index_u32(135334u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(3564u, 25u)], global1[_wgslsmith_index_u32(44270u, 25u)]))), 1u), -291f);
    var var_1 = u_input.b;
    let var_2 = ~(firstLeadingBit(abs(vec4<u32>(65850u, 9393u, 65767u, 616u))) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.b.c, 40073u, var_0.b.c), vec4<u32>(6317u, var_0.a.d.c, var_0.b.c, var_0.c.c))) & max(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(44116u, var_0.a.d.c, 15128u, var_0.c.c), vec4<u32>(var_0.c.c, var_0.a.d.c, 1u, var_0.c.c), vec4<u32>(18516u, var_0.c.c, var_0.c.c, 0u))), ~vec4<u32>(8365u, var_0.a.d.c, 0u, countOneBits(8486u)));
    let var_3 = true;
    global1 = array<bool, 25>();
    return var_1.yzy;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(vec2<f32>(573f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f + -342f) * 950f)))), reverseBits(~vec3<i32>(u_input.a, u_input.a, u_input.b.x)) & reverseBits(func_3()), u_input.b, Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(605f, 1000f))))), Struct_1(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -27160i, -31361i, 0i), u_input.b, vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 5693i)), vec4<i32>(-26125i, u_input.b.x, -34446i, -1i), u_input.a == u_input.b.x)), 0u), -12454i);
    let var_1 = u_input.a;
    global2 = array<bool, 8>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1312f), -336f, 1680f));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -1031f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f + var_2.x)), var_2.x)), 1035f));
    return Struct_1(_wgslsmith_sub_vec4_i32(abs(var_0.c), var_0.d.b.a));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1064f)), 881f, -402f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-720f, -803f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f * 1231f) + -856f)))));
    var var_1 = global1[_wgslsmith_index_u32(0u, 25u)];
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    global1 = array<bool, 25>();
    return func_2(vec2<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, -926f >= var_0.x, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> vec3<u32> {
    return reverseBits(vec3<u32>(arg_2, 67182u, 88942u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yz;
    let var_1 = ~(~func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -467f), func_1(), _wgslsmith_dot_vec4_u32(vec4<u32>(54626u, 56615u, 52141u, 12593u), vec4<u32>(10190u, 1u, 1u, 58575u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1284f)))), 4294967295u, 46793i));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(select(-383f, 111f, true))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -217f)))))), ~u_input.b.ywx, vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(-77372i, 1526i), countOneBits(_wgslsmith_mult_i32(1i, u_input.b.x))), 22018i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_0.x, 47812i, u_input.b.x), vec4<i32>(-1i, 47636i, var_0.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -28329i, 13493i, var_0.x), vec4<i32>(-16107i, 6302i, 0i, -55290i))), _wgslsmith_add_i32(1i, ~select(0i, var_0.x, false))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -917f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2324f)))), Struct_1(u_input.b), _wgslsmith_sub_u32(var_1.x, var_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, func_1().a.x, i32(-1i) * -u_input.b.x), vec3<i32>(u_input.b.x | 0i, func_1().a.x, 2147483647i) ^ (~vec3<i32>(var_0.x, u_input.b.x, u_input.a) & vec3<i32>(1i, 1i, -20103i))));
    var var_3 = var_2.d;
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(var_2.d.c, 12884u, var_3.c, 1107u ^ ~var_3.c)), countOneBits(_wgslsmith_div_vec2_i32(func_1().a.zz, u_input.b.wz) << (var_1.zy % vec2<u32>(32u))), min(67836u, _wgslsmith_mod_u32(var_1.x, var_2.d.c)));
}

