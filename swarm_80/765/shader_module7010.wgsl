struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 34869u, 71632u), 1i, 2147483647i, vec3<u32>(46895u, 1920u, 1u), 4294967295u);

var<private> global3: i32;

var<private> global4: array<vec4<i32>, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = (global2.c << (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(global1.a.e, global2.a.x, 18116u, 42765u)), ~vec4<u32>(u_input.d, arg_0, 0u, 22661u) >> ((u_input.c ^ u_input.c) % vec4<u32>(32u))) % 32u)) << (_wgslsmith_mult_u32(~(~73345u), 4294967295u & max(firstLeadingBit(4294967295u), global2.d.x)) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1000f, -627f), vec3<f32>(-435f, 650f, 447f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1337f, -763f, 996f))))))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(504f, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1436f)), 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1765f, 543f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1274f)) * _wgslsmith_f_op_f32(min(var_1.x, 1000f))) < -2582f;
    var var_3 = Struct_1(~(firstTrailingBit(global2.d ^ u_input.c.yxx) << (vec3<u32>(1u, ~global1.b, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_div_i32(max(_wgslsmith_mod_i32(global2.b, global1.a.c), 20796i) | 0i, ~min(1i, global1.a.b ^ global2.b)), _wgslsmith_mod_i32(select(46714i, -31008i, false), select(-var_0, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0, 63412i), reverseBits(-32041i)), var_2)), u_input.b ^ ~(~vec3<u32>(arg_0, 1u, 50118u)), reverseBits(select(~32685u ^ global2.a.x, ~65602u, true)));
    let var_4 = vec2<i32>(countOneBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 535i), vec2<i32>(2147483647i, -33253i))), -_wgslsmith_add_i32(max(var_0, global1.a.b), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(16813i, 23327i)))) | ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -9259i, var_3.c), global4[_wgslsmith_index_u32(43688u, 20u)]), var_3.b), vec2<i32>(_wgslsmith_sub_i32(-1i, global1.a.b), var_0));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.e, 0u, u_input.d) >> (~vec3<u32>(var_3.a.x, arg_0, arg_0) % vec3<u32>(32u)), ~u_input.b), firstTrailingBit(~(~var_3.d))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, 4294967295u), ~vec3<u32>(arg_0, _wgslsmith_div_u32(17802u, var_3.a.x), ~0u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    var var_0 = global1.a;
    let var_1 = Struct_1(vec3<u32>(4294967295u, arg_0.e, _wgslsmith_clamp_u32(var_0.d.x ^ arg_0.a.x, global2.e, var_0.d.x)), -19949i, -2147483647i, var_0.a, u_input.a);
    global2 = Struct_1(select(vec3<u32>(4554u, _wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(129292u, arg_0.d.x), arg_0.a.yy)), min(countOneBits(var_1.a.x), global1.a.d.x)), vec3<u32>(~_wgslsmith_div_u32(arg_0.d.x, u_input.a), 4294967295u, ~u_input.e), true), ~(-21590i), global1.a.c, (vec3<u32>(0u << (arg_0.a.x % 32u), 16131u, 42455u) ^ ~(global1.a.a ^ vec3<u32>(var_0.e, 0u, var_1.d.x))) ^ (select(vec3<u32>(29580u, 77333u, var_0.d.x) & global1.a.a, firstLeadingBit(global1.a.d), !arg_2) & global1.a.d), 37444u);
    var var_2 = _wgslsmith_f_op_f32(-1000f - -158f);
    var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(u_input.b, ~vec3<u32>(0u, global2.e, var_0.a.x) ^ ~u_input.b, firstLeadingBit(_wgslsmith_div_vec3_u32(var_0.a, var_1.d)) & countOneBits(~vec3<u32>(var_1.a.x, var_1.a.x, var_0.d.x))), -_wgslsmith_div_i32(arg_0.b, arg_0.b), var_1.b, ~u_input.b, global2.a.x);
    return -23621i >> (~select(global2.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, var_0.d.x), _wgslsmith_mult_u32(1u, 0u)), all(vec2<bool>(false, true))) % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: i32) -> vec2<i32> {
    var var_0 = Struct_1(firstLeadingBit(~(global2.a >> (global1.a.d % vec3<u32>(32u)))) & global1.a.d, ~(-arg_0.x), -1i, _wgslsmith_add_vec3_u32(~vec3<u32>(1u, ~38583u, ~13502u), _wgslsmith_mod_vec3_u32(abs(u_input.b), u_input.c.xzz)), 1u);
    var var_1 = Struct_2(-1000f, !vec2<bool>(arg_2.x, false), Struct_1(var_0.a, -(~(-65389i)), func_4(Struct_1(~vec3<u32>(arg_1, global2.e, 1u), -arg_3, -50920i, vec3<u32>(1u, 64213u, global1.a.d.x), func_3(85700u)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global1.a.c, -1i)), ~arg_0.zz), all(select(global1.d.wwz, global1.d.yzz, global1.d.x)), vec2<bool>(all(vec2<bool>(true, false)), true)), ~_wgslsmith_mult_vec3_u32(global1.a.a, global2.d), 46242u), global1.a, false);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(~(~min(var_0.e, 42785u)) | ~arg_1, 19u)], var_1.c.e, true, vec4<bool>(var_1.b.x, true, global1.d.x, all(vec3<bool>(arg_2.x, all(vec3<bool>(true, arg_2.x, false)), true | var_1.e))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * var_1.a))));
    let var_4 = 29416i;
    return arg_0.yx;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = reverseBits(~abs(-vec2<i32>(global1.a.c, -2147483647i)) | abs(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -10659i), vec2<i32>(global2.b, 1i)) ^ vec2<i32>(global2.c, global1.a.b)));
    var var_1 = select(!(!global1.d), vec4<bool>(all(!vec4<bool>(global1.d.x, global1.c, true, global1.d.x)), true, global1.c, global1.d.x), global1.d);
    let var_2 = select(select(select(!global1.d.zzy, !(!var_1.xwy), !var_1.xzz), global1.d.www, vec3<bool>(true, true, true)), global1.d.wyy, true);
    var_0 = ~(~vec2<i32>(2147483647i, global1.a.c));
    var_0 = firstLeadingBit(func_2(firstLeadingBit(firstTrailingBit(countOneBits(vec3<i32>(-1i, var_0.x, arg_0)))), ~(~(28191u | global1.a.a.x)), var_1.xyw, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(var_0.x, -56848i)), arg_0)));
    return (global2.d.x & 13272u) << (global1.a.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global2.a.x << ((u_input.c.x | 10722u) % 32u), 20u)];
    global2 = Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(116869u, global1.b, global2.a.x)) >> (((vec3<u32>(4294967295u, global1.b, global1.a.d.x) ^ vec3<u32>(0u, 23622u, global1.a.e)) << (_wgslsmith_mod_vec3_u32(global2.a, vec3<u32>(global1.a.e, 35355u, u_input.d)) % vec3<u32>(32u))) % vec3<u32>(32u)), global2.d << (vec3<u32>(func_1(0i, u_input.c.x), ~global1.b, global1.a.e) % vec3<u32>(32u))), var_0.x, global2.c, vec3<u32>(u_input.c.x, 0u, global1.a.e), 0u);
    global4 = array<vec4<i32>, 20>();
    let var_1 = ~vec2<u32>(abs(~reverseBits(global2.d.x)), global1.a.e);
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-131f)), 1f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(-265f, _wgslsmith_f_op_f32(360f - -693f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(564f, -1189f, 485f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(943f, 517f, -1046f), vec3<f32>(580f, -764f, -375f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-426f, 1213f, 1106f))))), vec3<f32>(-736f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f), -325f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(global2.d.x, 1u, min(global1.a.d.x, var_1.x | ~34903u)));
}

