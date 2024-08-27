struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<Struct_3, 18>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_i32(-1i, firstTrailingBit(-_wgslsmith_div_i32(abs(arg_0), arg_0 << (u_input.a % 32u))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-42118i, ~(-2147483647i) ^ arg_0), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, arg_0, arg_0, arg_0)), vec4<i32>(arg_0, arg_0, 2147483647i, -67768i) | vec4<i32>(1i, -12504i, -10747i, arg_0)) ^ -2147483647i, arg_0 << (~1u % 32u)));
    global0 = array<bool, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - arg_1.yy))))) * vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(arg_1.x, 267f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2025f, _wgslsmith_f_op_f32(select(642f, arg_1.x, global0[_wgslsmith_index_u32(1u, 7u)])))) - -100f)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -445f)), -1107f, ~u_input.a <= 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1338f)))));
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-2192f - 836f))), _wgslsmith_f_op_f32(trunc(var_1.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, -1673f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, arg_1.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, arg_1.x)))))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f - 1296f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-370f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(942f, -497f), vec2<f32>(150f, 807f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(8017i, vec4<f32>(501f, 109f, -1000f, -954f))) * vec2<f32>(334f, 1406f))))));
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(21893u, 4294967295u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 25273u, u_input.a) << (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 23669u, 33913u), vec3<u32>(u_input.a, u_input.a, u_input.a)) & _wgslsmith_mult_vec3_u32(vec3<u32>(7377u, 1u, 18836u), vec3<u32>(69778u, 11291u, arg_0)))), 18u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-651f, _wgslsmith_f_op_f32(floor(267f)), 131f));
    var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a);
    return -845f;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2381f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_f_op_f32(571f + -926f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_i32(7410i, 17272i), _wgslsmith_f_op_vec4_f32(vec4<f32>(627f, -443f, 520f, -1268f) * vec4<f32>(923f, -1163f, -123f, 781f)))) - vec2<f32>(_wgslsmith_div_f32(-480f, -754f), _wgslsmith_f_op_f32(abs(-272f))))));
    let var_1 = Struct_1(-532f);
    let var_2 = vec4<bool>(all(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(1114u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false, false), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(10046u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)])), var_0.b.x <= 724f), vec3<bool>(false | global0[_wgslsmith_index_u32(u_input.a, 7u)], !global0[_wgslsmith_index_u32(u_input.a, 7u)], all(vec3<bool>(global0[_wgslsmith_index_u32(23613u, 7u)], false, false))))), false, true, true);
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return countOneBits(~(-(vec2<i32>(-1i) * -vec2<i32>(-21950i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 18>();
    var var_0 = firstTrailingBit(func_1());
    var var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-341f, 983f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) * _wgslsmith_div_f32(-753f, _wgslsmith_f_op_f32(570f + 1234f)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -519f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, -144f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a, var_2.a)))))));
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-358f, 1898f)))), 1f, _wgslsmith_f_op_f32(1002f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a)))), 1f), _wgslsmith_clamp_i32(-5677i, var_0.x, abs(_wgslsmith_sub_i32(abs(8684i), _wgslsmith_dot_vec3_i32(vec3<i32>(76571i, 0i, 2147483647i), vec3<i32>(var_0.x, -39200i, var_0.x))))));
}

