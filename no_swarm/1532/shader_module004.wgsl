struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: Struct_3 = Struct_3(Struct_2(1i, -1388f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    global0 = array<vec3<u32>, 20>();
    var var_0 = -30400i;
    let var_1 = global1.a.a;
    let var_2 = global1.a;
    let var_3 = Struct_2(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.b, _wgslsmith_f_op_f32(global1.a.b + 1000f)))) + -1000f));
    return u_input.a.x;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = (~firstTrailingBit(~u_input.a.x) ^ func_2()) | 0u;
    var var_1 = _wgslsmith_f_op_f32(trunc(global1.a.b));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1920f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_clamp_i32(global1.a.a, global1.a.a, ~(-63062i)), global1.a.a, global0[_wgslsmith_index_u32(arg_0, 20u)]);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, global1.a.b))));
    return ~_wgslsmith_clamp_u32(~(~(~u_input.a.x)), u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 58685u, arg_0, 4294967295u), u_input.a), abs(~u_input.a.x)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    let var_0 = u_input.a.xy & vec2<u32>(~u_input.a.x, ~(~u_input.a.x >> (~arg_0 % 32u)));
    var var_1 = Struct_3(Struct_2(global1.a.a, 371f));
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, global1.a.a), vec2<i32>(-45106i, global1.a.a) << (u_input.a.yy % vec2<u32>(32u))) ^ vec2<i32>(select(36484i, var_1.a.a, false), reverseBits(var_1.a.a)), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, var_1.a.a), vec2<i32>(1i, -2147483647i)) >> (~var_0 % vec2<u32>(32u)))), select(vec2<i32>(_wgslsmith_sub_i32(reverseBits(var_1.a.a), 2147483647i), arg_1.a), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-33695i, -2147483647i), vec2<i32>(global1.a.a, global1.a.a), vec2<i32>(arg_1.a, 50198i)) << (var_0 % vec2<u32>(32u)), ~77447u != _wgslsmith_dot_vec4_u32(~u_input.a, firstTrailingBit(u_input.a))));
    var var_3 = abs(u_input.a.zw);
    let var_4 = Struct_4(Struct_2(-10812i, -1903f), func_1(_wgslsmith_add_u32(u_input.a.x, var_3.x)) ^ _wgslsmith_add_u32(86521u, ~var_3.x), vec4<bool>(true, true, true, true), vec3<u32>(~1u, var_3.x, ~_wgslsmith_div_u32(~7681u, u_input.a.x)));
    return !vec4<bool>(any(!(!var_4.c.zz)), false, any(vec3<bool>(true, true, any(var_4.c))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(firstTrailingBit(-max(global1.a.a, 2147483647i)), 507f));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(838f)) * _wgslsmith_f_op_f32(exp2(var_0.a.b))))), _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - 1045f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-986f + -851f)), _wgslsmith_f_op_f32(-891f - -694f))))));
    let var_2 = Struct_4(var_0.a, _wgslsmith_add_u32(~u_input.a.x, 0u), !func_3(func_1(min(u_input.a.x, u_input.a.x)), global1.a, global1.a.b), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.a.x, 0u), vec2<u32>(4294967295u, u_input.a.x)), u_input.a.wz), u_input.a.yw << (u_input.a.zx % vec2<u32>(32u))), 20u)]);
    let var_3 = ((min(u_input.a.x, 53085u) ^ var_2.d.x) ^ u_input.a.x) > ~0u;
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, var_0.a.a), ~_wgslsmith_mult_u32(u_input.a.x | ~43556u, var_2.b));
}

