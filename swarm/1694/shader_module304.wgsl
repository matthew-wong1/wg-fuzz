struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = any(select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), all(vec2<bool>(true, false)))), vec4<bool>(true, !any(vec3<bool>(true, true, false)), all(vec3<bool>(false, false, true)), true), select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))))));
    let var_1 = Struct_3(_wgslsmith_div_i32(i32(-1i) * -2147483647i, min(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x))) | u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), _wgslsmith_f_op_f32(-1161f + _wgslsmith_f_op_f32(max(-1000f, -2175f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-678f, -1944f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1852f, -230f, _wgslsmith_f_op_f32(f32(-1f) * -2179f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
    var_3 = _wgslsmith_f_op_f32(floor(1000f));
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(0u, 0u))) & ~vec2<u32>(abs(1u), _wgslsmith_clamp_u32(4294967295u, 30774u, 102868u)), countOneBits(_wgslsmith_sub_vec2_u32(select(vec2<u32>(67588u, 38203u), ~vec2<u32>(3023u, 1u), !vec2<bool>(false, var_0)), vec2<u32>(1u, 1u))));
}

fn func_2() -> bool {
    var var_0 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)));
    var var_1 = vec2<u32>(func_3(), ~1u);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -3317f)) * -899f) * _wgslsmith_f_op_f32(f32(-1f) * -469f)))));
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = select(select(vec2<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), vec2<bool>(true, select(true, true, all(vec3<bool>(true, true, true)))), vec2<bool>(true, false && (true && func_2())));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 6442u, 4294967295u, 68530u) & vec4<u32>(_wgslsmith_mod_u32(0u, 22825u), _wgslsmith_clamp_u32(49174u, 38162u, 0u), 30457u >> (1u % 32u), ~13685u), vec4<u32>(~max(0u, 1u), 0u, 61618u, 4294967295u)), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(14094u, 4294967295u, 0u, 14389u)), max(min(vec4<u32>(4294967295u, 4294967295u, 13854u, 8091u), vec4<u32>(56478u, 37668u, 4294967295u, 4294967295u)), firstTrailingBit(vec4<u32>(23490u, 30434u, 2318u, 4294967295u))))));
    var_1 = select(vec2<u32>(var_1.x, ~select(reverseBits(var_1.x), ~var_1.x, -1124f <= arg_0.x)), select(firstLeadingBit(~(~vec2<u32>(var_1.x, 0u))), ~vec2<u32>(max(var_1.x, var_1.x), var_1.x), var_0.x), select(vec2<bool>(var_0.x & false, true), !select(vec2<bool>(true, var_0.x), !vec2<bool>(true, var_0.x), vec2<bool>(true, true)), true));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))))), Struct_1(1u, vec4<u32>(19948u, ~reverseBits(4294967295u), _wgslsmith_div_u32(var_1.x, var_1.x ^ var_1.x), ~(~4294967295u)), 1000f));
    var_1 = ~var_2.b.b.xy;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(511f, arg_0.x)), -1595f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(1u, 4294967295u), _wgslsmith_add_vec4_u32(max(abs(vec4<u32>(1u, 1u, 1u, 1u)), abs(firstTrailingBit(vec4<u32>(1u, 29432u, 4294967295u, 4294967295u)))), countOneBits(min(select(vec4<u32>(81901u, 0u, 12669u, 4294967295u), vec4<u32>(6694u, 1u, 4294967295u, 4294967295u), false), vec4<u32>(21463u, 11833u, 0u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1987f * -234f)), _wgslsmith_f_op_f32(1034f * _wgslsmith_f_op_f32(func_1(vec4<f32>(789f, 417f, 2242f, 275f)))), u_input.a.x < -31762i))));
    let var_1 = firstTrailingBit(~1u);
    let var_2 = 565f;
    var var_3 = var_0.b.yy;
    let var_4 = 4294967295u;
    let var_5 = 49742i;
    let var_6 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.b.x, var_3.x), 0u), var_0.b >> (reverseBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(21591u, var_4, var_3.x, 49899u), var_0.b, vec4<bool>(false, false, false, false)), vec4<u32>(var_3.x, 1u, 35990u, var_1), ~vec4<u32>(var_1, 4294967295u, var_1, 1u))) % vec4<u32>(32u)), var_0.c);
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, var_5), _wgslsmith_mod_vec2_i32(vec2<i32>(2592i, u_input.a.x), u_input.a.xy)) << (vec2<u32>(var_6.b.x, 1u) % vec2<u32>(32u))) >> (vec2<u32>(1u, ~firstLeadingBit(54539u)) % vec2<u32>(32u)), -269f);
}

