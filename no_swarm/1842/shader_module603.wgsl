struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(~u_input.c, 1u));
    var var_1 = -_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(countOneBits(vec3<i32>(u_input.e.x, u_input.a, -38286i))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.e.x, -2147483647i), u_input.e.zzw))), u_input.e.wxz);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1172f, _wgslsmith_f_op_f32(1112f + _wgslsmith_f_op_f32(-485f - _wgslsmith_f_op_f32(f32(-1f) * -301f))))));
    var_1 = _wgslsmith_add_vec3_i32(select((u_input.e.xzx >> (vec3<u32>(1u, 15567u, 3220u) % vec3<u32>(32u))) & vec3<i32>(u_input.a, 0i, u_input.e.x), u_input.e.wwy, true), u_input.e.xwy) >> (~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.b, 0u), ~vec3<u32>(u_input.b, 22615u, var_0.a))) % vec3<u32>(32u));
    var var_3 = !(!(!any(vec3<bool>(false, false, true))) && !(var_2 >= -388f));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2 - -2721f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2, -918f)), _wgslsmith_f_op_f32(-1939f + -822f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(963f)) * _wgslsmith_f_op_f32(max(-1081f, -1165f))), -1591f))), _wgslsmith_f_op_f32(func_3()), any(select(vec4<bool>(true, false, true, -16689i >= u_input.e.x), vec4<bool>(true, true, u_input.e.x <= -38335i, all(vec4<bool>(false, true, true, true))), true | any(vec2<bool>(true, true))))));
    var var_1 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, countOneBits(select(0u, 4294967295u, false)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.c, 7931u, 98672u)), vec4<u32>(4294967295u, 0u, 36323u, 4294967295u)), ~abs(u_input.b)), ~(~vec4<u32>(83697u, 0u, 4294967295u, u_input.d))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)))), 2147483647i, ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 24141u), countOneBits(vec2<u32>(u_input.d, var_1.a))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(var_1.a, 3236u)), min(vec2<u32>(var_1.a, 42293u), vec2<u32>(4643u, var_1.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f - 286f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-499f))))));
    let var_3 = ~(-u_input.e.x);
    let var_4 = -select(i32(-1i) * -19407i, 2147483647i, false);
    return var_2;
}

fn func_1() -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(288f)), 892f)), -725f, _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(f32(-1f) * -163f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(540f + var_0.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a, 892f, false)), _wgslsmith_f_op_f32(select(var_0.a, var_0.d, false)))))));
    let var_2 = func_2();
    return _wgslsmith_sub_vec2_u32(vec2<u32>(~countOneBits(~var_0.c.x), 4294967295u | select(~4294967295u, abs(0u), false)), vec2<u32>(~firstTrailingBit(firstTrailingBit(var_2.c.x)), 94706u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~vec2<u32>(~u_input.b, ~u_input.b)));
    var_0 = reverseBits(func_1());
    let var_1 = Struct_2(1u);
    let var_2 = !(_wgslsmith_div_i32(u_input.e.x & u_input.a, u_input.e.x) == -7479i) & false;
    var_0 = ~vec2<u32>(_wgslsmith_add_u32(reverseBits(countOneBits(u_input.b)), firstLeadingBit(abs(var_1.a))), ~1081u);
    var var_3 = Struct_3(Struct_2(55688u), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2055f) * 605f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))))), u_input.e.x, vec2<u32>(~4294967295u & ~var_1.a, 0u), _wgslsmith_f_op_f32(-159f * -1814f)), ~4294967295u, any(vec3<bool>(any(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, var_2, false), vec3<bool>(var_2, var_2, false))), !any(vec4<bool>(false, true, var_2, var_2)), var_1.a > var_1.a)));
    var_3 = Struct_3(Struct_2(var_1.a), var_3.b, ~var_0.x, all(select(vec2<bool>(!var_2, !var_3.d), select(!vec2<bool>(true, var_3.d), !vec2<bool>(var_2, true), vec2<bool>(false, true)), vec2<bool>(!var_2, all(vec2<bool>(false, var_3.d))))));
    var_0 = var_3.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.b.a, -778f, var_3.b.d, 869f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.b.d, 1927f, var_3.b.d, var_3.b.d)))))), true)), u_input.e.wy << (_wgslsmith_mult_vec2_u32(vec2<u32>(max(var_3.b.c.x, 0u), ~var_1.a), vec2<u32>(2126u, 4294967295u) ^ var_3.b.c) % vec2<u32>(32u)));
}

