struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = !select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), vec3<bool>(select(false, false, true) & any(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true)));
    let var_1 = Struct_2(u_input.a, select(select(var_0.zy, !select(vec2<bool>(true, true), var_0.yz, var_0.yz), any(vec4<bool>(true, true, var_0.x, var_0.x))), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), true), false));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1414f, -254f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1876f * -2253f))), 551f)), vec4<u32>(_wgslsmith_mult_u32(~(~u_input.a), 39409u), 18533u, ~40879u >> (var_1.a % 32u), _wgslsmith_div_u32(u_input.a, reverseBits(var_1.a)) << (var_1.a % 32u)), vec4<bool>(true, all(!vec2<bool>(var_0.x, var_0.x)), all(select(vec3<bool>(var_1.b.x, false, false), select(vec3<bool>(var_1.b.x, true, true), vec3<bool>(false, var_0.x, var_1.b.x), vec3<bool>(true, false, false)), select(vec3<bool>(var_1.b.x, true, var_0.x), vec3<bool>(var_0.x, var_1.b.x, false), var_1.b.x))), !(_wgslsmith_div_u32(u_input.a, 41316u) < 19419u)), reverseBits(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, 21867i), vec2<i32>(-1i, 2147483647i), var_1.b.x), ~vec2<i32>(35472i, 2147483647i)))));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(518f - _wgslsmith_f_op_f32(ceil(var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + 2436f))), _wgslsmith_f_op_f32(-var_2.a.x)), vec4<u32>(var_1.a, ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u), var_2.b), var_1.a), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(68121u, 1612u), vec2<u32>(0u, var_1.a))), vec2<u32>(var_1.a, var_1.a) << (~var_2.b.xy % vec2<u32>(32u)))), var_2.c, -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.d, var_2.d, -4491i), vec3<i32>(var_2.d, var_2.d, var_2.d)), select(vec3<i32>(-2147483647i, var_2.d, var_2.d), vec3<i32>(0i, var_2.d, var_2.d), false)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.d, var_2.d), abs(vec2<i32>(15499i, -2147483647i)))));
    var_2 = Struct_1(var_3.a, ~(~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, var_3.b.x, 1u)), firstTrailingBit(vec4<u32>(12797u, 138923u, 0u, 21397u)))), var_2.c, var_2.d);
    return _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(104f - var_2.a.x), var_3.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -370f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = ~u_input.a & ~countOneBits(select(29805u, arg_1.b.x, arg_3.x) & 1u);
    var var_1 = arg_1.a.x;
    var_1 = _wgslsmith_f_op_f32(floor(arg_1.a.x));
    let var_2 = _wgslsmith_clamp_u32(~select(arg_2.a.x, var_0, !all(arg_1.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, arg_2.a.x), vec3<u32>(~_wgslsmith_div_u32(6337u, 1u), min(1u, 7747u), ~1u)), var_0);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(753f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), select(false || arg_3.x, false, false) || !(!arg_3.x)))));
    return abs(~_wgslsmith_mult_vec3_u32(arg_2.a.yyw, ~(~arg_1.b.ywx)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = ~u_input.a;
    let var_1 = countOneBits(select(countOneBits(min(vec3<u32>(var_0, var_0, 57707u), vec3<u32>(4294967295u, 82581u, 49984u)) & func_2(vec3<bool>(false, arg_0, true), Struct_1(vec3<f32>(1000f, -337f, arg_1.x), vec4<u32>(var_0, 1049u, u_input.a, u_input.a), vec4<bool>(true, arg_0, false, arg_0), -16606i), Struct_3(vec4<u32>(2971u, var_0, 15673u, var_0), 1u), vec3<bool>(arg_0, true, arg_0))), vec3<u32>(~(~67743u), 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, var_0, 4294967295u), vec4<u32>(44737u, var_0, 0u, 1u)), ~u_input.a)), vec3<bool>(u_input.a != var_0, arg_0, !arg_0)));
    var var_2 = Struct_3(~firstLeadingBit(~(vec4<u32>(0u, 54476u, 55067u, 0u) >> (vec4<u32>(4294967295u, u_input.a, 9605u, 14042u) % vec4<u32>(32u)))), _wgslsmith_div_u32(var_0, reverseBits(_wgslsmith_sub_u32(31436u, var_1.x))) << (~var_0 % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -308f, -608f)) + vec3<f32>(-852f, arg_1.x, arg_1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-114f, -1493f, 604f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1214f, 359f) - vec3<f32>(arg_3.x, 781f, 851f))))), ~vec4<u32>(0u, u_input.a, var_2.b, _wgslsmith_sub_u32(~19981u, u_input.a)), select(vec4<bool>(!any(vec2<bool>(true, false)), arg_0, arg_0, select(arg_2.x, 10407i, arg_0) <= _wgslsmith_add_i32(arg_2.x, arg_2.x)), select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), !vec4<bool>(arg_0, arg_0, arg_0, true), true), false || arg_0), select(arg_2.x, _wgslsmith_mult_i32(-select(arg_2.x, 44443i, arg_0), _wgslsmith_div_i32(arg_2.x, _wgslsmith_add_i32(arg_2.x, -2147483647i))), false));
    var_2 = Struct_3(var_2.a, firstTrailingBit(~(~4294967295u | _wgslsmith_sub_u32(u_input.a, 11130u))));
    return vec3<bool>(select(all(!select(vec4<bool>(var_3.c.x, false, var_3.c.x, false), vec4<bool>(false, true, arg_0, true), var_3.c.x)), true && (select(false, false, true) & arg_0), arg_0), (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(899f + var_3.a.x), -507f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, var_3.a.x, true)) * _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, var_3.c.x)))) && true, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(all(vec3<bool>(true, true, true)), true | (-831f <= _wgslsmith_f_op_f32(select(1135f, -1599f, false)))));
    var var_1 = all(!func_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, 1061f) * vec2<f32>(1386f, 289f)) - vec2<f32>(771f, 423f)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(149f, 122f)))));
    var_1 = !var_0 & var_0;
    var_1 = false;
    var_1 = !(all(vec3<bool>(!var_0, any(vec2<bool>(false, var_0)), var_0)) | func_1(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-184f, 2384f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 830f), vec2<f32>(-1000f, -1516f))), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1324f, -817f))))).x);
    var var_2 = Struct_3(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 74793u, 0u, 16386u) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 61510u, 73112u), vec4<u32>(29778u, 54989u, u_input.a, u_input.a)), vec4<bool>(true, true, false, true)) << (((vec4<u32>(12703u, 1u, 4456u, u_input.a) >> (vec4<u32>(7358u, u_input.a, 10559u, u_input.a) % vec4<u32>(32u))) & ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) % vec4<u32>(32u)), abs(vec4<u32>(30256u, 1u, 18730u | u_input.a, ~20301u))), u_input.a);
    var var_3 = vec4<f32>(1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-274f, -478f))))))), -318f);
    var var_4 = !var_0;
    let var_5 = ~(~vec3<u32>(~(~1u), reverseBits(_wgslsmith_mod_u32(u_input.a, 11293u)), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, var_5.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-596f, var_3.x, 416f, var_3.x)))))), abs(_wgslsmith_div_vec2_i32(~(-vec2<i32>(-9622i, 2147483647i)), ~vec2<i32>(1i, 0i))), 1000f);
}

