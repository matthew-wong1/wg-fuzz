struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(min(~(~abs(global0.a)), vec2<u32>(global1.a.x | global0.a.x, 0u << (~global0.a.x % 32u))));
    return vec2<bool>(false, all(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_4(Struct_1(1f, vec4<bool>(false, arg_0.x, true, arg_0.x)), ~max(~select(vec4<u32>(0u, 8944u, global1.a.x, 38927u), vec4<u32>(54837u, u_input.e.x, 0u, global0.a.x), arg_0.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.a.x, 1u), vec3<u32>(6939u, u_input.a.x, global1.a.x)), 60206u, ~global0.a.x, max(global0.a.x, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(722f, 160f, 595f), vec3<f32>(299f, -382f, 326f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, 733f, -402f) - vec3<f32>(1782f, 695f, -361f))), select(!vec3<bool>(arg_0.x, true, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, false), vec3<bool>(arg_0.x, arg_0.x, false)), true)))), select(vec4<bool>(!(u_input.c > -3874i), arg_0.x, arg_0.x, arg_0.x), !select(select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), arg_0.x), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0.x)), true), Struct_2(vec2<u32>(~global0.a.x, _wgslsmith_sub_u32(firstLeadingBit(global0.a.x), 16831u))));
    var var_1 = vec4<i32>(~(~_wgslsmith_add_i32(~u_input.d.x, ~2147483647i)), -(~u_input.c), u_input.c, ~u_input.b.x);
    let var_2 = Struct_3(max(countOneBits(firstTrailingBit(~u_input.d)), vec4<i32>(2147483647i, select(var_1.x, -38784i, false), ~var_1.x, 2147483647i)), var_0.a, 36950i, ~(~vec3<u32>(global0.a.x, global0.a.x, 4294967295u)));
    global1 = Struct_2(firstTrailingBit(u_input.a));
    global0 = Struct_2(_wgslsmith_mod_vec2_u32(u_input.e, global1.a | var_0.e.a));
    return var_0.d.x;
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    global0 = Struct_2(global1.a | global1.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-204f, 1881f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(176f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)))), vec4<bool>(false, select(true, all(select(arg_0.wwy, arg_0.wyz, arg_0.x)), arg_0.x), !all(!arg_0.yy), arg_0.x));
    let var_1 = Struct_4(var_0, abs(_wgslsmith_add_vec4_u32((vec4<u32>(global0.a.x, 45281u, global1.a.x, u_input.e.x) >> (vec4<u32>(global0.a.x, 1u, global1.a.x, global1.a.x) % vec4<u32>(32u))) >> (select(vec4<u32>(150110u, 1355u, 76549u, global0.a.x), vec4<u32>(72141u, global1.a.x, global0.a.x, 1u), arg_0.x) % vec4<u32>(32u)), select(vec4<u32>(global0.a.x, 5829u, u_input.e.x, 4294967295u), ~vec4<u32>(global0.a.x, 0u, u_input.e.x, global1.a.x), !arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 899f, -255f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.a, -1000f))), true))), select(select(!var_0.b, vec4<bool>(true, true, true, true), ~56856u < countOneBits(global1.a.x)), var_0.b, false), Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(global0.a, u_input.e), ~global0.a)));
    global1 = Struct_2(vec2<u32>(6084u, _wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.a.x, ~57914u), ~_wgslsmith_mult_u32(global1.a.x, 1u))));
    let var_2 = _wgslsmith_clamp_u32(abs(global1.a.x), ~firstTrailingBit(var_1.e.a.x) & reverseBits(~4294967295u), 38272u) & global1.a.x;
    return var_1.e;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = func_4(vec4<bool>((-769f > _wgslsmith_f_op_f32(-arg_0)) != true, func_3(func_2()), !any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), true));
    let var_0 = arg_0;
    global0 = Struct_2(~u_input.e);
    global1 = func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, !any(vec4<bool>(true, false, false, false)), false), !(-1i != _wgslsmith_sub_i32(u_input.d.x, -29741i))));
    var var_1 = global1.a.x;
    return Struct_1(_wgslsmith_f_op_f32(-arg_0), !vec4<bool>(true, !(2147483647i > u_input.d.x), true, all(vec4<bool>(false, true, false, true)) || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global0 = Struct_2(global0.a);
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1069f)) - _wgslsmith_f_op_f32(-1057f * 322f))));
    global0 = func_4(var_1.b);
    var var_2 = Struct_2(vec2<u32>(5074u, select(30793u, u_input.a.x << (~0u % 32u), var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.xzz, ~u_input.c, vec3<f32>(186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1013f)) * var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(656f + var_1.a) * _wgslsmith_f_op_f32(trunc(var_1.a))), _wgslsmith_f_op_f32(sign(494f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2095f, var_1.a)), vec2<f32>(-1000f, var_1.a))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, var_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a, -159f), vec2<f32>(321f, var_1.a)))))))));
}

