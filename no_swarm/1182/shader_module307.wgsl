struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1 = Struct_1(true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    let var_0 = Struct_5(~max(abs(~arg_1.x), _wgslsmith_dot_vec2_u32(arg_1 & arg_1, ~arg_1)), vec4<u32>(~_wgslsmith_mult_u32(0u, 20214u), ~min(75603u, 34024u), _wgslsmith_sub_u32(select(arg_1.x, u_input.b, global1.a), 81155u), ~1u) & reverseBits(select(vec4<u32>(u_input.b, 0u, arg_1.x, arg_1.x) ^ vec4<u32>(u_input.a.x, 26270u, arg_1.x, u_input.b), ~vec4<u32>(51983u, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_2.a.d, false, arg_2.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f + 1000f))));
    global1 = arg_2.a.a;
    global0 = min(var_0.a, 18416u) & 4294967295u;
    let var_1 = false;
    var var_2 = select(vec2<bool>(true, arg_2.a.c.a), vec2<bool>(true, true), true);
    return global1.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1715f, arg_0.b)))));
    global1 = Struct_1(any(!vec2<bool>(false, func_3(u_input.c.zw, vec2<u32>(u_input.b, 2551u), Struct_3(Struct_2(Struct_1(true), var_1.x, arg_0.c, false))))));
    var var_2 = _wgslsmith_mod_i32(abs(firstLeadingBit(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), u_input.c.x);
    let var_3 = all(vec4<bool>(u_input.c.x > u_input.c.x, !any(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, arg_0.a.a), vec2<bool>(false, true))), all(!vec2<bool>(false, global1.a)) && global1.a, all(select(select(vec2<bool>(false, false), vec2<bool>(global1.a, false), global1.a), !vec2<bool>(global1.a, true), select(vec2<bool>(global1.a, false), vec2<bool>(false, false), vec2<bool>(arg_0.a.a, global1.a))))));
    return firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(1u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, var_0), vec4<u32>(u_input.b, u_input.a.x, arg_1.x, 1u))), ~u_input.b), arg_1.xzy));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32((vec3<u32>(73592u, u_input.b, u_input.b) << (vec3<u32>(4294967295u, u_input.a.x, 0u) % vec3<u32>(32u))) << (vec3<u32>(0u, u_input.a.x, u_input.b) % vec3<u32>(32u)), func_2(Struct_2(Struct_1(arg_0), arg_1, Struct_1(true), arg_2.x), vec4<u32>(52324u, 1u, u_input.a.x, u_input.a.x) | vec4<u32>(29176u, 1u, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(max(1412f, _wgslsmith_f_op_f32(arg_1 - arg_1)))))))));
    let var_2 = Struct_1(all(select(!arg_2.yz, arg_2.xy, arg_0)));
    var var_3 = Struct_1(any(select(arg_2.xx, arg_2.zy, !(!arg_2.zy))));
    var_0 = ~_wgslsmith_mod_u32(4294967295u, 17795u);
    return select(!vec4<bool>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u) > _wgslsmith_mult_u32(u_input.b, u_input.b), true, false, true), select(vec4<bool>(all(select(vec4<bool>(true, true, global1.a, global1.a), vec4<bool>(true, var_2.a, false, arg_0), var_2.a)), !var_3.a, !global1.a, -1000f == _wgslsmith_f_op_f32(sign(1147f))), vec4<bool>(true, true, var_2.a, var_3.a), true), select(!(!select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(false, global1.a, var_3.a, true), true)), select(!vec4<bool>(var_2.a, true, true, true), select(!vec4<bool>(var_3.a, true, var_3.a, var_2.a), select(vec4<bool>(true, false, arg_2.x, var_2.a), vec4<bool>(false, var_3.a, arg_2.x, var_3.a), false), !vec4<bool>(false, false, arg_2.x, global1.a)), true), select(vec4<bool>(false, all(vec4<bool>(var_2.a, true, global1.a, false)), true, !arg_0), select(!vec4<bool>(var_2.a, arg_2.x, arg_0, false), !vec4<bool>(var_2.a, arg_2.x, false, var_3.a), arg_2.x), vec4<bool>(true, arg_0 && true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(false, global1.a, global1.a, true), global1.a), !vec4<bool>(global1.a, global1.a, true, false)), !(!vec4<bool>(global1.a, true, false, global1.a)), !global1.a && true));
    let var_1 = select(!select(!vec4<bool>(true, true, true, var_0), select(!vec4<bool>(var_0, true, false, var_0), func_1(false, 1247f, vec3<bool>(var_0, true, global1.a), u_input.c.x), select(global1.a, false, var_0)), _wgslsmith_mod_u32(2074u, 35195u) <= abs(u_input.b)), select(func_1(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1589f))), !(!vec3<bool>(global1.a, global1.a, var_0)), u_input.c.x), !vec4<bool>(-1i >= u_input.c.x, select(false, false, var_0), any(vec2<bool>(global1.a, true)), global1.a), var_0), !select(vec4<bool>(true, all(vec4<bool>(global1.a, true, var_0, var_0)), all(vec3<bool>(false, global1.a, false)), true), !select(vec4<bool>(var_0, global1.a, false, false), vec4<bool>(var_0, false, true, global1.a), var_0), func_1(true, _wgslsmith_f_op_f32(trunc(-2600f)), !vec3<bool>(true, true, global1.a), 1i)));
    let var_2 = ~4294967295u & ~_wgslsmith_dot_vec2_u32(~u_input.a.yz, u_input.a.xy);
    let var_3 = Struct_1(global1.a || true);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f - 1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f)) + 1403f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-666f + 1448f))))), false)));
    global0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, ~(~select(u_input.b, var_2, false))), 6289u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
}

