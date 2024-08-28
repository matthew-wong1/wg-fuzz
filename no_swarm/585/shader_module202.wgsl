struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

var<private> global1: Struct_2;

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -54593i, 16729i);

var<private> global3: u32 = 17798u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = select(vec2<bool>(!(!global1.c.b.x == true), true != global1.c.b.x), select(global1.c.b.yz, vec2<bool>(all(vec2<bool>(false, global1.c.b.x)), global1.c.b.x), global0[_wgslsmith_index_u32(arg_0, 26u)]), true);
    var var_1 = 284f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(min(680f, global1.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.b)), -1000f, global1.c.b.x)), -2828f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, global1.b, -822f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1229f, -1325f) - vec3<f32>(1058f, 608f, 212f)))))));
    var_0 = select(select(global1.c.b.xx, select(!select(global1.c.b.xy, global1.c.b.xx, global1.c.b.zz), !vec2<bool>(false, global1.c.b.x), select(vec2<bool>(var_0.x, false), global1.c.b.xx, !global0[_wgslsmith_index_u32(4294967295u, 26u)])), select(vec2<bool>(any(vec4<bool>(false, false, true, true)), true), !(!global1.c.b.yy), !(!vec2<bool>(false, global1.c.b.x)))), vec2<bool>(!any(vec2<bool>(global1.c.b.x, var_0.x)), global1.c.b.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 0u), ~vec2<u32>(global1.c.a, arg_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, _wgslsmith_mult_u32(0u, u_input.b)), firstTrailingBit(vec2<u32>(4294967295u, 26167u)))), 26u)]);
    global1 = Struct_2(58586u, _wgslsmith_div_f32(_wgslsmith_div_f32(-253f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.b))))), global1.b), global1.c);
    return global2.x;
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_clamp_u32(1u, global1.c.a, countOneBits(min(global1.a, ~u_input.b))), _wgslsmith_f_op_f32(-global1.b), global1.c);
    var var_1 = u_input.d.x & (firstTrailingBit(func_3(~1u)) ^ u_input.d.x);
    global2 = _wgslsmith_div_vec3_i32(~abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(-30344i, 28080i, -20609i), max(vec3<i32>(global2.x, -2147483647i, 9698i), vec3<i32>(u_input.d.x, u_input.d.x, 29426i)))), (vec3<i32>(_wgslsmith_add_i32(-50203i, -1i), 0i, _wgslsmith_mod_i32(-32424i, global2.x)) ^ (firstLeadingBit(vec3<i32>(global2.x, global2.x, 2147483647i)) ^ firstLeadingBit(vec3<i32>(global2.x, -16799i, global2.x)))) & vec3<i32>(-u_input.d.x >> (_wgslsmith_clamp_u32(u_input.a, var_0.a, u_input.c.x) % 32u), u_input.d.x, global2.x));
    let var_2 = global1.c;
    let var_3 = _wgslsmith_clamp_vec4_u32(~max(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 16743u, 1u, 38718u), vec4<u32>(global1.a, 4294967295u, 74987u, global1.c.a))), vec4<u32>(countOneBits(var_0.c.a), var_2.a, var_0.c.a, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_2.a, 0u), min(var_2.a, var_0.c.a) | global1.c.a, var_2.a, ~_wgslsmith_clamp_u32(20820u, 69162u, u_input.e)), abs(vec4<u32>(4294967295u, 26852u, var_0.a, 4294967295u)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 31986u, 4323u, 16893u), vec4<u32>(0u, 4956u, var_2.a, 61578u), vec4<u32>(96604u, u_input.a, 42620u, global1.c.a)), firstLeadingBit(vec4<u32>(0u, u_input.b, global1.c.a, 36689u))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.a, global1.c.a, 4294967295u), vec4<u32>(var_0.a, u_input.b, var_2.a, var_2.a)) | ~(vec4<u32>(60556u, 4294967295u, global1.c.a, 21261u) & vec4<u32>(1u, var_2.a, var_0.a, 1u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(10028u, 61048u, global1.c.a, u_input.a), vec4<u32>(global1.c.a, u_input.c.x, var_0.a, u_input.c.x)), vec4<u32>(16106u, u_input.e, ~countOneBits(var_0.a), 1u)));
    return true;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = func_2(-1194f);
    global0 = array<vec2<bool>, 26>();
    var var_1 = abs(~vec4<u32>(u_input.e, _wgslsmith_div_u32(1u, u_input.b), (1u >> (global1.a % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(101311u, 89159u, 0u, arg_2.a), vec4<u32>(46595u, 0u, 7003u, 1u)) % 32u), min(arg_2.c.a, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, u_input.b)))));
    let var_2 = vec3<bool>(true, false, any(!vec2<bool>(!arg_2.c.b.x, any(vec4<bool>(global1.c.b.x, arg_2.c.b.x, arg_2.c.b.x, global1.c.b.x)))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1264f);
    return ~(-vec4<i32>(_wgslsmith_clamp_i32(~arg_0, -1i, arg_3.x), 2971i, ~(-arg_3.x), 2147483647i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_1.a;
    global2 = reverseBits(_wgslsmith_sub_vec3_i32(arg_0.wyw, arg_0.xxw));
    var var_1 = ~(~vec4<u32>(global1.a, select(~u_input.b, abs(983u), false), min(global1.c.a, global1.c.a), ~_wgslsmith_add_u32(57289u, 0u)));
    var var_2 = firstTrailingBit(select(min(arg_0.x, -1i), _wgslsmith_div_i32(u_input.d.x, -u_input.d.x), any(arg_1.b)));
    var var_3 = ~func_1(min(-reverseBits(-4415i), ~(~arg_0.x)), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(27782u, u_input.a, var_1.x), vec3<u32>(u_input.a, u_input.e, 69772u))), Struct_2(_wgslsmith_mult_u32(u_input.a, u_input.b) ^ 17110u, global1.b, arg_1), -(arg_0.wy << (abs(vec2<u32>(var_1.x, arg_2.a)) % vec2<u32>(32u)))).x;
    return vec3<bool>(!(!all(select(arg_1.b, vec3<bool>(true, global1.c.b.x, global1.c.b.x), true))), true, true);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global0 = array<vec2<bool>, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f - global1.b)), global1.b, global1.b, _wgslsmith_f_op_f32(sign(global1.b))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + global1.b) - _wgslsmith_div_f32(-1000f, global1.b))), -826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1107f * global1.b))))));
    var var_1 = ~vec3<u32>(4294967295u, ~abs(_wgslsmith_sub_u32(18197u, 1u)), 4294967295u);
    let var_2 = Struct_2(var_1.x, var_0.x, global1.c);
    let var_3 = arg_0;
    return Struct_2(~_wgslsmith_clamp_u32(73828u, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(379f, global1.b))), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1158f, -321f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.b, 352f))))) * 122f));
    var var_1 = func_5(global2.x, global2.xx, Struct_1(~_wgslsmith_mult_u32(min(0u, 4294967295u), ~0u), !func_4(func_1(u_input.d.x, 4226u, Struct_2(u_input.a, 1920f, global1.c), u_input.d), global1.c, Struct_1(23244u, global1.c.b))), -1i);
    let var_2 = vec4<f32>(1828f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-537f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f)))) * -1174f));
    let var_3 = i32(-1i) * -18832i;
    var var_4 = Struct_2(global1.c.a, 1272f, Struct_1(861u, func_4(min(abs(vec4<i32>(var_3, 655i, var_3, 1i)), vec4<i32>(2147483647i, global2.x, 1i, -1i)), func_5(_wgslsmith_mult_i32(var_3, var_3), -vec2<i32>(var_3, 1i), var_1.c, 40205i).c, var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(abs(min(u_input.c.x, var_4.a)), abs(117204u << (1u % 32u))), ~(~(vec2<u32>(u_input.b, 73853u) & vec2<u32>(4294967295u, 0u)))), ~firstTrailingBit(vec2<u32>(1u, firstTrailingBit(1u))));
}

