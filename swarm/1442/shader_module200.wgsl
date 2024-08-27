struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(34876i, -1475f, vec2<f32>(1998f, -516f), vec2<u32>(0u, 115392u));

var<private> global1: u32;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-23585i, 1000f, vec2<f32>(-1507f, -949f), vec2<u32>(42870u, 4294967295u)), Struct_1(1522i, -360f, vec2<f32>(-1257f, -836f), vec2<u32>(25552u, 4294967295u)), Struct_1(-877i, 776f, vec2<f32>(-494f, 741f), vec2<u32>(42252u, 53395u)), Struct_1(-1i, 655f, vec2<f32>(1000f, 789f), vec2<u32>(7490u, 4294967295u)), Struct_1(0i, 539f, vec2<f32>(-1054f, 1348f), vec2<u32>(62806u, 73879u)), Struct_1(-3267i, -142f, vec2<f32>(2157f, 1000f), vec2<u32>(1u, 45509u)), Struct_1(27612i, -374f, vec2<f32>(-806f, 1000f), vec2<u32>(7195u, 30753u)), Struct_1(0i, 249f, vec2<f32>(619f, 798f), vec2<u32>(4294967295u, 1u)), Struct_1(-26578i, -173f, vec2<f32>(-318f, -581f), vec2<u32>(0u, 4294967295u)), Struct_1(2147483647i, 735f, vec2<f32>(1231f, -900f), vec2<u32>(0u, 0u)), Struct_1(32500i, -137f, vec2<f32>(530f, -2514f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(-39295i, -1436f, vec2<f32>(-106f, 424f), vec2<u32>(4294967295u, 49284u)), Struct_1(4376i, -1508f, vec2<f32>(1205f, -310f), vec2<u32>(1u, 3568u)), Struct_1(15389i, -3669f, vec2<f32>(744f, 1740f), vec2<u32>(30924u, 1u)), Struct_1(0i, -264f, vec2<f32>(347f, -2776f), vec2<u32>(1u, 1u)));

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_1.yzz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * 1358f), _wgslsmith_f_op_f32(325f - global0.c.x), _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(364f, 560f, arg_0), arg_1.yxw)))));
    let var_1 = global2[_wgslsmith_index_u32(abs(~70433u), 15u)];
    var var_2 = global2[_wgslsmith_index_u32(abs(u_input.c.x), 15u)];
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(62695u), 15u)];
    let var_4 = _wgslsmith_f_op_f32(ceil(677f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.x), -1335f));
    return ~global3.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_u32(~func_3(422f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-625f, global0.c.x, global0.b, -790f), vec4<f32>(global0.b, -1000f, arg_0.b, 912f)))), ~abs(-43949i)), global3.x);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(~select(arg_2, arg_0.d.x, arg_1), arg_0.d.x), 0u, ~u_input.a.x), abs(select(vec3<u32>(arg_2, u_input.a.x, abs(global0.d.x)), reverseBits(vec3<u32>(u_input.a.x, global3.x, 0u)), vec3<bool>(any(vec2<bool>(arg_1, arg_1)), false, arg_1)))), 15u)];
    var_0 = 1u;
    let var_1 = select(u_input.b.xyy, _wgslsmith_div_vec3_i32(~vec3<i32>(-u_input.b.x, 2147483647i, firstTrailingBit(-51578i)), select(u_input.b.xxz, vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, 2147483647i, arg_0.a), !select(vec3<bool>(true, arg_1, false), vec3<bool>(true, false, false), true))), select(vec3<bool>(arg_1, !(arg_0.d.x == arg_0.d.x), !arg_1), !(!vec3<bool>(true, arg_1, false)), any(vec2<bool>(true, true)) & !(arg_1 == arg_1)));
    global3 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.d.x >> (arg_2 % 32u), global3.x), global3.x), max(54292u, min(~73004u, ~74808u))) >> (~((max(vec2<u32>(38372u, 4294967295u), u_input.c) | vec2<u32>(1u, 1u)) >> (_wgslsmith_add_vec2_u32(global0.d, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global3.x), global0.d)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return reverseBits(~firstTrailingBit(max(var_1.zz, var_1.zx << (vec2<u32>(arg_2, global3.x) % vec2<u32>(32u)))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(func_2(Struct_1(-reverseBits(14307i), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.c, global0.c, false)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.b, global0.c.x), global0.c)), ~(u_input.a | global0.d)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false), vec2<bool>(true, true))), 4294967295u << (_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(18206u), _wgslsmith_mod_u32(u_input.c.x, global3.x)) % 32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.d.x, 1i), -u_input.b.xw), u_input.b.xz));
    var var_1 = false;
    global1 = ~max(64698u, 5027u);
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(106767u, select(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(66159u, 29408u), global3.x << (u_input.a.x % 32u)), true)), global0.d.x, u_input.c.x);
    global0 = global2[_wgslsmith_index_u32(u_input.a.x, 15u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.b), -1000f, -1348f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global0.c.x, arg_0), vec3<f32>(558f, global0.c.x, -908f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, -1506f, 1526f)), true)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = countOneBits(~(_wgslsmith_dot_vec2_i32(~u_input.b.yz, _wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(-1i, u_input.b.x))) & _wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(arg_1.a, 1i, u_input.b.x, 2147483647i))));
    global3 = ~firstTrailingBit(vec2<u32>(15030u, ~51186u)) | ~vec2<u32>(0u, abs(global0.d.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-291f, arg_1.b, -238f, global0.c.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1041f, global0.b, -1000f, 440f))) + vec4<f32>(360f, arg_0.x, 2390f, 234f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.x, 2141f, arg_1.c.x, arg_0.x), vec4<f32>(360f, arg_1.b, -1094f, arg_1.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1627f, 294f, 703f)))), all(vec3<bool>(true, true, true)) & true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(640f)), arg_1.b, _wgslsmith_f_op_f32(-arg_0.x)) + vec4<f32>(-1488f, -263f, global0.c.x, arg_1.b)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.b, global0.c.x, -239f) * vec4<f32>(arg_1.c.x, -163f, arg_1.b, 166f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, arg_1.b, arg_1.c.x, 762f)), vec4<bool>(true, true, false, var_0 >= 68332i)))));
    global2 = array<Struct_1, 15>();
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(-abs(~u_input.b.xx), abs(vec2<i32>(var_0, arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(580f, _wgslsmith_f_op_f32(max(826f, _wgslsmith_f_op_f32(select(var_1.x, global0.c.x, true)))), true))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, arg_0.x))), vec2<u32>(32121u, min(~countOneBits(arg_1.d.x), ~(~global0.d.x))));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.d.x, global0.d.x, 11385u), ~abs(_wgslsmith_add_vec4_u32(~vec4<u32>(18181u, 18099u, 29660u, 1208u), _wgslsmith_mult_vec4_u32(vec4<u32>(34536u, 27320u, 1757u, 26399u), vec4<u32>(70552u, u_input.a.x, 14054u, global3.x)))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.c.x, 15u)];
    var var_2 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(617f, global0.b), -232f)), u_input.b)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1(global0.b, vec4<i32>(-2147483647i, global0.a, -1i, global0.a))).x, _wgslsmith_f_op_f32(min(var_1.b, -867f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.b)), 1449f)), _wgslsmith_f_op_f32(-var_1.c.x))), global2[_wgslsmith_index_u32(~select(1u, _wgslsmith_mult_u32(114550u, global3.x), true) & ~(~36260u | _wgslsmith_div_u32(u_input.a.x, u_input.c.x)), 15u)], 1u);
    var_1 = global2[_wgslsmith_index_u32(~5023u, 15u)];
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(select(-562f, global0.c.x, false));
    var var_5 = select(vec4<bool>(true, var_3, !(34099u >= firstTrailingBit(var_0.x)), all(select(vec4<bool>(var_3, var_3, false, var_3), !vec4<bool>(var_3, false, var_3, false), true))), !vec4<bool>(all(select(vec4<bool>(var_3, true, var_3, false), vec4<bool>(true, false, var_3, false), vec4<bool>(false, var_3, false, true))), true, true, var_3), true);
    var_5 = select(select(vec4<bool>(true, any(!vec2<bool>(var_5.x, var_3)), true, var_3 || var_3), vec4<bool>(var_3, any(vec4<bool>(var_5.x, var_5.x, var_5.x, true)), var_5.x, select(true, !var_5.x, true)), true), !vec4<bool>(var_3, all(var_5.zyz), global0.d.x >= ~var_1.d.x, true), true);
    global2 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, -1i, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(round(-684f))), 11056u);
}

