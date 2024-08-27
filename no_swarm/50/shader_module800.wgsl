struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1683f)))), -1028f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -218f))), 214f);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-962f, 1880f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(378f, var_0), vec2<f32>(257f, 232f), true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -1662f))) * vec2<f32>(var_0, 1318f))), true, !any(vec3<bool>(true, true, true))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-292f)), _wgslsmith_f_op_f32(min(1023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x * _wgslsmith_f_op_f32(-var_1)) * 1324f)))));
    let var_4 = vec4<u32>(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(1u, 1u))), 51509u, 72671u, 124487u);
    return vec4<i32>(-1i, min(u_input.a, select(~u_input.a, countOneBits(0i), var_2.a.b) >> (var_4.x % 32u)), u_input.a, -reverseBits(-2625i));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<i32>(~(-(~(-79437i)) | _wgslsmith_div_i32(-2147483647i, select(u_input.a, u_input.a, true))), min(u_input.a, u_input.a), _wgslsmith_sub_i32(i32(-1i) * -14086i, ~abs(-1i)), 1i);
    var_0 = func_3();
    let var_1 = -553f;
    var_0 = min(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-5868i, u_input.a), _wgslsmith_mod_i32(var_0.x, -2147483647i), i32(-1i) * -2740i, 0i), ~select(vec4<i32>(var_0.x, -11786i, var_0.x, -6627i), vec4<i32>(var_0.x, u_input.a, -2147483647i, var_0.x), false), select(abs(vec4<i32>(10845i, u_input.a, u_input.a, -38070i)), -vec4<i32>(-21229i, var_0.x, var_0.x, 25754i), true)) ^ reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -26597i, -24128i, 2147483647i), vec4<i32>(u_input.a, 60750i, 1036i, -12068i)) ^ vec4<i32>(-18848i, 2147483647i, var_0.x, 0i)), _wgslsmith_mod_vec4_i32(~(vec4<i32>(2147483647i, 0i, -30579i, 0i) | vec4<i32>(725i, var_0.x, 7264i, u_input.a)), -abs(vec4<i32>(u_input.a, 19660i, u_input.a, -45173i))) | vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.x, -1i), vec3<i32>(1i, 1i, var_0.x)), 0i, -1i, _wgslsmith_clamp_i32(abs(0i), u_input.a, -19614i)));
    let var_2 = firstTrailingBit(~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(87513u, 8016u, 97330u), vec3<u32>(1u, 1u, 1u))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -316f), vec2<f32>(arg_0, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(307f, 433f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(1102f * 1066f)))), false, true != !(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(abs(-705f))));
}

fn func_1() -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-164f)) + 1000f)))));
    var var_1 = 1f;
    var var_2 = Struct_1(all(!vec4<bool>(all(vec4<bool>(true, var_0.b, var_0.b, var_0.c)), true, true, all(vec4<bool>(false, true, var_0.b, var_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-1747f, -591f))), -1089f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-259f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-228f + 2357f), -864f))), vec3<u32>(min(reverseBits(1u), 1u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(6598u, 0u, 22267u, 6262u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_sub_u32(select(1u, ~0u, true), abs(6350u))), vec4<i32>(firstLeadingBit(firstTrailingBit(u_input.a)), -10940i, reverseBits(countOneBits(u_input.a)), u_input.a) ^ reverseBits(vec4<i32>(-79567i, u_input.a, min(u_input.a, u_input.a), ~u_input.a)));
    let var_3 = vec4<u32>(~47922u, min(var_2.c.x, var_2.c.x), ~(~(~var_2.c.x)), var_2.c.x);
    var var_4 = abs(var_2.d);
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1306i, -2147483647i), ~(-2147483647i)), ~(vec2<i32>(18218i, 0i) & -vec2<i32>(var_2.d.x, u_input.a))), -22699i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~83636u, 4294967295u, ~(~73364u), ~(~1u));
    var var_1 = -vec4<i32>(func_1(), func_3().x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, u_input.a, 0i)), ~(vec3<i32>(1i, u_input.a, -1i) & vec3<i32>(u_input.a, -53999i, u_input.a))), ~(u_input.a | min(u_input.a, u_input.a)));
    var var_2 = vec4<f32>(-989f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-856f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(327f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(609f, 317f)), 349f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1133f, -917f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-142f, -1072f) + _wgslsmith_f_op_f32(round(-364f))))), _wgslsmith_div_f32(414f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-804f))))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-884f, -600f)) * var_2.wx))), true, !(217f >= _wgslsmith_f_op_f32(round(var_2.x)))));
    var var_4 = any(!(!select(!vec2<bool>(false, var_3.a.b), vec2<bool>(true, true), vec2<bool>(var_3.a.b, false))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(-697f).a.x, var_3.a.a.x, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1419f * var_3.a.a.x)))));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(587f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(857f, var_3.a.a.x, var_3.a.c))))))), var_1.x, ~(~vec3<u32>(27475u, var_0.x, var_0.x) | ~abs(vec3<u32>(var_0.x, 32243u, 58671u))));
}

