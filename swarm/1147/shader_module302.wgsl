struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 24>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(-50505i, 1i, -2962i, 3929i), vec4<i32>(-1i, 2147483647i, 0i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -39005i, -1i), vec4<i32>(6945i, 9329i, 2147483647i, 1i), vec4<i32>(0i, -1i, 11493i, 48201i), vec4<i32>(-57221i, i32(-2147483648), 53430i, i32(-2147483648)), vec4<i32>(-41432i, i32(-2147483648), 7938i, -31867i), vec4<i32>(3355i, 12162i, 1i, 0i), vec4<i32>(0i, 2147483647i, 0i, -1i), vec4<i32>(48879i, -50731i, 71033i, 2147483647i), vec4<i32>(0i, -26847i, 1i, 2147483647i), vec4<i32>(8601i, 0i, 0i, -24411i), vec4<i32>(-67387i, 0i, 11302i, 1i));

var<private> global4: Struct_2 = Struct_2(Struct_1(1i, vec2<bool>(false, true)), vec3<i32>(2147483647i, -63244i, -35987i), 0i, vec4<i32>(-33359i, 12587i, i32(-2147483648), 45604i), 8839i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global1 = array<Struct_2, 24>();
    global3 = array<vec4<i32>, 13>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(f32(-1f) * -462f)));
    var var_0 = vec4<bool>(global4.a.b.x, any(!global4.a.b), any(!select(select(vec3<bool>(false, global4.a.b.x, global4.a.b.x), vec3<bool>(global4.a.b.x, true, false), global4.a.b.x), vec3<bool>(true, global4.a.b.x, true), false)), global4.a.b.x);
    global1 = array<Struct_2, 24>();
    return !(!(~global4.e > 0i));
}

fn func_2() -> i32 {
    let var_0 = global4.d.xxw;
    global3 = array<vec4<i32>, 13>();
    let var_1 = Struct_4(Struct_3(!(~global2.x >= (u_input.b.x | u_input.b.x)), Struct_2(Struct_1(var_0.x, vec2<bool>(true, true)), vec3<i32>(global4.d.x, min(2147483647i, var_0.x), firstLeadingBit(91445i)), global4.c, countOneBits(vec4<i32>(var_0.x, var_0.x, -19176i, u_input.a)) << (~vec4<u32>(global2.x, u_input.b.x, 0u, 0u) % vec4<u32>(32u)), ~var_0.x), vec4<bool>(func_3(), true, !global4.a.b.x, global4.a.b.x)), Struct_1(u_input.a >> (u_input.b.x % 32u), !global4.a.b), vec4<bool>(!all(!vec2<bool>(global4.a.b.x, false)), !(!(!global4.a.b.x)), ~17752u >= _wgslsmith_mult_u32(global2.x, ~33613u), !select(true, !global4.a.b.x, !global4.a.b.x)), global4.b);
    var var_2 = global1[_wgslsmith_index_u32(28491u, 24u)];
    let var_3 = !var_1.c;
    return ~global4.c;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(true, Struct_2(arg_0.a, select(~vec3<i32>(-1i, -12497i, global4.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-3384i, u_input.a, u_input.a), arg_0.d.yxy), false), global4.e, arg_0.d, u_input.a), vec4<bool>(global4.a.b.x, _wgslsmith_mult_i32(u_input.a, 1i) == (17744i >> (u_input.b.x % 32u)), true, (u_input.b.x ^ u_input.b.x) < (u_input.b.x | u_input.b.x))), global4.a, !(!vec4<bool>(global4.a.b.x, global4.a.b.x, any(vec3<bool>(arg_0.a.b.x, false, true)), global4.a.b.x || global4.a.b.x)), global4.b);
    global2 = vec4<u32>(_wgslsmith_div_u32(~0u, firstTrailingBit(u_input.b.x)), global2.x, _wgslsmith_mult_u32(~u_input.b.x, 31007u), abs(min(~_wgslsmith_sub_u32(u_input.b.x, 87426u), select(~global2.x, global2.x, all(vec4<bool>(var_0.c.x, true, var_0.b.b.x, true))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(477f, 1239f)) + _wgslsmith_f_op_f32(sign(-1678f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(246f)) * 1f), true));
    global1 = array<Struct_2, 24>();
    var var_1 = vec2<i32>(0i, -(~max(i32(-1i) * -2147483647i, 1802i)));
    return Struct_2(global4.a, ~(~vec3<i32>(-2147483647i, 1i, -2147483647i) << ((_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, u_input.b.x, global2.x), vec3<u32>(0u, 1u, u_input.b.x)) & vec3<u32>(1u, 0u, 14436u)) % vec3<u32>(32u))), ~_wgslsmith_div_i32(var_1.x, global4.b.x), global3[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(~max(0u, global2.x), _wgslsmith_sub_u32(select(0u, global2.x, true), _wgslsmith_mult_u32(0u, u_input.b.x))), _wgslsmith_mult_u32(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(59247u, 1u, 0u) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 76693u, 0u))), !all(!vec4<bool>(global4.a.b.x, false, false, false))), 13u)], var_1.x);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    global3 = array<vec4<i32>, 13>();
    var var_0 = func_4(Struct_2(Struct_1(func_2(), select(vec2<bool>(true, global4.a.b.x), vec2<bool>(false, global4.a.b.x), true)), abs(vec3<i32>(_wgslsmith_mult_i32(global4.a.a, 23296i), 0i, global4.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, _wgslsmith_add_i32(global4.d.x, global4.e), u_input.a | arg_1.x), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2155i, arg_1.x, global4.c), global4.d.wyx), arg_1)), vec4<i32>(~(~33477i), reverseBits(-2147483647i), -21547i, global4.e), u_input.a));
    let var_1 = Struct_3(global4.a.b.x, Struct_2(func_4(func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 17537u), u_input.b), 24u)])).a, select(global4.b, reverseBits(global4.b), select(vec3<bool>(false, global4.a.b.x, true), select(vec3<bool>(true, false, true), vec3<bool>(var_0.a.b.x, true, var_0.a.b.x), false), vec3<bool>(true, true, global4.a.b.x))), ~var_0.e, _wgslsmith_clamp_vec4_i32(global4.d, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(24074i, -2147483647i, 2147483647i, global4.b.x), global4.d)), select(global3[_wgslsmith_index_u32(0u, 13u)] | vec4<i32>(2147483647i, -50482i, var_0.b.x, u_input.a), var_0.d, vec4<bool>(false, true, false, true))), ~min(35472i ^ var_0.a.a, -82177i)), select(!select(select(vec4<bool>(true, var_0.a.b.x, false, false), vec4<bool>(global4.a.b.x, false, var_0.a.b.x, true), true), vec4<bool>(global4.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), false), select(!vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, var_0.a.b.x), vec4<bool>(false, !var_0.a.b.x, global4.a.b.x, false), !(!vec4<bool>(var_0.a.b.x, false, var_0.a.b.x, var_0.a.b.x))), true));
    global4 = Struct_2(Struct_1(func_2(), var_0.a.b), var_0.b, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-35954i, 1i, u_input.a, global4.e), select(vec4<i32>(12475i, 41046i, -38400i, arg_1.x), global3[_wgslsmith_index_u32(76531u, 13u)], var_1.b.a.b.x))), _wgslsmith_div_vec4_i32(var_0.d, vec4<i32>(var_0.a.a, var_1.b.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(26084i, var_0.d.x, 8107i, arg_1.x), vec4<i32>(u_input.a, var_0.c, -1i, -1i)), max(-1i, u_input.a))), global4.c);
    let var_2 = Struct_4(Struct_3(true, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], !vec4<bool>(var_0.a.b.x, any(vec3<bool>(true, false, var_1.c.x)), false, select(var_1.a, true, true))), func_4(var_1.b).a, vec4<bool>(!(!any(global4.a.b)), true, true, false), var_1.b.b >> (vec3<u32>(select(34129u, ~1u, u_input.b.x <= u_input.b.x), global2.x, global2.x) % vec3<u32>(32u)));
    return global4.d.x;
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    global3 = array<vec4<i32>, 13>();
    global1 = array<Struct_2, 24>();
    global3 = array<vec4<i32>, 13>();
    var var_0 = arg_0.c.zwx;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(min(global2.x, 1u) ^ global2.x, 34667u), ~u_input.b.x & max(global2.x, ~_wgslsmith_mod_u32(65884u, 4294967295u)), 1u, 55663u);
    return StorageBuffer(_wgslsmith_clamp_i32(~60437i, -u_input.a, global4.b.x ^ 48106i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(100f, -1000f, 697f, -726f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1288f, 764f, 751f) - vec4<f32>(1740f, 872f, -592f, 585f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 71814u), global2.yx ^ u_input.b) & vec2<u32>(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.b.x, global2.x), u_input.b >> (vec2<u32>(0u, 55688u) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(global2.x), reverseBits(2902u))), ~1u);
    var var_1 = u_input.b;
    global1 = array<Struct_2, 24>();
    global4 = Struct_2(global4.a, _wgslsmith_sub_vec3_i32(countOneBits(reverseBits(vec3<i32>(53109i, -2147483647i, u_input.a))), _wgslsmith_add_vec3_i32(min(_wgslsmith_div_vec3_i32(global4.b, global4.b), abs(global4.d.yyy)), global4.b)), global4.b.x, vec4<i32>(-1i) * -vec4<i32>(-27177i, -u_input.a, ~global4.b.x, -26511i), i32(-1i) * -27088i);
    global3 = array<vec4<i32>, 13>();
    let x = u_input.a;
    s_output = func_5(Struct_4(Struct_3(all(global4.a.b) & false, Struct_2(global4.a, vec3<i32>(u_input.a, 4513i, -20343i), global4.b.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0, u_input.b), 13u)], func_1(-846f, vec3<i32>(u_input.a, 7304i, 1i))), vec4<bool>(all(vec2<bool>(false, true)), !global4.a.b.x, true, !global4.a.b.x)), Struct_1(~u_input.a, func_4(Struct_2(global4.a, global4.b, global4.a.a, vec4<i32>(u_input.a, 50615i, 0i, 29750i), u_input.a)).a.b), vec4<bool>(false, !global4.a.b.x, global4.a.b.x, true), firstTrailingBit(vec3<i32>(-1i) * -global4.d.xyx)));
}

