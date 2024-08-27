struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-615f));

var<private> global1: array<f32, 3> = array<f32, 3>(895f, 158f, -1975f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32) -> bool {
    global0 = arg_1.b;
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(107f, global1[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_f_op_f32(floor(arg_1.a.a)), global1[_wgslsmith_index_u32(u_input.e, 3u)])), vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1351f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 3u)]) - -1000f), -421f)))));
    var var_1 = arg_1.b.a.a;
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f + arg_1.a.a) * _wgslsmith_f_op_f32(min(global0.a.a, -124f))) + 1741f)), arg_1.b);
    var var_3 = Struct_5(Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, u_input.d.x, 1u, 61983u), _wgslsmith_sub_vec4_u32(vec4<u32>(35343u, 4294967295u, 54551u, 0u), vec4<u32>(u_input.d.x, u_input.e, 4294967295u, u_input.d.x))), ~(~vec4<u32>(0u, 11982u, 1u, u_input.d.x))), 3u)]), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(621f)))) + 679f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a - global0.a.a))));
}

fn func_2() -> f32 {
    var var_0 = func_3(select(!vec4<bool>(true, true, true, any(vec2<bool>(false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), true), Struct_4(global0.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)])))), u_input.c.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 3u)]), _wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_2 = vec3<u32>(28016u & countOneBits(_wgslsmith_div_u32(u_input.d.x ^ u_input.e, reverseBits(u_input.d.x))), ~54140u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(33466u, u_input.d.x, u_input.d.x) | u_input.d, max(reverseBits(vec3<u32>(0u, u_input.e, 66151u)), ~u_input.d)));
    global0 = var_1;
    var_2 = vec3<u32>(_wgslsmith_mod_u32(var_2.x, 46892u >> (~var_2.x % 32u)), ~abs(~(~var_2.x)), ~1u);
    return _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(1u, u_input.e), min(u_input.e, 1u), u_input.e | 9789u), select(firstTrailingBit(vec3<u32>(4294967295u, 76723u, 152871u) | u_input.d), abs(u_input.d), vec3<bool>(true, true, true))), 3u)]));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -222f)));
    var var_0 = Struct_4(Struct_1(726f), Struct_2(global0.a));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a.a * var_0.a.a)));
    return Struct_2(arg_1);
}

fn func_1(arg_0: Struct_5) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = ~u_input.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(var_1, 3u)], 113f, global1[_wgslsmith_index_u32(u_input.d.x, 3u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(-229f + 1137f), global1[_wgslsmith_index_u32(~var_1, 3u)])))));
    var var_3 = select(vec3<bool>(all(vec3<bool>(true, true, true)), true, false), vec3<bool>(true, -1177f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)), u_input.b.x > -37631i), ~u_input.a <= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_div_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.a))));
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f), global0.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), _wgslsmith_f_op_f32(var_0.b.a * var_0.b.a))), _wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -959f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.a, -640f, _wgslsmith_f_op_f32(var_2.x * 455f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + global0.a.a))))));
    return func_4(vec4<i32>(11448i, _wgslsmith_div_i32(12608i, _wgslsmith_sub_i32(~u_input.c.x, i32(-1i) * -71520i)), -firstTrailingBit(u_input.b.x >> (var_1 % 32u)), ~(~(-2147483647i & u_input.b.x))), var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.a, 911f)) + _wgslsmith_f_op_f32(-282f * arg_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.e, 3u)], global0.a.a) * _wgslsmith_div_f32(var_0.a.a, var_4.x))) * vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1701f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_5(Struct_1(357f), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49821u, 4294967295u, u_input.e) >> (vec4<u32>(1u, 37106u, 7910u, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(u_input.e, 1u, 14299u, 4294967295u)), 3u)])));
    global1 = array<f32, 3>();
    let var_1 = Struct_5(Struct_1(global0.a.a), global0.a);
    let var_2 = Struct_5(Struct_1(266f), func_1(Struct_5(global0.a, var_0.a)).a);
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~18881u, ~1u), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, abs(u_input.d)), 57714u) | _wgslsmith_div_vec2_u32(u_input.d.yz, vec2<u32>(9249u, u_input.e)));
    let var_4 = ~var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, firstLeadingBit(0i), -2147483647i, ~(-1i)), vec4<u32>(_wgslsmith_div_u32(var_3.x, _wgslsmith_add_u32(~u_input.d.x, 1u)), 37062u, ~firstTrailingBit(firstLeadingBit(u_input.e)), 0u), _wgslsmith_div_i32(u_input.b.x, 18159i), vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~1858u), 1u, ~min(u_input.d.x, 0u), 0u) & vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(4294967295u, 0u, 0u)), select(u_input.d, vec3<u32>(1u, u_input.e, 94386u), vec3<bool>(false, true, false))), ~var_3.x, _wgslsmith_add_u32(u_input.d.x, 34157u >> (var_3.x % 32u)), 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1481f));
}

