struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 16>;

var<private> global2: i32;

var<private> global3: vec4<i32>;

var<private> global4: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<f32> {
    var var_0 = select(!vec3<bool>(!global0.b.c.x, false, any(select(vec4<bool>(true, global0.b.c.x, global0.c.a.c.x, global0.c.b.c.x), vec4<bool>(true, global0.c.b.c.x, false, true), true))), !(!global0.b.c), select(vec3<bool>(any(!vec4<bool>(global0.b.c.x, global0.b.c.x, global0.c.a.c.x, global0.b.c.x)), (73480u | u_input.a) <= u_input.a, global0.b.c.x), select(vec3<bool>(!global0.b.c.x, !global0.c.b.c.x, global0.b.c.x), global0.b.c, !global0.c.a.c), global0.c.b.c));
    let var_1 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zwy, select(~vec3<i32>(20326i, -2147483647i, 1i), -vec3<i32>(u_input.b.x, 41842i, 9258i), global0.b.c)), -vec3<i32>(firstTrailingBit(global0.a), ~global3.x, ~53511i)), Struct_1(u_input.c, 1f, vec3<bool>(min(global0.a, 2147483647i) != global0.a, var_0.x, var_0.x), _wgslsmith_f_op_f32(global0.c.b.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b.e.x, -451f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.b.b, global0.c.b.b) + global0.c.a.e), global0.b.e), !global0.b.c.zx))), global0.c);
    return global0.b.e;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_3(global0.a, global1[_wgslsmith_index_u32(11967u, 16u)], global0.c);
    var var_1 = global1[_wgslsmith_index_u32(26896u, 16u)];
    var_0 = Struct_3(firstTrailingBit(23908i), Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.e.x)) - _wgslsmith_f_op_f32(-686f * global0.b.b))), vec3<bool>(true, true, false), -487f, _wgslsmith_f_op_vec2_f32(func_3())), var_0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1328f, -686f, _wgslsmith_f_op_f32(-global0.c.b.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, 1921f, 243f, var_0.c.b.e.x) - vec4<f32>(357f, global0.b.b, -357f, global0.b.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.e.x, var_0.b.b, var_1.e.x, 1196f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-154f, var_1.b, var_0.b.e.x, 220f), vec4<f32>(global0.c.a.e.x, -594f, var_0.b.e.x, 219f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.b, -1118f, var_0.c.a.d, -1411f), vec4<f32>(312f, -311f, -1000f, 654f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_0.b.d, -841f, var_0.c.a.e.x) + vec4<f32>(-286f, var_1.d, var_0.b.b, global0.b.b)), any(var_0.c.b.c.yx))))));
    let var_3 = var_0.b;
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = vec4<bool>(select(func_2(true), !arg_1.b.c.x, all(vec3<bool>(true, global0.b.c.x, false))), select(false, global0.b.c.x & any(vec2<bool>(true, arg_1.a.c.x)), true), 1u > _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(60529u, global0.c.b.a, 77850u, global0.b.a), vec4<u32>(0u, arg_1.a.a, global0.c.b.a, 5954u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.a, 14492u, 0u, arg_1.a.a), vec4<u32>(u_input.e.x, arg_1.b.a, 0u, u_input.e.x))), vec4<u32>(u_input.a << (arg_1.a.a % 32u), ~15207u, 0u, firstTrailingBit(u_input.a))), !arg_1.b.c.x);
    let var_1 = ~_wgslsmith_add_i32(1i, global3.x);
    global1 = array<Struct_1, 16>();
    global2 = -26360i;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1050f * -702f), -539f), _wgslsmith_f_op_f32(step(global0.c.b.d, 874f)), _wgslsmith_f_op_f32(min(arg_1.a.e.x, _wgslsmith_div_f32(global0.b.b, _wgslsmith_f_op_f32(select(global0.b.d, -415f, false)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(arg_0, arg_0))))), _wgslsmith_f_op_f32(max(-1734f, arg_1.b.d)), arg_0), select(arg_1.a.c, !(!select(var_0.xxz, global0.b.c, vec3<bool>(true, false, arg_1.a.c.x))), vec3<bool>(any(vec4<bool>(true, var_0.x, false, true)), !all(vec4<bool>(true, global0.b.c.x, var_0.x, var_0.x)), all(var_0.ywx)))));
    return select(!(!vec4<bool>(true, !global0.b.c.x, true, global0.c.a.c.x)), !select(vec4<bool>(var_0.x, arg_1.a.c.x, all(vec3<bool>(false, arg_1.a.c.x, false)), !var_0.x), !(!vec4<bool>(false, true, true, arg_1.a.c.x)), vec4<bool>(global0.c.a.c.x && false, false, false, all(var_0.wyy))), !vec4<bool>(true, ~global0.a >= firstLeadingBit(global0.a), true, all(vec2<bool>(var_0.x, false)) & true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = global0.c;
    var var_1 = ~global3.yyw;
    global2 = _wgslsmith_mult_i32(countOneBits(-var_1.x >> (1u % 32u)), u_input.d.x);
    var var_2 = func_1(var_0.a.d, global0.c, vec2<u32>(abs(~arg_2.x), ~arg_1.a >> (~4294967295u % 32u))).ywx;
    let var_3 = Struct_1(_wgslsmith_sub_u32(var_0.b.a ^ arg_3.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(72646u, arg_3.x), 0u), var_0.b.a | reverseBits(4294967295u))), 183f, vec3<bool>(var_0.b.c.x, arg_0.x | false, true), _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) - arg_1.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b, 129f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.e.x - 1305f), _wgslsmith_f_op_f32(-global0.b.e.x)))));
    return u_input.b & abs(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(-21390i);
    global2 = global0.a;
    var var_0 = global0.b;
    global3 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(max(u_input.b, u_input.b) | vec4<i32>(_wgslsmith_div_i32(-17395i, 2147483647i), reverseBits(-10940i), _wgslsmith_div_i32(u_input.d.x, u_input.b.x), firstLeadingBit(global3.x)), vec4<i32>(~(-2147483647i | global3.x), u_input.b.x, _wgslsmith_div_i32(0i, 10171i), global3.x)), vec4<i32>(26368i, _wgslsmith_add_i32(u_input.d.x, _wgslsmith_mod_i32(global3.x, 0i)), -61850i, _wgslsmith_div_i32(global0.a, -_wgslsmith_sub_i32(global0.a, 1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - global0.b.d));
    let var_2 = firstLeadingBit(func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f * -1284f)), Struct_2(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(34631u >> (global0.b.a % 32u), 16u)]), vec2<u32>(~4294967295u, 1u)), global0.c.b, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, var_0.a, 36315u), vec3<u32>(var_0.a, var_0.a, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 183u, 4294967295u), vec3<u32>(1u, u_input.c, global0.b.a)), 4294967295u), vec4<u32>(min(var_0.a, 4294967295u), 4294967295u, u_input.c, 1u)), ~(~(~vec3<u32>(21225u, 7989u, u_input.c)))));
    var_0 = global0.b;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.b.b)), -972f)), _wgslsmith_f_op_f32(sign(global0.c.b.d))))));
    global3 = _wgslsmith_mod_vec4_i32(var_2, _wgslsmith_mod_vec4_i32(~vec4<i32>(reverseBits(-1790i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), global3.x, _wgslsmith_dot_vec4_i32(var_2, vec4<i32>(u_input.b.x, -2147483647i, -19105i, 1i))), -vec4<i32>(var_2.x, global3.x, var_2.x, global0.a) & _wgslsmith_add_vec4_i32(var_2, vec4<i32>(global3.x, -1i, 2147483647i, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(min(global0.b.d, var_3))))), vec2<i32>(func_4(!select(vec4<bool>(global0.b.c.x, global0.c.a.c.x, var_0.c.x, true), vec4<bool>(true, global0.b.c.x, true, true), var_0.c.x), Struct_1(u_input.c, global0.b.d, global0.b.c, _wgslsmith_f_op_f32(ceil(global0.b.d)), _wgslsmith_f_op_vec2_f32(var_0.e + var_0.e)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e.x, 4294967295u, 46591u, 4294967295u), reverseBits(vec4<u32>(1u, var_0.a, 0u, 22320u))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), vec3<u32>(73751u, 1u, var_0.a)))).x, _wgslsmith_sub_i32(1i, global0.a)), vec3<i32>(var_2.x, firstTrailingBit(-global3.x), i32(-1i) * -var_2.x) << (~abs(~vec3<u32>(var_0.a, var_0.a, 8855u)) % vec3<u32>(32u)));
}

