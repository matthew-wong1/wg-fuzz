struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1180f, 1530f, 405f, 541f));

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global2 = array<Struct_1, 13>();
    var var_0 = !(_wgslsmith_f_op_f32(sign(global0.a.x)) == _wgslsmith_f_op_f32(1071f + -1252f));
    global0 = global1[_wgslsmith_index_u32(~arg_0, 17u)];
    let var_1 = _wgslsmith_div_vec3_i32(max(reverseBits(-firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), max(vec3<i32>(~5968i, u_input.b.x, _wgslsmith_clamp_i32(0i, u_input.b.x, -7899i)), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(2147483647i, u_input.b.x, -2147483647i)), u_input.b.x >> (arg_0 % 32u)))), _wgslsmith_sub_vec3_i32(~reverseBits(select(vec3<i32>(9079i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 32763i, 1i), true)), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -48276i, u_input.b.x), vec3<i32>(u_input.b.x, 33255i, u_input.b.x)), abs(vec3<i32>(u_input.b.x, 0i, -2147483647i)), -vec3<i32>(u_input.b.x, 0i, 1i))));
    global1 = array<Struct_1, 17>();
    return select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), ~min(arg_0, 4294967295u) < ~1u), select(vec3<bool>(all(vec3<bool>(true, false, false)), true || any(vec2<bool>(false, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), -29714i >= select(var_1.x, var_1.x, true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), vec3<bool>(false, any(vec3<bool>(true, true, true)), (0u & (arg_0 & u_input.a)) < 0u));
}

fn func_2() -> bool {
    let var_0 = func_3(2199u);
    global1 = array<Struct_1, 17>();
    let var_1 = !vec3<bool>(firstTrailingBit(228i) > firstLeadingBit(max(u_input.b.x, 2147483647i)), select(false, !var_0.x, !select(var_0.x, var_0.x, var_0.x)), var_0.x);
    let var_2 = 2147483647i;
    global1 = array<Struct_1, 17>();
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~arg_0.x, _wgslsmith_dot_vec2_u32(reverseBits(u_input.c.yx), ~(~u_input.d))), 17u)];
    let var_1 = any(select(!vec4<bool>(all(vec4<bool>(true, false, false, true)), u_input.d.x >= 70317u, true, true), vec4<bool>(func_2(), true, _wgslsmith_f_op_f32(trunc(1811f)) == 502f, true), !(func_3(u_input.d.x).x || select(true, true, false))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-291f, 1018f, 266f, var_0.a.x))))))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~(~0u) & firstTrailingBit(1u), (0u & (2663u >> (u_input.c.x % 32u))) >> ((arg_0.x << (1u % 32u)) % 32u), any(!vec3<bool>(true, var_1, true)) || true), _wgslsmith_mod_u32(20886u, u_input.a)), 13u)];
    var var_3 = var_1;
    return !vec2<bool>(true, any(vec2<bool>(var_1, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a.xx)))));
    var var_1 = vec3<bool>(all(vec3<bool>(!any(vec4<bool>(true, true, false, true)), all(func_1(vec2<u32>(0u, u_input.a), u_input.b.x)), -214f <= _wgslsmith_f_op_f32(-global0.a.x))), true, any(vec2<bool>(_wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_div_f32(-1000f, global0.a.x), true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), var_0.x, 524f, global0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(floor(global0.a)))))));
    var var_3 = Struct_1(var_2.a);
    let var_4 = global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mult_u32(4294967295u, min(u_input.c.x, firstTrailingBit(12489u)))), 17u)];
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~1u), ~(u_input.d.x | 2105u)) | ~(~(~u_input.d.x)), 94151u, ~(~_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yx))), 17u)];
    var var_6 = vec4<i32>(u_input.b.x, ~countOneBits(_wgslsmith_mod_i32(i32(-1i) * -58170i, _wgslsmith_clamp_i32(u_input.b.x, 0i, u_input.b.x))), u_input.b.x, ~(~(-1i)));
    global0 = global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~u_input.c.x, 0u) & (~countOneBits(u_input.c.x) >> (21333u % 32u))), 17u)];
    let var_7 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(select(select(vec4<i32>(21897i, u_input.b.x, var_6.x, 2147483647i), vec4<i32>(u_input.b.x, var_6.x, 2147483647i, -2147483647i), var_1.x), vec4<i32>(var_6.x, 0i, 1i, -2147483647i), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x)) & -(vec4<i32>(1i, u_input.b.x, u_input.b.x, var_6.x) ^ vec4<i32>(u_input.b.x, 1i, 1i, u_input.b.x)), ~max(vec4<i32>(-2147483647i, var_6.x, var_6.x, u_input.b.x), vec4<i32>(var_6.x, 93427i, u_input.b.x, -14128i)) ^ countOneBits(vec4<i32>(var_6.x, var_6.x, -23362i, 60529i)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-9360i, u_input.b.x, 12169i, var_6.x), vec4<i32>(0i, u_input.b.x, 2147483647i, var_6.x)), vec4<i32>(0i, var_6.x, 1i, 12855i)), -max(vec4<i32>(-19035i, var_6.x, u_input.b.x, var_6.x), vec4<i32>(-9962i, 0i, -12632i, 17747i)))), ~(abs(80741u >> (u_input.a % 32u)) ^ _wgslsmith_mod_u32(u_input.a, ~u_input.c.x)));
}

