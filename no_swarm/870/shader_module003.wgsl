struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(23498u, 65653u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(68557u, 112775u, 13362u), vec3<u32>(4294967295u, 4294967295u, 11904u), vec3<u32>(9339u, 1u, 90028u), vec3<u32>(7099u, 0u, 36427u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 43521u, 4294967295u), vec3<u32>(0u, 54348u, 4294967295u), vec3<u32>(57518u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 5668u, 29686u), vec3<u32>(4294967295u, 28241u, 26060u), vec3<u32>(0u, 0u, 38483u), vec3<u32>(33311u, 0u, 0u), vec3<u32>(1u, 47909u, 4294967295u));

var<private> global2: array<i32, 31> = array<i32, 31>(-31430i, 42807i, 1i, i32(-2147483648), -48981i, 2147483647i, -1i, 2147483647i, 1i, -43310i, 0i, 2580i, -2345i, 17479i, 29629i, 14935i, 0i, i32(-2147483648), 2147483647i, i32(-2147483648), -8811i, i32(-2147483648), 23004i, 2147483647i, 0i, 0i, -43395i, 29401i, 15756i, i32(-2147483648), 0i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec3<bool>(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), false, all(vec3<bool>(false, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), select(true, true, all(vec2<bool>(false, true))))));
    var var_1 = !(!var_0.xy);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.e.xxy - arg_0.e.xxw) - vec3<f32>(arg_0.e.x, -1029f, 313f))) * vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.e.x, _wgslsmith_f_op_f32(floor(-146f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1903f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1080f), _wgslsmith_f_op_f32(floor(arg_0.e.x)), _wgslsmith_f_op_f32(-arg_0.e.x)))))));
    global2 = array<i32, 31>();
    let var_3 = 550f;
    return ~1u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> f32 {
    global0 = array<Struct_1, 21>();
    global1 = array<vec3<u32>, 19>();
    let var_0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, reverseBits(46579u)), 23326u & (arg_1 & arg_0.c), _wgslsmith_mod_u32(~arg_1, firstLeadingBit(arg_2))));
    let var_1 = arg_0;
    global2 = array<i32, 31>();
    return -1000f;
}

fn func_2() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f + 544f) * _wgslsmith_f_op_f32(-1633f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f - -444f)))), _wgslsmith_f_op_f32(-105f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1028f, _wgslsmith_f_op_f32(1000f + 235f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1117f, -624f, false))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(654f, -1133f, false)) - _wgslsmith_f_op_f32(ceil(-157f)))), 681f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(663f * 1268f)) - _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(u_input.a.x | 4294967295u, 21u)], func_3(Struct_1(u_input.a.yxw, 41639u, u_input.b, u_input.d.xw, vec4<f32>(-1000f, 1525f, -449f, 702f))), ~0u))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-762f - -1265f))), -334f)));
    let var_1 = 33832u;
    let var_2 = true | any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), false));
    var var_3 = _wgslsmith_mod_i32(-(~(-1i)), min(max(-reverseBits(35134i), 617i), ~(~(-global2[_wgslsmith_index_u32(5307u, 31u)]))));
    let var_4 = global0[_wgslsmith_index_u32(21514u, 21u)];
    return !all(!vec4<bool>(any(vec4<bool>(false, true, var_2, var_2)), var_2, var_2, false));
}

fn func_1() -> vec4<bool> {
    global2 = array<i32, 31>();
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(u_input.b & _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 19u)] << (global1[_wgslsmith_index_u32(76196u, 19u)] % vec3<u32>(32u)), abs(global1[_wgslsmith_index_u32(4294967295u, 19u)])), firstTrailingBit(min(~7386u, u_input.a.x))), 4294967295u, 9370u);
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(u_input.b, 19u)], ~_wgslsmith_mod_u32(u_input.a.x, 1u), 1u ^ u_input.a.x, select(vec2<i32>(countOneBits(u_input.c), _wgslsmith_sub_i32(firstLeadingBit(u_input.c), -26897i)), u_input.d.yw, select(vec2<bool>(true, func_2()), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), global2[_wgslsmith_index_u32(~u_input.b, 31u)] <= abs(-69858i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -389f, 302f, -120f) + vec4<f32>(-1027f, -2336f, -592f, -1000f))))))));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.x))) + _wgslsmith_f_op_f32(select(1241f, _wgslsmith_f_op_f32(max(var_1.e.x, var_1.e.x)), all(vec3<bool>(false, false, false))))), var_1.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(floor(2151f))))) - var_1.e.x));
    return select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), (-19542i > u_input.c) && true), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false))), !vec4<bool>(any(vec2<bool>(true, true)), true, max(u_input.b, 1u) != max(var_0.x, u_input.a.x), ~9157u < u_input.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(!(_wgslsmith_sub_i32(2147483647i, u_input.d.x) <= ~global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), true), !(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true)), any(!func_1()));
    let var_1 = global0[_wgslsmith_index_u32(1u, 21u)];
    global0 = array<Struct_1, 21>();
    var var_2 = Struct_1(vec3<u32>(38721u, var_1.b, reverseBits(var_1.b)), firstLeadingBit(4294967295u), func_3(Struct_1(vec3<u32>(33692u, 30774u, 40010u), 4162u, var_1.a.x, var_1.d | (vec2<i32>(-29206i, var_1.d.x) | u_input.d.xw), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.e)) - vec4<f32>(var_1.e.x, 891f, var_1.e.x, 1269f)))), -(~u_input.d.wz), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.e.x, var_1.e.x), _wgslsmith_f_op_f32(var_1.e.x + var_1.e.x), _wgslsmith_f_op_f32(select(var_1.e.x, var_1.e.x, var_0.x)), 1670f)))));
    var var_3 = u_input.d.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(-309f, 541f);
}

