struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, true, false, true, false, true, true, false, false, false, true, true, false, false, true, false, true, true, true, false, false, false, true, true);

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 14>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(select(!(!(!vec4<bool>(false, global0.d.a.x, global1[_wgslsmith_index_u32(24906u, 25u)], false))), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(global0.b.a, 25u)], global0.d.a.x, true, global1[_wgslsmith_index_u32(0u, 25u)]), select(vec4<bool>(true, true, global0.e.x, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 25u)], true, true, false), global0.d.a), global0.d.a), !select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0.b.a, 25u)], false), vec4<bool>(false, global0.e.x, global1[_wgslsmith_index_u32(0u, 25u)], false), global0.d.a.x), global0.d.a), vec4<bool>(true, global0.d.a.x, !any(global0.e), false)));
    global1 = array<bool, 25>();
    global3 = array<Struct_2, 14>();
    let var_1 = Struct_3(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.b.b.x, global0.b.a, global0.b.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(83663u, 4294967295u, u_input.d), vec3<u32>(u_input.c, 47491u, 1u), vec3<u32>(0u, 7159u, u_input.d))), vec3<u32>(1u, global0.b.a, u_input.d)));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.b.a, global0.b.a, 34395u, var_1.a.x) & (vec4<u32>(global0.b.b.x, 59850u, 84792u, 64121u) ^ vec4<u32>(var_1.a.x, var_1.a.x, 1u, 136931u))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(49696u, u_input.c, global0.b.a, 1u), vec4<u32>(u_input.d, 48075u, var_1.a.x, 7110u) & vec4<u32>(u_input.d, global0.b.b.x, u_input.c, global0.b.a), firstTrailingBit(vec4<u32>(global0.b.a, 29363u, global0.b.b.x, 4294967295u))))), var_1.a.xz, vec2<f32>(_wgslsmith_f_op_f32(step(1470f, global0.b.c.x)), 456f));
    return _wgslsmith_div_f32(global0.c.x, global0.c.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    global3 = array<Struct_2, 14>();
    let var_0 = Struct_4(0i, Struct_1(arg_1.a.x, vec2<u32>(24990u, arg_1.a.x | 1u) ^ (global0.b.b << (_wgslsmith_mult_vec2_u32(vec2<u32>(29375u, 18435u), vec2<u32>(0u, u_input.d)) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.x * global0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -470f), arg_0.x <= 18654i)))), global0.c, global3[_wgslsmith_index_u32(arg_1.a.x, 14u)], !select(select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 25u)]), vec3<bool>(global0.d.a.x, arg_2, global1[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(true, true, false)), vec3<bool>(global0.d.a.x, true, global0.d.a.x), global0.e), select(vec3<bool>(true, global0.e.x, false), global0.e, select(vec3<bool>(global1[_wgslsmith_index_u32(global0.b.a, 25u)], false, global1[_wgslsmith_index_u32(1u, 25u)]), global0.d.a.ywy, false)), global0.e));
    global3 = array<Struct_2, 14>();
    global0 = var_0;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_f_op_f32(exp2(global0.c.x))))), -522f, var_0.b.c.x);
    return global0.c.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b.x), -7021i, _wgslsmith_dot_vec3_i32(countOneBits(~arg_0.zyx >> (~vec3<u32>(u_input.c, 4294967295u, 97038u) % vec3<u32>(32u))), vec3<i32>(-2147483647i, ~(-arg_0.x), 2147483647i)), arg_1);
    global0 = Struct_4(~arg_1 | u_input.a.x, global0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, Struct_3(arg_2.wzw), true)))), 131f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f - _wgslsmith_f_op_f32(round(690f))))), global0.d, !select(!global0.e, vec3<bool>(false, !global0.e.x, true), false));
    let var_1 = ~(-max(arg_0.x, i32(-1i) * -2147483647i));
    var var_2 = Struct_3(firstLeadingBit(vec3<u32>(~_wgslsmith_div_u32(49617u, arg_2.x), 4294967295u, firstLeadingBit(40534u))));
    var var_3 = global0.d;
    return Struct_1(0u, abs(global0.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.c.x, global0.c.x) * vec2<f32>(global0.b.c.x, -796f)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(max(_wgslsmith_sub_vec4_i32(min(vec4<i32>(30022i, -40795i, global0.a, u_input.a.x), vec4<i32>(-54896i, -2147483647i, global0.a, u_input.e)), vec4<i32>(u_input.e, global0.a, global0.a, u_input.e)), u_input.a), vec4<i32>(max(2147483647i, i32(-1i) * -2147483647i), _wgslsmith_div_i32(global0.a, select(-1i, -2147483647i, true)), global0.a, _wgslsmith_mult_i32(33388i | u_input.e, reverseBits(u_input.a.x)))), Struct_1(firstLeadingBit(~select(global0.b.a, 88444u, global0.e.x)), vec2<u32>(34648u, 0u), global0.c.yz), global0.c, Struct_2(select(select(!global0.d.a, !global0.d.a, select(global0.d.a, vec4<bool>(global0.e.x, global1[_wgslsmith_index_u32(95182u, 25u)], false, true), vec4<bool>(false, false, arg_2, true))), !vec4<bool>(false, global0.d.a.x, global0.d.a.x, true), all(!global0.d.a))), global0.d.a.yyw);
    var var_1 = var_0.b.a;
    let var_2 = arg_1.c.x;
    var var_3 = Struct_1(countOneBits(global0.b.a), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_1.b, arg_1.b, vec2<u32>(1u, arg_1.a)) >> (vec2<u32>(~arg_1.b.x, _wgslsmith_mult_u32(arg_3, 12433u)) % vec2<u32>(32u)), var_0.b.b), arg_1.c);
    var_0 = Struct_4(reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.yzy & vec3<i32>(global0.a, var_0.a, -2147483647i), -(~u_input.a.yyz))), func_2(_wgslsmith_sub_vec4_i32(u_input.b & ~u_input.b, u_input.b), 1i, firstTrailingBit(~countOneBits(vec4<u32>(var_3.b.x, var_3.b.x, var_3.a, u_input.c)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(710f, _wgslsmith_f_op_f32(var_0.b.c.x + var_2))), _wgslsmith_f_op_f32(max(-889f, -629f)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -960f)), global0.c)), var_0.d, vec3<bool>(!(arg_1.b.x == ~var_3.a), arg_2 | true, !(!any(vec2<bool>(true, var_0.e.x)))));
    return reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.a, -49350i, global0.a), 4594i, _wgslsmith_div_i32(-16386i, u_input.a.x)) << (vec3<u32>(reverseBits(1u), abs(1u), arg_3) % vec3<u32>(32u)), countOneBits(_wgslsmith_div_vec3_i32(min(vec3<i32>(-43356i, u_input.b.x, u_input.e), vec3<i32>(u_input.b.x, 1i, global0.a)), vec3<i32>(global0.a, var_0.a, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~func_4(_wgslsmith_f_op_f32(func_1()), func_2(vec4<i32>(1i, u_input.b.x, global0.a, -1i), -1i, vec4<u32>(534u, global0.b.b.x, 61473u, u_input.c)), true, ~u_input.d), -_wgslsmith_clamp_i32(1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 2147483647i), u_input.b.wy))), _wgslsmith_sub_i32(global0.a, -abs(i32(-1i) * -44592i)));
    let var_1 = 56971u;
    var var_2 = Struct_2(global0.d.a);
    var var_3 = func_4(_wgslsmith_f_op_f32(sign(-1000f)), Struct_1(global0.b.a, ~global0.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global0.c.yz, vec2<f32>(-968f, global0.c.x)))))), true, 8133u);
    var_3 = -min(max(abs(global0.a), u_input.b.x), u_input.b.x);
    global2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.a.ww, _wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.a, global0.b.a, 34468u), vec3<u32>(u_input.d, 5599u, global0.b.a)) ^ ~vec3<u32>(var_1, 0u, 0u)) >> (min(vec3<u32>(4294967295u, var_1, 41034u) & vec3<u32>(0u, 21460u, global0.b.b.x), ~vec3<u32>(var_1, 1u, var_1)) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.b.x, global0.b.a, 4294967295u) | vec3<u32>(17626u, var_1, 12433u), min(vec3<u32>(28031u, u_input.d, 4294967295u), vec3<u32>(global0.b.b.x, u_input.d, global0.b.b.x))))), u_input.a.x, _wgslsmith_mult_i32(0i, reverseBits(i32(-1i) * -2147483647i)));
}

