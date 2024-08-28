struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    return !(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)) && all(vec4<bool>(all(vec3<bool>(true, false, true)), true, any(vec3<bool>(false, false, true)), true)));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-11388i, -39512i >> (u_input.a % 32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(7686i, -1i), countOneBits(vec2<i32>(~(-2147483647i), abs(-2147483647i)))));
    let var_1 = all(vec2<bool>(func_3(), !func_3()));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-424f, 1028f, 1000f)) - vec3<f32>(-1000f, 389f, 298f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-225f, 1373f, -2033f) + vec3<f32>(208f, 451f, 1008f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(593f, -2113f, -1756f) + vec3<f32>(1420f, 276f, 1402f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1798f, -841f, 2003f), vec3<f32>(467f, -348f, -577f), var_1)))))));
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(0i), var_0.x) >> (((_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 53969u), vec2<u32>(u_input.a, 1u)) & vec2<u32>(1u, 1u)) | _wgslsmith_mult_vec2_u32(~vec2<u32>(58713u, 18250u), ~vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u)), -var_0, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_0, vec2<i32>(-1i) * -vec2<i32>(var_0.x, 74698i)), var_0 << (~(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))));
    let var_4 = ~(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(34305u, 0u, u_input.a, 1u), ~vec4<u32>(0u, 1u, 9260u, 1u)), 4294967295u, ~(~20115u), u_input.a << (u_input.a % 32u)) & vec4<u32>(21714u, ~u_input.a, u_input.a >> (u_input.a % 32u), reverseBits(39606u)));
    return var_2;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_1 = vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_mod_u32(~2903u | u_input.a, ~firstTrailingBit(u_input.a)));
    var var_2 = select(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), 0u >= var_1.x)), !vec4<bool>(0u == u_input.a, true, true, true)), !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), func_3()), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), any(vec4<bool>(false, false, false, true)))), select(all(vec2<bool>(false, false)), false, true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false))), func_3()));
    var var_3 = Struct_1(-vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(-countOneBits(2147483647i), reverseBits(-2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(47177i, -19800i, 2147483647i), vec3<i32>(1i, 49044i, 0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2121i, 2147483647i, 14054i), vec4<i32>(0i, -49190i, 28197i, 2147483647i)), ~vec4<i32>(2147483647i, 13240i, 8394i, -12467i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(259f, var_0.x, true))));
    let var_4 = -(~vec4<i32>(max(11846i, ~0i), firstTrailingBit(var_3.a.x), _wgslsmith_div_i32(var_3.a.x, _wgslsmith_sub_i32(var_3.a.x, 1i)), ~(-34567i)));
    return any(!var_2.zwy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(224f, -1118f, 243f, -874f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, arg_1.b, arg_1.b, -1784f))))))));
    var var_1 = Struct_1(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-19915i, 2147483647i, 17551i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, arg_1.a.x), ~vec4<i32>(10286i, arg_0.a.x, arg_0.a.x, 2147483647i))), ~arg_1.a), arg_1.b);
    var_1 = arg_0;
    return var_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(reverseBits(-vec4<i32>(-2147483647i, 40235i, 26152i, -1i)), _wgslsmith_f_op_f32(-1510f + _wgslsmith_f_op_f32(-299f * -1636f))), Struct_1(-vec4<i32>(abs(0i), _wgslsmith_add_i32(1i, -1i), ~(-5135i), ~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)) * 1258f)), !vec4<bool>(false, true, ~5817u >= ~u_input.a, func_1()), ~(~4294967295u)));
    var var_1 = select(firstLeadingBit(2147483647i << (~u_input.a % 32u)), -(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(40717i, 44388i, -2147483647i), vec3<i32>(-18886i, -16421i, -1i))) & -(-12054i >> (u_input.a % 32u))), any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<i32>(~(-41820i), reverseBits(-2147483647i), 71708i, ~1i), -847f), Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-65042i, 1i, 20348i, 2147483647i), vec4<i32>(~88661i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2580i, -45372i), vec2<i32>(0i, -38059i)), _wgslsmith_sub_i32(1i, 1i)), max(~vec4<i32>(-12994i, 0i, -2147483647i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<i32>(-68886i, -16198i, -45027i, 42692i), 712f), Struct_1(vec4<i32>(-1i, 2147483647i, 5887i, 38055i), var_0.x), vec4<bool>(true, false, true, true), 75082u)).x), _wgslsmith_f_op_vec3_f32(func_2()).x))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, (1u > u_input.a) | true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), true), ~(~(~4294967295u))));
    let var_3 = ~_wgslsmith_sub_i32(max(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 56561i, -2147483647i), vec3<i32>(-1061i, -1i, 9238i))), -(~(-1i))), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(37654i, -2147483647i)), _wgslsmith_add_i32(-2147483647i, 2147483647i))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(28472i, var_3), vec2<i32>(0i, var_3)) | var_3, 2147483647i) | _wgslsmith_clamp_vec2_i32(min(vec2<i32>(-6226i, 0i) & vec2<i32>(var_3, -24964i), vec2<i32>(var_3, 54688i)), abs(-vec2<i32>(0i, -2147483647i)), vec2<i32>(var_3, 72324i)), -(_wgslsmith_div_i32(var_3, _wgslsmith_add_i32(-1i, 2147483647i)) >> (~44095u % 32u)), ~u_input.a);
}

