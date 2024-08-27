struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_1(vec4<i32>(select(u_input.a, 0i, true), 3139i, firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(2147483647i, -1i, u_input.a))), -1i), min(1i, _wgslsmith_add_i32(1i, -2147483647i)), select(vec4<i32>(firstLeadingBit(u_input.a), u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(2147483647i, 31090i, 1i, u_input.a)), -abs(1i)), vec4<i32>(u_input.a, ~u_input.a, max(20239i, ~u_input.a), max(_wgslsmith_clamp_i32(-2147483647i, -6512i, -1i), u_input.a)), -u_input.a <= max(select(-30141i, 1i, false), ~(-69066i))), select(10148u, 43795u, u_input.a < min(u_input.a >> (28613u % 32u), _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a))), u_input.a);
    global0 = array<f32, 8>();
    var var_1 = _wgslsmith_add_i32(39568i, ~1i);
    var var_2 = -6244i << (~_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.d, 0u, 1u), 4294967295u)) % 32u);
    let var_3 = u_input.a;
    return !select(vec2<bool>(true, select(true, select(false, false, false), select(true, true, false))), vec2<bool>(_wgslsmith_f_op_f32(floor(422f)) != _wgslsmith_div_f32(-1401f, global0[_wgslsmith_index_u32(4294967295u, 8u)]), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), true);
}

fn func_2(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = select(func_3(u_input.d), vec2<bool>(true, true & !all(vec2<bool>(false, false))), select(func_3(33696u), vec2<bool>(true, true), true));
    let var_1 = Struct_1(vec4<i32>(0i, 7971i, 15779i, abs(min(0i, u_input.a))), ~u_input.a, -vec4<i32>(u_input.a, 1i, u_input.a, (u_input.a | u_input.a) ^ -2147483647i), arg_0.x, _wgslsmith_add_i32(~max(u_input.a, u_input.a) ^ -38023i, u_input.a));
    let var_2 = -1087f;
    global0 = array<f32, 8>();
    let var_3 = var_1.a.x | -2147483647i;
    return vec3<u32>(4294967295u, 1903u, 12391u) & firstTrailingBit(_wgslsmith_add_vec3_u32(arg_0, u_input.b));
}

fn func_1() -> u32 {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_0 = vec3<u32>(select(~42612u, ~4294967295u, true) << (u_input.c.x % 32u), u_input.c.x, ~42851u) & ~countOneBits(func_2(u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1501f, -212f))) + vec2<f32>(-121f, -1000f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 8u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-816f, 728f) + vec2<f32>(-1389f, global0[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, -380f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x << (u_input.b.x % 32u), _wgslsmith_div_u32(41247u, 65969u)), 8u)])));
    return ~_wgslsmith_mod_u32(select(u_input.c.x, 0u, true), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_mod_u32((~func_1() | u_input.e) >> (~(~_wgslsmith_mod_u32(1u, u_input.e)) % 32u), ~4294967295u);
    let var_1 = Struct_1(firstLeadingBit(vec4<i32>(-_wgslsmith_mod_i32(1i, u_input.a), u_input.a, -1i, u_input.a >> ((var_0 & var_0) % 32u))), i32(-1i) * -_wgslsmith_mult_i32(-1i, u_input.a), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-8931i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 5864i, 0i, u_input.a)), -27802i, 1059i, u_input.a) ^ -(vec4<i32>(0i, 1i, u_input.a, u_input.a) & _wgslsmith_add_vec4_i32(vec4<i32>(-8264i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 2067i, 0i, u_input.a))), ~var_0, ~select(u_input.a << (_wgslsmith_div_u32(11575u, 35048u) % 32u), ~select(-5991i, u_input.a, false), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    let var_2 = !(!any(vec4<bool>(true, true, true, true)));
    let var_3 = 53561u;
    let var_4 = _wgslsmith_f_op_f32(-1095f + global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.d, ~(~15865u)), 8u)]);
    var var_5 = Struct_2(Struct_1(max(~var_1.a, -max(vec4<i32>(u_input.a, 0i, 6585i, u_input.a), var_1.c)), u_input.a, var_1.c, ~0u, -28015i), Struct_1(~abs(vec4<i32>(25915i, 1442i, -24110i, var_1.c.x)) | (vec4<i32>(-1i) * -var_1.c), ~(~_wgslsmith_mult_i32(-6076i, -23805i)), var_1.a, var_0, _wgslsmith_sub_i32(-1i, -(~var_1.c.x))), firstTrailingBit(vec4<u32>(~var_1.d, countOneBits(var_1.d) >> ((37278u >> (var_1.d % 32u)) % 32u), ~(0u >> (var_0 % 32u)), var_1.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, global0[_wgslsmith_index_u32(u_input.b.x, 8u)])) + _wgslsmith_div_vec2_f32(vec2<f32>(1359f, 417f), vec2<f32>(1162f, var_4)))) - vec2<f32>(-634f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) - -126f))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-36039i, -23567i, u_input.a, -2147483647i), vec4<i32>(_wgslsmith_add_i32(var_1.c.x, var_5.b.b), -u_input.a, abs(u_input.a), var_1.c.x))), -404f, u_input.e, -var_5.e.e);
}

