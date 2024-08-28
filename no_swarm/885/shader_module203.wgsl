struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1696f;

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 21>;

var<private> global3: i32 = 14844i;

var<private> global4: vec2<i32> = vec2<i32>(-9361i, -1517i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    global3 = firstTrailingBit(max(-25160i, global4.x) ^ 4411i);
    var var_0 = _wgslsmith_mod_vec4_u32(~(~countOneBits(vec4<u32>(arg_1, 87904u, arg_1, 0u))), abs(vec4<u32>(~4294967295u, ~1u, 6023u, ~u_input.a.x))) & (vec4<u32>(36810u, arg_1 | 12332u, _wgslsmith_dot_vec3_u32(u_input.a ^ vec3<u32>(u_input.a.x, u_input.a.x, arg_1), firstLeadingBit(u_input.a)), 47107u) >> ((min(vec4<u32>(1u, 66238u, 1136u, arg_1), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 32585u)) << (~firstLeadingBit(vec4<u32>(arg_1, arg_1, 109148u, arg_1)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = !(40216u != _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, var_0.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), u_input.a.zy, vec2<u32>(4294967295u, 1u))), vec2<u32>(var_0.x, var_0.x)));
    var_1 = (abs(arg_1) | ~var_0.x) > _wgslsmith_div_u32(var_0.x, min(_wgslsmith_clamp_u32(40641u, _wgslsmith_clamp_u32(var_0.x, u_input.a.x, arg_1), 1u << (var_0.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, arg_1), vec3<u32>(0u, 32293u, var_0.x))));
    let var_2 = Struct_1(var_0.x, vec4<i32>(15913i, _wgslsmith_sub_i32(global4.x, global4.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, 2147483647i, -21663i), vec4<i32>(global4.x, -2147483647i, -4989i, -2147483647i))), ~(-global4.x), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-298f, -564f, arg_0.x))))))), arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c, var_2.c)) - 240f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) - _wgslsmith_f_op_f32(f32(-1f) * -401f)) < -1904f, !(_wgslsmith_f_op_f32(-var_0.c) == _wgslsmith_f_op_f32(func_3(arg_1.yz, u_input.a.x))), arg_2.d), !select(!(!vec3<bool>(false, true, arg_2.d)), arg_1.wwy, !var_0.d | !arg_2.d), !(!arg_1.zxx));
    var var_2 = arg_2.c;
    let var_3 = select(firstLeadingBit(min(vec3<i32>(1i, arg_2.b.x, arg_2.b.x), firstLeadingBit(vec3<i32>(global4.x, arg_2.b.x, global4.x))) ^ arg_2.b.zyx), select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(4294967295u, 4294967295u, arg_2.a, 4294967295u))), ~vec4<u32>(41667u, 1u, arg_0.x, 0u) ^ select(vec4<u32>(var_0.a, 0u, 26246u, 1u), vec4<u32>(0u, var_0.a, 63174u, 1u), arg_2.d)), 21u)], -vec3<i32>(countOneBits(arg_2.b.x), 19596i, -2147483647i), vec3<bool>(arg_1.x, true, var_1.x)), !(~(-2147483647i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.x, arg_2.b.x, 20295i), arg_2.b.xwy)));
    var_0 = Struct_1(abs(firstTrailingBit(abs(~var_0.a))), abs(~(vec4<i32>(1i, -23662i, 52216i, 59413i) | vec4<i32>(var_3.x, 0i, var_3.x, 0i)) | (-vec4<i32>(-43717i, var_0.b.x, 15704i, var_0.b.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(9134u, 4294967295u, var_0.a, 48973u), vec4<u32>(arg_0.x, u_input.a.x, arg_2.a, 11755u), vec4<u32>(arg_2.a, 7396u, 7667u, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(func_3(arg_1.wz, 39231u ^ ~arg_2.a)), true);
    return firstLeadingBit(abs(_wgslsmith_mod_i32(-1i, var_3.x))) << (35833u % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = -_wgslsmith_add_vec2_i32(~vec2<i32>(func_2(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), Struct_1(20744u, vec4<i32>(0i, -11925i, global4.x, arg_0.b.x), -389f, arg_0.d)), 45826i | arg_0.b.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(13710i, arg_0.b.x), arg_0.b.xy), arg_0.b.zw), arg_0.b.zy));
    global2 = array<vec3<i32>, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1140f, arg_1)))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f - arg_0.c) - 724f));
    let var_2 = 0i;
    let var_3 = Struct_1(arg_0.a >> (1u % 32u), arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), true);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(544f, _wgslsmith_f_op_f32(f32(-1f) * -446f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -631f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2710f - 282f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -525f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, vec4<i32>(global4.x, 1i, 1i, global4.x), -189f, true), 2299f)))), -831f)));
    let var_1 = Struct_1(reverseBits(_wgslsmith_add_u32(firstTrailingBit(~u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x ^ 0u))), vec4<i32>(-1i, global4.x, global4.x, (global4.x & _wgslsmith_div_i32(global4.x, 16824i)) >> (~103250u % 32u)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(select(1150f, var_0, all(vec4<bool>(false, false, false, false))))), !all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    global1 = true;
    let var_2 = var_1;
    var var_3 = ~firstLeadingBit(i32(-1i) * -var_2.b.x);
    var var_4 = select(!select(select(!vec3<bool>(false, var_2.d, false), vec3<bool>(false, var_2.d, true), true), vec3<bool>(true, var_2.d & false, var_1.d), vec3<bool>(true, var_1.d, false)), vec3<bool>(true, ~firstLeadingBit(var_1.a) >= 63746u, true), ~_wgslsmith_mod_u32(u_input.a.x, ~24768u) <= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, var_2.a, u_input.a.x), max(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec4<u32>(23573u, var_1.a, var_2.a, 35886u))), min(u_input.a.x >> (var_2.a % 32u), var_2.a ^ 13979u)));
    let var_5 = u_input.a;
    var var_6 = -437f;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec2<f32>(594f, -1421f), i32(-1i) * -11400i);
}

