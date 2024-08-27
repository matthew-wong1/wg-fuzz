struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool) -> f32 {
    return -912f;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_3;
    let var_1 = !(!(!vec3<bool>(select(false, false, true), u_input.a.x <= u_input.a.x, false)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, var_0.a.x, 1576f)))) * _wgslsmith_div_vec3_f32(arg_3.a, _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, arg_3.a.x), vec3<f32>(-842f, 2425f, arg_1))))));
    return min(_wgslsmith_mod_vec4_i32(select(-(vec4<i32>(14031i, arg_2, arg_2, arg_0.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), -abs(vec4<i32>(-1i, arg_0.x, arg_2, arg_2)), var_1.x), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-4990i, 0i, 32305i, arg_2), vec4<i32>(arg_2, arg_2, arg_0.x, 1i)))), reverseBits(vec4<i32>(0i, arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_2) | vec4<i32>(1i, arg_2, arg_2, -1i), vec4<i32>(arg_0.x, 1i, arg_0.x, arg_2)), (arg_0.x >> (u_input.a.x % 32u)) | _wgslsmith_mod_i32(-60178i, arg_2))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(1i, 1i, 1i, 1i)), countOneBits(~firstTrailingBit(func_3(vec2<i32>(31509i, -2147483647i), 1116f, -64933i, Struct_1(vec3<f32>(1231f, -170f, -960f))))));
    var var_1 = false;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-926f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-962f)), _wgslsmith_f_op_f32(select(-314f, 1000f, false))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-813f))), 429f));
    var_1 = any(!select(vec3<bool>(-1i >= var_0.x, false, true), vec3<bool>(false, false, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, 1362f, 184f) - vec3<f32>(336f, -1435f, 1152f)), _wgslsmith_div_vec3_f32(vec3<f32>(627f, -1466f, -1365f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(865f, -155f, 608f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-611f, -1257f, -516f), vec3<f32>(-131f, -1760f, 815f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, 1048f, 120f)), vec3<f32>(-1681f, 191f, 887f)))) * vec3<f32>(_wgslsmith_f_op_f32(func_1(true)), -999f, -1174f)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1558f, var_0.a.x)), -1802f, _wgslsmith_f_op_f32(sign(1231f))));
    var var_2 = func_2();
    let var_3 = 1i;
    let var_4 = vec3<u32>((u_input.a.x << ((_wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ ~u_input.a.x) % 32u)) | (1u >> (_wgslsmith_sub_u32(41173u, u_input.a.x) % 32u)), ~countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, 43291u, 0u)))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(u_input.a.x), u_input.a.x), (u_input.a | u_input.a) | (vec2<u32>(u_input.a.x, 0u) >> (vec2<u32>(50242u, u_input.a.x) % vec2<u32>(32u)))), u_input.a.x));
    var var_5 = select(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_4.x) ^ vec4<u32>(u_input.a.x, 36916u, var_4.x, u_input.a.x)), min(~vec4<u32>(0u, var_4.x, 4294967295u, 35953u), _wgslsmith_add_vec4_u32(vec4<u32>(64457u, u_input.a.x, var_4.x, 101330u), vec4<u32>(0u, u_input.a.x, 33876u, 47229u)))), ~select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, var_4.x, u_input.a.x, 38169u), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, true)) << (select(~(~vec4<u32>(u_input.a.x, u_input.a.x, var_4.x, 4294967295u)), ~abs(~vec4<u32>(var_4.x, 0u, 47349u, var_4.x)), select(vec4<bool>(false, true, any(vec2<bool>(true, false)), select(false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), true)) % vec4<u32>(32u));
    var var_6 = !vec3<bool>(all(vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, false, true, false)))), all(vec2<bool>(true, true)), !any(vec3<bool>(false, true, true)) | true);
    var var_7 = abs(firstTrailingBit(func_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_3, var_3), vec2<i32>(var_3, var_3)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-900f + var_2.a.x))), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -var_3), func_2()).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

