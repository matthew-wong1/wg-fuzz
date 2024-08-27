struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: f32;

var<private> global2: vec4<u32> = vec4<u32>(18974u, 1u, 0u, 1968u);

var<private> global3: array<vec2<bool>, 24>;

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = global0.a;
    global3 = array<vec2<bool>, 24>();
    var var_1 = vec4<i32>(abs(firstTrailingBit(_wgslsmith_clamp_i32(arg_0.x, countOneBits(23861i), _wgslsmith_clamp_i32(6357i, -11500i, 19351i)))), arg_1.a, 2147483647i, -arg_1.b.x);
    global4 = 7751i;
    var var_2 = Struct_5(global0.a, vec2<bool>(true, 109742u <= global2.x), ~var_0.a.c, ~(~arg_1.c));
    return vec2<bool>(var_2.b.x, any(select(!select(vec3<bool>(global0.b.x, var_2.b.x, var_2.b.x), vec3<bool>(var_2.b.x, false, global0.b.x), global0.b.x), select(!vec3<bool>(true, global0.b.x, var_2.b.x), vec3<bool>(var_2.b.x, false, var_2.b.x), vec3<bool>(true, false, false)), !(!vec3<bool>(false, global0.b.x, false)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = vec2<bool>(max(global0.d, -18451i) > 0i, global0.b.x);
    global0 = Struct_5(global0.a, global3[_wgslsmith_index_u32(1u, 24u)], -14480i, global0.d);
    var var_1 = Struct_3(global0.a.b);
    var var_2 = func_3(vec2<i32>(firstTrailingBit(-global0.d), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, -global0.d, 0i ^ global0.c), ~global0.a.a.b)), global0.a.a);
    var var_3 = global0.a.a.b.x;
    return Struct_5(Struct_4(Struct_1(select(0i | global0.c, global0.c, !var_0.x), -global0.a.a.b, global0.c & ~(-2312i)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.a) - _wgslsmith_f_op_vec4_f32(select(global0.a.b.a, vec4<f32>(-785f, var_1.a.a.x, -670f, -914f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f + arg_1.x) + -515f))), func_3(vec2<i32>(2147483647i, 0i), global0.a.a), ~global0.c, _wgslsmith_div_i32(min((i32(-1i) * -19821i) >> (1u % 32u), global0.d), global0.a.a.c));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_5 {
    var var_0 = func_2(vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(global2.x, u_input.a), min(global2.x, 7709u)), ~(~firstTrailingBit(u_input.b.x)), u_input.a), _wgslsmith_f_op_vec2_f32(-global0.a.b.a.xy));
    global3 = array<vec2<bool>, 24>();
    global1 = 178f;
    var var_1 = arg_0.a;
    global1 = global0.a.b.b;
    return Struct_5(Struct_4(global0.a.a, global0.a.b), vec2<bool>(true, true), -(global0.a.a.b.x << (u_input.a % 32u)), _wgslsmith_div_i32(max(_wgslsmith_add_i32(var_0.d | arg_0.c, _wgslsmith_sub_i32(global0.d, -5318i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 3229i, -1i), firstTrailingBit(vec3<i32>(-1i, var_0.c, -2147483647i)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, var_0.d) | (vec2<i32>(arg_0.a, global0.c) | arg_0.b.zy), var_0.a.a.b.xy | vec2<i32>(global0.d, arg_0.c))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_3(arg_1.a.b);
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.b.b);
    var var_2 = global3[_wgslsmith_index_u32(global2.x, 24u)];
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c >> (0u % 32u), ~(-arg_1.d), _wgslsmith_clamp_i32(firstLeadingBit(22224i), arg_1.d, ~global0.c), global0.d), ~(-min(vec4<i32>(arg_1.a.a.c, -54457i, -2147483647i, 12368i), vec4<i32>(-2147483647i, -2147483647i, arg_1.c, global0.a.a.b.x)))), vec4<i32>(arg_1.c ^ global0.d, global0.d, -24406i, arg_1.c));
    var var_4 = global0.a;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.a.x, 1066f, -329f, arg_0.x) + vec4<f32>(var_4.b.b, 303f, arg_2.x, 2082f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.b.a.x, arg_2.x, 1065f, arg_3.x), var_4.b.a)))), _wgslsmith_f_op_f32(f32(-1f) * -795f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c << (((~abs(u_input.a) << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 6983u, u_input.b.x)), select(vec4<u32>(u_input.a, 45456u, u_input.a, 0u), vec4<u32>(u_input.a, global2.x, global2.x, 0u), true)) % 32u)) >> (_wgslsmith_mult_u32(countOneBits(global2.x), 73167u) % 32u)) % 32u);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-global0.a.b.a.xyy), func_1(Struct_1(51245i, global0.a.a.b, firstLeadingBit(1i)), _wgslsmith_f_op_f32(select(1000f, -210f, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b.a.x), -1139f)), global0.a.b.a.x, 429f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.b.a))));
    var var_2 = var_1;
    let var_3 = Struct_1(~max(_wgslsmith_add_i32(2147483647i, global0.d), 0i ^ ~var_0), func_1(Struct_1(-var_0 | -var_0, ~(vec3<i32>(-4665i, var_0, -1i) ^ global0.a.a.b), ~global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(799f * global0.a.b.a.x))))).a.a.b, global0.a.a.b.x);
    global4 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(-18788i, var_3.b.x), _wgslsmith_dot_vec2_i32(global0.a.a.b.xy, vec2<i32>(global0.c, var_3.a)), abs(var_0), _wgslsmith_dot_vec3_i32(var_3.b, vec3<i32>(0i, -26620i, -13503i))), vec4<i32>(-17479i, firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_div_i32(23469i, _wgslsmith_mult_i32(-1i, global0.c)), firstLeadingBit(i32(-1i) * -79226i))), global0.a.a.b.x);
    var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.a.a.zyw))) + global0.a.b.a.yyx), func_1(Struct_1(_wgslsmith_add_i32(firstTrailingBit(-11239i), 0i), global0.a.a.b, ~(~9842i)), _wgslsmith_f_op_f32(trunc(-1119f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, 622f, 777f) - global0.a.b.a.wyz), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1942f, var_1.a.b, var_1.a.a.x))))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.b.a.x), 679f, global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f - -574f)))), func_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(53312u, global2.x, u_input.b.x), global2.zww ^ u_input.b), _wgslsmith_f_op_vec2_f32(-var_2.a.a.yy)).a.b.a);
    let var_4 = Struct_1(~(~abs(-12713i | global0.d)), vec3<i32>(var_0, var_0, _wgslsmith_add_i32(0i, 38761i) >> (_wgslsmith_sub_u32(52472u, u_input.b.x & 46831u) % 32u)), countOneBits(firstTrailingBit(-(var_3.a | -2147483647i))));
    var var_5 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(global2.x, abs(countOneBits(4294967295u)), global2.x) << (_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(u_input.a, global2.x)), ~global2.x) % 32u), func_4(vec3<f32>(_wgslsmith_f_op_f32(max(-264f, _wgslsmith_f_op_f32(-var_1.a.a.x))), -855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.a.x)))), Struct_5(global0.a, vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(global0.a.a.b, vec3<i32>(-22176i, 52125i, -1i)), ~_wgslsmith_div_i32(var_4.a, -23699i)), vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a.a.x)), var_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1273f, var_1.a.a.x, false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.a.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1357f, var_2.a.a.x, global0.a.b.b, 975f) * vec4<f32>(-118f, var_1.a.a.x, global0.a.b.a.x, 1019f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, -1609f, -111f, var_2.a.a.x) - _wgslsmith_f_op_vec4_f32(-var_1.a.a))))).a.a.x);
}

