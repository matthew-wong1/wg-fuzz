struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 1i;

var<private> global2: vec3<i32> = vec3<i32>(49967i, -9757i, 1i);

var<private> global3: array<i32, 18> = array<i32, 18>(-36618i, -19878i, 2147483647i, 2147483647i, i32(-2147483648), 33465i, 29773i, 1i, 0i, -43746i, 0i, 41251i, 2182i, -64052i, 0i, 2147483647i, 0i, -1i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = Struct_4(arg_0.b.x, 1833i, vec3<u32>(u_input.b.x, arg_0.a.b, arg_2), Struct_2(!arg_0.a.a, countOneBits(_wgslsmith_clamp_u32(1u, u_input.b.x, arg_2)) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.a.b, u_input.b.x) ^ vec3<u32>(4294967295u, u_input.b.x, arg_0.d), countOneBits(vec3<u32>(54091u, 0u, 30691u)))));
    global3 = array<i32, 18>();
    let var_1 = arg_0.a;
    let var_2 = vec2<i32>(-1i, 52120i);
    global2 = ~(-u_input.c);
    return ~1u;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(859f, _wgslsmith_f_op_f32(step(-527f, -752f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)), 332f))), any(vec4<bool>(true, true, true, false)));
    global1 = select(global2.x, 0i, any(!(!select(vec2<bool>(false, false), vec2<bool>(var_0.b, var_0.b), var_0.b))));
    global0 = var_0.a;
    var var_1 = _wgslsmith_add_i32(1i, -2147483647i);
    var_1 = global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 18u)];
    return Struct_5(Struct_2(vec2<bool>(true, var_0.b), select(1u, ~_wgslsmith_mult_u32(arg_0.x, arg_0.x), true)), vec2<u32>(23326u, func_3(Struct_3(Struct_2(vec2<bool>(true, false), 18761u), vec3<f32>(699f, var_0.a, arg_1), -1i, _wgslsmith_dot_vec3_u32(arg_0.zwz, arg_0.ywz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, var_0.a))), false, u_input.b.x)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-987f + -848f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(824f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2241f + 1000f), 639f))), _wgslsmith_f_op_f32(trunc(-981f))));
    let var_0 = Struct_1(284f, arg_2.x);
    global3 = array<i32, 18>();
    let var_1 = Struct_2(func_2(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.b, 65305u, 32099u, 81160u), vec4<u32>(arg_0.a.b, u_input.b.x, 1u, 27582u))), vec4<u32>(u_input.b.x, func_3(Struct_3(arg_0.a, vec3<f32>(var_0.a, 731f, var_0.a), global2.x, 1u, vec2<f32>(var_0.a, 450f)), arg_2.x, 1u), arg_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 1u), vec2<u32>(arg_0.b.x, arg_0.a.b)))), _wgslsmith_f_op_f32(ceil(-356f))).a.a, 31398u);
    let var_2 = Struct_3(arg_0.a, vec3<f32>(-290f, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) + -1000f))), _wgslsmith_mod_i32(min(abs(1432i), ~arg_1.x << (~var_1.b % 32u)), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-11986i, arg_1.x, -5189i), -1i)), func_2(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(5713u, 0u, u_input.b.x, 234u), max(vec4<u32>(61099u, arg_0.a.b, var_1.b, 4294967295u), vec4<u32>(24170u, 1u, 1u, 66785u))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_0.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(4294967295u, u_input.b.x, var_1.b, 22765u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1251f)))).b.x, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(746f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a, -453f)))))));
    return Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -856f), 1243f)), _wgslsmith_mod_i32(~arg_1.x, firstLeadingBit(i32(-1i) * -2147483647i)), min(~vec3<u32>(_wgslsmith_sub_u32(81633u, 1u), var_1.b, ~0u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.b, ~u_input.b.x, ~4294967295u), _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.b, u_input.b.x, arg_0.b.x), vec3<u32>(u_input.b.x, 4294967295u, var_1.b)))), Struct_2(func_2(vec4<u32>(var_1.b, ~62324u, _wgslsmith_mult_u32(var_2.d, arg_0.b.x), _wgslsmith_mod_u32(1u, u_input.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1355f, var_2.e.x, false)), var_2.b.x))).a.a, max(1u, (1u << (u_input.b.x % 32u)) & var_2.d)));
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = -(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 11178i, -18880i, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<i32>(2147483647i, arg_1, global2.x, global3[_wgslsmith_index_u32(1253u, 18u)])), abs(vec4<i32>(-14587i, global3[_wgslsmith_index_u32(84726u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], 0i))) | min(-7604i, u_input.a)) << (~49107u % 32u);
    var var_1 = func_4(func_2(vec4<u32>(4294967295u, ~select(4294967295u, 48543u, true), abs(118909u), 31510u), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0))), min(select(firstTrailingBit(vec2<i32>(arg_1, var_0)), vec2<i32>(0i, ~global2.x), true), (-global2.yz >> (abs(u_input.b) % vec2<u32>(32u))) ^ global2.yz), vec3<bool>(reverseBits(u_input.c.x) < ~(-var_0), select(-46696i == (global2.x << (4294967295u % 32u)), true, var_0 == -2147483647i), !all(vec4<bool>(false, false, true, false))));
    var var_2 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.x, 0u, 0u, u_input.b.x), vec4<u32>(53083u, u_input.b.x, 1u, var_1.c.x)) << (abs(~vec4<u32>(39621u, 1u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) & ~vec4<u32>(1u, ~var_1.d.b, _wgslsmith_add_u32(u_input.b.x, var_1.c.x << (u_input.b.x % 32u)), 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a));
    global1 = global2.x;
    return var_1.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 35530i;
    var var_0 = _wgslsmith_add_i32(-global2.x, ~(-5982i));
    global2 = u_input.c;
    let var_1 = select(true, false, func_1(-1393f, reverseBits(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(abs(1u), 18u)], 1451i))));
    var var_2 = func_4(Struct_5(func_2(vec4<u32>(1u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, u_input.b.x)), 1u), _wgslsmith_f_op_f32(func_4(Struct_5(Struct_2(vec2<bool>(var_1, true), u_input.b.x), u_input.b), global2.xy, vec3<bool>(var_1, var_1, var_1)).a - -1174f)).a, vec2<u32>(func_2(vec4<u32>(u_input.b.x, u_input.b.x, 36753u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).b.x, u_input.b.x)), _wgslsmith_sub_vec2_i32(global2.zy, u_input.c.xz), vec3<bool>(all(vec4<bool>(var_1 || var_1, false, select(false, true, false), any(vec3<bool>(var_1, true, var_1)))), (global3[_wgslsmith_index_u32(u_input.b.x, 18u)] << (abs(26448u) % 32u)) < u_input.a, any(select(!vec4<bool>(true, false, true, var_1), vec4<bool>(false, var_1, true, true), select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, var_1, true), true))))).d;
    let var_3 = Struct_3(Struct_2(!select(!vec2<bool>(var_2.a.x, var_1), var_2.a, select(var_2.a, vec2<bool>(var_1, var_1), false)), u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), u_input.a, abs(~11502u | (var_2.b >> (var_2.b % 32u))), _wgslsmith_div_vec2_f32(vec2<f32>(-843f, -1176f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, -1485f) - vec2<f32>(-833f, -297f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1067f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1717f), -1171f))));
    var var_4 = Struct_1(_wgslsmith_div_f32(-1151f, -251f), _wgslsmith_sub_u32(firstTrailingBit(~21217u), u_input.b.x | ~4294967295u) > min(~(var_3.a.b << (0u % 32u)), ~4294967295u));
    var var_5 = var_3.d | var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(28813u, u_input.b.x));
}

