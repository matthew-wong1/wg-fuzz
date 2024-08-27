struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, true, true, true, true, true, true, false, true, true, false);

var<private> global2: u32 = 56926u;

var<private> global3: i32 = 48096i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2425f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 208f) + _wgslsmith_f_op_f32(step(131f, -666f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f))));
    let var_1 = Struct_1(u_input.e.zy, _wgslsmith_sub_vec2_u32(~vec2<u32>(min(u_input.a, u_input.a), 18855u), vec2<u32>(u_input.a, 1u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d), min(vec2<u32>(u_input.d, 0u), vec2<u32>(60058u, u_input.a)), select(vec2<u32>(4294967295u, 91976u), vec2<u32>(0u, 1u), false)) % vec2<u32>(32u))), ~39759u <= max(countOneBits(~u_input.d), u_input.a), vec3<f32>(-317f, _wgslsmith_f_op_f32(f32(-1f) * -133f), -1084f));
    var var_2 = Struct_2(var_1, vec2<bool>(!(!global0[_wgslsmith_index_u32(var_1.b.x, 15u)]) | global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(~(~1u), 12u)]));
    var var_3 = var_1.b.x;
    var var_4 = Struct_2(Struct_1(vec2<i32>(select(var_2.a.a.x << (u_input.a % 32u), _wgslsmith_sub_i32(24083i, 6315i), false && global0[_wgslsmith_index_u32(var_1.b.x, 15u)]), -1i), var_2.a.b, true, vec3<f32>(_wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(1f * -357f), var_0)), vec2<bool>(!(!var_1.c) && !(!arg_0.x), var_1.a.x > var_1.a.x));
    return global1[_wgslsmith_index_u32(10684u, 12u)];
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<bool, 15>();
    global3 = _wgslsmith_div_i32(-(_wgslsmith_div_i32(u_input.b.x, -17233i) >> (~69997u % 32u)), u_input.e.x ^ 3023i) & arg_0.a.a.x;
    let var_0 = ~(~firstTrailingBit(select(~vec3<u32>(0u, u_input.d, arg_0.a.b.x), firstTrailingBit(vec3<u32>(2000u, arg_0.a.b.x, 12925u)), func_3(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.b.x, 12u)]), arg_0.a.a.x))));
    let var_1 = Struct_2(arg_0.a, select(arg_0.b, vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)] || true)));
    global0 = array<bool, 15>();
    return _wgslsmith_f_op_f32(exp2(var_1.a.d.x));
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    global0 = array<bool, 15>();
    var var_0 = -min(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~7599i, _wgslsmith_sub_i32(u_input.c.x, 2147483647i)), -(-25845i << (u_input.d % 32u)), ~(~u_input.c.x)), firstTrailingBit(~_wgslsmith_clamp_i32(u_input.c.x, -2147483647i, -2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<i32>(40133i, 0i), vec2<u32>(0u, 32684u), global1[_wgslsmith_index_u32(u_input.a, 12u)], vec3<f32>(-1000f, -1168f, -428f)), arg_0.zz))))));
    let var_2 = Struct_2(Struct_1(u_input.b.zz << (min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.d))) % vec2<u32>(32u)), ~max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 1u)), vec2<u32>(4294967295u, u_input.d)), !global0[_wgslsmith_index_u32(u_input.a, 15u)] || (abs(9821u) >= _wgslsmith_clamp_u32(u_input.d, u_input.a, u_input.a)), vec3<f32>(-717f, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-733f)) - var_1))), arg_0.wx);
    let var_3 = var_2.a;
    return select(vec4<bool>(true, 1000f < var_3.d.x, !all(vec3<bool>(true, global1[_wgslsmith_index_u32(56370u, 12u)], false)), false), select(arg_0, vec4<bool>(all(!arg_0), any(vec4<bool>(var_2.b.x, global0[_wgslsmith_index_u32(var_3.b.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], false)) | all(arg_0.zzx), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_3.b, vec2<u32>(var_3.b.x, u_input.a)), 12u)] && false, global0[_wgslsmith_index_u32(~var_2.a.b.x ^ ~var_2.a.b.x, 15u)]), select(arg_0.x, global0[_wgslsmith_index_u32(~select(1u, 0u, var_2.a.c), 15u)], 9323u >= _wgslsmith_sub_u32(var_3.b.x, 1u))), !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.a;
    var var_0 = u_input.e.yw;
    let var_1 = var_0.x;
    let var_2 = !select(func_1(!(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), func_1(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 12u)], false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false, global0[_wgslsmith_index_u32(u_input.a, 15u)], true))), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, global0[_wgslsmith_index_u32(~u_input.d << (~49556u % 32u), 15u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(u_input.d, ~4294967295u, ~(~u_input.a), 25107u)), 1i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-739f, -938f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, -1798f) + vec2<f32>(-2740f, -2531f)))))))), firstTrailingBit(u_input.b.x), ~(~reverseBits(u_input.e & u_input.e)));
}

