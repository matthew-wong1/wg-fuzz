struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 30>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<bool>, 31>;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> i32 {
    global4 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b, arg_0.a.x))) + _wgslsmith_f_op_vec2_f32(-arg_0.a)) * global4.a))), arg_2.zy, Struct_1(abs(arg_2.zy), _wgslsmith_f_op_f32(-626f + 248f), -u_input.a, global0.d, -2147483647i), ~_wgslsmith_add_vec2_u32(min(countOneBits(vec2<u32>(0u, u_input.b)), vec2<u32>(0u, 4294967295u)), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(64103u, u_input.b), vec2<u32>(global2.x, 0u)))), ~1u);
    global0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~(global0.a.x >> (global4.c.a.x % 32u)), _wgslsmith_clamp_u32(126721u, arg_3.x, ~arg_1)), arg_0.c.a), _wgslsmith_f_op_f32(trunc(550f)), ~firstTrailingBit(2147483647i), all(!select(vec2<bool>(global0.d, global4.c.d), vec2<bool>(arg_0.c.d, true), vec2<bool>(arg_0.c.d, global0.d))) != global4.c.d, -28547i);
    global3 = array<vec3<bool>, 31>();
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.x, global0.a.x, global0.a.x) << (vec3<u32>(0u, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(global0.a.x, global4.c.a.x, arg_3.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(40993u, arg_1, 1u), ~(vec3<u32>(22320u, global2.x, 1u) >> (global2.xzx % vec3<u32>(32u))))), vec3<u32>(abs(_wgslsmith_mod_u32(abs(114644u), firstLeadingBit(arg_1))), abs(max(arg_1, arg_3.x)) >> (global0.a.x % 32u), arg_0.b.x));
    let var_1 = global0.b;
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<u32>) -> u32 {
    global4 = global1[_wgslsmith_index_u32(581u, 30u)];
    global3 = array<vec3<bool>, 31>();
    let var_0 = _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(func_3(global1[_wgslsmith_index_u32(arg_0.b.x, 30u)], 4294967295u, vec3<u32>(45000u, global4.d.x, arg_2.x), vec4<u32>(1u, global2.x, 1u, u_input.b)) ^ reverseBits(12030i), -7648i)), vec2<i32>(2147483647i, -1i), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1925i, u_input.a, -2147483647i, arg_0.c.e), -vec4<i32>(-65399i, 32119i, -37436i, u_input.a)), ~(-41663i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a ^ -1i, _wgslsmith_add_i32(49477i, -1i)), global4.c.e)));
    let var_1 = Struct_2(Struct_1(~max(_wgslsmith_sub_vec2_u32(global2.wz, global2.yx), ~vec2<u32>(global4.b.x, 0u)), global0.b, 4569i, arg_1.x, u_input.a >> (~arg_2.x % 32u)), Struct_1(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) * arg_0.a.x)), _wgslsmith_div_i32(u_input.a, -2147483647i), !(!arg_0.c.d), -43100i), vec3<i32>(-max(_wgslsmith_mult_i32(global0.c, -2147483647i), global0.c), -(_wgslsmith_sub_i32(43483i, u_input.a) & global4.c.e), 12101i), Struct_1(vec2<u32>(global2.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.b), arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 2116f))), 26266i, global0.d, global4.c.c), Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.c.a, vec2<u32>(global0.a.x, 10504u)), abs(vec2<u32>(arg_2.x, 4294967295u))) << (arg_0.d % vec2<u32>(32u)), 1f, countOneBits(global4.c.e), !all(select(vec2<bool>(false, arg_0.c.d), vec2<bool>(global0.d, arg_0.c.d), vec2<bool>(true, arg_1.x))), var_0.x));
    var var_2 = vec3<u32>(var_1.b.a.x, _wgslsmith_mult_u32(arg_2.x, _wgslsmith_clamp_u32(~firstLeadingBit(54108u), ~arg_2.x, _wgslsmith_clamp_u32(29586u | arg_2.x, global4.b.x & global0.a.x, _wgslsmith_div_u32(98734u, u_input.b)))), 1u);
    return ~83046u;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(global0.c, u_input.a) ^ min(abs(-1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.a), -2147483647i)));
    var var_1 = vec3<u32>(~(~49220u) << (((func_2(global1[_wgslsmith_index_u32(7125u, 30u)], vec2<bool>(true, global0.d), vec4<u32>(global4.c.a.x, 4294967295u, global0.a.x, global0.a.x)) << (global4.d.x % 32u)) & ~global4.e) % 32u), u_input.b, abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~global0.a.x, _wgslsmith_mult_u32(global4.e, 1u)), ~u_input.b)));
    var var_2 = Struct_1(firstLeadingBit(~_wgslsmith_add_vec2_u32(global4.b, vec2<u32>(global2.x, u_input.b)) >> (_wgslsmith_div_vec2_u32(~global4.c.a, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), global4.d)) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(596f, 241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))))), global0.c, !global4.c.d, min((_wgslsmith_add_i32(u_input.a, global0.c) ^ global0.c) << (~global0.a.x % 32u), 1i));
    let var_3 = Struct_2(global4.c, Struct_1(vec2<u32>(select(min(4294967295u, global2.x), _wgslsmith_dot_vec2_u32(var_2.a, global2.zz), false), _wgslsmith_dot_vec4_u32(~vec4<u32>(56158u, 1u, var_2.a.x, 1u), vec4<u32>(108859u, global2.x, 33735u, 79106u))), _wgslsmith_f_op_f32(min(1000f, 608f)), func_3(Struct_3(arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_2.a.x), vec2<u32>(u_input.b, 1u)), global4.c, var_2.a, var_1.x), 4294967295u, vec3<u32>(u_input.b, 4294967295u & var_2.a.x, ~33828u), vec4<u32>(firstTrailingBit(global4.e), var_2.a.x, min(u_input.b, var_2.a.x), 1u)), ((var_2.c >= u_input.a) == (arg_0.x != 184f)) && all(!vec2<bool>(var_2.d, false)), -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.e, global0.c), 17819i), global4.c.e | -19437i, -9922i), vec3<i32>(19463i, var_2.c, global4.c.c)), global4.c, Struct_1(abs(vec2<u32>(max(0u, global0.a.x), 4294967295u >> (var_2.a.x % 32u))), global0.b, (-global0.e >> (firstTrailingBit(var_2.a.x) % 32u)) | (i32(-1i) * -2147483647i), true, firstLeadingBit(u_input.a)));
    var var_4 = vec3<i32>(~(-2147483647i), 2147483647i, -1i);
    return select(_wgslsmith_add_i32(~(-1062i), abs(global4.c.c & u_input.a) ^ -76280i), reverseBits(select(_wgslsmith_div_i32(var_3.b.e, global0.e), ~7271i, var_3.b.d)) ^ (((u_input.a & u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, var_2.a.x), vec4<u32>(global0.a.x, 1281u, global2.x, 45314u)) % 32u)) & 40759i), !global4.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(firstLeadingBit(global4.d.x) << (~1u % 32u), _wgslsmith_add_u32(~min(1584u, global2.x) >> (u_input.b % 32u), _wgslsmith_mult_u32(select(global2.x ^ 37617u, global4.d.x, true), global0.a.x)), ~42675u, 47372u & _wgslsmith_sub_u32(_wgslsmith_div_u32(select(u_input.b, 6943u, global0.d), ~u_input.b), ~0u));
    var var_0 = Struct_1(abs(vec2<u32>(global4.e, global4.c.a.x)), global0.b, -30444i, all(!global3[_wgslsmith_index_u32(u_input.b, 31u)]), -19750i);
    var var_1 = _wgslsmith_f_op_f32(712f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)))));
    var var_2 = ~vec2<i32>(-global4.c.e, 1121i);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, _wgslsmith_f_op_f32(trunc(var_0.b))))), _wgslsmith_add_vec2_u32(~vec2<u32>(global2.x, global4.d.x), var_0.a), global4.c, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), global2.wz), 20495u);
    global4 = var_3;
    var var_4 = select(firstTrailingBit(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, -1i), vec2<i32>(var_0.e, 16739i)), min(global4.c.e, global4.c.e), func_1(vec2<f32>(-414f, 160f), vec3<f32>(var_0.b, -1321f, var_0.b), -1000f), var_2.x), vec4<i32>(~u_input.a, global4.c.c, var_0.c, 0i), var_3.c.d)), vec4<i32>(-reverseBits(reverseBits(var_0.e)), global0.c, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_3.c.c, 5965i, var_2.x, 0i), vec4<i32>(0i, -2147483647i, -2147483647i, global0.c), true) << (vec4<u32>(global4.c.a.x, u_input.b, global2.x, global0.a.x) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(-1i), var_2.x, -1i, var_0.e >> (1u % 32u))), ~(-select(67512i, -2147483647i, var_3.c.d))), !select(!select(vec4<bool>(var_3.c.d, global0.d, false, false), vec4<bool>(true, global4.c.d, var_0.d, global0.d), true), select(!vec4<bool>(global4.c.d, false, global0.d, global0.d), vec4<bool>(global4.c.d, true, true, var_3.c.d), true), !(!vec4<bool>(true, false, global4.c.d, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~0i) | -(-1i >> (global4.b.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c | u_input.a, ~var_4.x), vec2<i32>(global4.c.e, firstLeadingBit(-8868i))), 1i, ~abs(min(var_3.c.c, var_0.e))), global0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1274f, global0.b, -1000f, -129f)))) - vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1003f))), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_0.b, global4.c.b, -707f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, 1676f, -297f, var_3.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_3.c.b, 332f, 323f) + vec4<f32>(global4.a.x, global4.a.x, 761f, var_3.c.b)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-895f, -734f, -1000f, -1042f), vec4<f32>(global0.b, var_0.b, 311f, 914f))))))));
}

