struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1 = Struct_1(1028f);

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: Struct_1 = Struct_1(-795f);

var<private> global4: f32 = -1529f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>) -> i32 {
    global3 = Struct_1(global3.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, -2711f, arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))))));
    let var_1 = arg_0;
    let var_2 = select(vec3<bool>(arg_0, (_wgslsmith_add_i32(14083i, arg_1.x) & 2147483647i) <= -2147483647i, all(!(!vec3<bool>(true, arg_0, var_1)))), vec3<bool>(true, var_1, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, arg_1.x, arg_1.x, 52249i)), abs(vec4<i32>(arg_1.x, 0i, -1i, -5131i))) < ~_wgslsmith_mult_i32(arg_1.x, -2147483647i)), vec3<bool>(all(!select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, arg_0), vec3<bool>(true, var_1, arg_0))), !(!all(vec4<bool>(arg_0, false, arg_0, arg_0))), all(!(!vec4<bool>(arg_0, arg_0, true, arg_0)))));
    global2 = array<vec3<f32>, 11>();
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(-2147483647i, ~_wgslsmith_div_i32(func_3(true, vec2<i32>(22470i, 1i), vec2<f32>(global1.a, global1.a)), firstTrailingBit(45962i)), ~(~countOneBits(2147483647i))) ^ abs(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(12986i, 10890i, 4208i), select(vec3<i32>(26720i, -1i, -2147483647i), vec3<i32>(0i, -34706i, 6291i), vec3<bool>(false, false, false))), vec3<i32>(2147483647i, 0i, -1813i) >> (select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 17128u, 35019u), true) % vec3<u32>(32u))));
    var var_1 = select(vec2<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)) && all(vec2<bool>(true, true))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), var_0.x > var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(true, false))), u_input.a.x >= u_input.a.x)));
    global2 = array<vec3<f32>, 11>();
    var_1 = select(vec2<bool>(!(var_1.x && false) && var_1.x, true), select(select(vec2<bool>(var_1.x, 7435u > u_input.a.x), !(!vec2<bool>(var_1.x, true)), !select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x))), vec2<bool>(any(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(false, var_1.x, false, var_1.x))), any(vec2<bool>(true, true))), select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), true), !vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), false)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), any(vec4<bool>(var_1.x, false, var_1.x, true))), select(vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, true), vec2<bool>(true, false), var_1.x), var_1.x))), false);
    var var_2 = Struct_1(global1.a);
    return Struct_1(1126f);
}

fn func_1() -> Struct_1 {
    var var_0 = ~1u;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) + global1.a));
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(66608u, 2015u, 29589u), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(u_input.a.x ^ u_input.a.x, 4806u, 4294967295u)), abs(max(min(vec3<u32>(u_input.a.x, 18052u, 1u), vec3<u32>(15328u, 41885u, 4294967295u)), ~vec3<u32>(1u, 4294967295u, u_input.a.x)))), ~vec3<u32>(~u_input.a.x, 4294967295u, ~1u ^ u_input.a.x));
    global2 = array<vec3<f32>, 11>();
    let var_2 = true;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    global2 = array<vec3<f32>, 11>();
    var var_0 = firstLeadingBit(2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(global3.a - global1.a)))));
    var var_2 = false;
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~11186u), firstTrailingBit(53713u), ~(u_input.a.x | 0u), ~1u), 49616i);
}

