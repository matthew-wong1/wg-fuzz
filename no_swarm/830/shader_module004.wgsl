struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global2: array<vec4<f32>, 15>;

var<private> global3: Struct_1 = Struct_1(false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = !vec4<bool>(all(select(!vec3<bool>(arg_0.x, global3.a, arg_0.x), vec3<bool>(true, global3.a, global3.a), !global3.a)), (any(vec3<bool>(true, arg_0.x, true)) != arg_0.x) != true, !(!global3.a), arg_0.x);
    var var_1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(~1u, ~37213u, 1u, 4294967295u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, _wgslsmith_mod_u32(98839u, 21997u), abs(0u), ~0u), vec4<bool>(true, all(vec2<bool>(arg_0.x, var_0.x)), global3.a | true, true)) >> (reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(71012u, 1u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 0u))) % vec4<u32>(32u)));
    global1 = array<Struct_1, 24>();
    var_1 = min((select(vec4<u32>(4294967295u, var_1.x, 0u, 0u) & vec4<u32>(var_1.x, 35573u, var_1.x, var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u), vec4<u32>(87146u, 49101u, var_1.x, var_1.x)), arg_0.x) & vec4<u32>(var_1.x, var_1.x, ~2111u, 13666u)) << (select(vec4<u32>(21799u << (0u % 32u), firstTrailingBit(1u), ~39065u, firstTrailingBit(1u)), vec4<u32>(select(0u, 28279u, true), ~112647u, ~9256u, ~var_1.x), (global3.a & arg_0.x) | all(var_0)) % vec4<u32>(32u)), select(vec4<u32>(reverseBits(max(var_1.x, 28220u)), var_1.x, 4294967295u, var_1.x), ((vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x) & vec4<u32>(1u, 5291u, var_1.x, var_1.x)) << (~vec4<u32>(40007u, var_1.x, 7860u, var_1.x) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, var_1.x) | vec4<u32>(var_1.x, var_1.x, var_1.x, 1u), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u) & vec4<u32>(4294967295u, 0u, 4294967295u, var_1.x)) % vec4<u32>(32u)), vec4<bool>((var_0.x == true) || var_0.x, !var_0.x, true | any(var_0.wy), false)));
    global1 = array<Struct_1, 24>();
    return ~max(reverseBits(~var_1.x), var_1.x);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 24>();
    var var_0 = Struct_1(true);
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(~firstLeadingBit(58504u) >> (func_3(select(vec2<bool>(true, false), vec2<bool>(var_0.a, global3.a), vec2<bool>(var_0.a, true))) % 32u)), 12u)];
    var var_2 = global1[_wgslsmith_index_u32(1u, 24u)];
    var var_3 = !var_2.a;
    return global0[_wgslsmith_index_u32(94284u, 12u)];
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = func_2();
    global2 = array<vec4<f32>, 15>();
    let var_1 = !(!arg_0.xzy);
    let var_2 = func_2();
    var var_3 = global1[_wgslsmith_index_u32(10573u, 24u)];
    return select(vec3<bool>(all(vec3<bool>(var_0.a, all(vec4<bool>(var_1.x, false, var_2.a, global3.a)), select(var_1.x, false, var_3.a))), var_2.a, func_2().a), var_1, vec3<bool>(all(select(vec4<bool>(var_2.a, var_0.a, var_0.a, var_1.x), select(arg_0, arg_0, true), !global3.a)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1593f)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1390f)), _wgslsmith_f_op_f32(ceil(1097f))))));
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(vec2<bool>(false, any(vec2<bool>(func_1(vec4<bool>(arg_0.x, true, false, global3.a)).x, any(arg_0.xx))))), 12u)];
    let var_1 = ~vec4<u32>(select(func_3(select(arg_0.zy, vec2<bool>(true, true), true)), 33082u, global3.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 34950u)), global3.a)), _wgslsmith_add_u32(49027u, _wgslsmith_div_u32(~1u, ~0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(16782u, 0u, abs(43476u), ~0u), vec4<u32>(~1u, 0u, 0u, 30232u)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, 1u), 12u)];
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) + _wgslsmith_div_f32(-115f, -274f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(!vec2<bool>(u_input.a == -2147483647i, any(vec2<bool>(global3.a, false)))));
    let var_1 = _wgslsmith_f_op_f32(func_4(!select(func_1(select(vec4<bool>(global3.a, var_0.a, global3.a, true), vec4<bool>(var_0.a, false, global3.a, true), vec4<bool>(true, false, true, var_0.a))), vec3<bool>(all(vec4<bool>(global3.a, false, global3.a, var_0.a)), u_input.a <= u_input.a, global3.a), select(var_0.a, func_2().a, false))));
    var var_2 = func_2();
    let var_3 = Struct_1(var_0.a);
    global3 = Struct_1(_wgslsmith_f_op_f32(trunc(-597f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(842f - -1689f)))));
    let var_4 = func_1(!vec4<bool>(var_0.a, func_2().a, true, var_2.a)).x;
    var var_5 = ~(~(~(~_wgslsmith_clamp_u32(4772u, 120058u, 39668u))));
    global2 = array<vec4<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, ~u_input.a), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), global2[_wgslsmith_index_u32(~abs(~(~0u)), 15u)], _wgslsmith_div_f32(_wgslsmith_div_f32(-209f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(2849f - var_1))), var_1), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, 31498u), 1u), 112f);
}

