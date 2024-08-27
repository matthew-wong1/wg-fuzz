struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(55749u, 62336u), 0i, 44459i);

var<private> global3: Struct_1 = Struct_1(true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_2(countOneBits(u_input.b | u_input.b), _wgslsmith_dot_vec3_i32(u_input.d.zyy, -vec3<i32>(-21008i, firstLeadingBit(u_input.c), _wgslsmith_add_i32(0i, 2147483647i))), ~reverseBits(-max(u_input.d.x, -34695i)));
    global1 = abs(global2.b);
    global1 = u_input.d.x;
    return 1000f;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    let var_0 = global2.c << (u_input.e % 32u);
    var var_1 = vec3<i32>(global2.c, 1i, i32(-1i) * -global2.b);
    global1 = ~global2.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-209f, 1572f, 390f))) * vec3<f32>(-1595f, -1011f, 1000f))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * -396f), _wgslsmith_f_op_f32(ceil(1000f))), arg_0, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-290f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 * 2116f))))), _wgslsmith_f_op_f32(func_3(Struct_1(false && global3.a, false), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))))), all(!select(select(arg_1.wx, vec2<bool>(false, global3.a), true), select(arg_1.xy, vec2<bool>(true, global3.a), arg_1.wx), global3.b))));
    global2 = Struct_2(vec2<u32>(abs((global2.a.x | global2.a.x) << (_wgslsmith_sub_u32(u_input.b.x, global2.a.x) % 32u)), ~(~(~38341u))), global2.b << (global2.a.x % 32u), -29374i);
    return -2147483647i;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: i32) -> vec2<f32> {
    let var_0 = Struct_2(vec2<u32>(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u) | vec2<u32>(u_input.e, u_input.e), firstTrailingBit(global2.a))), 0i, abs(_wgslsmith_add_i32(reverseBits(func_2(-184f, vec4<bool>(false, false, true, global3.a))), 8373i << (_wgslsmith_clamp_u32(u_input.b.x, 29059u, u_input.e) % 32u))));
    global3 = Struct_1(global3.a, -43795i >= -_wgslsmith_add_i32(func_2(arg_1, vec4<bool>(false, global3.a, true, false)), _wgslsmith_sub_i32(global2.c, u_input.c)));
    let var_1 = Struct_2(~(~var_0.a), firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, arg_3, 1i) >> (min(u_input.e >> (arg_0 % 32u), ~var_0.a.x) % 32u)), ~u_input.a);
    global2 = var_1;
    let var_2 = var_1.a.x | (~(~global2.a.x) ^ arg_0);
    return vec2<f32>(arg_1, -388f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(863f)), -441f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(921f * -132f) + _wgslsmith_f_op_f32(f32(-1f) * -1454f)))) + _wgslsmith_f_op_vec2_f32(func_1(~1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)))), countOneBits(min(13486i, _wgslsmith_dot_vec2_i32(u_input.d.zx, vec2<i32>(-27305i, -1i)))), 62809i >> (~global2.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-359f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(143f - 618f))) - -823f));
}

