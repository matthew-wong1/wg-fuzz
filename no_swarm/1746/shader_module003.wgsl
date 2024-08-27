struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec3<i32>(-4306i, -1i, u_input.a);
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(vec4<i32>(-1i) * -select(var_1.b, vec4<i32>(u_input.a, 8494i, var_1.a.x, var_1.a.x), true), arg_0.a), ~(var_0 | select(firstTrailingBit(vec3<i32>(var_0.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), vec3<i32>(-34617i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], -2147483647i), vec3<bool>(false, false, true))), select(1u | u_input.b.x, countOneBits(u_input.b.x << (1u % 32u)), 19865u >= u_input.b.x) & 1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, 1522f, 881f) * vec3<f32>(404f, -538f, -1000f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1383f, 1082f, 106f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2764f, -1804f, 1909f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(291f, -574f, 1507f), vec3<f32>(2312f, -1000f, 1000f))))))));
    var var_4 = Struct_3(arg_0);
    return ~(~(~firstLeadingBit(u_input.b.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> vec4<i32> {
    var var_0 = any(arg_1);
    let var_1 = arg_0.b.x;
    let var_2 = ~u_input.b;
    var_0 = true;
    var_0 = any(select(!select(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(false, arg_1.x, false), vec3<bool>(false, true, arg_1.x)), vec3<bool>(true, true, true), true), !select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, arg_1.x, false), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, true, false), false)), arg_1.x));
    return select(-select(vec4<i32>(arg_0.b.x << (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 9230i, 0i), arg_0.a.b), firstTrailingBit(-11437i), 1i), -(~arg_0.a.a), -1i != _wgslsmith_dot_vec3_i32(arg_0.b, arg_0.b)), vec4<i32>(-11266i, -_wgslsmith_div_i32(-38072i, -var_1), arg_0.b.x, -37404i), all(vec4<bool>(_wgslsmith_f_op_f32(sign(-1254f)) >= -300f, arg_1.x, false, arg_1.x)));
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global0 = array<i32, 32>();
    var var_0 = vec4<u32>(u_input.b.x, u_input.b.x, ~0u, ~(~u_input.b.x));
    var_0 = max(vec4<u32>(var_0.x >> (77930u % 32u), 8113u, _wgslsmith_add_u32(~3901u, ~(u_input.b.x | 46621u)), ~(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u))), abs(vec4<u32>(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), select(func_2(Struct_1(vec4<i32>(u_input.a, 2533i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 32u)], 65468i, 2147483647i, 1i))), firstLeadingBit(66016u), u_input.b.x >= 65348u), ~var_0.x, var_0.x)));
    var var_1 = ~u_input.b.wz;
    let var_2 = Struct_3(Struct_1(~(func_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, -12856i, 2147483647i, global0[_wgslsmith_index_u32(var_0.x, 32u)]), vec4<i32>(-23050i, u_input.a, u_input.a, global0[_wgslsmith_index_u32(4336u, 32u)])), vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 32u)]), 1u), vec2<bool>(true, false), u_input.b.x) << (u_input.b % vec4<u32>(32u))), -(~(-vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], u_input.a, 0i)))));
    return _wgslsmith_mod_vec3_i32(func_3(Struct_2(Struct_1(~var_2.a.b, max(vec4<i32>(-1662i, global0[_wgslsmith_index_u32(6963u, 32u)], 0i, global0[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(u_input.a, u_input.a, -48820i, var_2.a.b.x))), _wgslsmith_div_vec3_i32(var_2.a.a.xxx, vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(48532u, 32u)])), firstLeadingBit(var_0.x ^ 0u)), vec2<bool>(!(arg_0 <= arg_0), _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_div_f32(3144f, arg_0)), var_0.x).wzy, var_2.a.b.yyw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec4<i32>(12813i, u_input.a, countOneBits(global0[_wgslsmith_index_u32(1u, 32u)] & global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), -u_input.a), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(10658i, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(37264u, 32u)]), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, -51329i, u_input.a, -1i)))), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1062f))))), 30411u);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-164f, 1000f, 1712f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2216f, 495f, 1689f), vec3<f32>(425f, 414f, 316f))), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(257f, 542f, 1098f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, -195f, -1374f)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1913f, -355f, 629f))))), !any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1222f, 238f, -890f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, 272f, 1639f)), vec3<bool>(true, true, true)))))));
    let var_2 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(1u, ~var_0.c, max(var_0.c, var_0.c)), ~49414u)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 79824u), u_input.b.yz)), _wgslsmith_add_vec2_u32(vec2<u32>(35242u, var_0.c), vec2<u32>(u_input.b.x, var_0.c)) ^ select(u_input.b.yy, u_input.b.wz, true)), vec2<u32>(4294967295u << (u_input.b.x % 32u), ~(u_input.b.x << (8893u % 32u)))));
    let var_3 = -1i;
    let var_4 = var_0;
    var var_5 = Struct_2(Struct_1(~(~var_0.a.b << (vec4<u32>(var_2, var_0.c, 4294967295u, u_input.b.x) % vec4<u32>(32u))), ~vec4<i32>(var_0.a.a.x & 9717i, var_3, max(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a), -1i)), vec3<i32>(0i ^ firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 22773i, -7962i), vec4<i32>(-31472i, 1i, var_3, -1i))), -1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(2215u, var_0.c), 32u)], min(1i, var_3) & -global0[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_add_u32(var_4.c | 1u, 87970u));
    let var_6 = all(select(!vec2<bool>(true, var_1.x < -752f), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, i32(-1i) * -34978i, firstLeadingBit(28432i), var_1);
}

