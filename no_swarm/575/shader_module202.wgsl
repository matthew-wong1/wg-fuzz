struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(-1171f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1904f * -656f), 1f), 112f))));
    var_0 = _wgslsmith_f_op_f32(step(-711f, _wgslsmith_f_op_f32(-1187f * 806f)));
    var_0 = _wgslsmith_f_op_f32(round(-1556f));
    var var_1 = vec4<i32>(~reverseBits(~1i), _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(2691i, 0i), i32(-1i) * -(i32(-1i) * -15075i)), firstTrailingBit(_wgslsmith_mult_i32(~44918i, firstTrailingBit(1i)) << (4294967295u % 32u)), -21466i);
    return Struct_1(vec2<bool>(any(vec4<bool>(true, true, false, true)), countOneBits(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) >= max(~u_input.a.x, u_input.a.x << (4294967295u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-948f, 1037f, 452f) + vec3<f32>(143f, -2338f, -1559f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, -657f, 1290f)))));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b));
    let var_1 = func_2();
    var var_2 = func_2();
    return var_1.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1410f, -1038f, 1000f), vec3<f32>(748f, 1113f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-895f, 1365f, 623f))))));
    var_0 = func_2();
    var var_1 = ~vec3<u32>(~(~0u), abs(firstLeadingBit(_wgslsmith_mult_u32(1u, u_input.a.x))), ~(~135407u >> (1u % 32u)));
    let var_2 = !any(vec2<bool>(true, false));
    var_1 = vec3<u32>(53376u, abs(~(~4294967295u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, var_1.x), _wgslsmith_clamp_u32(4294967295u, 0u, 5998u), ~var_1.x, 1u | var_1.x)), countOneBits(arg_1)));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1097f + var_0.b.x)), _wgslsmith_f_op_f32(trunc(-1680f)), var_0.b.x), select(select(!vec3<bool>(arg_0.x, false, true), select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_0.a.x, var_0.a.x), true), true), select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, true), !vec3<bool>(var_0.a.x, true, false)), select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(var_0.a.x, false, false), true), select(vec3<bool>(arg_0.x, var_2, false), vec3<bool>(var_0.a.x, var_2, var_0.a.x), false), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(var_0.a.x, var_2, false), false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i << (~(~4294967295u & (1u >> (u_input.a.x % 32u))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(1931f * _wgslsmith_f_op_f32(-468f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -1232f)), -784f))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1443f + -170f)), var_1, var_1, var_1);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_2.zwz * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), func_1(var_2.zyx)), vec4<u32>(46523u, ~22295u, u_input.a.x >> (u_input.a.x % 32u), u_input.a.x | 4595u))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.wzz))));
    var var_4 = ~(~(~((u_input.a.x << (u_input.a.x % 32u)) & ~u_input.a.x)));
    var_4 = u_input.a.x;
    var var_5 = _wgslsmith_add_i32(~0i, abs(~(-2271i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-(vec4<i32>(13627i, -13863i, -11407i, -1i) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 8471u) % vec4<u32>(32u))), select(vec4<i32>(-2598i, 57055i, 3856i, 0i), -vec4<i32>(-1i, -29552i, 630i, 0i), vec4<bool>(true, true, true, true))) ^ (_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, -1i, -2147483647i, 1i), -vec4<i32>(-33764i, 38876i, -1i, 20034i), vec4<i32>(-1i, 28473i, -2147483647i, 1i) >> (vec4<u32>(7279u, u_input.a.x, 0u, 0u) % vec4<u32>(32u))) >> (select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) ^ vec4<u32>(22974u, u_input.a.x, 16009u, u_input.a.x), ~vec4<u32>(21286u, u_input.a.x, 731u, u_input.a.x), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~20791u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(8024u, u_input.a.x), select(u_input.a.xx, u_input.a.zy, vec2<bool>(true, true)))));
}

