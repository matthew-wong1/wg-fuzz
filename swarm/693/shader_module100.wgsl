struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-1i, -1i), vec2<i32>(64852i, 2147483647i), vec2<i32>(51806i, 0i), vec2<i32>(i32(-2147483648), -9851i), vec2<i32>(53989i, -17618i), vec2<i32>(-16141i, -1i), vec2<i32>(-65628i, 1998i), vec2<i32>(-18243i, i32(-2147483648)));

var<private> global3: array<vec2<bool>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    global2 = array<vec2<i32>, 8>();
    let var_0 = Struct_3(~vec3<i32>(-1i, countOneBits(global1.b.x), u_input.d.x) << (_wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.c.zxx | u_input.c.zzw), u_input.c.xzz) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(arg_1.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1192f)) + arg_1.x)), global1.b, true, ~_wgslsmith_add_u32(656u & u_input.e, ~0u)), global1.a);
    let var_1 = _wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(f32(-1f) * -946f));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.a, -1101f, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, -1000f, 1085f) - vec3<f32>(110f, -378f, global1.a.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, 1353f, 272f)))))));
    var var_3 = Struct_4(_wgslsmith_add_vec4_i32(u_input.d, u_input.d), u_input.c.wxw, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(39559u, 1u, global1.d), _wgslsmith_sub_vec3_u32(~vec3<u32>(global1.d, 68223u, 113763u), u_input.c.zzz)), select(~(~u_input.c.xwz), firstTrailingBit(vec3<u32>(281u, u_input.e, 103310u)) & ~vec3<u32>(7220u, 0u, 4294967295u), true)));
    return abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, global1.d), var_3.b.xy), ~vec2<u32>(global1.d, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(28507u, var_0.c.d), var_3.c.yz)), 4294967295u));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.a, 1000f, 115f, 1065f), vec4<f32>(global1.a.a, global1.a.a, global1.a.a, 273f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2557f, 671f, 506f, global1.a.a) * vec4<f32>(-1046f, 1397f, global1.a.a, global1.a.a)))), vec4<f32>(_wgslsmith_f_op_f32(step(global1.a.a, _wgslsmith_f_op_f32(global1.a.a + global1.a.a))), global1.a.a, global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.a))))))));
    global1 = Struct_2(global1.a, ~vec3<i32>(firstLeadingBit(u_input.d.x) >> (arg_1.b.x % 32u), -_wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a), max(firstLeadingBit(1i), arg_1.a.x)), !(!(!all(vec3<bool>(true, false, true)))), 1u);
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(countOneBits(u_input.b), _wgslsmith_sub_i32(2147483647i, 0i)), -1i) | abs(vec2<i32>(1i, -global1.b.x)), vec2<i32>(-65433i, -1i));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, -122f, var_0.x, -116f)), vec4<f32>(var_0.x, var_0.x, global1.a.a, 1454f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(356f, 1751f, global1.a.a, -982f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -1000f, var_0.x, -907f))))))));
    global1 = Struct_2(Struct_1(503f), vec3<i32>(52173i, 2147483647i, countOneBits(u_input.d.x)), _wgslsmith_div_f32(global1.a.a, 1550f) == _wgslsmith_f_op_f32(f32(-1f) * -1399f), _wgslsmith_mult_u32(arg_0, ~u_input.c.x & ~1u));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.a.x, global1.b.x, i32(-1i) * -24530i), u_input.b), arg_1.a.x, i32(-1i) * -2147483647i), countOneBits(-vec3<i32>(_wgslsmith_mult_i32(1i, arg_1.a.x), firstLeadingBit(u_input.a), 0i)));
}

fn func_2() -> u32 {
    global1 = Struct_2(Struct_1(_wgslsmith_div_f32(global1.a.a, global1.a.a)), abs(func_4(~func_3(1u, vec2<f32>(-487f, -1333f), u_input.d.zw), Struct_4(countOneBits(u_input.d), firstLeadingBit(u_input.c.zzz), ~u_input.c.wyx))), global1.c, u_input.e);
    let var_0 = countOneBits(i32(-1i) * -firstLeadingBit(u_input.d.x | -9639i));
    let var_1 = Struct_4(vec4<i32>(-2147483647i, 1i, var_0, _wgslsmith_sub_i32(-17475i & global1.b.x, -2147483647i)), ~reverseBits(~(u_input.c.xyy | u_input.c.zyy)), u_input.c.xww);
    global2 = array<vec2<i32>, 8>();
    var var_2 = max(global1.d, _wgslsmith_add_u32(global1.d, ~global1.d));
    return 1u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(u_input.c.wxx, vec3<u32>(39073u, 58426u, max(1u, ~u_input.c.x)));
    var var_1 = abs(-1i) << (_wgslsmith_mod_u32(~u_input.c.x, ~func_2()) % 32u);
    let var_2 = vec4<u32>(~3831u << (global1.d % 32u), abs(0u), global1.d | abs(0u), u_input.e) | u_input.c;
    let var_3 = func_4(var_2.x, Struct_4(u_input.d, max(~vec3<u32>(1u, u_input.c.x, var_2.x), ~var_2.xxw), ~(vec3<u32>(4294967295u, global1.d, 0u) ^ _wgslsmith_mod_vec3_u32(u_input.c.xzw, vec3<u32>(0u, 25248u, 8146u))))).x;
    global1 = Struct_2(global1.a, _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-10707i, 2835i, var_3)), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_3, var_3, arg_0.x), global1.b), abs(global1.b >> (vec3<u32>(var_2.x, global1.d, 69690u) % vec3<u32>(32u)))) << (min(reverseBits(firstTrailingBit(u_input.c.zwy)), u_input.c.wzz) % vec3<u32>(32u)), global1.d != ~var_2.x, u_input.e);
    return Struct_2(global1.a, _wgslsmith_mod_vec3_i32(select(u_input.d.zxw, select(vec3<i32>(var_3, var_3, var_3), reverseBits(vec3<i32>(u_input.b, global1.b.x, 1i)), u_input.e >= 69536u), !global1.c), _wgslsmith_clamp_vec3_i32(select(arg_0, vec3<i32>(34385i, 64007i, 2147483647i), !vec3<bool>(global1.c, global1.c, false)), max(-arg_0, _wgslsmith_mult_vec3_i32(global1.b, vec3<i32>(arg_0.x, -15513i, u_input.b))), arg_0)), global1.c, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 21>();
    global0 = array<Struct_3, 23>();
    var var_0 = _wgslsmith_f_op_f32(869f - 1588f);
    global0 = array<Struct_3, 23>();
    global1 = Struct_2(Struct_1(global1.a.a), -vec3<i32>(max(select(global1.b.x, 10728i, true), u_input.b), u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.b.x, 35036i), 1i)), !global1.c, (0u ^ u_input.c.x) | ~_wgslsmith_add_u32(firstLeadingBit(31627u), _wgslsmith_add_u32(0u, global1.d)));
    global1 = func_1(vec3<i32>(-(~u_input.a), 1i, 30325i) >> (u_input.c.yxx % vec3<u32>(32u)));
    let var_1 = vec3<bool>(true, !(!(_wgslsmith_f_op_f32(ceil(-778f)) > _wgslsmith_f_op_f32(sign(global1.a.a)))), all(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xwx, vec3<u32>(u_input.c.x, 13456u, 0u)), vec3<u32>(0u, 1808u, global1.d) & u_input.c.zyz), 21u)]) | false);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1437f);
    var var_2 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(-(~2147483647i), -global1.b.x), ~_wgslsmith_div_i32(u_input.b, 4851i), -1i, -5032i), countOneBits(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(29833u, 0u, u_input.e), u_input.c.xxx))), vec3<u32>(~(~21739u), _wgslsmith_add_u32(~func_1(u_input.d.wyz).d, ~u_input.c.x), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, global1.b.x) & -(~vec2<i32>(-1i, global1.b.x)), max(_wgslsmith_div_vec2_i32(vec2<i32>(11999i, 2482i), ~vec2<i32>(var_2.a.x, 2147483647i)), func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, var_2.a.x, global1.b.x), u_input.d.zwx)).b.xx)), var_2.a ^ max(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-56299i, u_input.d.x, 2147483647i, u_input.b), vec4<i32>(50772i, global1.b.x, u_input.a, 18382i), vec4<i32>(u_input.a, var_2.a.x, -16936i, 49990i))), -abs(vec4<i32>(u_input.b, var_2.a.x, var_2.a.x, var_2.a.x))), -_wgslsmith_mult_i32(42795i, -11173i), global1.b.x);
}

