struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: f32 = -786f;

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_3 {
    return Struct_3(1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(115f, -238f) * vec2<f32>(-600f, -798f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-173f, -197f) + vec2<f32>(1453f, -127f)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1996f, -1261f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1068f, -279f)))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<i32> {
    global2 = true;
    let var_0 = Struct_3(arg_1.b.x, arg_0.b);
    var var_1 = reverseBits(~(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.c.x)));
    return max(arg_3.a, abs(u_input.c));
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    global4 = 2061f;
    let var_0 = func_3(func_2(), func_2(), ~vec3<u32>(u_input.b, u_input.b, u_input.a.x), Struct_2(u_input.c, ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 37070u) >> (vec2<u32>(69875u, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 1u) | u_input.a)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(round(func_2().a));
    var var_3 = -u_input.c.x;
    return _wgslsmith_f_op_f32(floor(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1241f, _wgslsmith_f_op_f32(887f + 1273f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-627f)) - _wgslsmith_f_op_f32(sign(-664f))))));
    global0 = ~_wgslsmith_add_i32(u_input.c.x, -2147483647i) <= -firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x & u_input.c.x, 2147483647i, -u_input.c.x));
    global1 = _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4608u), _wgslsmith_mod_vec2_u32(u_input.a, (vec2<u32>(u_input.a.x, u_input.b) & vec2<u32>(15826u, u_input.b)) | select(u_input.a, u_input.a, false))));
    global0 = all(vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(814f - 2880f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-787f, 2553f)), true, true));
    global3 = _wgslsmith_f_op_f32(func_1(true, 28885i));
    let var_0 = 662i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(u_input.a.x & u_input.b)), 1u, _wgslsmith_mult_u32(u_input.b, u_input.a.x), u_input.a.x));
}

