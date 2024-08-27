struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(-_wgslsmith_div_i32(u_input.a.x, u_input.a.x) & firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, 17256i)), ~(~(~vec4<u32>(27951u, 8784u, 0u, 1u))), ~vec4<u32>(1u, 1u, 1u, 1u), Struct_1(1u));
    var var_1 = Struct_3(true, Struct_2(-31418i, var_0.c, _wgslsmith_mult_vec4_u32(var_0.b, abs(vec4<u32>(87815u, var_0.d.a, 1u, var_0.d.a))), var_0.d));
    var_1 = Struct_3(true, Struct_2(_wgslsmith_dot_vec3_i32(~u_input.a, _wgslsmith_sub_vec3_i32(-vec3<i32>(-13180i, -31980i, u_input.a.x), vec3<i32>(1i, var_1.b.a, 55637i))), abs(select(vec4<u32>(4294967295u, 74538u, 4294967295u, 4294967295u), vec4<u32>(13503u, 1564u, var_1.b.c.x, 4294967295u) ^ var_1.b.c, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.a, ~var_1.b.b.x, 1u, ~0u), var_0.b), Struct_1(_wgslsmith_clamp_u32(25120u, 4294967295u, _wgslsmith_mult_u32(4294967295u, var_0.b.x)))));
    var_1 = Struct_3(false, var_0);
    let var_2 = Struct_1(3599u);
    return !vec2<bool>(!(_wgslsmith_sub_i32(u_input.a.x, var_1.b.a) >= _wgslsmith_add_i32(9042i, var_1.b.a)), !any(!vec4<bool>(false, false, false, var_1.a)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.d;
    let var_1 = countOneBits(abs(arg_0));
    let var_2 = Struct_2(_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), -u_input.a.x), vec4<u32>(1u, var_0.a, var_0.a, ~arg_2.b.x) & ~arg_2.b, vec4<u32>(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(arg_2.b, vec4<u32>(arg_2.c.x, 7234u, 20225u, var_0.a))), var_0.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_2.b.x, 1u), var_0.a), ~(~4294967295u)), var_0.a), Struct_1(4294967295u));
    var var_3 = select(vec4<bool>(arg_1.x != true, arg_1.x & !any(vec3<bool>(arg_1.x, false, arg_1.x)), true & select(0i >= var_1, true || arg_1.x, arg_1.x), false), !vec4<bool>(func_2().x, false, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), (arg_2.c.x > 5958u) && true), arg_1.x & func_2().x);
    let var_4 = vec3<i32>(_wgslsmith_div_i32(-1i, countOneBits(u_input.a.x)), reverseBits(var_1 >> (var_0.a % 32u)), ~abs(~firstTrailingBit(arg_0)));
    return _wgslsmith_f_op_f32(f32(-1f) * -2271f);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = u_input.a.zy;
    let var_1 = !all(vec2<bool>(true, true));
    var var_2 = select(!select(vec2<bool>(var_1, all(vec2<bool>(false, true))), vec2<bool>(var_1, var_1), select(func_2(), select(vec2<bool>(var_1, false), vec2<bool>(var_1, false), false), var_1)), vec2<bool>(any(!select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(false, true, var_1, false), vec4<bool>(false, false, true, false))), var_1), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(abs(1i), vec2<bool>(false, true), Struct_2(u_input.a.x, vec4<u32>(38741u, 12771u, 36026u, 67621u), vec4<u32>(9134u, 4294967295u, 27227u, 1u), Struct_1(9152u)))), _wgslsmith_f_op_f32(1305f * _wgslsmith_f_op_f32(-665f - 764f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(250f, 1907f), vec2<f32>(-1517f, -1362f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(119f, -388f) + vec2<f32>(163f, -2092f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(390f, 748f)))))));
    var_0 = countOneBits(vec2<i32>(~arg_0, u_input.a.x));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 178971u, 32964u), vec3<u32>(4294967295u, 1u, 122189u)), 1u), ~(~vec3<u32>(9362u, 1u, 1u))) | (~1u & _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(0u, 33968u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(38799u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(5655u, 4294967295u, 4294967295u), vec3<u32>(41240u, 22552u, 123431u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-u_input.a, select(vec3<i32>(u_input.a.x, -13291i, 16933i) ^ ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (~vec3<u32>(62928u, 1u, 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true)) | _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), u_input.a, u_input.a));
    let var_1 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 75994u, 19567u, 4294967295u), select(vec4<u32>(254u, 0u, 17429u, 4294967295u), vec4<u32>(36213u, 7063u, 5793u, 1u), vec4<bool>(false, true, true, false))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(func_1(var_0.x), 21984u), ~func_1(45414i), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20965u, 4294967295u, 4294967295u), vec3<u32>(0u, 12925u, 55608u)), abs(85021u), 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 22823i), vec2<i32>(var_0.x, var_0.x)));
}

