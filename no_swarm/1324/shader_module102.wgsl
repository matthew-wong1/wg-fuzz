struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

var<private> global4: array<f32, 24> = array<f32, 24>(2004f, -518f, 1257f, -612f, 1077f, -1219f, 326f, -1000f, -1000f, 1000f, -1143f, -1375f, -1000f, 978f, 1068f, 331f, 845f, 1757f, -1196f, 1000f, 477f, 344f, 1000f, 2275f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    global0 = array<vec3<bool>, 24>();
    let var_0 = 35887i;
    var var_1 = global2.a >> (~59428u % 32u);
    let var_2 = false;
    let var_3 = Struct_2(_wgslsmith_mult_vec2_u32(~select(~vec2<u32>(u_input.a.x, 48537u), ~u_input.a.wx, vec2<bool>(arg_1, global3.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 7296u), vec2<u32>(u_input.a.x, u_input.a.x)), select(u_input.a.wz, vec2<u32>(u_input.a.x, u_input.a.x), true) >> (vec2<u32>(84375u, u_input.a.x) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_add_u32(20246u, u_input.a.x), _wgslsmith_mod_u32(~29245u << (select(u_input.a.x, u_input.a.x, var_2) % 32u), min(~u_input.a.x, ~1u))), vec2<u32>(15841u, 11299u), ~(~u_input.a.wx), arg_2);
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-33941i, 0i), ~var_0, (12599i ^ arg_3.x) << (_wgslsmith_add_u32(u_input.a.x, var_3.d.x) % 32u)), -vec3<i32>(countOneBits(0i), 5225i, min(1i, arg_3.x))), arg_3.x);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> vec4<f32> {
    let var_0 = !(!vec2<bool>(true, all(!global0[_wgslsmith_index_u32(u_input.a.x, 24u)])));
    var var_1 = _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(arg_0.a.x, 1u)), u_input.a.x);
    var_1 = firstLeadingBit(87811u);
    var var_2 = u_input.a.x;
    let var_3 = -reverseBits(-func_3(arg_0.e.a, var_0.x, Struct_1(2147483647i), firstLeadingBit(vec3<i32>(-22537i, -13282i, global2.a))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(327f, 1000f))), global4[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec2<bool> {
    global2 = Struct_1(55400i);
    global2 = Struct_1(-2147483647i);
    global3 = vec2<bool>(!((reverseBits(arg_1.x) >> ((1u | u_input.a.x) % 32u)) != 0i), !any(vec4<bool>(true, global3.x, any(vec4<bool>(global3.x, global3.x, global3.x, true)), any(global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))));
    global4 = array<f32, 24>();
    global3 = !select(!select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), global3.x), !vec2<bool>(false, global3.x), all(vec2<bool>(false, false))), select(vec2<bool>(true, global3.x), !vec2<bool>(global3.x, true), global3.x), select(!vec2<bool>(global3.x, global3.x), !select(vec2<bool>(global3.x, false), vec2<bool>(false, global3.x), vec2<bool>(global3.x, false)), !(!vec2<bool>(true, global3.x))));
    return !(!(!select(vec2<bool>(true, global3.x), select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), global3.x), select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, true), true))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_2(abs(max(max(~u_input.a.yw, u_input.a.yw), u_input.a.xx)), _wgslsmith_clamp_vec2_u32(u_input.a.wx, ~vec2<u32>(countOneBits(16336u), ~u_input.a.x), abs(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.yw)))), u_input.a.wz, abs(u_input.a.yz) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), (u_input.a.wx & vec2<u32>(u_input.a.x, u_input.a.x)) ^ u_input.a.xy) % vec2<u32>(32u)), Struct_1(0i));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.a.wwz, ~u_input.a.zzy);
    var var_2 = abs(u_input.a.x);
    let var_3 = Struct_1(_wgslsmith_add_i32(global2.a, 37776i) & -61209i);
    let var_4 = arg_0.zw;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), -676f, arg_1.x & (arg_2.x || (arg_2.x && global3.x)))) + _wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wwz, vec3<u32>(1u, var_0.b.x, var_0.d.x)), ~45631u), vec2<u32>(0u, ~u_input.a.x), u_input.a.xx, var_0.d, Struct_1(abs(-53444i))), true, _wgslsmith_div_f32(-299f, _wgslsmith_f_op_vec4_f32(func_2(Struct_2(var_0.c, vec2<u32>(var_0.d.x, var_0.b.x), var_0.c, u_input.a.wz, Struct_1(-21914i)), false, _wgslsmith_f_op_f32(-arg_0.x))).x))).x);
}

fn func_1() -> i32 {
    let var_0 = false;
    let var_1 = vec2<bool>(var_0, false);
    let var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(306f, global4[_wgslsmith_index_u32(18102u, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], -138f) - vec4<f32>(-1000f, 824f, global4[_wgslsmith_index_u32(u_input.a.x, 24u)], global4[_wgslsmith_index_u32(u_input.a.x, 24u)])))), !(!vec2<bool>(true, var_1.x)), select(func_4(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(1u, u_input.a.x), u_input.a.xz, u_input.a.wz, Struct_1(-26172i)), !var_1.x, global4[_wgslsmith_index_u32(~u_input.a.x, 24u)])), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global2.a, global2.a), vec3<i32>(8577i, global2.a, 15455i)), vec3<i32>(global2.a, global2.a, 59943i) << (u_input.a.xyw % vec3<u32>(32u)), !vec3<bool>(true, false, var_0)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, -1i), vec2<i32>(0i, 1i)), max(vec2<i32>(global2.a, -2147483647i), vec2<i32>(global2.a, 0i)))), vec2<bool>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(27023u, 24u)], 1127f, global4[_wgslsmith_index_u32(u_input.a.x, 24u)], -1013f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -49553i, -55966i), vec3<i32>(global2.a, 3698i, -6686i), vec3<i32>(-2147483647i, global2.a, 0i)), ~vec2<i32>(global2.a, -17931i)).x, var_0), var_1)));
    let var_3 = Struct_1(func_3(_wgslsmith_mult_i32(global2.a, 1i) ^ 0i, true, Struct_1(14815i), firstLeadingBit(vec3<i32>(4956i, -1i, 1i) >> (u_input.a.wzw % vec3<u32>(32u)))) << (u_input.a.x % 32u));
    let var_4 = ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    return ~(~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-1i);
    global0 = array<vec3<bool>, 24>();
    let var_0 = vec2<u32>(countOneBits(u_input.a.x), u_input.a.x);
    let var_1 = _wgslsmith_mult_i32(select(global2.a, _wgslsmith_mod_i32(max(global2.a, global2.a), 2147483647i), global3.x), _wgslsmith_div_i32(func_1(), _wgslsmith_clamp_i32(-global2.a, global2.a, _wgslsmith_mod_i32(global2.a, 1i)))) & global2.a;
    global2 = Struct_1(_wgslsmith_clamp_i32(~(~2147483647i) & var_1, 1i, var_1));
    let var_2 = var_0.x;
    let var_3 = select(true, global3.x, true == all(vec4<bool>(true, global3.x & global3.x, all(vec2<bool>(global3.x, global3.x)), global3.x)));
    global2 = Struct_1(~firstTrailingBit(~global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(max(0u, var_2), firstLeadingBit(1u)), 24u)], 442f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(34537u, 24u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1130f, global4[_wgslsmith_index_u32(var_2, 24u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(11945u, 24u)])), -238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec2<u32>(2752u, 4620u), var_0, u_input.a.xx, u_input.a.xz, Struct_1(global2.a)), false, 704f)).x - _wgslsmith_f_op_f32(f32(-1f) * -977f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1336f, -1000f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 24u)] + global4[_wgslsmith_index_u32(u_input.a.x, 24u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-558f, 761f, global4[_wgslsmith_index_u32(u_input.a.x, 24u)])))))), vec3<i32>(-_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global2.a, 36244i, -396i), ~vec4<i32>(var_1, -1i, 0i, -2147483647i)), var_1, -1215i), i32(-1i) * -47851i);
}

