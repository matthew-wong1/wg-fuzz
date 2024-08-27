struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec3<bool>(all(vec2<bool>(false, false)), !(_wgslsmith_div_u32(1u << (1u % 32u), ~56893u) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 0u, 84479u))), !(!global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 7u)]));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, -1505f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(479f, 1622f)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(-1000f * -1404f)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1291f, -1151f))), vec2<bool>(true, true))))), countOneBits(select(abs(vec4<u32>(1u, 4294967295u, arg_2.c.a, 1u) & vec4<u32>(arg_2.c.a, 31912u, arg_2.c.a, 61120u)), vec4<u32>(firstLeadingBit(37271u), 1u, arg_2.a.a, arg_0.x), any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(68157u, 7u)])))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 122f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-249f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-814f))), _wgslsmith_div_f32(-747f, _wgslsmith_f_op_f32(step(1122f, -738f))))), 1223f), arg_2.a, _wgslsmith_dot_vec3_u32((_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.x, 5029u), vec3<u32>(0u, arg_3.x, 30563u)) & arg_0) << (select(vec3<u32>(arg_3.x, 35126u, arg_0.x), countOneBits(arg_0), !vec3<bool>(global0[_wgslsmith_index_u32(68106u, 7u)], arg_2.b.x, true)) % vec3<u32>(32u)), arg_0));
    global0 = array<bool, 7>();
    let var_1 = ~vec4<u32>(arg_3.x, var_0.e, ~reverseBits(_wgslsmith_div_u32(arg_2.a.a, 4294967295u)), ~arg_0.x);
    var var_2 = var_0.c;
    let var_3 = Struct_1(vec2<i32>(~(-17541i), firstLeadingBit(~(~0i))), ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(var_1, var_1), ~_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(4294967295u, 51710u, var_1.x, 0u))), 18813i, var_2.zxx, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 76437u, arg_3.x, 4294967295u) >> (var_0.b % vec4<u32>(32u)), var_0.b >> (vec4<u32>(arg_3.x, var_0.e, 88243u, arg_3.x) % vec4<u32>(32u))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(18393u, arg_3.x, arg_0.x), abs(0u))));
    return select(vec3<bool>(any(select(!vec3<bool>(arg_2.b.x, true, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(41415u, 7u)], false), true)), any(select(select(vec3<bool>(arg_2.b.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], arg_2.b.x, false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_1.x, 7u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a.a, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)], false), vec3<bool>(global0[_wgslsmith_index_u32(8257u, 7u)], arg_2.b.x, global0[_wgslsmith_index_u32(arg_3.x, 7u)]), vec3<bool>(arg_2.b.x, false, true)), vec3<bool>(true, true, global0[_wgslsmith_index_u32(37669u, 7u)]))), arg_0.x >= (55157u & arg_3.x)), vec3<bool>(false, true, arg_2.b.x), vec3<bool>(all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.c.a, 7u)]), vec2<bool>(true, true), true)) || true, arg_2.b.x, false));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> vec2<u32> {
    let var_0 = Struct_1(firstTrailingBit(vec2<i32>(-6617i, u_input.a.x) ^ ~(~u_input.a.yw)), ~0u, (u_input.a.x & u_input.a.x) << (_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 4294967295u), vec2<u32>(1u, 21246u)), ~(~arg_2)) % 32u), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -530f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1910f + arg_0), 247f), _wgslsmith_f_op_f32(max(arg_0, arg_0)))), arg_2);
    global0 = array<bool, 7>();
    let var_1 = !(!vec2<bool>(true, all(!vec3<bool>(true, arg_1, arg_1))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x))) * 314f), var_0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1341f + 526f) + var_0.d.x)))) + vec3<f32>(1043f, _wgslsmith_div_f32(_wgslsmith_div_f32(-640f, var_0.d.x), var_0.d.x), var_0.d.x));
    var var_3 = (true & (any(!vec3<bool>(false, global0[_wgslsmith_index_u32(11550u, 7u)], true)) || var_1.x)) & any(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.e, 7u)], true, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 7u)]), any(vec3<bool>(global0[_wgslsmith_index_u32(41293u, 7u)], arg_1, true))), func_2(vec3<u32>(27282u, var_0.b, 36198u), u_input.a.x, Struct_3(Struct_2(var_0.b), var_1, Struct_2(1u)), ~vec2<u32>(4294967295u, 4294967295u)), true));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(~abs(vec2<u32>(1u, 4294967295u))), vec2<u32>(arg_2, reverseBits(var_0.b)) | (vec2<u32>(var_0.b, var_0.e) >> (vec2<u32>(78994u, 4294967295u) % vec2<u32>(32u)))), ~reverseBits(vec2<u32>(~11540u, 95341u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1191f * -1539f), _wgslsmith_f_op_f32(776f + -258f), !arg_1.x)))));
    global0 = array<bool, 7>();
    var var_1 = 10908u;
    let var_2 = Struct_3(Struct_2(~(~(~arg_0.x))), func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(0u, 21253u, arg_0.x)) >> (abs(vec3<u32>(arg_0.x, arg_0.x, 1u)) % vec3<u32>(32u)), ~(~vec3<u32>(1u, arg_0.x, arg_0.x))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zzy), u_input.a.x), -u_input.a.x), Struct_3(Struct_2(arg_0.x), arg_1.xx, Struct_2(0u)), arg_0).yz, Struct_2(~func_1(117f, var_0.a.x, 97669u).x & abs(_wgslsmith_clamp_u32(arg_0.x, 1u, arg_0.x))));
    global0 = array<bool, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(394f * var_0.b) + _wgslsmith_f_op_f32(865f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<bool>(!any(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false, global0[_wgslsmith_index_u32(75384u, 7u)])), global0[_wgslsmith_index_u32(~abs(~20126u), 7u)], false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_1(-376f, any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 7u)])), 1u), vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], !global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))), -198f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1731f)))), 2046f, _wgslsmith_f_op_f32(var_0.b * var_0.b)));
    var var_2 = Struct_2(4294967295u);
    let var_3 = all(vec4<bool>(true, var_0.a.x, _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(-var_1.x), !select(true, false, var_0.a.x))) & (_wgslsmith_f_op_f32(var_1.x + var_1.x) <= var_0.b);
    let var_4 = Struct_4(vec3<bool>(var_3, !(_wgslsmith_f_op_f32(select(980f, var_1.x, false)) >= var_1.x), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1326f + var_0.b) + var_1.x), all(!select(vec4<bool>(var_3, global0[_wgslsmith_index_u32(var_2.a, 7u)], false, var_0.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.a, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], false), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1, -891f, _wgslsmith_f_op_f32(-var_1.x));
}

