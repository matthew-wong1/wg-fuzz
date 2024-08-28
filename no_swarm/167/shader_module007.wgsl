struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 7> = array<bool, 7>(false, true, true, true, true, true, true);

var<private> global2: array<vec2<f32>, 1>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<u32>(41953u, 4294967295u, 20438u)), Struct_1(vec3<u32>(66344u, 1u, 4294967295u)), Struct_1(vec3<u32>(21189u, 0u, 1u)), Struct_1(vec3<u32>(17928u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4284u, 81210u, 38494u)), Struct_1(vec3<u32>(41064u, 1u, 1u)), Struct_1(vec3<u32>(89971u, 4294967295u, 1u)), Struct_1(vec3<u32>(1360u, 1u, 14502u)), Struct_1(vec3<u32>(0u, 60819u, 33029u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 8332u, 27539u)), Struct_1(vec3<u32>(4294967295u, 11699u, 4294967295u)), Struct_1(vec3<u32>(25904u, 122317u, 0u)), Struct_1(vec3<u32>(1u, 0u, 25327u)), Struct_1(vec3<u32>(105504u, 12454u, 1u)), Struct_1(vec3<u32>(5329u, 4294967295u, 83310u)), Struct_1(vec3<u32>(1u, 14062u, 48071u)), Struct_1(vec3<u32>(17652u, 4294967295u, 0u)), Struct_1(vec3<u32>(42420u, 4294967295u, 1835u)), Struct_1(vec3<u32>(1u, 0u, 22565u)), Struct_1(vec3<u32>(21815u, 4294967295u, 12047u)), Struct_1(vec3<u32>(1u, 53983u, 0u)), Struct_1(vec3<u32>(1u, 0u, 0u)), Struct_1(vec3<u32>(3921u, 21615u, 62871u)), Struct_1(vec3<u32>(44039u, 73607u, 29399u)), Struct_1(vec3<u32>(14823u, 48006u, 4294967295u)), Struct_1(vec3<u32>(8681u, 0u, 91622u)), Struct_1(vec3<u32>(27135u, 4294967295u, 57125u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 27092u, 1551u)), Struct_1(vec3<u32>(844u, 20075u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = array<bool, 7>();
    let var_0 = u_input.b.yyw;
    global1 = array<bool, 7>();
    var var_1 = arg_0.a << (arg_1.a % vec3<u32>(32u));
    global1 = array<bool, 7>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(94827u), _wgslsmith_add_u32(30094u, var_1.x), ~(~21678u), 4294967295u ^ _wgslsmith_mod_u32(14560u, var_1.x)) << (vec4<u32>(~69880u >> (~var_1.x % 32u), arg_1.a.x, arg_1.a.x, ~_wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x)) % vec4<u32>(32u)), (vec4<u32>(arg_0.a.x, ~arg_1.a.x, arg_1.a.x, arg_0.a.x << (arg_0.a.x % 32u)) ^ vec4<u32>(37941u, _wgslsmith_mod_u32(arg_0.a.x, arg_1.a.x), arg_1.a.x, firstLeadingBit(arg_0.a.x))) >> (_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(5645u, 1u, arg_1.a.x, 4294967295u), vec4<u32>(12613u, arg_1.a.x, 1u, arg_1.a.x)), min(reverseBits(vec4<u32>(26872u, 16357u, arg_1.a.x, arg_1.a.x)), vec4<u32>(arg_0.a.x, 4294967295u, 6073u, var_1.x) | vec4<u32>(var_1.x, var_1.x, arg_0.a.x, 9468u))) % vec4<u32>(32u)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec3<u32>(1u, ~(~53248u), ~(~_wgslsmith_add_u32(0u, 4294967295u))));
    var var_1 = _wgslsmith_sub_u32(var_0.a.x, min(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(16219u, var_0.a.x, 0u, var_0.a.x)), var_0.a.x), (~var_0.a.x ^ func_3(Struct_1(var_0.a), Struct_1(var_0.a), false)) << (74159u % 32u)));
    global2 = array<vec2<f32>, 1>();
    let var_2 = global3[_wgslsmith_index_u32(3231u, 32u)];
    global3 = array<Struct_1, 32>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(267f, _wgslsmith_f_op_f32(689f * 1000f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(311f)) - _wgslsmith_f_op_f32(-125f + -1000f)) - 1f))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = ~(4294967295u ^ (reverseBits(_wgslsmith_mod_u32(arg_1, arg_3.a.x)) >> (max(arg_3.a.x, ~24845u) % 32u)));
    var var_1 = vec4<bool>((_wgslsmith_f_op_f32(-1087f - _wgslsmith_f_op_f32(f32(-1f) * -850f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) & false, true, arg_2.x, all(select(select(vec2<bool>(global1[_wgslsmith_index_u32(23091u, 7u)], true), select(vec2<bool>(true, false), vec2<bool>(arg_2.x, global1[_wgslsmith_index_u32(4294967295u, 7u)]), global1[_wgslsmith_index_u32(29367u, 7u)]), true), select(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false), arg_2, arg_2), select(vec2<bool>(true, false), arg_2, vec2<bool>(false, true)))));
    let var_2 = -282f;
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_4 = Struct_1(vec3<u32>(~24482u, ~(~arg_1) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.a.x), var_3.a.zx), arg_3.a.x), 64252u));
    return _wgslsmith_mod_u32(arg_0.a.x, ~var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1814u, 29475u, 49820u), ~vec3<u32>(68728u, 8157u, 1u), vec3<u32>(44821u, 1u, 4294967295u)), select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(30511u, 50269u, 1u)), !vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(30872u, 7u)]))) ^ vec3<u32>(func_1(global3[_wgslsmith_index_u32(18469u, 32u)], 1u, vec2<bool>(false, global1[_wgslsmith_index_u32(15924u, 7u)]), Struct_1(vec3<u32>(6540u, 4294967295u, 24480u))), 40051u >> (1u % 32u), ~1u), vec3<u32>(0u, 0u, func_1(global3[_wgslsmith_index_u32(0u, 32u)], 0u, !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false), true), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 32u)]))), 1u)];
    global1 = array<bool, 7>();
    let var_1 = Struct_1(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(63829u, 15443u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 5936u, 36780u))) ^ (vec3<u32>(1u, 1u, 1u) << (select(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(5078u, 1u, 34006u)), false & global1[_wgslsmith_index_u32(12607u, 7u)]) % vec3<u32>(32u))));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a.x, 52289u), var_1.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 4294967295u, 4294967295u, var_1.a.x), vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, 4294967295u)))), 7u)];
    let var_3 = Struct_1(abs(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a.x), vec2<u32>(20387u, var_1.a.x)), 57246u, var_1.a.x)));
    var var_4 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-881f + _wgslsmith_f_op_f32(abs(1262f)))), var_0.x);
    let var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1184f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-727f, 1188f) - _wgslsmith_f_op_f32(round(var_4.x)))), 286f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(var_1.a.x, 1u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, 672f))) - global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(37264u, 61617u), vec2<u32>(1u, var_3.a.x)) << (~29230u % 32u), 1u)]))));
    var_0 = var_5;
    var var_6 = Struct_1(vec3<u32>(var_1.a.x, ~5170u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~29445i, -u_input.b.x & ((u_input.b.x & -2147483647i) >> (abs(1u) % 32u))));
}

