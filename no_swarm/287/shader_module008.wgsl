struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -15115i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1229f * 1000f), 269f, !(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, u_input.b.x), 30038u) > 35889u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, 513f) + vec2<f32>(2903f, 629f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(142f, 265f))))), Struct_1(-(vec4<i32>(global0.x, global0.x, global0.x, 2147483647i) ^ (vec4<i32>(-2147483647i, global0.x, global0.x, -17746i) ^ vec4<i32>(global0.x, global0.x, -1i, global0.x))), -738f), Struct_1(vec4<i32>(global0.x, -1i, -global0.x, -4649i ^ global0.x) & (vec4<i32>(global0.x, global0.x, 23983i, 56550i) & (vec4<i32>(-13011i, global0.x, global0.x, 2147483647i) & vec4<i32>(-2147483647i, -30601i, 2147483647i, 28876i))), _wgslsmith_f_op_f32(f32(-1f) * -418f)), (any(vec2<bool>(true, true)) & (u_input.b.x == 17993u)) || false, ~vec2<i32>(-14379i ^ global0.x, -33412i));
    var_0 = var_1.c.b;
    var_0 = -200f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.b))), _wgslsmith_div_f32(716f, _wgslsmith_f_op_f32(-var_1.c.b)));
    return global0.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = arg_0.a.xy;
    var_1 = vec2<i32>(-reverseBits(abs(-56159i)), var_1.x);
    let var_2 = -1000f;
    var var_3 = 833f;
    return vec4<bool>(359f > var_2, any(vec2<bool>((32781u & u_input.a) > (u_input.c >> (u_input.b.x % 32u)), _wgslsmith_div_i32(global0.x, arg_0.a.x) < ~(-2147483647i))), true, true);
}

fn func_3() -> bool {
    var var_0 = Struct_1(abs(~abs(vec4<i32>(global0.x, global0.x, 4699i, global0.x) & vec4<i32>(0i, global0.x, global0.x, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(227f * -145f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, -182f)))), true || all(vec2<bool>(true, false))))));
    global0 = min(var_0.a.xy << (~vec2<u32>(3136u, 52106u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(min(-var_0.a.yz, var_0.a.xz), -vec2<i32>(2147483647i, -6795i))) ^ -_wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, var_0.a.x), vec2<i32>(0i, 1i), true), vec2<i32>(_wgslsmith_sub_i32(0i, global0.x), var_0.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f + -409f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -241f))))), Struct_1(-vec4<i32>(~global0.x, _wgslsmith_mod_i32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec3_i32(var_0.a.wwz, vec3<i32>(var_0.a.x, var_0.a.x, 0i)), var_0.a.x), 617f), Struct_1(var_0.a, var_0.b), any(func_1(Struct_3(vec3<i32>(-31948i, global0.x, var_0.a.x) >> (vec3<u32>(51304u, 1u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(164f, var_0.b) + vec2<f32>(var_0.b, -1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 664f, var_0.b))))).yyz), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, _wgslsmith_sub_i32(~var_0.a.x, _wgslsmith_mult_i32(global0.x, 0i))), vec2<i32>(~(-var_0.a.x), -30410i >> (1u % 32u))));
    var_0 = var_1.b;
    var var_2 = vec3<u32>(max(~(~_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)), countOneBits(~4294967295u) & ~u_input.b.x), 4294967295u, 4294967295u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(u_input.c <= 4294967295u, true, true, true), func_1(Struct_3(vec3<i32>(global0.x, -1i, global0.x) << (abs(vec3<u32>(u_input.c, u_input.a, 27306u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-307f, -430f), vec2<f32>(163f, 965f), vec2<bool>(false, false))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-588f, 361f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1352f, 1239f, -255f) - vec3<f32>(-655f, -1209f, 200f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(350f, -219f, 416f) + vec3<f32>(2079f, -2039f, 1128f))))), vec4<bool>(select(false, !func_3(), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), any(vec2<bool>(true, true)), false, !((global0.x & global0.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x)))));
    var_0 = !select(select(!vec4<bool>(var_0.x, var_0.x, false, true), func_1(Struct_3(vec3<i32>(global0.x, 2147483647i, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, -1890f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1405f, -1000f) * vec3<f32>(-174f, -1863f, 1298f))), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, false, false)), vec4<bool>(false, true, true, var_0.x), !var_0.x)), vec4<bool>(var_0.x, true, !var_0.x, var_0.x || var_0.x), vec4<bool>(true, any(var_0.wwy) | true, !var_0.x, select(all(vec2<bool>(var_0.x, false)), var_0.x, global0.x > -33529i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1184f, -1426f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-848f)), 286f)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), vec2<bool>(false, true))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 15395i) ^ vec4<i32>(-7773i, global0.x, 33754i, global0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-26412i, 31764i, 0i, -5707i) & vec4<i32>(global0.x, 1i, 0i, global0.x), -vec4<i32>(global0.x, global0.x, global0.x, 12603i), vec4<i32>(-1i, global0.x, -4078i, global0.x))), _wgslsmith_f_op_f32(1f * -646f)), Struct_1(~(vec4<i32>(global0.x, global0.x, -30301i, 0i) | ~vec4<i32>(-1i, global0.x, -1i, global0.x)), 145f), func_3(), _wgslsmith_sub_vec2_i32(~countOneBits(vec2<i32>(0i, 22389i)), reverseBits(firstLeadingBit(vec2<i32>(-30899i, -8969i)))) ^ ~(-vec2<i32>(0i, global0.x) >> (~u_input.b.zy % vec2<u32>(32u))));
    global0 = var_1.c.a.yz;
    var var_2 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.b.xz, ~_wgslsmith_clamp_vec2_u32(u_input.b.yw ^ u_input.b.zy, firstTrailingBit(vec2<u32>(4294967295u, 12360u)), u_input.b.zz), ~firstLeadingBit(u_input.b.yz)));
    var_2 = vec2<u32>(u_input.a, 1u);
    var_2 = ~vec2<u32>(~68006u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, var_1.a.x)))))));
}

