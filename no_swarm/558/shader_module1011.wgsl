struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(174f, -1478f, -179f, -589f, 724f, -428f, -1210f, -233f, 2765f, 772f, 749f, 142f, -1360f, 611f, 888f, -1068f, -655f, 587f, -512f, 1074f, 367f, 733f, 744f, 546f, 1000f, 183f);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(false, -22018i), Struct_1(true, 20010i), Struct_1(true, 2147483647i), Struct_1(false, 1i), Struct_1(false, 0i), Struct_1(true, 56362i), Struct_1(true, 0i), Struct_1(true, 26011i), Struct_1(true, 2147483647i), Struct_1(false, 0i), Struct_1(false, 1i), Struct_1(true, 5222i), Struct_1(false, 0i), Struct_1(true, 4797i), Struct_1(false, 120294i), Struct_1(true, 2147483647i), Struct_1(true, 2147483647i));

var<private> global3: Struct_1 = Struct_1(true, -1i);

var<private> global4: Struct_1 = Struct_1(false, 2147483647i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(17071u, 26u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(trunc(-735f))))), vec2<f32>(-249f, 176f))), any(select(!vec2<bool>(false, global4.a), select(vec2<bool>(false, global3.a), vec2<bool>(false, arg_0), global4.a), select(vec2<bool>(true, false), vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, false)))) | true));
    let var_1 = vec3<i32>(12904i, ~1i, ~global1.x) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(47099u, u_input.b, 38094u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(10718u, u_input.b, 4294967295u)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, 56299u), vec3<u32>(u_input.b, 0u, 25608u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(42937u, 1u, u_input.b)))), _wgslsmith_mult_vec3_u32(vec3<u32>(42299u << (u_input.b % 32u), u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 25520u))) % vec3<u32>(32u));
    global0 = array<f32, 26>();
    var var_2 = ~var_1.xy;
    var var_3 = Struct_1(arg_0, countOneBits(firstLeadingBit(global4.b)) >> (~u_input.b % 32u));
    return select(select(select(select(!vec3<bool>(false, false, var_3.a), vec3<bool>(true, arg_1.a, global4.a), all(vec3<bool>(global3.a, global3.a, var_3.a))), vec3<bool>(true, true, true), true), select(!vec3<bool>(global4.a, false, true), !vec3<bool>(global3.a, arg_0, true), all(vec2<bool>(arg_1.a, arg_0))), vec3<bool>(false, false, _wgslsmith_f_op_f32(abs(var_0.x)) < _wgslsmith_f_op_f32(809f - global0[_wgslsmith_index_u32(u_input.b, 26u)]))), vec3<bool>(!(global0[_wgslsmith_index_u32(~1109u, 26u)] != global0[_wgslsmith_index_u32(~u_input.b, 26u)]), var_3.a, !arg_0), !select(select(select(vec3<bool>(arg_1.a, var_3.a, arg_0), vec3<bool>(arg_0, true, global3.a), global4.a), !vec3<bool>(arg_1.a, true, arg_0), global4.a & arg_1.a), select(select(vec3<bool>(var_3.a, false, true), vec3<bool>(var_3.a, arg_0, global3.a), vec3<bool>(arg_0, false, global3.a)), vec3<bool>(arg_1.a, var_3.a, true), arg_0), vec3<bool>(true, false, true || var_3.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    global4 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_0 = all(!vec2<bool>(false || func_3(true, Struct_1(false, global3.b)).x, _wgslsmith_add_i32(-1i, u_input.c) <= (49456i >> (1u % 32u))));
    var var_1 = ~(~(~(~(-vec4<i32>(global1.x, -47625i, global3.b, -1i)))));
    var var_2 = -_wgslsmith_add_vec3_i32(firstLeadingBit(var_1.yxz), -firstLeadingBit(vec3<i32>(arg_0.b, u_input.a, 16912i) | var_1.xwz));
    var var_3 = global2[_wgslsmith_index_u32(6484u, 17u)];
    return vec2<f32>(global0[_wgslsmith_index_u32(~4294967295u, 26u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(arg_2, select(func_3(true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, u_input.b), 17u)]), !(!vec3<bool>(global3.a, global4.a, true)), select(!vec3<bool>(false, true, arg_2.a), select(vec3<bool>(true, true, false), vec3<bool>(false, global3.a, false), vec3<bool>(global4.a, arg_2.a, true)), func_3(false, Struct_1(global4.a, global4.b)))), true, global2[_wgslsmith_index_u32(1u, 17u)]))));
    var var_1 = Struct_1(false, -u_input.c);
    var var_2 = arg_2;
    let var_3 = firstTrailingBit(0i);
    global4 = arg_2;
    return ~vec2<i32>(-2147483647i, 0i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<i32> {
    let var_0 = u_input.b;
    global1 = arg_0;
    var var_1 = ~(~(~(u_input.b ^ u_input.b)));
    var var_2 = Struct_1(global3.a | !(!(global1.x != global4.b)), 0i);
    global4 = arg_2;
    return ~vec2<i32>(~(~(arg_2.b ^ global1.x)), abs(~u_input.a) >> (_wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 75800u)) % 32u));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = func_5(countOneBits(min(func_2(vec3<u32>(29213u, u_input.b, 24695u) >> (vec3<u32>(58668u, 68180u, u_input.b) % vec3<u32>(32u)), u_input.b, Struct_1(arg_1.a, arg_1.b)), -vec2<i32>(global4.b, 10050i))), arg_1, arg_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-754f, 1065f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(0u, 26u)], 759f), vec2<f32>(333f, -293f)))) + vec2<f32>(-226f, -724f)))));
    var_0 = ~(-(-min(vec2<i32>(46612i, -35455i), vec2<i32>(1i, global1.x)) ^ countOneBits(vec2<i32>(var_0.x, -1i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_sub_i32(firstLeadingBit(1i), var_0.x ^ -16529i);
    global1 = countOneBits(vec2<i32>(26849i, _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(var_0.x << (0u % 32u), _wgslsmith_sub_i32(50100i, -2503i)))));
    let var_2 = Struct_1(global3.a, abs(~_wgslsmith_add_i32(reverseBits(u_input.c), u_input.c << (14820u % 32u))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(107314u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(69010u, 8047u))), 26182u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 10370u), vec3<u32>(u_input.b, u_input.b, 4294967295u)) ^ u_input.b), reverseBits(min(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b), vec4<u32>(1u, u_input.b, 12679u, 0u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 0u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 15753u)))) | vec4<u32>(1u, ~u_input.b, _wgslsmith_sub_u32(~(~u_input.b), u_input.b), 43550u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b, 79069u, 4294967295u, select(13993u, ~(~24041u), global4.a)) ^ func_1(-global1.x, global2[_wgslsmith_index_u32(0u, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 47782u), var_0, var_0), _wgslsmith_mult_vec4_u32(vec4<u32>(71150u, 361u, var_0.x, 1u), vec4<u32>(var_0.x, 28212u, var_0.x, 0u)), select(vec4<u32>(var_0.x, var_0.x, 13628u, u_input.b), vec4<u32>(var_0.x, 1u, 18161u, var_0.x), vec4<bool>(global4.a, global4.a, true, global3.a))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 1102u, var_0.x), ~var_0), (global4.b <= 16697i) || true), ~vec3<i32>(-29650i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 69630i, global1.x), ~vec3<i32>(-105558i, -2147483647i, global4.b)), u_input.a), var_0.x, ~(_wgslsmith_add_i32(~u_input.c, min(u_input.a, global1.x)) >> (0u % 32u)));
}

