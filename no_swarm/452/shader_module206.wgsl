struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 8>;

var<private> global3: array<f32, 14> = array<f32, 14>(-188f, 1171f, 1529f, -318f, -115f, -1243f, 917f, 489f, -902f, -561f, 254f, 1149f, 1034f, -280f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(arg_0.x >> (~_wgslsmith_div_u32(firstTrailingBit(arg_0.x), ~45559u) % 32u), 14u)]));
    global2 = array<vec3<f32>, 8>();
    var_0 = global3[_wgslsmith_index_u32(arg_0.x, 14u)];
    let var_1 = Struct_1(arg_1, u_input.a.x, arg_2, _wgslsmith_sub_u32(~1u ^ _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 58720u, 0u, 4294967295u), vec4<u32>(89692u, u_input.b.x, 1u, 4294967295u))), 58976u));
    var var_2 = u_input.b.x;
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1602f)), global3[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_3() -> i32 {
    global3 = array<f32, 14>();
    let var_0 = -_wgslsmith_clamp_i32(reverseBits(u_input.a.x | -53576i), u_input.a.x ^ -1456i, abs(-10198i)) | 13819i;
    global1 = 825f;
    global2 = array<vec3<f32>, 8>();
    var var_1 = Struct_3(countOneBits(countOneBits(~u_input.b.x)), u_input.b.x, _wgslsmith_mult_vec4_i32((vec4<i32>(20773i, -1i, var_0, -5933i) ^ vec4<i32>(-50i, -2147483647i, u_input.a.x, u_input.a.x)) << (firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u)) % vec4<u32>(32u)), vec4<i32>(~var_0, var_0, -6213i, u_input.a.x)) | (-vec4<i32>(var_0, 40522i, u_input.a.x, -8517i) & select(vec4<i32>(0i, u_input.a.x, -5313i, u_input.a.x) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 76777u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-17061i, u_input.a.x, u_input.a.x, -32579i), vec4<i32>(var_0, u_input.a.x, 16712i, var_0), vec4<i32>(-42040i, var_0, 2147483647i, var_0)), vec4<bool>(true, true, false, true))), Struct_1(true, 12693i, (~vec4<i32>(-37437i, var_0, var_0, 27183i) >> ((vec4<u32>(u_input.b.x, 67382u, u_input.b.x, 77962u) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~(~vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x)) % vec4<u32>(32u)), 54533u), Struct_1(select(false, true, all(vec3<bool>(true, true, true))) | select(true, true, any(vec2<bool>(true, true))), -countOneBits(~u_input.a.x), abs(vec4<i32>(select(u_input.a.x, u_input.a.x, false), ~(-59015i), ~var_0, -4662i)), ~(~3694u)));
    return -21325i;
}

fn func_2(arg_0: f32) -> i32 {
    global2 = array<vec3<f32>, 8>();
    var var_0 = reverseBits(vec4<i32>(func_3(), 1i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, u_input.a.x, max(u_input.a.x, -1i)), vec3<i32>(_wgslsmith_sub_i32(16857i, u_input.a.x), min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -9708i, -1i), vec4<i32>(u_input.a.x, -1i, -28428i, u_input.a.x))))));
    var var_1 = vec4<u32>(abs(_wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(26113u))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), 4294967295u >> (abs(u_input.b.x) % 32u)), _wgslsmith_clamp_u32(~79237u, u_input.b.x, u_input.b.x), u_input.b.x);
    global2 = array<vec3<f32>, 8>();
    global0 = any(vec3<bool>(!(!any(vec3<bool>(false, true, true))), false, any(vec4<bool>(false, select(false, true, false), true, false))));
    return ~_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(var_0.x, var_0.x)), -var_0.zw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, global3[_wgslsmith_index_u32(4294967295u, 14u)]) * vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 1466f)) - vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], -810f)), vec2<f32>(837f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(54221u, 14u)] + 1558f)), true))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(~4294967295u, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -1645f)), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), true, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), vec2<bool>(true, true))))))));
    var var_1 = !(!vec3<bool>(45531u <= (u_input.b.x | 4294967295u), false, false));
    global2 = array<vec3<f32>, 8>();
    global2 = array<vec3<f32>, 8>();
    global2 = array<vec3<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(-var_0.x)), firstLeadingBit(67103u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, ~9337u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, 8194u, 0u, 29516u), vec4<u32>(u_input.b.x & u_input.b.x, firstTrailingBit(29252u), u_input.b.x, 62917u)), firstLeadingBit(vec4<u32>(abs(u_input.b.x), 10543u, 0u, u_input.b.x)), any(vec4<bool>(var_1.x, true, true, var_1.x))), _wgslsmith_sub_vec2_u32(~u_input.b, countOneBits(u_input.b)) << (vec2<u32>(~0u | u_input.b.x, ~37533u) % vec2<u32>(32u)));
}

