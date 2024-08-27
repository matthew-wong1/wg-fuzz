struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_mult_i32(reverseBits(~u_input.a), -1i);
    var_0 = -_wgslsmith_dot_vec3_i32(-(~select(u_input.b, u_input.b, false)), -vec3<i32>(18254i, ~u_input.a, 22076i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1267f)) * _wgslsmith_f_op_f32(f32(-1f) * -416f)));
    var_0 = u_input.b.x;
    var_0 = ~_wgslsmith_mod_i32(max(~0i, max(-31939i, u_input.d.x)), u_input.b.x);
    return 59127u;
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = false;
    let var_1 = arg_0;
    var_0 = !(4294967295u < ~(~(var_1.c.b & 1u)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_add_u32(firstTrailingBit(1u), 0u), arg_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(942f, 2094f, var_1.a.c.x), var_1.a.c)))), var_1.b << (_wgslsmith_sub_u32(~(4294967295u >> (var_1.c.b % 32u)), 73319u) % 32u), Struct_1(-187f, 5832u, min(countOneBits(vec4<u32>(u_input.c, u_input.c, 83557u, arg_0.b)) >> (var_1.c.c % vec4<u32>(32u)), select(~arg_0.c.c, vec4<u32>(28708u, 14931u, 23065u, u_input.c), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.a.c, vec3<f32>(1158f, -590f, 177f), true))))), _wgslsmith_f_op_f32(floor(arg_0.c.d.x)));
    var_0 = true;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = !func_3(Struct_3(Struct_2(_wgslsmith_sub_u32(51187u, u_input.c), -1139f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(569f, -1542f, -158f), vec3<f32>(-697f, -389f, -1326f)))), u_input.c, Struct_1(-1152f, _wgslsmith_sub_u32(u_input.c, 4086u), vec4<u32>(u_input.c, 52942u, 0u, 15887u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-247f, 186f, -226f), vec3<f32>(-1285f, 464f, 500f)))), _wgslsmith_f_op_f32(987f * 444f)));
    let var_1 = Struct_2(4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1739f * 508f), _wgslsmith_div_f32(1130f, -629f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) + 199f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1496f, 359f, _wgslsmith_f_op_f32(abs(1000f))) * vec3<f32>(-1574f, _wgslsmith_f_op_f32(f32(-1f) * -1341f), 1415f)));
    let var_2 = func_3(Struct_3(Struct_2(u_input.c, -182f, var_1.c), _wgslsmith_add_u32(u_input.c >> (0u % 32u), var_1.a | 1u) >> (var_1.a % 32u), Struct_1(-466f, 4294967295u, abs(~vec4<u32>(0u, 22073u, var_1.a, 55744u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.b, var_1.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 196f, var_1.b)))), var_1.c.x));
    var var_3 = _wgslsmith_mod_u32(18929u, var_1.a);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-484f + var_1.b) * _wgslsmith_f_op_f32(var_1.b * var_1.b)) - _wgslsmith_f_op_f32(-1000f * 373f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), -1806f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.b)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.b)), -717f));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(trunc(495f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-583f, -370f)), -315f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, -623f, 529f)), _wgslsmith_div_vec3_f32(vec3<f32>(762f, 982f, 100f), vec3<f32>(720f, -1069f, -716f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-747f, -387f, -282f) + vec3<f32>(-805f, -493f, -1023f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1431f, _wgslsmith_f_op_f32(-1458f - -557f), -550f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-135f, 1838f, -1193f)))))));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_clamp_u32(32442u, 4294967295u, 8686u)), _wgslsmith_mod_u32(~0u, 79618u)) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11836u, 1u), ~vec3<u32>(u_input.c, u_input.c, u_input.c)), u_input.c), vec2<u32>(func_1(), u_input.c));
    let var_2 = max(~_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 606u)), abs(vec2<u32>(var_1.x, var_1.x))), max(~min(min(vec2<u32>(u_input.c, 1u), vec2<u32>(18145u, var_1.x)), vec2<u32>(var_1.x, var_1.x)), firstTrailingBit(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(65913u, u_input.c), vec2<u32>(0u, 0u))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(62447i, 2147483647i)) - _wgslsmith_f_op_f32(-1719f * var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, -1176f)), _wgslsmith_f_op_f32(-var_0.x)), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))), 610f, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))));
    var var_4 = vec4<i32>(u_input.d.x, -3395i, -2147483647i, reverseBits(1i));
    var_4 = vec4<i32>(-9858i, -64535i, 1i, ~(~24221i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(var_2.x, u_input.c) & vec2<u32>(var_1.x, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(0u, var_1.x) & vec2<u32>(0u, u_input.c)) | abs(vec2<u32>(1u, var_2.x))), select(~_wgslsmith_div_u32(~1060u, var_1.x), ~1u, true));
}

