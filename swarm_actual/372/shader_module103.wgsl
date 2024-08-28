struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(8439u, 4294967295u), vec2<u32>(8949u, 1u), vec2<u32>(13631u, 0u), vec2<u32>(58887u, 3149u));

var<private> global1: array<f32, 14> = array<f32, 14>(270f, 950f, 2804f, 574f, -1319f, -230f, -668f, 151f, 1695f, 242f, 960f, -760f, 613f, 714f);

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-1i, 23377i, i32(-2147483648), -38762i), vec4<i32>(0i, 2147483647i, -16007i, -11371i), vec4<i32>(45825i, 15782i, -30683i, 1i), vec4<i32>(-21609i, 0i, -37561i, 1i), vec4<i32>(-1i, -1i, 1i, 2819i), vec4<i32>(i32(-2147483648), 29001i, i32(-2147483648), -24488i), vec4<i32>(13231i, 3229i, 1i, i32(-2147483648)), vec4<i32>(41183i, -15664i, 23135i, -4703i), vec4<i32>(2147483647i, 0i, 1i, -11254i), vec4<i32>(25158i, -1i, 1i, i32(-2147483648)), vec4<i32>(49797i, 0i, 0i, 25939i), vec4<i32>(2147483647i, 1i, -32940i, 1i), vec4<i32>(9897i, 2147483647i, 63661i, -1i), vec4<i32>(10188i, 1i, 0i, 18161i), vec4<i32>(2147483647i, -5889i, 1i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<f32, 14>();
    let var_0 = Struct_3(0u);
    let var_1 = Struct_2(any(vec3<bool>(true, all(vec3<bool>(true, true, false)), true)) & true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(24133u, 14u)] - 573f))) * global1[_wgslsmith_index_u32(0u, 14u)]), min(abs(vec4<i32>(u_input.a, -11635i, u_input.a, u_input.a)), select(vec4<i32>(6807i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), false) & vec4<i32>(u_input.a, -2147483647i, -6317i, u_input.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(71431u, 14u)], global1[_wgslsmith_index_u32(37126u, 14u)], global1[_wgslsmith_index_u32(14550u, 14u)], global1[_wgslsmith_index_u32(9542u, 14u)]), vec4<f32>(global1[_wgslsmith_index_u32(15075u, 14u)], -1525f, -1724f, global1[_wgslsmith_index_u32(1u, 14u)])))))))), ~(~firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 56714u, var_0.a, 0u)))), _wgslsmith_f_op_f32(min(1257f, -309f)), _wgslsmith_add_vec3_u32(max(~vec3<u32>(35749u, 44157u, 0u), select(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, false, false))), vec3<u32>(var_0.a | var_0.a, abs(97810u), ~0u)) & ~firstLeadingBit(vec3<u32>(0u, 4294967295u, var_0.a)));
    let var_2 = any(vec3<bool>((any(vec2<bool>(false, false)) | true) || var_1.a, true, var_1.a));
    let var_3 = u_input.a;
    return -12891i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(-818f, 1000f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))));
    global3 = array<vec4<i32>, 15>();
    let var_1 = Struct_4(Struct_3(~(~max(1u, 6759u))), Struct_3(~select(~16166u, abs(0u), true)), Struct_1(-830f, select(vec4<i32>(6066i, u_input.a, -24570i, func_3()), global3[_wgslsmith_index_u32(max(0u, 7482u), 15u)] << (max(vec4<u32>(50355u, 1u, 72752u, 4294967295u), vec4<u32>(72689u, 0u, 129984u, 17768u)) % vec4<u32>(32u)), true), vec4<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(23920u, 14u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(45804u, 14u)], -1035f, false)), true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -2028f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 14u)]))), -383f)), var_0.x);
    global3 = array<vec4<i32>, 15>();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) + global1[_wgslsmith_index_u32(~4294967295u, 14u)]), global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(var_1.a.a, 51542u)), 14u)], _wgslsmith_f_op_f32(var_0.x * 2342f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, var_1.c.a, var_0.x)) - vec4<f32>(-2014f, -930f, 1197f, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_1.c.c, var_1.c.c, vec4<bool>(false, false, false, false)))))))), var_1.c.c));
    return var_1.c;
}

fn func_1() -> Struct_3 {
    var var_0 = any(select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, all(vec2<bool>(true, false)), true, true), false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, -492f, -1046f) - vec3<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], -116f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 978f, global1[_wgslsmith_index_u32(79221u, 14u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -1601f, global1[_wgslsmith_index_u32(39921u, 14u)])))))));
    global1 = array<f32, 14>();
    var var_2 = global1[_wgslsmith_index_u32(max(~32243u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 5849u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(75986u, 2945u, 1u), 4u)]), _wgslsmith_div_u32(abs(1u), select(14054u, 45960u, false)))), 14u)];
    var_2 = global1[_wgslsmith_index_u32(26758u, 14u)];
    return Struct_3(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_add_u32(64230u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -908f;
    global2 = u_input.a;
    global1 = array<f32, 14>();
    let var_2 = Struct_4(var_0, var_0, Struct_1(_wgslsmith_f_op_f32(-var_1), global3[_wgslsmith_index_u32(21538u, 15u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(var_0.a, 14u)], 703f, -1550f, -182f))))), _wgslsmith_f_op_f32(-var_1));
    let var_3 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(70106u, 14u)]) * -1357f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + 545f)))), select(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), true, all(vec3<bool>(true, true, true))));
    global0 = array<vec2<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(14665u, -1273f, vec3<f32>(var_2.d, _wgslsmith_f_op_f32(round(var_2.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f)))), -abs(var_2.c.b.zyw));
}

