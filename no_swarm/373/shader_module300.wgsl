struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31366u;

var<private> global1: array<f32, 20> = array<f32, 20>(-659f, 354f, 631f, 977f, -1213f, 568f, -170f, -1675f, 177f, 488f, -420f, -618f, 1127f, -611f, -473f, 445f, -698f, -955f, -109f, 1000f);

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(40020u, 48118u), vec2<u32>(4294967295u, 35383u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(18124u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 30375u), vec2<u32>(19753u, 11925u), vec2<u32>(22276u, 8750u), vec2<u32>(1u, 28773u), vec2<u32>(4294967295u, 64679u), vec2<u32>(54983u, 4294967295u), vec2<u32>(56318u, 4887u), vec2<u32>(0u, 2310u), vec2<u32>(16955u, 4294967295u), vec2<u32>(86076u, 1u), vec2<u32>(0u, 16879u), vec2<u32>(4294967295u, 51315u), vec2<u32>(19764u, 13279u), vec2<u32>(4294967295u, 57946u), vec2<u32>(1u, 4294967295u), vec2<u32>(43293u, 3959u), vec2<u32>(11295u, 1003u), vec2<u32>(1u, 0u), vec2<u32>(0u, 25465u), vec2<u32>(0u, 73776u), vec2<u32>(27284u, 27886u), vec2<u32>(68940u, 35565u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 55743u), vec2<u32>(1u, 1u));

var<private> global4: array<vec4<u32>, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = select(countOneBits(countOneBits(abs(select(global2.xx, global2.ww, arg_2.a.a.x)))), abs(~vec2<i32>(~14652i, -30091i)), vec2<bool>(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_2.a.a.x, true, true), arg_2.a.a.x), select(vec4<bool>(arg_2.a.a.x, false, arg_2.a.a.x, arg_2.a.a.x), vec4<bool>(arg_2.a.a.x, true, arg_2.a.a.x, false), vec4<bool>(false, arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x)), !vec4<bool>(false, arg_2.a.a.x, arg_2.a.a.x, true))), any(select(!vec3<bool>(arg_2.a.a.x, false, arg_2.a.a.x), vec3<bool>(arg_2.a.a.x, true, true), vec3<bool>(true, arg_2.a.a.x, arg_2.a.a.x)))));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5378u, max(~(~(1u & arg_1)), max(u_input.b.x, _wgslsmith_add_u32(u_input.a.x, ~55292u))), select(~u_input.b.x, arg_1, arg_2.a.a.x) | 0u), 26u)];
    global4 = array<vec4<u32>, 26>();
    var var_2 = _wgslsmith_f_op_f32(abs(arg_0));
    global1 = array<f32, 20>();
    return arg_2.a.a.x;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    var var_0 = vec3<bool>(arg_1.x, func_3(arg_0, 4294967295u, Struct_3(Struct_2(arg_1.zx, arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, -1000f, 158f))))), 2147483647i >= _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 11318i, global2.x, 1i), -vec4<i32>(1i, global2.x, -13592i, 1i) & ~vec4<i32>(global2.x, 2147483647i, -7392i, global2.x)));
    var_0 = arg_1;
    let var_1 = Struct_2(vec2<bool>(!arg_1.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, global1[_wgslsmith_index_u32(arg_2.a.x, 20u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(11597u, 20u)]))) - _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_2.a.x, 20u)], 276f)), _wgslsmith_f_op_f32(-1035f - -583f), _wgslsmith_f_op_f32(-1000f + 1180f))))));
    var var_2 = arg_2;
    global1 = array<f32, 20>();
    return !any(var_0.yz);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> vec4<f32> {
    let var_0 = global3[_wgslsmith_index_u32(~20242u >> (~_wgslsmith_add_u32(u_input.a.x, ~1u) % 32u), 31u)];
    let var_1 = global4[_wgslsmith_index_u32(33729u, 26u)];
    global4 = array<vec4<u32>, 26>();
    global2 = max(~(~vec4<i32>(38934i, abs(global2.x), -global2.x, -global2.x)), vec4<i32>(-1i, i32(-1i) * -5563i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(8255i, 9878i, global2.x, -1i), vec4<i32>(43344i, global2.x, -2147483647i, global2.x) << (vec4<u32>(24068u, var_1.x, 69665u, var_0.x) % vec4<u32>(32u))), 19962i), global2.x >> (~(~var_1.x) % 32u)));
    var var_2 = Struct_1(global4[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 26u)] << (global4[_wgslsmith_index_u32(abs(57102u), 26u)] % vec4<u32>(32u)), select(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1, 1u, 37976u, u_input.a.x), vec4<u32>(u_input.b.x, arg_1, 67653u, 31621u)), firstTrailingBit(global4[_wgslsmith_index_u32(var_1.x, 26u)])), min(u_input.b.x & var_1.x, ~0u), arg_0.x) >= ~countOneBits(15264u & u_input.b.x));
    return vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(~min(0u, u_input.b.x)), 20u)] * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 20u)] * -106f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~var_0.x, 20u)], _wgslsmith_div_f32(-1113f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 20u)]))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 20u)])), global1[_wgslsmith_index_u32(1u, 20u)], false)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = global2.ywz;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_4(!vec3<bool>(func_2(global1[_wgslsmith_index_u32(1u, 20u)], vec3<bool>(true, false, true), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 24840u), true)), true, u_input.a.x == u_input.a.x), firstTrailingBit(firstLeadingBit(firstLeadingBit(0u))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1082f, 355f, global1[_wgslsmith_index_u32(110976u, 20u)], 650f))), vec4<f32>(global1[_wgslsmith_index_u32(~345u, 20u)], 1269f, -389f, _wgslsmith_f_op_f32(max(arg_0.x, global1[_wgslsmith_index_u32(28995u, 20u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1631f), arg_0.x, -1622f, _wgslsmith_f_op_f32(arg_0.x - -1789f))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, false, false)))))));
    var var_2 = u_input.a.x;
    var var_3 = select(!(!vec3<bool>(true, all(vec3<bool>(true, true, true)), var_1.x <= -919f)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, any(vec2<bool>(false, false)), true), select(any(vec2<bool>(true, false)), false, true)), func_3(-1214f, 62638u, Struct_3(Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(718f * -760f), _wgslsmith_f_op_vec3_f32(arg_0.wzy - vec3<f32>(arg_0.x, var_1.x, -445f))))));
    var var_4 = -1171f;
    return select(-global2.x, ~countOneBits(~var_0.x ^ reverseBits(global2.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-23664i, global2.x)) << (min(vec2<u32>(u_input.a.x, 66778u), global3[_wgslsmith_index_u32(51447u, 31u)]) % vec2<u32>(32u)), global2.zy)), func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(54504u, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 1000f))))))));
    var var_1 = 1u >> (~4294967295u % 32u);
    var_1 = 0u;
    var var_2 = !select(vec2<bool>(false, true), select(vec2<bool>(0u < u_input.a.x, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(!vec3<bool>(var_2.x, var_2.x, var_2.x), 33037u)).zz)), -17210i, ~var_0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2610i, global2.x, global2.x) ^ vec4<i32>(-2147483647i, var_0.x, -2147483647i, global2.x), countOneBits(vec4<i32>(var_0.x, global2.x, -29320i, var_0.x))) >> (abs(23883u) % 32u), ~func_1(vec4<f32>(-1022f, -517f, 795f, -1701f))));
}

