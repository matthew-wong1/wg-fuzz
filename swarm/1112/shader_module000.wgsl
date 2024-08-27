struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: vec4<i32> = vec4<i32>(5348i, 31145i, 2147483647i, -1i);

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 16364i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_1 = ~u_input.a.x;
    var var_2 = !(!any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))));
    return reverseBits(~vec4<i32>(~select(global2.x, 1i, false), 42076i, -(~35808i), _wgslsmith_clamp_i32(-global2.x, ~0i, -75037i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: i32) -> vec4<bool> {
    global2 = _wgslsmith_add_vec4_i32(func_3(Struct_1(vec3<u32>(u_input.c, 1u, 1u))) ^ _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(arg_2, 27925i, global3.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], u_input.b.x, global2.x, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(~arg_2, firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global2.x), vec4<i32>(-26373i, arg_2, -20498i, arg_2)), _wgslsmith_clamp_i32(101287i, 59921i, global2.x)), reverseBits(vec4<i32>(global2.x, -1i, 0i, global3.x)))) & (vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(~vec4<i32>(13205i, global0[_wgslsmith_index_u32(95549u, 20u)], arg_2, -1i), -vec4<i32>(-71541i, -10735i, arg_2, 15454i)));
    var var_0 = vec2<i32>(u_input.b.x, -1i);
    let var_1 = Struct_2(-u_input.b, u_input.a, -574f, u_input.c);
    var var_2 = var_1.a.x;
    let var_3 = vec4<u32>(min(var_1.b.x, ~(u_input.c & u_input.c)), max(32825u, 4294967295u ^ u_input.c), ~1u, _wgslsmith_clamp_u32(reverseBits(4294967295u), 4708u, 36336u)) >> (firstLeadingBit(max(_wgslsmith_mod_vec4_u32(vec4<u32>(15453u, 5732u, u_input.c, u_input.a.x) << (vec4<u32>(78338u, 9223u, u_input.c, var_1.d) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, var_1.b.x, var_1.b.x), vec4<u32>(u_input.c, u_input.a.x, 63945u, var_1.d))), vec4<u32>(u_input.a.x ^ 46876u, ~var_1.d, u_input.c, u_input.a.x))) % vec4<u32>(32u));
    return vec4<bool>(!((u_input.c <= u_input.c) | true) != !(!(!arg_0.x)), !arg_0.x || arg_0.x, !arg_0.x, all(select(!arg_0, arg_0, (arg_0.x && arg_0.x) & all(vec4<bool>(false, false, arg_0.x, arg_0.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_2 {
    global2 = select(vec4<i32>(global3.x, -global3.x, 2586i, 2147483647i), _wgslsmith_div_vec4_i32(~(_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], 1i, -3574i), vec4<i32>(u_input.b.x, global2.x, 302i, 1i)) & _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 20u)]), vec4<i32>(-38912i, global2.x, 2147483647i, 2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.b.x, 16044i), select(-1i, 0i, true), firstLeadingBit(-4929i)), firstTrailingBit(vec4<i32>(global3.x, global3.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], global3.x) << (vec4<u32>(u_input.a.x, 16437u, 4294967295u, u_input.c) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(-4293i), _wgslsmith_div_i32(-22567i, global0[_wgslsmith_index_u32(4294967295u, 20u)]), u_input.b.x, _wgslsmith_dot_vec3_i32(global2.yyy, global2.xzx)))), false);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(699f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-911f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(476f)), 908f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1575f - -168f) + -1000f)), arg_0.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(453f)))), -125f)), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.c)) == countOneBits(_wgslsmith_sub_u32(u_input.c, u_input.c)))));
    var var_1 = Struct_1(vec3<u32>(firstTrailingBit(1u) & 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(27874u, firstLeadingBit(38778u), _wgslsmith_dot_vec3_u32(vec3<u32>(36790u, 41574u, 1u), u_input.a)), ~u_input.a << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, 3785u), u_input.a) % vec3<u32>(32u))), ~0u));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1653f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - 232f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, var_0)), var_0)))));
    let var_3 = !(!vec2<bool>(arg_0.x, _wgslsmith_f_op_f32(-var_2) <= _wgslsmith_f_op_f32(select(var_2, var_0, arg_0.x))));
    return global1[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_div_u32(4294967295u, 1u)) >> (u_input.a.x % 32u)), 13u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(countOneBits(vec3<u32>(_wgslsmith_mod_u32(0u, u_input.c), _wgslsmith_clamp_u32(arg_0.b.x, arg_2.a.x, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, arg_2.a.x, 51467u), vec4<u32>(arg_2.a.x, arg_0.d, u_input.a.x, arg_0.d))) | abs(~vec3<u32>(45481u, 14873u, 4294967295u))));
    global0 = array<i32, 20>();
    let var_1 = Struct_2(~arg_0.a, arg_0.b, 472f, ~select(countOneBits(var_0.a.x), 16920u >> (1u % 32u), all(vec3<bool>(false, false, true))));
    let var_2 = firstLeadingBit(firstTrailingBit((arg_0.b.x ^ ~24913u) ^ 96120u));
    let var_3 = !(!(!select(true, true, u_input.b.x > 1i)));
    return var_0.a;
}

fn func_1(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = Struct_1(vec3<u32>(2033u, u_input.c, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u) << (~u_input.c % 32u), u_input.c)));
    global1 = array<Struct_2, 13>();
    var var_1 = vec3<i32>(-(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.a.x, 20u)]) ^ ~(-2147483647i)), global3.x, global3.x) >> (func_5(func_4(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), func_2(vec3<bool>(false, false, false), arg_0.yy, 0i), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true)), vec2<f32>(1644f, _wgslsmith_f_op_f32(f32(-1f) * -1252f)), Struct_1(var_0.a)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_clamp_u32(48837u, 0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.a) ^ _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a, var_0.a), u_input.a), u_input.a & vec3<u32>(u_input.c << (43136u % 32u), ~0u, ~var_0.a.x)));
    var var_3 = -_wgslsmith_mod_i32(firstTrailingBit(func_3(Struct_1(vec3<u32>(4294967295u, 1u, 0u))).x), var_1.x);
    return vec2<bool>(any(vec4<bool>(true, true, any(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(~0u, ~u_input.c), u_input.a.x), 13u)];
    global1 = array<Struct_2, 13>();
    let var_1 = Struct_2(select(firstTrailingBit(vec2<i32>(4915i & var_0.a.x, select(global0[_wgslsmith_index_u32(0u, 20u)], global2.x, false))), var_0.a, select(!func_1(vec4<f32>(383f, var_0.c, var_0.c, var_0.c)), select(vec2<bool>(false, false), vec2<bool>(true, true), func_2(vec3<bool>(true, false, true), vec2<f32>(var_0.c, var_0.c), -9885i).zy), false)), ~reverseBits(var_0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) - _wgslsmith_f_op_f32(-859f - -1422f))))), u_input.a.x);
    var var_2 = !func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1300f, 943f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1046f, 221f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-141f, -949f) * vec2<f32>(1393f, var_1.c)), true))), var_0.a.x).x;
    var var_3 = func_2(select(func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, var_1.c), vec2<f32>(-1747f, -342f))), 2147483647i).zwy, vec3<bool>(true, true, true), !(!func_2(vec3<bool>(true, false, false), vec2<f32>(-795f, var_0.c), global3.x).wwz)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1583f, -286f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1267f, var_1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -218f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-544f, var_1.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(491f, var_1.c) * vec2<f32>(var_0.c, -857f)))))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(var_1.a.x | -27635i), ~firstTrailingBit(global3.x), 34953i), 2147483647i)).wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1548f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + 753f)))), vec3<i32>(global2.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(10571u, 20u)]) & -2147483647i, func_3(Struct_1(vec3<u32>(71690u, var_1.b.x, var_1.b.x))).x, 0i), max(var_1.a.x, 22682i << ((var_1.d & var_0.d) % 32u))), -vec2<i32>(min(global0[_wgslsmith_index_u32(34059u, 20u)], func_4(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)).a.x), reverseBits(~30990i)), max(~var_1.d, var_1.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-636f, -2113f)))))))));
}

