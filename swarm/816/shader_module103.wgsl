struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(29802u, 1u, 65670u), vec3<u32>(0u, 5895u, 1u), vec3<u32>(72730u, 1u, 57335u), vec3<u32>(49104u, 9208u, 0u), vec3<u32>(106939u, 0u, 0u), vec3<u32>(0u, 4294967295u, 23697u), vec3<u32>(48926u, 13018u, 81449u), vec3<u32>(45766u, 55556u, 1u));

var<private> global1: u32;

var<private> global2: f32 = -1597f;

var<private> global3: Struct_1 = Struct_1(false, -1000f, 0u, vec4<i32>(25051i, i32(-2147483648), 17i, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-459f)), -379f), _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1379f, global3.b), vec2<f32>(global3.b, global3.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.b, global3.b), vec2<f32>(global3.b, global3.b))))))));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(67415u, u_input.c.x, 0u, u_input.e), vec4<u32>(u_input.c.x, u_input.c.x, u_input.e, global3.c)), ~u_input.d, u_input.e), ~vec4<u32>(0u, global3.c, u_input.e, 8654u) >> (vec4<u32>(u_input.e, global3.c, global3.c, u_input.d) % vec4<u32>(32u)), select(~vec4<u32>(u_input.c.x, 18501u, global3.c, global3.c), abs(vec4<u32>(u_input.c.x, 16471u, global3.c, 37594u)), !global3.a)), vec4<u32>(global3.c ^ 1u, global3.c, 58286u, _wgslsmith_clamp_u32(83454u, 59534u, global3.c)) << (min(~vec4<u32>(u_input.e, 25127u, 1u, 29800u), ~vec4<u32>(global3.c, u_input.c.x, u_input.d, u_input.c.x)) % vec4<u32>(32u))), _wgslsmith_mod_u32(~((global3.c | u_input.c.x) ^ 0u), global3.c), u_input.c.x);
    var var_2 = i32(-1i) * -global3.d.x;
    var var_3 = Struct_1(!global3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1944f)), _wgslsmith_f_op_f32(step(var_0.x, 740f)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~1u), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(33315u, 1u, var_1, global3.c), vec4<u32>(global3.c, u_input.e, 83878u, u_input.d))), _wgslsmith_mod_u32(_wgslsmith_add_u32(select(4294967295u, var_1, global3.a), u_input.d), _wgslsmith_mod_u32(~var_1, 4294967295u << (u_input.c.x % 32u)))), u_input.b);
    let var_4 = Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), global3.c, u_input.b);
    return global3.c;
}

fn func_2() -> vec2<u32> {
    var var_0 = -(vec4<i32>(global3.d.x, ~(i32(-1i) * -6933i), ~0i, global3.d.x) & reverseBits(firstLeadingBit(vec4<i32>(80373i, u_input.a, u_input.a, u_input.b.x) & global3.d)));
    global0 = array<vec3<u32>, 8>();
    var var_1 = ~(~select(~(~vec4<u32>(41236u, global3.c, global3.c, 0u)), ~vec4<u32>(14248u, 22194u, u_input.d, 39192u) ^ ~vec4<u32>(36803u, global3.c, u_input.e, global3.c), any(select(vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(global3.a, global3.a, false), false))));
    var var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(global3.b, global3.b))) >= global3.b), global3.a, false);
    global1 = ~_wgslsmith_add_u32(func_3(), 65397u);
    return var_1.yy;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> f32 {
    global2 = 163f;
    let var_0 = min(~(countOneBits(u_input.c.yy) ^ u_input.c.yy), select(func_2(), abs(abs(countOneBits(u_input.c.yz))), vec2<bool>(true, arg_0.x)));
    var var_1 = Struct_3(Struct_2(Struct_1(!arg_0.x, global3.b, ~var_0.x, global3.d)), arg_0.x, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-850f + 494f))), global3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.b)) - -795f), _wgslsmith_div_f32(1056f, -265f)), !select(!select(arg_0.zx, arg_0.yz, arg_0.xx), select(select(vec2<bool>(arg_0.x, false), vec2<bool>(true, global3.a), true), vec2<bool>(global3.a, true), vec2<bool>(true, true)), !(!vec2<bool>(false, global3.a))));
    let var_2 = global3.d.wyy;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(-1419f - _wgslsmith_f_op_f32(min(-613f, global3.b)))));
    return -929f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(all(!vec3<bool>(global3.a, true, true)), true, global3.a), select(~abs(vec3<u32>(82671u, u_input.d, global3.c)), vec3<u32>(global3.c, 18997u, 0u), true))) - _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.b, -786f)) + _wgslsmith_f_op_f32(f32(-1f) * -1175f)), global3.b))));
    global0 = array<vec3<u32>, 8>();
    var var_1 = u_input.a;
    var var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b))), _wgslsmith_f_op_f32(select(-1393f, _wgslsmith_f_op_f32(f32(-1f) * -135f), true)), global3.b) * vec3<f32>(_wgslsmith_f_op_f32(abs(global3.b)), global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f * global3.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, vec2<i32>(u_input.a, select(max(1i, select(global3.d.x, 2147483647i, false)), ~global3.d.x, true)));
}

