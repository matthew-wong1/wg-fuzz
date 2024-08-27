struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(42531u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<u32> {
    var var_0 = -936f;
    var_0 = -1145f;
    var var_1 = -1255f;
    var var_2 = 0i;
    var var_3 = u_input.b.x;
    return vec3<u32>(~u_input.a << (reverseBits(~u_input.e.x) % 32u), 0u, 10350u) & u_input.e.zyz;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_5 {
    global0 = array<u32, 2>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1224f, -222f)))));
    var var_1 = Struct_1(func_3(true, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(409f - -1659f))), !arg_1.x, reverseBits(vec4<i32>(_wgslsmith_mod_i32(0i, 14447i), 1i, _wgslsmith_sub_i32(arg_0, arg_0), select(-51083i, 0i, arg_1.x)) | vec4<i32>(-1i, -9546i, firstTrailingBit(1i), -26544i)), _wgslsmith_sub_u32(firstLeadingBit((u_input.a & 26856u) ^ ~u_input.e.x), firstTrailingBit(~(~4294967295u))), _wgslsmith_div_vec3_i32(~(~vec3<i32>(arg_0, 0i, 0i) << (~vec3<u32>(18070u, 26967u, 0u) % vec3<u32>(32u))), -vec3<i32>(_wgslsmith_sub_i32(-31696i, 1i), u_input.b.x, -2147483647i)));
    var_1 = Struct_1(var_1.a, !var_1.b, vec4<i32>((arg_0 & u_input.c) >> (~1u % 32u), 0i, u_input.c, 0i) << (vec4<u32>(~160087u, 1834u, var_1.a.x, ~u_input.e.x) % vec4<u32>(32u)), (~(global0[_wgslsmith_index_u32(4294967295u, 2u)] & 0u) & 85094u) << (0u % 32u), reverseBits(u_input.d.wwy));
    var var_2 = !arg_1.xz;
    return Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, -1601f, -2078f, 775f))))), max(~(~(0u ^ u_input.e.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~max(1u, 0u), 2u)], 2u)]), select(!select(select(vec4<bool>(true, var_1.b, var_1.b, true), vec4<bool>(true, false, true, false), false), !vec4<bool>(var_1.b, arg_1.x, arg_1.x, true), select(vec4<bool>(var_2.x, true, true, var_1.b), vec4<bool>(false, false, var_2.x, arg_1.x), false)), vec4<bool>(all(vec2<bool>(var_2.x, false)), false, arg_1.x, any(vec3<bool>(false, true, var_2.x))), !(arg_0 >= ~var_1.e.x)), 232f);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<u32> {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = u_input.e;
    let var_1 = Struct_2(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(807f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.x, -2068f), 541f, true))), arg_0.d));
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.d.xyz, u_input.d.zwy);
    return ~(~(~reverseBits(vec4<u32>(5089u, 52340u, 4294967295u, global0[_wgslsmith_index_u32(arg_1.a, 2u)]))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = 1i;
    let var_1 = firstLeadingBit(firstLeadingBit(u_input.d.ww));
    var var_2 = _wgslsmith_mult_vec4_i32(~(-(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, var_0, -2147483647i), u_input.d))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(21566i, u_input.b.x, 1192i, var_0)) ^ max(u_input.d, u_input.d), ~u_input.d) << (func_4(func_2(_wgslsmith_mult_i32(arg_1, -79847i), !vec3<bool>(arg_2, arg_2, false)), Struct_2(53209u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1319f))), u_input.e.zy) % vec4<u32>(32u)));
    var_2 = u_input.d;
    var var_3 = Struct_3(arg_0, Struct_1(max(vec3<u32>(global0[_wgslsmith_index_u32(1u, 2u)], u_input.e.x, u_input.e.x), _wgslsmith_div_vec3_u32(~vec3<u32>(10104u, 38672u, u_input.a), ~vec3<u32>(4294967295u, 63128u, 1u))), !(u_input.d.x >= ~1i), vec4<i32>(~550i, -(u_input.b.x | u_input.d.x), 2147483647i, (var_1.x << (global0[_wgslsmith_index_u32(1u, 2u)] % 32u)) << (1u % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(22117u, u_input.a), 27565u), var_2.wzz), Struct_1(u_input.e.xxw, 601f > _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, -2291f)), min(u_input.d, max(select(u_input.d, vec4<i32>(arg_1, var_0, arg_1, 26385i), vec4<bool>(arg_2, arg_2, false, true)), firstLeadingBit(vec4<i32>(var_2.x, -31934i, var_0, arg_1)))), global0[_wgslsmith_index_u32(1u, 2u)], firstTrailingBit(countOneBits(-vec3<i32>(-2147483647i, arg_1, -319i)))), select(u_input.d, u_input.d, select(select(vec4<bool>(arg_2, arg_2, false, arg_2), func_2(-2147483647i, vec3<bool>(true, arg_2, false)).c, !vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !select(vec4<bool>(true, arg_2, true, true), vec4<bool>(false, arg_2, arg_2, false), arg_2), vec4<bool>(true, true, true, true))), Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, arg_0, 487f), vec3<f32>(arg_0, 431f, -474f))))));
    return true;
}

fn func_5(arg_0: f32, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(select(func_2(-reverseBits(u_input.b.x), vec3<bool>(false, !all(vec4<bool>(true, false, false, false)), func_1(func_2(arg_1, vec3<bool>(false, true, true)).a.x, arg_1, false))).a.x, 558f, any(select(vec4<bool>(true, true, func_2(1i, vec3<bool>(true, false, true)).c.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), func_2(1i, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))).c))));
    global0 = array<u32, 2>();
    let var_1 = ~18112u == ~global0[_wgslsmith_index_u32(1u, 2u)];
    return Struct_3(func_2(arg_1, !(!vec3<bool>(true, true, var_1))).a.x, Struct_1(firstTrailingBit(~_wgslsmith_div_vec3_u32(u_input.e.xxw, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(51530u, 2u)], u_input.e.x))), true, vec4<i32>(_wgslsmith_add_i32(20745i, 1i), abs(u_input.b.x), abs(arg_1), _wgslsmith_sub_i32(abs(arg_1), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.b.x, u_input.c, arg_1, arg_1)))), u_input.e.x ^ ((0u << (1u % 32u)) & ~global0[_wgslsmith_index_u32(70150u, 2u)]), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1, 2147483647i, arg_1), countOneBits(abs(u_input.d.zxw)))), Struct_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(13541u, 10111u, 4294967295u), max(u_input.e.xzw, vec3<u32>(u_input.e.x, u_input.e.x, 3158u)))), true, vec4<i32>(0i, 25103i, _wgslsmith_mult_i32(~5877i, _wgslsmith_sub_i32(-1i, u_input.b.x)), _wgslsmith_clamp_i32(abs(2147483647i), u_input.d.x, ~arg_1)), ~52851u, -u_input.b >> (((vec3<u32>(0u, 1u, 20302u) & u_input.e.zzy) ^ (u_input.e.wxz << (vec3<u32>(72187u, 65259u, global0[_wgslsmith_index_u32(1u, 2u)]) % vec3<u32>(32u)))) % vec3<u32>(32u))), _wgslsmith_add_vec4_i32(u_input.d, (u_input.d << (u_input.e % vec4<u32>(32u))) ^ reverseBits(abs(vec4<i32>(u_input.c, -2147483647i, u_input.d.x, -2147483647i)))), Struct_2(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(max(83960u, u_input.e.x), 2u)], func_4(Struct_5(vec4<f32>(836f, arg_0, arg_0, 1000f), 4294967295u, vec4<bool>(var_1, false, true, var_1), arg_0), Struct_2(29169u, vec3<f32>(-664f, -1000f, 1000f)), vec2<u32>(46753u, 14610u)).x), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(0i, vec3<bool>(var_1, var_1, var_1)).a.x, -534f, _wgslsmith_f_op_f32(727f * arg_0)) * vec3<f32>(arg_0, 1f, 181f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 2>();
    let var_0 = func_5(_wgslsmith_f_op_f32(select(137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f - -1739f) - _wgslsmith_f_op_f32(1282f + -348f)) * _wgslsmith_f_op_f32(sign(-566f))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + 638f), firstTrailingBit(1i), true))), -(~(-_wgslsmith_clamp_i32(u_input.d.x, 4558i, u_input.d.x))));
    let var_1 = _wgslsmith_div_i32(u_input.c >> (((~0u >> (firstLeadingBit(u_input.a) % 32u)) | 57930u) % 32u), i32(-1i) * -6948i);
    let var_2 = var_0.e.b.x;
    global0 = array<u32, 2>();
    let var_3 = u_input.d;
    var var_4 = vec4<i32>(max(~min(-2147483647i << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(var_0.d.zy, vec2<i32>(var_0.b.c.x, 1i))), -(~(-7900i))), _wgslsmith_dot_vec2_i32(var_3.yy, abs(var_0.b.c.xz)), 55476i, 60989i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1828f));
}

