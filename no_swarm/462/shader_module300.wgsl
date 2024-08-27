struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    let var_0 = ~(_wgslsmith_mult_vec2_u32(select(~vec2<u32>(4048u, 1u), ~vec2<u32>(5489u, 5189u), select(true, false, false)), countOneBits(~vec2<u32>(1u, 10208u))) & vec2<u32>(~firstLeadingBit(62680u), ~1u));
    let var_1 = arg_0.x <= arg_1.x;
    let var_2 = firstTrailingBit(5055i);
    let var_3 = !(arg_3.x || !any(select(vec4<bool>(true, false, true, arg_3.x), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(arg_2, true, arg_3.x, var_1))));
    var var_4 = Struct_1(vec2<f32>(1995f, arg_1.x), _wgslsmith_mult_vec2_i32(select(-(vec2<i32>(var_2, var_2) ^ vec2<i32>(-25739i, u_input.b.x)), -u_input.a.yz, var_1), firstLeadingBit(vec2<i32>(reverseBits(var_2), _wgslsmith_sub_i32(var_2, -1i)))), var_2, _wgslsmith_f_op_f32(f32(-1f) * -325f));
    return _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(arg_0.x * -1000f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(-126f, 1000f));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-339f, -517f), vec2<f32>(-1878f, var_0), true, vec3<bool>(false, false, false)))) * _wgslsmith_div_f32(295f, var_0))), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, -28741i), u_input.a.x), _wgslsmith_mult_i32(u_input.b.x, -(u_input.a.x >> (~82168u % 32u))), _wgslsmith_div_f32(var_0, var_0));
    let var_2 = !vec3<bool>(true, abs(_wgslsmith_mod_i32(var_1.b.x, 32397i)) < var_1.b.x, false);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1649f), var_0)))));
    var var_4 = vec3<bool>(var_2.x | (!var_2.x || all(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, false)))), false, true);
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_vec2_f32(sign(var_3))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c, u_input.a.x), u_input.a.wz ^ vec2<i32>(0i, -37589i)), vec2<i32>(~u_input.b.x, max(var_1.c, 1i)), -(u_input.b << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), abs(vec2<i32>(u_input.a.x, u_input.a.x))), -var_1.b.x, var_0);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 384f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(126f, 2775f))), true)))), ~vec2<i32>(arg_0.x, arg_2.x >> (arg_1 % 32u)), u_input.b.x, 1837f);
    var var_1 = all(arg_3.zwz);
    var_1 = arg_3.x;
    let var_2 = func_2();
    var_1 = !arg_3.x;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = 16598u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(668f)) + 759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1530f, -1158f, -1886f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1484f, -841f, -575f) + vec3<f32>(1635f, 278f, -1726f))))) - vec3<f32>(391f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(795f - -161f) + _wgslsmith_f_op_f32(f32(-1f) * -649f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec2<i32>(1i, u_input.b.x), 1u, -u_input.a.zz, vec4<bool>(false, false, false, true)))))));
    var var_2 = Struct_1(var_1.yz, u_input.b, -(abs(_wgslsmith_mult_i32(u_input.a.x, -73740i)) << ((1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1960u, 4294967295u), vec3<u32>(21120u, 4294967295u, 1u)) % 32u)) % 32u)), _wgslsmith_f_op_f32(select(1379f, _wgslsmith_f_op_f32(exp2(func_2().d)), true)));
    let var_3 = ~26854u;
    var var_4 = !(select(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 4294967295u, var_3, 1u), vec4<u32>(65250u, var_3, 7044u, 19776u)), 1u), true && any(vec4<bool>(true, true, false, true))) >= var_3);
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, var_2.a.x, -847f, var_1.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, -319f, 123f, var_2.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -1228f, var_2.a.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, 1051f, var_1.x, var_2.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, 341f)), _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(sign(-735f))))));
}

