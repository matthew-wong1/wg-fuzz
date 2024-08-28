struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(9121i, vec2<bool>(true, false)), vec4<u32>(17088u, 0u, 47195u, 0u), vec4<i32>(i32(-2147483648), 35103i, 24333i, 1i), 115f);

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> bool {
    global0 = Struct_2(Struct_1(arg_1.x, global1.b), _wgslsmith_sub_vec4_u32(~abs(~vec4<u32>(global0.b.x, global0.b.x, u_input.a.x, global2.x)), vec4<u32>(u_input.a.x, u_input.a.x, ~46942u, 1u)), vec4<i32>(-global0.c.x, reverseBits(countOneBits(global0.a.a << (0u % 32u))), min(global0.a.a, global1.a), 0i), -687f);
    global1 = Struct_1(-67411i, !vec2<bool>(-1711f > _wgslsmith_f_op_f32(-arg_0), !global0.a.b.x));
    let var_0 = _wgslsmith_f_op_f32(-562f - global0.d);
    global1 = global0.a;
    var var_1 = vec3<i32>(global1.a, -1i, i32(-1i) * -265i);
    return global1.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1000f * 833f))))));
    var var_1 = Struct_1(global1.a, !vec2<bool>(any(vec3<bool>(global0.a.b.x, false, false)), func_3(_wgslsmith_f_op_f32(trunc(global0.d)), ~global0.c)));
    var var_2 = vec4<u32>(u_input.a.x, min(global0.b.x, 1u), 28365u, select(global0.b.x, 0u, false) & global2.x);
    var var_3 = min(global2.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18680u, arg_0), u_input.a.wx), arg_0) >> (~1u % 32u)) > 4294967295u;
    var_2 = ~(~vec4<u32>(arg_0, 65112u, ~_wgslsmith_add_u32(var_2.x, 31027u), var_2.x));
    return (var_1.a & var_1.a) <= 1i;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = !(!(func_2(_wgslsmith_clamp_u32(4294967295u, global0.b.x, global2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1278f, arg_0.x) - arg_0.xx)) && global0.a.b.x));
    let var_1 = select(1i, global0.c.x, global1.b.x);
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))))));
    global0 = Struct_2(Struct_1(select(-16491i, _wgslsmith_dot_vec3_i32(-global0.c.xwz, _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.a, global0.a.a, -2147483647i), vec3<i32>(global0.c.x, -1i, 6914i))), all(!global1.b)), global0.a.b), ~(max(global0.b, vec4<u32>(global0.b.x, 1u, 4294967295u, global2.x)) | (global0.b | u_input.a)) << (reverseBits(~u_input.a ^ vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(-(~(25808i | var_1)), -20818i, i32(-1i) * -2147483647i, global1.a ^ -45032i), _wgslsmith_f_op_f32(-1106f + _wgslsmith_f_op_f32(-var_3)));
    return _wgslsmith_sub_u32(~4294967295u, ~(~_wgslsmith_div_u32(u_input.a.x, 4294967295u))) & global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(global2.x | u_input.a.x, ~u_input.a.x), 1u, func_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.d), -648f, _wgslsmith_f_op_f32(-global0.d))), _wgslsmith_mult_u32(115667u, abs(firstLeadingBit(global2.x)))), _wgslsmith_sub_vec4_u32(global0.b, ~firstTrailingBit(firstLeadingBit(vec4<u32>(global2.x, 4294967295u, 44433u, 59173u)))));
    global1 = global0.a;
    let var_2 = !(!(!(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))));
    global1 = global0.a;
    let var_3 = func_1(vec3<f32>(909f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) + -316f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(243f, global0.d))))) <= ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), -881f), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, 1i, var_0.a), global0.c.zzw), firstTrailingBit(global0.c.zzy << (vec3<u32>(0u, global2.x, global2.x) % vec3<u32>(32u)))), abs(vec3<i32>(46940i, 0i, global1.a << (1u % 32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(710f * -512f), _wgslsmith_f_op_f32(f32(-1f) * -704f)))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.d)), 942f, _wgslsmith_f_op_f32(min(550f, global0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global0.d, true)))));
}

