struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<vec3<f32>, 16>;

var<private> global2: Struct_1;

var<private> global3: vec4<u32> = vec4<u32>(7755u, 32112u, 15069u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(!vec4<bool>(u_input.c.x != -arg_1, false, false, global2.a.x));
    var var_1 = Struct_2(var_0, Struct_1(select(global2.a, !var_0.a, select(arg_3.b.a, !vec4<bool>(arg_3.c.a.x, arg_3.c.a.x, false, global2.a.x), select(vec4<bool>(global2.a.x, global0[_wgslsmith_index_u32(7548u, 14u)], var_0.a.x, global2.a.x), vec4<bool>(arg_3.b.a.x, false, true, var_0.a.x), vec4<bool>(var_0.a.x, arg_3.a.a.x, var_0.a.x, false))))), Struct_1(select(global2.a, select(!var_0.a, arg_3.a.a, !vec4<bool>(true, arg_3.a.a.x, global0[_wgslsmith_index_u32(0u, 14u)], var_0.a.x)), any(arg_3.b.a))), arg_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.e) - _wgslsmith_f_op_vec4_f32(vec4<f32>(295f, -261f, -554f, -1170f) + vec4<f32>(1000f, arg_0.x, arg_0.x, arg_3.e.x)))))));
    var var_2 = _wgslsmith_dot_vec3_u32(~global3.xxx, vec3<u32>(u_input.d, ~_wgslsmith_dot_vec3_u32(global3.xzz ^ global3.zyy, ~vec3<u32>(u_input.d, 0u, u_input.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(global3.x), ~global3.x, global3.x), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, u_input.d, 74944u, 4294967295u), vec4<u32>(u_input.d, 97805u, arg_2, u_input.d), vec4<bool>(var_1.a.a.x, arg_3.a.a.x, global2.a.x, true)), firstTrailingBit(vec4<u32>(global3.x, 0u, 4294967295u, arg_2))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1954f, 281f), vec2<f32>(-170f, var_1.e.x))))), _wgslsmith_f_op_vec2_f32(-var_1.e.wy)));
    return abs(1u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!vec4<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 14u)], global2.a.x, global2.a.x), global0[_wgslsmith_index_u32(~global3.x, 14u)], true, all(global2.a.zzy))), Struct_1(!(!global2.a)), Struct_1(vec4<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(6531u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global2.a.x)), all(vec3<bool>(true, global2.a.x, global2.a.x)), global2.a.x, _wgslsmith_sub_u32(u_input.d, arg_0.x) == func_3(vec3<f32>(1981f, -1285f, -1609f), -3851i, 11770u, Struct_2(Struct_1(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true)), Struct_1(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(global2.a), vec4<f32>(-373f, -1457f, 203f, 191f))))), Struct_1(global2.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1081f, -293f, 1608f, 242f) + vec4<f32>(799f, 254f, 113f, -991f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, 953f, -855f, 431f)), !global2.a)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(717f, 1774f, -1112f, -1000f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, -177f, -1045f, 847f))))))));
    let var_1 = abs(~vec3<u32>(arg_0.x, 0u, 3359u & max(global3.x, global3.x)));
    global3 = _wgslsmith_clamp_vec4_u32(arg_0, arg_0, (~(~vec4<u32>(38411u, u_input.d, 0u, 1u)) | arg_0) << (min(~(~vec4<u32>(u_input.d, var_1.x, 1u, 27017u)), vec4<u32>(arg_0.x, 0u, var_1.x, 1u) | vec4<u32>(u_input.d, 40658u, u_input.d, 21006u)) % vec4<u32>(32u)));
    global1 = array<vec3<f32>, 16>();
    let var_2 = -42450i;
    return Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~max(global3.x, 0u), global3.x), 14u)], all(select(global2.a, select(global2.a, var_0.b.a, var_0.a.a), vec4<bool>(var_0.c.a.x, global2.a.x, false, global0[_wgslsmith_index_u32(arg_0.x, 14u)]))), select(-40394i >= u_input.c.x, true, any(vec3<bool>(global2.a.x, global2.a.x, global2.a.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d, _wgslsmith_div_u32(~20782u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, var_1.x), global3.xx))), 14u)]));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = func_2(~(~(~vec4<u32>(u_input.d, u_input.d, 4294967295u, 4294967295u)) | ~vec4<u32>(u_input.d, 41492u, u_input.d, 0u)));
    let var_0 = func_2(~(~(~vec4<u32>(0u, 0u, u_input.d, global3.x)) ^ ~(~vec4<u32>(u_input.d, 37353u, global3.x, u_input.d))));
    let var_1 = -1871i;
    let var_2 = Struct_2(func_2(vec4<u32>(firstLeadingBit(global3.x), 1u, min(~15693u, 16192u >> (u_input.d % 32u)), 1u)), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(u_input.d), _wgslsmith_clamp_u32(global3.x, u_input.d, 0u), ~global3.x, ~global3.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d, global3.x, 4294967295u) & vec4<u32>(0u, u_input.d, u_input.d, global3.x), select(vec4<u32>(106573u, 4294967295u, global3.x, global3.x), vec4<u32>(global3.x, 38643u, 0u, 23526u), global2.a)))), var_0, var_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(195f, 381f, -287f, 749f) - vec4<f32>(-680f, 1000f, -543f, 879f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1698f, 906f, -722f, 593f) + vec4<f32>(-488f, -334f, -823f, -822f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 658f, -1723f, -936f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1033f, 1331f, 905f, -364f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1611f, -948f, 298f, -505f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), -1214f, _wgslsmith_f_op_f32(-1667f * 1273f), _wgslsmith_f_op_f32(1355f * 144f))))));
    let var_3 = var_2.e.x;
    return -165f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-314f, _wgslsmith_f_op_f32(-394f - -411f)))))));
    let var_1 = Struct_1(!select(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.d, 14u)], select(global2.a.x, global0[_wgslsmith_index_u32(global3.x, 14u)], false), true, any(vec3<bool>(true, true, true))), !global2.a, any(select(vec4<bool>(false, global2.a.x, true, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, global2.a.x, false), true))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(i32(-1i) * -17031i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-596f, -789f, -u_input.c.x == u_input.b)))));
    global2 = func_2(~vec4<u32>(28515u, 1u, 1u, ~u_input.d));
    let var_3 = Struct_2(Struct_1(!global2.a), var_1, func_2(~(~(~vec4<u32>(12849u, global3.x, 0u, global3.x)))), func_2(firstLeadingBit(vec4<u32>(69193u, 17256u, global3.x, 0u)) << (firstLeadingBit(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u))), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + -784f) * _wgslsmith_f_op_f32(select(var_2.x, var_2.x, global3.x >= global3.x))), 1f, _wgslsmith_f_op_f32(select(-700f, -1037f, select(all(var_1.a), true, global0[_wgslsmith_index_u32(~1u, 14u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -reverseBits(vec2<i32>(u_input.b, u_input.a.x)), firstLeadingBit(_wgslsmith_mult_vec3_u32(global3.xyz, countOneBits(vec3<u32>(2110u, 58626u, 24664u)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(1u, 16u)]) * var_3.e.wxx) * vec3<f32>(1371f, var_2.x, -783f)))));
}

