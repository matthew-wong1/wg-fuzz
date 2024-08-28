struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_1 = Struct_1(-14076i, -507f);

var<private> global2: array<Struct_2, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    var var_0 = u_input.a.x;
    var var_1 = true;
    global2 = array<Struct_2, 21>();
    global1 = Struct_1(_wgslsmith_sub_i32(-23857i, 0i >> (~min(u_input.b, u_input.a.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(255f * arg_0.b))), global1.b) + -1644f));
    return Struct_1(-firstTrailingBit(_wgslsmith_mod_i32(arg_0.a, arg_0.a)) << (~(~(~u_input.b)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * arg_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - 239f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = max(~_wgslsmith_div_i32(global1.a, max(_wgslsmith_mult_i32(0i, global1.a), ~global1.a)), -1i << (abs(~_wgslsmith_mult_u32(u_input.b, 1u)) % 32u));
    let var_1 = vec4<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(275f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(438f - global1.b)))) - _wgslsmith_f_op_f32(abs(1040f))));
    global1 = func_2(global0[_wgslsmith_index_u32(u_input.a.x | u_input.b, 7u)]);
    let var_2 = global1.a;
    let var_3 = u_input.a.x | 0u;
    return Struct_1(-min(-9816i, reverseBits(-25651i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_1.x, 1038f)))))));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 4294967295u)) % 32u), 4423u, ~(~u_input.a.x), firstTrailingBit(u_input.a.x & u_input.b)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b, ~u_input.a.x, ~4294967295u, u_input.a.x), select(vec4<u32>(5067u, u_input.b, u_input.a.x, u_input.a.x) | vec4<u32>(115378u, u_input.a.x, u_input.b, 18869u), vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b), true)));
    global0 = array<Struct_1, 7>();
    var var_1 = Struct_2(~u_input.a);
    let var_2 = vec2<i32>(arg_0.a, 35484i);
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    return func_1();
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = vec2<i32>(global1.a, 7652i);
    let var_1 = vec3<u32>(u_input.b, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, u_input.b, 0u, 1u) | arg_2), vec4<u32>(~u_input.a.x, 0u, 4294967295u, select(0u, 1095u, arg_1))), ~_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(0u, arg_2.x), 0u & u_input.b)), ~firstTrailingBit(countOneBits(14522u)) << (8949u % 32u));
    let var_2 = 1i > -((0i | var_0.x) << (_wgslsmith_dot_vec3_u32(~var_1, var_1) % 32u));
    var var_3 = reverseBits(min(firstTrailingBit(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(50933i, global1.a, global1.a, arg_0.a)), vec4<i32>(-17543i, global1.a, -1i, -12335i) ^ vec4<i32>(arg_0.a, global1.a, arg_0.a, 1i))), vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 20606i)), var_0), func_1().a, 0i, global1.a)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)))))));
    return global2[_wgslsmith_index_u32(4294967295u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(0u), 21u)];
    global2 = array<Struct_2, 21>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)));
    let var_2 = func_4(func_3(func_1()), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false)) | select(true, true, true), ~vec4<u32>(_wgslsmith_mult_u32(0u, var_0.a.x), 0u & (u_input.b >> (var_0.a.x % 32u)), ~2441u, ~u_input.b), select(vec2<bool>(true, true), !vec2<bool>(global1.a != global1.a, -10279i > global1.a), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), false)));
    global1 = Struct_1(select(_wgslsmith_add_i32(global1.a << (u_input.b % 32u), -global1.a), -9677i, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) || true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-505f)) + var_1.x), var_1.x)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 7u)];
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstLeadingBit(global1.a), -_wgslsmith_mod_i32(-2147483647i, var_3.a)));
}

