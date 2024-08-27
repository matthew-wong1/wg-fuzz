struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(-961f), false, Struct_1(1000f));

var<private> global3: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = select(-_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-2122i, arg_1.a.d.x, 0i), arg_2.d), u_input.a.wzz, vec3<i32>(53858i, arg_2.d.x, arg_1.a.d.x)) ^ -_wgslsmith_clamp_vec3_i32(arg_2.d, -vec3<i32>(arg_2.d.x, -2147483647i, 2147483647i), ~vec3<i32>(-21988i, arg_1.a.d.x, arg_1.a.d.x)), arg_2.d, true);
    let var_1 = _wgslsmith_div_u32(~(~arg_2.a.x) | ~arg_0.x, ~(~4294967295u));
    let var_2 = arg_1;
    global3 = 46760u;
    var var_3 = Struct_2(arg_2.b, (-2147483647i > arg_1.a.d.x) & var_2.a.c.x, Struct_1(-347f));
    return vec3<bool>(!(arg_1.a.d.x >= u_input.a.x) & true, arg_2.c.x, arg_2.c.x);
}

fn func_2() -> Struct_3 {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.c.a - -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global1.a) + _wgslsmith_f_op_f32(floor(global2.a.a))))), all(vec3<bool>(true, all(func_3(vec2<u32>(0u, 22489u), Struct_4(Struct_3(vec2<u32>(39056u, 4294967295u), global2.a, vec2<bool>(global2.b, global2.b), u_input.a.wwx), vec2<f32>(global2.c.a, 497f)), Struct_3(vec2<u32>(32577u, 1u), Struct_1(global1.a), vec2<bool>(global2.b, global2.b), vec3<i32>(-30283i, u_input.b, -1i)))), true)), Struct_1(global1.a));
    var var_0 = u_input.a.yx;
    var var_1 = Struct_4(Struct_3(~vec2<u32>(_wgslsmith_mod_u32(1u, 63465u), 0u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1575f)), vec2<bool>(!func_3(vec2<u32>(1u, 4294967295u), Struct_4(Struct_3(vec2<u32>(76721u, 1u), global2.a, vec2<bool>(true, false), vec3<i32>(502i, var_0.x, u_input.b)), vec2<f32>(-125f, 364f)), Struct_3(vec2<u32>(73709u, 0u), Struct_1(global2.c.a), vec2<bool>(true, global2.b), u_input.a.www)).x, global2.b), u_input.a.xyz), vec2<f32>(_wgslsmith_f_op_f32(max(-1499f, global1.a)), 2103f));
    let var_2 = countOneBits(u_input.a.yy);
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1295f + -507f), 564f));
    return var_1.a;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1476f * global1.a);
    var var_1 = u_input.b;
    let var_2 = func_2();
    let var_3 = vec4<f32>(-1991f, -557f, global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b.a)) - 2189f));
    global3 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 36193u, 1u), ~vec3<u32>(56546u, 34851u, 4294967295u))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(func_1(), 1u);
    global2 = Struct_2(func_2().b, !any(select(vec4<bool>(global2.b, global2.b, true, global2.b), !vec4<bool>(false, global2.b, global2.b, true), select(vec4<bool>(true, global2.b, global2.b, global2.b), vec4<bool>(global2.b, global2.b, false, true), vec4<bool>(true, global2.b, false, false)))), func_2().b);
    var var_1 = Struct_4(Struct_3(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(1u, 14779u)), vec2<u32>(~31585u, func_2().a.x)), Struct_1(-937f), vec2<bool>(true, global2.b), u_input.a.xwz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.a, -116f) * vec2<f32>(global2.c.a, global1.a)) + vec2<f32>(449f, global1.a))))));
    global0 = array<vec4<i32>, 17>();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * 560f) * global2.c.a), 531f) + vec3<f32>(155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a)), var_1.b.x));
    let var_3 = Struct_4(var_1.a, var_2.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~var_1.a.a, vec2<u32>(var_3.a.a.x, var_1.a.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(20793u, 4294967295u, var_3.a.a.x, 0u), select(vec4<u32>(var_3.a.a.x, var_1.a.a.x, 1u, 83693u), vec4<u32>(var_1.a.a.x, var_3.a.a.x, 4294967295u, 4294967295u), false))), var_3.a.a << ((var_1.a.a ^ vec2<u32>(46430u, var_1.a.a.x)) % vec2<u32>(32u))), vec4<u32>(81018u, ~(18472u & var_3.a.a.x), _wgslsmith_add_u32(~var_1.a.a.x ^ ~53205u, 0u), 0u), ~vec3<u32>(_wgslsmith_add_u32(44267u, var_3.a.a.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a.x, var_3.a.a.x, var_1.a.a.x), vec3<u32>(4294967295u, var_3.a.a.x, 1u)), ~var_1.a.a.x, firstLeadingBit(~1u)), ~_wgslsmith_clamp_u32(~(~0u), _wgslsmith_dot_vec2_u32(var_1.a.a & vec2<u32>(var_1.a.a.x, 1u), var_1.a.a), select(40529u, 0u, true)));
}

