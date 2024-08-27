struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<i32>(0i, 1i)), Struct_3(vec2<i32>(-1i, i32(-2147483648))), Struct_3(vec2<i32>(-83348i, 31846i)), Struct_3(vec2<i32>(-1i, -12538i)), Struct_3(vec2<i32>(1i, i32(-2147483648))), Struct_3(vec2<i32>(-31885i, -8618i)), Struct_3(vec2<i32>(0i, -5654i)), Struct_3(vec2<i32>(-11132i, -1i)), Struct_3(vec2<i32>(-1i, 16245i)), Struct_3(vec2<i32>(-1i, 2147483647i)), Struct_3(vec2<i32>(-1i, 30001i)), Struct_3(vec2<i32>(2147483647i, -9979i)), Struct_3(vec2<i32>(i32(-2147483648), -2082i)), Struct_3(vec2<i32>(i32(-2147483648), 1i)), Struct_3(vec2<i32>(-2211i, 18230i)), Struct_3(vec2<i32>(-27299i, -1i)));

var<private> global1: array<Struct_2, 2>;

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    global1 = array<Struct_2, 2>();
    global1 = array<Struct_2, 2>();
    global0 = array<Struct_3, 16>();
    var var_0 = vec2<bool>(all(vec2<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)))), firstLeadingBit(min(abs(-16889i), select(0i, 3746i, false))) == -4474i);
    global0 = array<Struct_3, 16>();
    return arg_2;
}

fn func_3() -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(global2.x, 16u)];
    let var_1 = Struct_2(Struct_1(true), vec2<bool>(false && select(true, true, true), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))), Struct_1(false), Struct_1(true));
    var var_2 = 513f;
    let var_3 = select(!vec3<bool>(false, false, var_1.b.x), select(!(!(!vec3<bool>(false, false, var_1.c.a))), vec3<bool>(var_1.c.a, true, all(var_1.b)), select(true, false, true)), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(var_1.c.a, true, false), false))));
    global0 = array<Struct_3, 16>();
    return !var_3;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> bool {
    var var_0 = !(_wgslsmith_add_i32(firstLeadingBit(-26845i), reverseBits(func_1(-58015i, u_input.a.xy, global0[_wgslsmith_index_u32(4294967295u, 16u)]).a.x)) <= u_input.a.x);
    var var_1 = ((arg_0 << (_wgslsmith_add_u32(global2.x, arg_0) % 32u)) ^ 1u) > ~firstTrailingBit(global2.x);
    var_1 = false;
    var var_2 = 4294967295u & ~arg_0;
    let var_3 = _wgslsmith_div_vec2_u32(u_input.c.yz, vec2<u32>(_wgslsmith_div_u32(1u, reverseBits(4294967295u)), ~(~20679u)));
    return arg_1.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = select(false, true, func_4(1u, vec2<bool>(true, true), func_3())) && true;
    return vec3<bool>(select(all(vec4<bool>(any(vec2<bool>(false, false)), true, all(vec2<bool>(true, false)), select(true, true, true))), true, true), (u_input.c.x >> ((u_input.c.x & global2.x) % 32u)) > _wgslsmith_div_u32(global2.x, 3747u), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_sub_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(47758i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a.x, -16965i, 0i, u_input.b))), u_input.b));
    var_0 = -36659i;
    global1 = array<Struct_2, 2>();
    let var_1 = select(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), func_2(-u_input.a, 193f, func_1(u_input.a.x, vec2<i32>(0i, u_input.a.x), Struct_3(vec2<i32>(1i, 12750i)))))), func_2(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), global0[_wgslsmith_index_u32(global2.x, 16u)]), vec3<bool>(func_3().x, !any(vec2<bool>(false, false)), true | ((73259u <= u_input.c.x) && false)));
    global0 = array<Struct_3, 16>();
    let var_2 = ~_wgslsmith_div_u32(firstTrailingBit(global2.x), u_input.c.x);
    var var_3 = Struct_2(Struct_1(var_1.x), vec2<bool>(var_1.x, var_1.x), Struct_1(var_1.x), Struct_1(true));
    let var_4 = vec3<bool>(true, var_1.x || var_1.x, !(all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)) && func_3().x) == var_3.c.a);
    let var_5 = Struct_2(var_3.a, func_3().yy, Struct_1(!var_4.x), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f), -1562f) - _wgslsmith_f_op_f32(trunc(-1335f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(504f, _wgslsmith_f_op_f32(f32(-1f) * -257f), 965f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-179f, 226f, 455f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f * -187f) + _wgslsmith_f_op_f32(round(364f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(472f, 499f)), _wgslsmith_f_op_f32(sign(599f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))))), _wgslsmith_sub_u32(~1u, ~13189u));
}

