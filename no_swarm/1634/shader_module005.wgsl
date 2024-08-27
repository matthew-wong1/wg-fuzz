struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> bool {
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(~countOneBits(arg_1.x), 1u), ~arg_0.a.x) != 1u;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = arg_3.x;
    return vec3<bool>(func_3(Struct_1(~vec4<u32>(7693u, 1u, 1u, arg_1.x)), firstLeadingBit(~vec2<u32>(29048u, arg_1.x)) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 33015u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), arg_1)) % vec2<u32>(32u)), ~((i32(-1i) * -1i) << ((u_input.a.x & u_input.a.x) % 32u))), false, select(all(!(!vec3<bool>(arg_0, true, arg_0))), true, arg_0));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f - -2159f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1156f - 1659f) * _wgslsmith_f_op_f32(-492f + 322f)), _wgslsmith_div_f32(1129f, -1341f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1224f, -228f))), select(arg_0, !func_2(true || arg_0.x, vec2<u32>(u_input.a.x, u_input.a.x), vec4<f32>(1f, 1f, 1f, 1f), -vec2<i32>(1635i, 0i)), select(vec3<bool>(false, true && arg_0.x, all(vec4<bool>(false, true, false, arg_0.x))), vec3<bool>(false, any(arg_0.xx), !arg_0.x), arg_0)));
    let var_1 = var_0.b;
    let var_2 = true;
    let var_3 = select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, abs(0i)), vec2<i32>(i32(-1i) * -1i, ~12744i)), _wgslsmith_div_i32(firstTrailingBit(~19618i), -_wgslsmith_mod_i32(10207i, -1i)), _wgslsmith_dot_vec3_i32(min(abs(vec3<i32>(1i, 42042i, 2147483647i)), vec3<i32>(-2147483647i, -1i, 0i)), -vec3<i32>(-2147483647i, -18967i, 57i) >> ((u_input.a | vec3<u32>(22683u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), vec3<i32>(1i, 1i, 1i), var_1);
    let var_4 = ~(~_wgslsmith_mult_i32(-var_3.x, max(0i, _wgslsmith_dot_vec2_i32(var_3.xy, vec2<i32>(var_3.x, -2147483647i)))));
    return select(!var_0.b.yy, var_0.b.xz, !(!(!var_2)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(firstLeadingBit(arg_2), arg_2, 1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 892f) + vec3<f32>(arg_1, arg_1, 1346f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1422f, arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(867f, -362f, 359f) * vec3<f32>(-1344f, arg_1, 1817f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1078f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(-1210f, arg_1, arg_1))))))));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_0, arg_0) | 1u, 43902u, 69333u, ~u_input.a.x << (min(~0u, arg_0) % 32u)));
    var var_3 = arg_2;
    var var_4 = _wgslsmith_add_vec2_u32(~select(~vec2<u32>(arg_0, arg_0), u_input.a.zx ^ var_2.a.zz, arg_3), firstTrailingBit(var_2.a.wy));
    return Struct_3(select(0u, ~(~var_2.a.x), true), ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(1u >> (u_input.a.x % 32u)), 1000f, countOneBits(~(-2534i)), !func_1(vec3<bool>(true, true, false)));
    var var_1 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 1u), max(var_0.b, u_input.a.x)))), u_input.a.yz);
    var_1 = ~(~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(11302u, 49670u), u_input.a.yx) & _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(var_0.b, var_0.a))));
    var_1 = u_input.a.yx;
    var_1 = _wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(_wgslsmith_add_u32(1u, 41008u), reverseBits(37302u)));
    var var_2 = max(_wgslsmith_mult_vec4_u32(((vec4<u32>(34009u, var_0.b, 45018u, 1u) >> (vec4<u32>(0u, 4294967295u, var_0.b, var_0.b) % vec4<u32>(32u))) ^ ~vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x)) << ((firstTrailingBit(vec4<u32>(var_1.x, u_input.a.x, 1u, u_input.a.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.b, u_input.a.x, var_0.b), vec4<u32>(var_1.x, u_input.a.x, 33761u, u_input.a.x), vec4<u32>(var_1.x, 14697u, u_input.a.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<u32>(64482u, 43456u, 23013u, 1u), firstTrailingBit(vec4<u32>(var_1.x, 5020u, var_0.b, u_input.a.x) >> (vec4<u32>(26812u, var_0.b, 0u, 34103u) % vec4<u32>(32u))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true))), ~vec4<u32>(_wgslsmith_sub_u32(var_1.x << (72769u % 32u), ~4294967295u), 0u, firstLeadingBit(var_0.a >> (1u % 32u)), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(max(_wgslsmith_mod_i32(65351i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-3707i, 15323i, -35151i, 0i), vec4<i32>(-1i, -2147483647i, -14992i, 1i))), -1i, -17418i)), vec3<i32>(_wgslsmith_mod_i32(min(_wgslsmith_div_i32(2147483647i, -50969i), 47793i << (var_1.x % 32u)), min(select(24873i, 2147483647i, false), ~(-1i))), i32(-1i) * -max(1i, 2147483647i), ~(-1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1295f, 349f, -1306f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-371f, 1152f, 1117f)))))), ~vec2<u32>(abs(~104727u), _wgslsmith_sub_u32(~1278u, 25367u)), -1893f);
}

