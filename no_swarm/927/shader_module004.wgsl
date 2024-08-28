struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-37314i), Struct_1(-16668i), Struct_1(-28921i), Struct_1(2147483647i), Struct_1(-8104i), Struct_1(21104i), Struct_1(64348i), Struct_1(1i), Struct_1(-46905i), Struct_1(2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.e, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], u_input.c.zz, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.e), vec3<u32>(~_wgslsmith_sub_u32(0u, u_input.d.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), firstTrailingBit(40103u)), ~4293u)), global0[_wgslsmith_index_u32(~(~1u) ^ u_input.e, 10u)]);
    global0 = array<Struct_1, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1209f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> bool {
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(29535u ^ ~u_input.d.x, 10u)], Struct_1(firstLeadingBit(arg_1.e.x)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a | 1i, -72614i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), vec2<i32>(1i, u_input.a)))), u_input.d.x, Struct_1(-38960i));
    let var_1 = -545f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1438f, -701f)), _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(255f, _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(func_2(vec3<i32>(-1i, -2463i, var_0.a.a), arg_1.a, vec2<bool>(true, arg_1.b), arg_1.c.yx)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1190f, arg_1.a)), arg_0)))));
    var var_3 = var_0.c;
    return all(!arg_1.c.xy) | arg_0;
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(select(4294967295u, u_input.d.x, true), u_input.b.x), u_input.d.x) & ((max(vec2<u32>(u_input.b.x, 27051u), vec2<u32>(27781u, 47649u)) ^ ~vec2<u32>(u_input.b.x, 25911u)) >> (select(~u_input.d.xz, vec2<u32>(1u, u_input.b.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))) % vec2<u32>(32u))), select(abs(~select(vec2<u32>(u_input.b.x, u_input.e), vec2<u32>(39159u, u_input.d.x), vec2<bool>(false, true))), ~(~(~u_input.d.ww)), vec2<bool>(false | (u_input.d.x > u_input.b.x), false))), 10u)];
    global0 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f));
    var_1 = _wgslsmith_f_op_f32(func_2(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~65635i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, u_input.a, 45519i, var_0.a), vec4<i32>(-3449i, u_input.c.x, 0i, var_0.a)), 0i), -select(vec3<i32>(var_0.a, 1i, var_0.a), vec3<i32>(u_input.a, 1i, -2147483647i), true)), 6674i, firstTrailingBit(~u_input.c.x)), _wgslsmith_f_op_f32(-1000f - -1042f), !select(vec2<bool>(true, true), vec2<bool>(func_1(true, Struct_4(102f, true, vec4<bool>(true, false, true, false), u_input.c.x, u_input.c.xz)), true), vec2<bool>(select(true, false, false), func_1(false, Struct_4(-2522f, false, vec4<bool>(true, false, true, true), u_input.a, u_input.c.yx)))), vec2<bool>(true, true)));
    let var_2 = Struct_3(_wgslsmith_div_i32(-u_input.c.x, -18144i), Struct_2(global0[_wgslsmith_index_u32(169u, 10u)], global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(u_input.d.x, 1u), select(4294967295u, u_input.d.x, false)) >> (u_input.e % 32u), 10u)], reverseBits(select(~vec2<i32>(u_input.c.x, -1i), firstTrailingBit(vec2<i32>(u_input.c.x, -36i)), true)), u_input.d.x, global0[_wgslsmith_index_u32(29448u, 10u)]), 972f, _wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec4_u32(u_input.d, firstTrailingBit(u_input.d))), 0u, ~u_input.b.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_0.a, -63229i), (vec2<i32>(u_input.c.x, u_input.c.x) & vec2<i32>(u_input.a, var_0.a)) | u_input.c.yz, u_input.c.yy | vec2<i32>(-2147483647i, 0i)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, false), vec4<bool>(all(vec3<bool>(true, func_1(false, Struct_4(-445f, true, vec4<bool>(false, false, false, true), -62007i, u_input.c.xz)), true)), !any(vec4<bool>(false, false, true, true)) | true, all(vec4<bool>(true, true, true, true)), !(!select(true, true, false))), vec4<bool>(any(vec2<bool>(true, true)), func_3(), all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), !(0u < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e, 34701u, 1u), vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.d.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - 450f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), -1026f));
    global0 = array<Struct_1, 10>();
    var_0 = !vec4<bool>(13958i < countOneBits(_wgslsmith_div_i32(u_input.a, u_input.a)), u_input.a >= ~min(u_input.c.x, u_input.c.x), var_0.x, any(var_0.xz));
    var_0 = select(!select(vec4<bool>(!var_0.x, true, 1000f < var_1.x, true), !vec4<bool>(true, false, false, var_0.x), var_0.x), select(vec4<bool>(!(1i <= u_input.a), var_0.x, true, !all(vec2<bool>(var_0.x, true))), vec4<bool>(false, var_0.x, _wgslsmith_f_op_f32(select(-1583f, 1000f, var_0.x)) <= -303f, var_0.x), !(_wgslsmith_div_f32(var_1.x, var_1.x) > _wgslsmith_div_f32(-482f, -806f))), vec4<bool>(false, var_0.x, !func_3(), !(!var_0.x)));
    var var_2 = global0[_wgslsmith_index_u32(abs(76678u), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(~1u, ~(~64182u) >> ((u_input.d.x & ~4294967295u) % 32u)), reverseBits(max(-countOneBits(vec4<i32>(-2147483647i, -32685i, u_input.a, 0i)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a, -3829i, -14515i, u_input.c.x), vec4<i32>(u_input.a, var_2.a, -2147483647i, 2147483647i)))), var_1.x, u_input.e, ~((14432u ^ ~u_input.b.x) >> (max(_wgslsmith_mult_u32(28319u, u_input.d.x), u_input.e) % 32u)));
}

