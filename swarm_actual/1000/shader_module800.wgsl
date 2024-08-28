struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = 19330u;
    var var_1 = select(arg_3, -arg_3, arg_1.b);
    var_1 = _wgslsmith_mult_vec4_i32(arg_3, vec4<i32>(_wgslsmith_div_i32(arg_3.x, 2147483647i), var_1.x, _wgslsmith_mult_i32(max(arg_0, -2147483647i) << (var_0 % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0, 38813i), -87812i)), -min(arg_3.x, abs(arg_3.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-973f - -1000f)))));
    let var_3 = 75995u;
    return _wgslsmith_add_u32(5642u, arg_2.x) ^ (~var_0 << ((_wgslsmith_add_u32(var_3, 1u) << (var_0 % 32u)) % 32u));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(14329u, 8u)])))))), Struct_2(Struct_1(func_3(-2147483647i, Struct_1(u_input.a.x, vec4<bool>(true, false, true, true), u_input.e.x), vec4<u32>(20548u, u_input.a.x, u_input.a.x, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 62941i, 14773i, -17049i), vec4<i32>(-24801i, u_input.d, u_input.c, u_input.c))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), u_input.e.x), Struct_1(u_input.b.x & ~1u, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), ~u_input.a.x), Struct_1(firstLeadingBit(1u), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), ~(~u_input.a.x)), Struct_1(4294967295u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), select(26126u, firstLeadingBit(4294967295u), false)), vec3<bool>(select(true, u_input.c > 0i, true), !any(vec4<bool>(false, true, true, true)), true)), Struct_1(1u, vec4<bool>(true, true, true, true), ~0u));
    global0 = array<f32, 8>();
    let var_1 = Struct_4(var_0.b.c.b.xw, var_0.b, var_0.a, -1000f, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, 1i), ~u_input.c));
    let var_2 = abs(-((vec3<i32>(0i, u_input.c, 2147483647i) << (~u_input.b % vec3<u32>(32u))) & vec3<i32>(~2147483647i, ~u_input.d, 0i)));
    global0 = array<f32, 8>();
    return min(u_input.b, u_input.a.wxw);
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x - -1054f)));
    var var_1 = !vec4<bool>(arg_0.b.d.b.x, true, all(!select(vec2<bool>(arg_0.b.a.b.x, arg_0.c.b.x), arg_0.b.d.b.xx, true)), all(!vec2<bool>(true, arg_0.c.b.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    let var_3 = ((vec3<u32>(~38971u, 26274u, u_input.a.x) & u_input.b) | func_2(_wgslsmith_f_op_f32(f32(-1f) * -638f))) ^ _wgslsmith_clamp_vec3_u32(reverseBits(u_input.a.xzw | ~u_input.b), _wgslsmith_add_vec3_u32(u_input.a.wzz, select(vec3<u32>(0u, arg_0.c.a, u_input.e.x), vec3<u32>(1u, arg_0.c.a, u_input.a.x), var_1.yxw)) & (~u_input.a.zyx ^ abs(vec3<u32>(13935u, arg_0.c.c, 0u))), vec3<u32>(4294967295u, arg_0.b.d.a, ~(~arg_0.b.b.c)));
    let var_4 = ~var_3.zy;
    return abs(reverseBits(u_input.a | vec4<u32>(var_4.x, ~var_4.x, ~u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.a.wzy, var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(1160f * global0[_wgslsmith_index_u32(u_input.b.x, 8u)])))), 1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29786u, ~4294967295u, 1u, 17776u), func_1(Struct_3(vec2<f32>(global0[_wgslsmith_index_u32(0u, 8u)], -749f), Struct_2(Struct_1(50818u, vec4<bool>(true, false, false, true), u_input.e.x), Struct_1(u_input.a.x, vec4<bool>(true, false, false, false), 0u), Struct_1(u_input.b.x, vec4<bool>(false, true, true, false), 23407u), Struct_1(17572u, vec4<bool>(true, false, true, false), 33439u), vec3<bool>(true, false, false)), Struct_1(u_input.b.x, vec4<bool>(true, false, true, false), 4294967295u)))), 8u)]));
}

