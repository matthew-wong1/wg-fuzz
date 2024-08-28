struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(14492i, -55728i);

var<private> global1: vec3<f32>;

var<private> global2: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    global0 = vec2<i32>(_wgslsmith_dot_vec3_i32(~global2.zyz, ~global2.zxw), _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(~global2.x, global0.x), ~(-u_input.b))) ^ vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, 44992i, u_input.b), vec3<i32>(-50768i, global2.x, 5773i) << (select(u_input.a.xyx, vec3<u32>(1u, 1u, 0u), true) % vec3<u32>(32u))));
    global0 = vec2<i32>(-1i) * -vec2<i32>(0i, 62703i);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-407f, _wgslsmith_f_op_f32(round(arg_0))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(global1.x)))), -654f, global1.x) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1000f)))) * vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(step(-960f, -867f)))))));
}

fn func_1() -> u32 {
    global0 = vec2<i32>(max(~min(2147483647i, global0.x), ~_wgslsmith_dot_vec3_i32(reverseBits(global2.ywz), global2.zyx)), global0.x);
    global0 = global2.xw;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -547f))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1035f, -132f, 1000f), vec3<f32>(global1.x, global1.x, global1.x))) * vec3<f32>(129f, -1153f, _wgslsmith_f_op_f32(638f - global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1528f, -1268f, global1.x) - vec3<f32>(global1.x, 146f, 1141f)))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(321f * global1.x))))));
    let var_0 = (vec3<i32>(-1i) * -global2.zwy) >> (vec3<u32>(_wgslsmith_clamp_u32(116373u, u_input.a.x, 1u), ~0u, u_input.a.x) % vec3<u32>(32u));
    return reverseBits(u_input.a.x);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> StorageBuffer {
    return StorageBuffer((u_input.a.x & reverseBits(8076u)) << (u_input.a.x % 32u), reverseBits(~u_input.a.zy) ^ vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1326f, global1.x))), 101f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_1) * global1.yz))), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_add_i32(abs(-u_input.b), _wgslsmith_add_i32(global0.x, global0.x)), 49774i), global1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(412f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1014f)), 974f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -161f))), 301f, u_input.b > (global2.x | global2.x))) * global1.x), 1u, select(select(vec3<bool>(true, true, true), vec3<bool>(-1681f >= global1.x, false, true), countOneBits(51290u) <= func_1()), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true)), true && !all(vec2<bool>(true, false))));
}

