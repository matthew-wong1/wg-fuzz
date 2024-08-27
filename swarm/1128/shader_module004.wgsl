struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, 4294967295u, true, vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), 1170f, Struct_1(3687u, 57330u, true, vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec3<f32>(1026f, 770f, 423f));

var<private> global2: Struct_2;

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(11995u, 5619u, false, vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    let var_0 = !(!(!global1.c.c));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1272f * 1584f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -502f));
    let var_1 = var_0;
    global3 = abs(~vec2<u32>(26105u, ~(26184u ^ u_input.a)));
    var var_2 = _wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.a, 0u), vec2<u32>(~1u, reverseBits(global3.x)) | vec2<u32>(global4.a, 37426u), ~((vec2<u32>(8293u, 11273u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))) | (vec2<u32>(global4.a, 13169u) << (vec2<u32>(global1.a.b, global4.b) % vec2<u32>(32u)))) & firstLeadingBit(abs(vec2<u32>(44661u, 6320u) ^ vec2<u32>(global3.x, 41358u))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = true;
    var var_1 = 576f;
    var var_2 = Struct_3(global1.a);
    var var_3 = -(~_wgslsmith_add_i32(_wgslsmith_sub_i32(~4744i, _wgslsmith_add_i32(-23380i, 2147483647i)), -1i << (global1.c.b % 32u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.b), global1.d.x, global2.b));
    return Struct_3(Struct_1(~(~_wgslsmith_clamp_u32(var_2.a.a, 4294967295u, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a, 32507u), func_3()), reverseBits(1u)), !any(vec3<bool>(global2.c.c, var_2.a.c, var_2.a.c)), global1.c.e, global1.c.d));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    let var_0 = func_2(arg_0.x <= (i32(-1i) * -arg_0.x));
    global4 = func_2(true).a;
    global4 = func_2(arg_1.a.x <= global1.d.x).a;
    let var_1 = _wgslsmith_add_u32(abs(~(~arg_2.a)), var_0.a.a);
    let var_2 = arg_0.x ^ ~arg_0.x;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(4294967295u, global2.a.b) ^ u_input.a, abs(func_1(vec3<i32>(-32123i, 0i, 2147483647i), Struct_4(global1.d), Struct_1(u_input.a, 4294967295u, true, global4.d, global4.d)) >> (~global2.c.b % 32u))) & select(0u, 30562u, global1.a.d.x);
    var var_1 = func_2(all(global1.a.e) | true);
    var var_2 = _wgslsmith_f_op_f32(-global1.d.x);
    var var_3 = _wgslsmith_f_op_f32(-global1.b) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), global2.b)));
    global3 = ~(~(select(vec2<u32>(global2.c.a, global4.a), ~vec2<u32>(global1.c.b, global1.a.a), all(global4.d.xx)) | firstLeadingBit(firstLeadingBit(vec2<u32>(1u, global2.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(-max(vec4<i32>(17567i, -35501i, -44484i, 1026i), vec4<i32>(-32278i, 4633i, 28849i, 2470i)), -vec4<i32>(1i, -14218i, -2147483647i, 1i) << (vec4<u32>(u_input.a, 10365u, global1.c.a, 22047u) % vec4<u32>(32u))));
}

