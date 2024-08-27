struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<u32, 32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = 254i;
    let var_1 = -firstTrailingBit(~u_input.c.yzw);
    global1 = array<u32, 32>();
    global0 = array<i32, 22>();
    let var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(step(arg_0.c.x, -684f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-902f))))) > arg_0.c.x);
    return arg_0.a <= _wgslsmith_f_op_f32(f32(-1f) * -1901f);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_2(655f, arg_0.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1561f - -498f), -1316f)), _wgslsmith_f_op_vec2_f32(ceil(arg_2.yy)))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(0u, 22u)] > 4614i)), false);
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_1 = min(vec2<u32>(select(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(5551u, 1u, global1[_wgslsmith_index_u32(arg_1.a.x, 32u)]), arg_1.a.yzx)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_1.a.x, arg_1.a.x), ~u_input.b, 0u & global1[_wgslsmith_index_u32(arg_1.a.x, 32u)]), any(vec3<bool>(true, true, var_0.e))), abs(4294967295u)), vec2<u32>(_wgslsmith_div_u32(countOneBits(25265u), arg_1.a.x), ~63509u));
    let var_2 = all(select(vec2<bool>(any(select(vec4<bool>(var_0.e, true, false, var_0.e), vec4<bool>(var_0.e, var_0.d, false, var_0.e), var_0.e)), false), vec2<bool>(true, false), select(select(vec2<bool>(true, true), !vec2<bool>(var_0.d, false), !vec2<bool>(false, var_0.e)), !vec2<bool>(true, var_0.e), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(40397u, 32u)], arg_1.a.x) != ~arg_1.a.x)));
    return true;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(1071f));
    var var_1 = vec4<bool>(!(true && func_1(Struct_2(1438f, -164f, vec2<f32>(-358f, -2155f), false, false))), all(vec4<bool>(-global0[_wgslsmith_index_u32(u_input.b, 22u)] != firstLeadingBit(-2147483647i), false, true, any(vec2<bool>(true, false)) && true)), !(all(vec3<bool>(true, true, true)) && all(vec2<bool>(true, false))) & true, ((func_3(vec3<f32>(1000f, 130f, 534f), Struct_1(u_input.d), vec3<f32>(160f, -628f, -1422f)) | true) & true) && any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(553f)), -883f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - -874f), -1046f) - vec2<f32>(_wgslsmith_div_f32(1173f, 1841f), _wgslsmith_f_op_f32(-577f - -1720f))), false, global1[_wgslsmith_index_u32(88587u | _wgslsmith_sub_u32(u_input.d.x, 4294967295u), 32u)] == global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(24402u, 32u)], 32u)]), Struct_2(102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1021f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1562f + 805f) - _wgslsmith_f_op_f32(round(384f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1231f, 1353f), vec2<f32>(215f, 1129f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2447f, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(357f, 539f) - vec2<f32>(595f, 1340f)))), var_1.x, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~u_input.d.x, 32u)], 0u) < global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(34646u), 32u)], 32u)]), u_input.d.wz, var_1.x, Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.wz), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(42933u, 39630u)), 32u)], max(u_input.b, u_input.b), u_input.b << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)] % 32u)) ^ vec4<u32>(1u, 78799u, 1u >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 32135u, 81389u), u_input.d.xww))));
    var var_3 = Struct_3(var_2.a, var_2.b, select(select(~vec2<u32>(5702u, var_2.e.a.x), u_input.d.zx, true | var_2.d), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(169217u, var_2.c.x), u_input.d.zy)), var_1.yx) >> (firstTrailingBit(~firstLeadingBit(vec2<u32>(u_input.d.x, 48641u))) % vec2<u32>(32u)), false, var_2.e);
    var_1 = select(!select(!select(vec4<bool>(true, var_1.x, true, var_2.d), vec4<bool>(var_3.b.d, var_1.x, var_2.a.d, false), false), !vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_2.b.d, false, var_3.a.e, var_2.b.e)), vec4<bool>(reverseBits(1u) != reverseBits(var_3.c.x), var_1.x, !(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(34644u, 22u)], global0[_wgslsmith_index_u32(36335u, 22u)], 0i) > (u_input.a << (u_input.d.x % 32u))), any(select(var_1.yxz, var_1.zwx, !var_1.xyz))), select(select(vec4<bool>(0u == var_2.c.x, var_3.b.e || var_1.x, var_2.d, all(vec4<bool>(var_2.a.e, false, true, var_3.b.e))), select(!vec4<bool>(var_1.x, false, false, true), !vec4<bool>(false, var_3.d, true, var_2.b.e), select(vec4<bool>(false, var_3.b.d, var_2.d, var_2.b.d), vec4<bool>(false, var_1.x, true, var_2.b.d), vec4<bool>(var_2.b.d, var_3.d, var_1.x, var_2.a.d))), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, var_1.x, var_1.x, all(var_1.yzw)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_3.b.e, false, var_1.x, true), vec4<bool>(false, var_3.b.e, true, var_1.x)), vec4<bool>(true, true, true, true), var_2.d), !select(vec4<bool>(var_3.d, var_2.b.e, true, var_3.b.d), vec4<bool>(var_3.d, true, var_1.x, true), true)), true));
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(Struct_2(-2198f, _wgslsmith_f_op_f32(f32(-1f) * -253f), vec2<f32>(644f, 1000f), true, true)) | !select(false, (u_input.c.x >> (global1[_wgslsmith_index_u32(4294967295u, 32u)] % 32u)) != -2147483647i, all(vec2<bool>(true, true)));
    let var_1 = Struct_1(select((vec4<u32>(12467u, u_input.b, u_input.d.x, 0u) ^ ~u_input.d) | ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], 0u, 129480u), abs(select(vec4<u32>(global1[_wgslsmith_index_u32(35161u, 32u)], 1u, u_input.d.x, 1u), ~vec4<u32>(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], 32u)], 4294967295u, global1[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true))));
    var_0 = any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = array<i32, 22>();
    let var_2 = !(!vec2<bool>(true || any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)) - _wgslsmith_f_op_f32(sign(997f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -594f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -566f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, -1130f)))))), var_2.x, any(vec4<bool>(true, true, true, true)));
    let var_4 = ~reverseBits(~u_input.d.x) << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], 32u)] % 32u);
    global1 = array<u32, 32>();
    var var_5 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1260u, var_1.a.x), countOneBits(global1[_wgslsmith_index_u32(var_1.a.x, 32u)]), 0u), var_1.a.xwy), countOneBits(abs(~58334u)), 13139u, ~(~_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(118295u, var_4, global1[_wgslsmith_index_u32(0u, 32u)], 38022u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.a));
}

