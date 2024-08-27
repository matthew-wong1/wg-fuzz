struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, false, true, false, false, true);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    global0 = arg_1.d.a << ((~arg_0.a | ~(arg_0.a & abs(vec2<u32>(arg_2, global0.x)))) % vec2<u32>(32u));
    let var_0 = false;
    let var_1 = vec4<i32>(abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(3555i, 10673i, u_input.a), vec3<i32>(u_input.a, 34617i, 1i)) | ~u_input.a), -u_input.a, 1i, ~(-u_input.a));
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    return vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), 1u), ~73930u, 44415u | ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e.a.x, global0.x, 0u, arg_2), vec4<u32>(global0.x, 49936u, global0.x, arg_0.a.x))), global0.x);
}

fn func_3() -> f32 {
    global0 = vec2<u32>(global0.x, global0.x);
    global1 = array<bool, 7>();
    let var_0 = 38415u;
    global1 = array<bool, 7>();
    let var_1 = vec2<u32>(28358u, _wgslsmith_div_u32(reverseBits(_wgslsmith_mult_u32(max(0u, var_0), global0.x)), global0.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -305f);
}

fn func_1() -> vec4<u32> {
    let var_0 = -1107f;
    let var_1 = _wgslsmith_dot_vec4_i32(~min(_wgslsmith_add_vec4_i32(vec4<i32>(3643i, 24948i, 0i, u_input.a), vec4<i32>(-2147483647i, u_input.a, -1i, 27239i)), firstTrailingBit(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a))) >> (_wgslsmith_div_vec4_u32(firstLeadingBit(func_2(Struct_1(vec2<u32>(global0.x, 1u)), Struct_2(var_0, false, vec3<f32>(var_0, 1000f, 966f), Struct_1(vec2<u32>(global0.x, global0.x)), Struct_1(vec2<u32>(85882u, global0.x))), global0.x)), min(select(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(2721u, global0.x, 272u, 29367u), vec4<bool>(true, true, false, true)), func_2(Struct_1(vec2<u32>(global0.x, 0u)), Struct_2(var_0, true, vec3<f32>(var_0, var_0, -2321f), Struct_1(vec2<u32>(global0.x, 4294967295u)), Struct_1(vec2<u32>(13325u, 0u))), global0.x))) % vec4<u32>(32u)), vec4<i32>(-13324i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(10211i, -8743i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(global1[_wgslsmith_index_u32(64370u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(27601u, 7u)])), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(374i, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_dot_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a, u_input.a, -35824i))), select(vec4<i32>(u_input.a, -3409i, 0i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, -69334i), global1[_wgslsmith_index_u32(global0.x, 7u)]) | countOneBits(vec4<i32>(2147483647i, u_input.a, -67338i, u_input.a))), u_input.a));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-132f, -717f, global1[_wgslsmith_index_u32(reverseBits(global0.x), 7u)])))), true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1657f))), -691f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1155f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(-107f)))))), Struct_1(~((vec2<u32>(1u, 1u) | vec2<u32>(global0.x, global0.x)) | reverseBits(vec2<u32>(1u, 4294967295u)))), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 0u) << (vec2<u32>(global0.x, 16555u) % vec2<u32>(32u)), min(vec2<u32>(global0.x, 11835u), vec2<u32>(global0.x, global0.x))), ~vec2<u32>(global0.x, global0.x) >> (abs(vec2<u32>(16616u, 1570u)) % vec2<u32>(32u)))));
    var var_3 = -516f;
    var var_4 = Struct_2(1419f, true && (_wgslsmith_f_op_f32(func_3()) != -604f), _wgslsmith_f_op_vec3_f32(var_2.c + vec3<f32>(var_0, _wgslsmith_f_op_f32(1013f * -1000f), -193f)), Struct_1(var_2.d.a >> ((~var_2.d.a | vec2<u32>(1u, 5223u)) % vec2<u32>(32u))), Struct_1(var_2.e.a));
    return reverseBits(vec4<u32>(91179u, max(1u, ~_wgslsmith_sub_u32(4294967295u, var_2.d.a.x)), var_2.e.a.x, ~(var_2.e.a.x & ~var_2.e.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    global0 = min(var_0.zx, ~(min(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(34950u, global0.x)), vec2<u32>(0u, 1u)) >> (~abs(var_0.wx) % vec2<u32>(32u))));
    global0 = ~(~vec2<u32>(1u, 0u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(418f, 1000f, -869f, 546f), vec4<f32>(-565f, -601f, -1638f, 269f))))));
    global0 = vec2<u32>(0u, var_0.x) | max(var_0.yw, ~vec2<u32>(~var_0.x, ~var_0.x));
    global0 = ~vec2<u32>(1u, reverseBits(var_0.x)) | var_0.xy;
    var var_2 = ~(-2147483647i);
    let var_3 = Struct_1(~vec2<u32>(global0.x, var_0.x));
    let var_4 = -(31064i | _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 5887i, 2147483647i, u_input.a), vec4<i32>(18558i, -2147483647i, 1i, -1i)), -vec4<i32>(u_input.a, 26370i, u_input.a, u_input.a) >> (~vec4<u32>(4294967295u, var_3.a.x, var_0.x, 8984u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, _wgslsmith_f_op_f32(max(521f, 143f)), var_1.x, var_1.x)))), ((-vec3<i32>(u_input.a, u_input.a, 1i) & -vec3<i32>(33560i, u_input.a, u_input.a)) ^ reverseBits(~vec3<i32>(var_4, var_4, var_4))) << (vec3<u32>(_wgslsmith_clamp_u32(0u, 44133u, ~var_3.a.x), min(43344u, 76937u), func_2(var_3, Struct_2(-257f, false, vec3<f32>(var_1.x, -427f, var_1.x), Struct_1(var_0.zz), var_3), var_3.a.x).x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(trunc(var_1.wyz)), var_0.x);
}

