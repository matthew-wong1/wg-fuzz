struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, false, true, false, true, true, false, true, false, true, false, true, true, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global0 = array<bool, 17>();
    var var_0 = Struct_3(_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(-502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1840f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1872f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1203f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(440f, var_0.b.x)) + -777f))) + vec3<f32>(-942f, -624f, _wgslsmith_f_op_f32(trunc(var_0.b.x))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, min(firstLeadingBit(4294967295u), ~4294967295u), ~60467u, _wgslsmith_sub_u32(104617u, 0u)), vec4<u32>(3856u, 48422u, 63696u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(137939u, 78158u), vec2<u32>(41775u, 1u)), max(4294967295u, 14713u))), true), vec4<u32>(1u, 1u, 1u, 1u)), 17u)];
    let var_3 = Struct_1(vec2<u32>(_wgslsmith_add_u32(4294967295u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25896u), vec2<u32>(32255u, 1u)), ~10833u)), ~abs(51094u)), 1406f, select(!vec3<bool>(any(vec2<bool>(false, false)), true, u_input.a.x != u_input.a.x), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)], false, false), !vec3<bool>(global0[_wgslsmith_index_u32(49545u, 17u)], false, arg_0), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(1226u, 17u)], arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, false))), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)], arg_0, true), vec3<bool>(select(arg_0, false, false), !arg_0, true)), vec3<bool>(select(!arg_0, false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(7180u, 36238u), 17u)]), !arg_0, true)), ~min(min(vec3<u32>(27486u, 4294967295u, 20678u), min(vec3<u32>(534u, 1u, 0u), vec3<u32>(15817u, 0u, 4294967295u))), ~vec3<u32>(11303u, 4294967295u, 24286u)));
    return var_3.d;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = !(!(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(12897u, 17u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(27939u, 17u)], true)))));
    let var_1 = ~0u;
    global0 = array<bool, 17>();
    var var_2 = ~abs(~select(~vec3<u32>(var_1, var_1, var_1), func_3(global0[_wgslsmith_index_u32(var_1, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(1122u, 17u)], false, var_0.x)));
    let var_3 = u_input.a.x | (u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), var_2.x, ~var_2.x), ~vec3<u32>(29596u, 0u, var_1)) % 32u));
    return Struct_2(~(~(~(u_input.a.yxw & u_input.a.yyy))), Struct_1(abs(countOneBits(vec2<u32>(var_2.x, var_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x)))), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], false), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, var_2.x, var_2.x), vec3<u32>(var_2.x, var_1, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 14871u), vec3<u32>(29756u, var_1, var_1))), vec3<u32>(1u, ~45431u, ~4294967295u))), var_3);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_0 = vec3<i32>(-13027i, i32(-1i) * -47328i, -6158i);
    return 11720u;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(31393u, func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-248f, 1170f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, -2104f)), true)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1218f, -473f))), ~min(vec4<u32>(41900u, 0u, 1u, 4294967295u), vec4<u32>(22234u, 34044u, 53733u, 4294967295u)))), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, 471f)), vec2<f32>(_wgslsmith_f_op_f32(floor(-696f)), _wgslsmith_f_op_f32(-479f + 1327f)))).b.a);
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(153f, 221f), vec2<f32>(-671f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2272f, -398f)))) - vec2<f32>(_wgslsmith_div_f32(-109f, 502f), _wgslsmith_f_op_f32(max(-342f, 387f))))).a, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, _wgslsmith_f_op_f32(select(-1000f, -309f, global0[_wgslsmith_index_u32(var_0.x, 17u)]))))).b, u_input.a.x);
    var_1 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1246f, 541f)) - vec2<f32>(var_1.b.b, 342f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b, var_1.b.b) - vec2<f32>(223f, var_1.b.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b, var_1.b.b) + vec2<f32>(-191f, 2723f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b.b, var_1.b.b)))))));
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -1209f))), 286f));
    let var_3 = vec4<bool>(true, var_2.b.c.x, !all(vec3<bool>(!var_2.b.c.x, true, true)), var_1.b.c.x);
    return vec2<u32>(reverseBits(var_0.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.b.a.x, 90890u) & 1u, var_1.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~vec2<u32>(0u, 4294967295u)) << (~(vec2<u32>(1u, 4401u) << (func_1() % vec2<u32>(32u))) % vec2<u32>(32u)), 953f, vec3<bool>(!any(!vec3<bool>(false, global0[_wgslsmith_index_u32(55849u, 17u)], true)), true, false && all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], true))), vec3<u32>(~(~0u), 1u, 57653u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1030u, select(0u, 37483u, global0[_wgslsmith_index_u32(0u, 17u)]), 22315u), ~vec3<u32>(4294967295u, 0u, 3138u)) % vec3<u32>(32u)));
    global0 = array<bool, 17>();
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) * _wgslsmith_f_op_f32(var_0.b + var_0.b)), var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -454f))).b;
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b, -473f)))), u_input.a.zwx);
}

