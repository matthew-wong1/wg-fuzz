struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: vec3<i32> = vec3<i32>(1i, -1i, -1i);

var<private> global4: f32 = 537f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -776f), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 847f))), vec3<f32>(-196f, arg_0.a.x, arg_0.a.x)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_4(vec3<i32>(-2147483647i, global3.x, global3.x), Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(-1722f, 775f)), _wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(trunc(1000f))))), Struct_2(arg_1.a), any(!(!vec2<bool>(global0.a, arg_1.a)))), firstLeadingBit(_wgslsmith_clamp_i32(global3.x, global3.x, ~abs(global3.x))), -390f, vec2<bool>(any(!(!vec3<bool>(arg_1.a, true, arg_1.a))), arg_1.a));
    global1 = array<Struct_1, 18>();
    global0 = var_0.b.b;
    let var_1 = select(all(select(!(!vec3<bool>(false, var_0.e.x, arg_1.a)), vec3<bool>(0u > arg_0, var_0.b.c, true), select(select(vec3<bool>(true, global0.a, true), vec3<bool>(var_0.b.c, var_0.e.x, true), vec3<bool>(arg_1.a, true, arg_1.a)), vec3<bool>(false, var_0.b.c, arg_1.a), vec3<bool>(var_0.b.b.a, false, false)))), !(!(!arg_1.a)), any(vec2<bool>(~arg_0 != u_input.a.x, any(!var_0.e))));
    var var_2 = select(!(!vec3<bool>(any(vec3<bool>(var_0.b.b.a, true, false)), false, !arg_1.a)), !select(!(!vec3<bool>(arg_1.a, arg_1.a, false)), vec3<bool>(true, true, all(var_0.e)), (global3.x != global3.x) | var_0.b.c), true);
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32((vec4<i32>(global3.x, global3.x, -7663i, global3.x) >> (vec4<u32>(arg_0, arg_0, 38258u, 1u) % vec4<u32>(32u))) | min(vec4<i32>(var_0.a.x, var_0.a.x, -25375i, 12350i), vec4<i32>(var_0.c, 2147483647i, -2147483647i, -5607i)), vec4<i32>(countOneBits(-29906i), firstLeadingBit(global3.x), -global3.x, ~var_0.c)), ~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -1i, -1i, 1i)), vec4<i32>(global3.x, global3.x, -64982i, global3.x)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(1u, ~0u);
    global4 = 640f;
    global3 = abs(vec3<i32>(_wgslsmith_mod_i32(~func_3(43961u, Struct_2(true)), abs(25679i)), global3.x, ~(-global3.x)));
    var var_1 = ~(~arg_0);
    let var_2 = _wgslsmith_f_op_f32(-101f * 1629f);
    return Struct_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec3_i32(~abs(-vec3<i32>(global3.x, global3.x, global3.x)), -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global3.x, global3.x, -14350i), vec3<i32>(global3.x, 30273i, global3.x)), vec3<i32>(global3.x, global3.x, global3.x), -vec3<i32>(global3.x, global3.x, global3.x)), vec3<i32>(_wgslsmith_sub_i32(global3.x, -32499i), -global3.x, _wgslsmith_add_i32(56360i, 15430i))));
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) + _wgslsmith_f_op_f32(f32(-1f) * -205f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -987f))), 310f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec3<f32>(-306f, 926f, -1093f), Struct_2(global0.a), false), ~global3.x))))), func_2(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b & u_input.a.zy)), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-1183f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(2130f, var_0.a.x) - 889f))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, ~u_input.a.x, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(7988u, 4294967295u, u_input.b.x, 0u), vec4<u32>(27556u, u_input.b.x, 17664u, u_input.a.x))), ~(~vec4<u32>(u_input.b.x, u_input.a.x, 17087u, 16807u))), ~u_input.b.x, ~abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), vec2<u32>(u_input.a.x, 0u))), vec4<i32>(abs(global3.x), _wgslsmith_mult_i32(6126i, global3.x), ~select(global3.x, global3.x, func_2(u_input.a.x).a), global3.x));
}

