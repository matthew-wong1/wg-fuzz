struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_3 = Struct_3(1000f, Struct_2(4294967295u));

var<private> global2: bool = true;

var<private> global3: vec3<f32> = vec3<f32>(831f, -689f, 403f);

var<private> global4: Struct_2 = Struct_2(1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> u32 {
    return 27816u;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec4<bool> {
    global2 = true;
    let var_0 = reverseBits(select(~vec3<u32>(~global4.a, 4294967295u, 80422u << (global4.a % 32u)), vec3<u32>(1u, firstTrailingBit(0u), _wgslsmith_sub_u32(max(global4.a, 1u), 18041u)), true));
    var var_1 = abs(reverseBits(_wgslsmith_mult_vec2_i32(-u_input.c, vec2<i32>(_wgslsmith_mod_i32(u_input.a, arg_0.x), _wgslsmith_clamp_i32(-81429i, 2147483647i, u_input.a)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-global1.a)))))), global1.a);
    var var_3 = ~var_0.x;
    return vec4<bool>(true, !(~abs(var_0.x) != u_input.b.x), false, !(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 225f))))), global1.b);
    var var_1 = _wgslsmith_f_op_f32(-global1.a);
    var var_2 = vec2<bool>(firstLeadingBit(_wgslsmith_mult_u32(firstTrailingBit(905u), min(9984u, u_input.b.x))) != firstTrailingBit(min(~global1.b.a, global1.b.a)), true);
    let var_3 = Struct_2(_wgslsmith_div_u32(~(~49079u) >> (global1.b.a % 32u), ~1u));
    var var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, ((global1.b.a | 22059u) & global1.b.a) | ((12973u >> (var_3.a % 32u)) >> (global1.b.a % 32u)), ~global4.a), vec3<u32>(reverseBits(firstLeadingBit(var_3.a)), 1u ^ countOneBits(global1.b.a), u_input.b.x));
    return 22749u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec4<u32>(func_4(!func_3(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_u32(0u, u_input.d.x)), -vec4<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647i, -4871i), select(-1i, -1i, false), i32(-1i) * -26058i, ~(-1i))), global1.b.a, _wgslsmith_mod_u32(~arg_0, global4.a), ~select(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), select(0u, global4.a, true) >> (func_1(Struct_3(649f, global1.b), vec4<f32>(global3.x, -507f, global1.a, global3.x)) % 32u), any(vec4<bool>(true, true, true, true))));
    var var_1 = vec2<bool>(0i > u_input.a, true);
    let var_2 = max(~(_wgslsmith_div_u32(1u, func_1(Struct_3(-963f, Struct_2(arg_0)), vec4<f32>(-1742f, 1859f, 2374f, 1259f))) << (global1.b.a % 32u)), 4294967295u);
    let var_3 = Struct_1(947f, firstLeadingBit(min(vec2<u32>(4294967295u, var_2), countOneBits(u_input.d.yw) & ~vec2<u32>(21963u, 0u))));
    let var_4 = ~(~var_2);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), global1.b.a < _wgslsmith_sub_u32(0u, global1.b.a))), false, any(vec2<bool>(true, true)) && ((any(vec4<bool>(true, true, false, false)) & any(vec4<bool>(false, false, false, false))) || !(global3.x < global1.a)));
    let var_1 = vec4<i32>(-1i) * -(vec4<i32>(u_input.c.x << (1u % 32u), u_input.a, u_input.c.x, 2147483647i) >> (vec4<u32>(countOneBits(37670u), func_1(Struct_3(-981f, global1.b), vec4<f32>(-189f, 1036f, global1.a, -647f)), 4294967295u, ~26154u) % vec4<u32>(32u)));
    let var_2 = all(!(!vec4<bool>(true, var_0.x, select(false, var_0.x, var_0.x), var_0.x)));
    let var_3 = func_2(abs(_wgslsmith_mod_u32(global1.b.a, ~global4.a)));
    let var_4 = u_input.d.wzy;
    let var_5 = ~(~u_input.c.x);
    var var_6 = global1.b;
    var_6 = global1.b;
    let var_7 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_4.x, 50903u), vec3<i32>(-24380i, var_1.x, -min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, var_5), vec4<i32>(u_input.a, var_5, var_5, -1i)), u_input.c.x)), reverseBits(var_1.zyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(255f)) - _wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1580f - 1568f), var_3.a)))), _wgslsmith_f_op_f32(select(func_2(8546u).a, _wgslsmith_f_op_f32(exp2(var_3.a)), !(!var_2))));
}

