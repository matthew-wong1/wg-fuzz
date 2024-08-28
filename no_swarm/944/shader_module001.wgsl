struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 4621u, 61211u), -1088f, vec2<i32>(19321i, 2147483647i), 4294967295u, 1u);

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1179f - global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1595f - global2.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(1077f * _wgslsmith_f_op_f32(-1254f * _wgslsmith_f_op_f32(-709f + global2.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = -1233i;
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    let var_2 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 159209u), 11760u, 4294967295u) << (_wgslsmith_div_vec3_u32(~(global0.a << (vec3<u32>(4294967295u, 68881u, 2911u) % vec3<u32>(32u))), abs(vec3<u32>(98376u, 4294967295u, 35381u))) % vec3<u32>(32u)), arg_0, global0.c, global0.e, 4058u);
    return ~reverseBits(~_wgslsmith_mod_u32(46074u, global0.e));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = !(!any(vec3<bool>(true, true, true)) & ((abs(arg_0.d) > global0.e) == true));
    var_0 = !any(select(vec2<bool>(true, true), !select(global1[_wgslsmith_index_u32(u_input.a, 1u)], vec2<bool>(false, false), global1[_wgslsmith_index_u32(60830u, 1u)]), true));
    let var_1 = arg_2;
    let var_2 = arg_0;
    let var_3 = false;
    return _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(38196u, ~var_2.e, arg_0.e)), var_2.a, arg_0.a), global0.a);
}

fn func_2() -> i32 {
    let var_0 = global2.a.xwy;
    global2 = Struct_2(global2.a);
    global0 = Struct_1(abs(func_4(Struct_1(reverseBits(global0.a), global0.b, global0.c, func_3(var_0.x), abs(29867u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, 109834u) >> (global0.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(47779u, 21244u, 1u))), Struct_2(_wgslsmith_f_op_vec4_f32(-global2.a)), min(firstTrailingBit(vec4<i32>(-1i, global0.c.x, -57893i, 1i)), ~vec4<i32>(global0.c.x, global0.c.x, global0.c.x, -48676i)))), -2440f, _wgslsmith_add_vec2_i32(global0.c, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.x, -global0.c.x), countOneBits(_wgslsmith_div_vec2_i32(global0.c, vec2<i32>(global0.c.x, 42959i))))), global0.d, ~reverseBits(50306u));
    var var_1 = vec3<bool>(-589f <= _wgslsmith_f_op_f32(-var_0.x), -2147483647i > global0.c.x, all(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global2.a.x, -1284f, global0.b), vec4<f32>(global2.a.x, 1308f, var_0.x, 105f), true)) - vec4<f32>(var_0.x, 892f, global0.b, var_0.x)), vec4<f32>(-768f, _wgslsmith_f_op_f32(round(192f)), global0.b, 442f))));
    return global0.c.x;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>) -> bool {
    let var_0 = global0.c.x;
    let var_1 = _wgslsmith_div_i32(~global0.c.x, arg_1.x);
    var var_2 = Struct_1(global0.a, 483f, select(global0.c | (_wgslsmith_mod_vec2_i32(global0.c, arg_1.yy) ^ vec2<i32>(var_1, global0.c.x)), select(~arg_1.xx, _wgslsmith_sub_vec2_i32(global0.c, vec2<i32>(-6160i, 23461i)), vec2<bool>(true, arg_0)) << (~firstTrailingBit(vec2<u32>(global0.d, 0u)) % vec2<u32>(32u)), !vec2<bool>(all(vec3<bool>(false, arg_0, false)), select(arg_0, false, arg_0))), ~abs(global0.d), ~4294967295u);
    var var_3 = ~8664u;
    global1 = array<vec2<bool>, 1>();
    return any(vec4<bool>(true, !(arg_0 && true), true, true)) | (~(~(-50934i ^ var_2.c.x)) < ~arg_1.x);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = func_5(false, vec3<i32>(global0.c.x, global0.c.x, -_wgslsmith_add_i32(func_2(), ~global0.c.x)));
    var var_1 = -1171f;
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, global2.a.x)) + _wgslsmith_f_op_f32(abs(652f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - 1012f));
    var var_4 = -(~(-41937i) << (global0.a.x % 32u));
    return vec4<bool>(var_0, true, !all(!vec2<bool>(false, var_0)), !(all(global1[_wgslsmith_index_u32(u_input.a, 1u)]) | !var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, u_input.b, 20138u), vec3<u32>(global0.d, 23421u, 8030u)) | _wgslsmith_mult_vec3_u32(~global0.a, ~vec3<u32>(4294967295u, 71037u, u_input.a)), ~global0.a), global0.b, vec2<i32>(global0.c.x >> (~global0.e % 32u), -70942i), _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(max(firstLeadingBit(u_input.b), _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(0u, u_input.a, 1u))), ~global0.a.x, global0.e), 10053u), global0.e);
    global1 = array<vec2<bool>, 1>();
    var var_1 = func_1(_wgslsmith_f_op_f32(global2.a.x - 1803f), -var_0.c.x, Struct_1(var_0.a, 244f, firstTrailingBit(abs(vec2<i32>(-1i, global0.c.x))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(11823u, ~global0.a.x, u_input.b), var_0.e), ~(~(global0.e | 82138u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2() << (~(u_input.b & var_0.e) % 32u), _wgslsmith_mult_vec3_u32(var_0.a, select(vec3<u32>(global0.a.x, var_0.a.x, u_input.b), vec3<u32>(15554u, 89697u, u_input.a), var_1.x) | vec3<u32>(38261u, 21200u, 23122u)) ^ ~var_0.a, ~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(17793u, var_0.e, 9037u), vec3<u32>(u_input.a, global0.d, 4294967295u)), vec3<u32>(u_input.a, var_0.d, var_0.e)) >> ((44455u >> ((u_input.a << (var_0.d % 32u)) % 32u)) % 32u), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(18325u, global0.d, 1u, var_0.e), vec4<u32>(0u, 21065u, 61497u, 4294967295u)), vec4<u32>(72975u, 12231u, var_0.d, var_0.e) | (vec4<u32>(u_input.a, 4294967295u, u_input.b, 1u) & vec4<u32>(5585u, var_0.a.x, u_input.a, var_0.e)))));
}

