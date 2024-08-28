struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(11891u, 4294967295u, -493f, vec4<f32>(200f, 357f, 134f, -1163f), vec4<f32>(112f, 250f, -1000f, -813f)), Struct_1(4294967295u, 4294967295u, -797f, vec4<f32>(2767f, -1671f, 969f, 497f), vec4<f32>(234f, 362f, -419f, 851f)), Struct_1(32477u, 1u, -220f, vec4<f32>(-1950f, 1855f, 1672f, -835f), vec4<f32>(233f, -1016f, 297f, 3094f)), Struct_1(46508u, 4294967295u, 1000f, vec4<f32>(-747f, 632f, -777f, 1115f), vec4<f32>(710f, 303f, 780f, -1750f)), Struct_1(70598u, 8480u, 104f, vec4<f32>(-999f, 124f, 977f, 2526f), vec4<f32>(1297f, -260f, 1000f, 2414f)), Struct_1(4294967295u, 1930u, 1651f, vec4<f32>(271f, -1000f, 536f, 104f), vec4<f32>(1000f, -656f, -895f, -172f)), Struct_1(49673u, 0u, 676f, vec4<f32>(1665f, -1095f, -320f, 1157f), vec4<f32>(-1000f, 2786f, -1281f, -1936f)), Struct_1(6282u, 21372u, 653f, vec4<f32>(640f, -143f, -234f, -1132f), vec4<f32>(379f, 509f, -1154f, -1351f)), Struct_1(52423u, 1u, 468f, vec4<f32>(183f, -696f, -1676f, 526f), vec4<f32>(1141f, 815f, 876f, 1647f)), Struct_1(79845u, 4294967295u, 168f, vec4<f32>(175f, 343f, -1007f, -1667f), vec4<f32>(2175f, 1233f, 271f, 1267f)), Struct_1(62339u, 1u, -556f, vec4<f32>(-1056f, -152f, -1174f, 523f), vec4<f32>(729f, -1000f, 928f, -226f)), Struct_1(8239u, 5601u, 594f, vec4<f32>(2489f, -2374f, 286f, -819f), vec4<f32>(-468f, 461f, -704f, -594f)), Struct_1(4294967295u, 58523u, 938f, vec4<f32>(100f, -293f, -150f, -521f), vec4<f32>(-1576f, 1612f, -313f, -1026f)), Struct_1(0u, 56020u, -1735f, vec4<f32>(236f, -1755f, -695f, -1006f), vec4<f32>(767f, 305f, 655f, -1736f)), Struct_1(45091u, 133819u, -1231f, vec4<f32>(154f, -1361f, -1192f, -966f), vec4<f32>(837f, -1929f, 767f, 910f)), Struct_1(65893u, 1u, -1220f, vec4<f32>(208f, -583f, 1203f, 856f), vec4<f32>(-222f, 1169f, -1000f, 1106f)), Struct_1(5145u, 7307u, -1314f, vec4<f32>(-778f, 613f, 1860f, -562f), vec4<f32>(-1115f, 119f, -1000f, -783f)));

var<private> global1: array<f32, 29> = array<f32, 29>(338f, -419f, -458f, -440f, -1000f, 223f, -1635f, 487f, -925f, 1000f, -2437f, 1316f, -1027f, 1244f, -2415f, 355f, -717f, 1965f, -1032f, -160f, 415f, -1173f, -1010f, 1030f, -1240f, -1698f, -1288f, 1259f, 706f);

var<private> global2: Struct_1 = Struct_1(1137u, 62862u, -1710f, vec4<f32>(-756f, 371f, 869f, -108f), vec4<f32>(-1506f, 400f, 1923f, -483f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(reverseBits(reverseBits(u_input.a)), u_input.a), (-15878i ^ firstTrailingBit(-2147483647i)) & (firstTrailingBit(~u_input.a) << ((~1u << (reverseBits(u_input.d) % 32u)) % 32u)));
    global2 = Struct_1(~((u_input.c.x >> (4294967295u % 32u)) & reverseBits(0u)), 4294967295u, arg_1, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, 1f))), _wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(min(199f, _wgslsmith_f_op_f32(ceil(1000f))))), arg_1), global2.d);
    return global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(34865u, global2.a, 1u), _wgslsmith_div_vec3_u32(u_input.c, u_input.c)) | _wgslsmith_sub_u32(~0u, 4294967295u), global2.a)), 29u)];
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_1(13784u, u_input.d, arg_0, vec4<f32>(_wgslsmith_f_op_f32(max(2069f, -1861f)), global1[_wgslsmith_index_u32(21600u, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(arg_0 * 148f), 1169f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.b, _wgslsmith_mult_u32(45970u, u_input.d)), 29u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, 1489f, 1145f, 155f)) * vec4<f32>(global1[_wgslsmith_index_u32(~global2.a, 29u)], _wgslsmith_f_op_f32(global2.d.x - 197f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1009f)))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.d, 17u)];
    let var_2 = global0[_wgslsmith_index_u32(~var_1.b, 17u)];
    let var_3 = true;
    let var_4 = vec4<bool>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(15980u, var_0.b), vec2<u32>(1u, global2.a)), select(min(var_0.b, 4294967295u), 0u, true | var_3)) <= 0u, any(!(!vec4<bool>(var_3, false, false, var_3))), _wgslsmith_f_op_f32(func_3(arg_0, -596f)) <= _wgslsmith_f_op_f32(floor(432f)), all(vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -489f) < _wgslsmith_f_op_f32(min(var_0.d.x, 879f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(var_2.c * var_1.c), _wgslsmith_f_op_f32(-var_1.e.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~var_2.a), 6140u), 29u)], arg_0);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global2 = global0[_wgslsmith_index_u32(u_input.c.x, 17u)];
    let var_0 = Struct_1(6773u, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.zz << (vec2<u32>(34946u, global2.b) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, global2.a)) << (u_input.c.x % 32u)), _wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(abs(-815f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.c, arg_0.x))), firstTrailingBit(vec4<i32>(u_input.b, u_input.a, u_input.a, -24914i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(5288i, u_input.b, 53879i), vec3<i32>(22153i, u_input.b, 1i))))), global2.d);
    var var_1 = vec4<bool>(all(vec2<bool>(select(1i, 1i, false) <= u_input.b, _wgslsmith_mult_i32(-2147483647i, 1i) == u_input.b)), false && any(vec3<bool>(true, true, true)), !all(vec2<bool>(all(vec3<bool>(false, true, false)), true)), select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 29u)], 2224f)))) > global2.d.x, any(vec2<bool>(true, true)), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    global0 = array<Struct_1, 17>();
    let var_2 = vec4<i32>(-(-156i >> (~var_0.a % 32u)), -select(21749i, u_input.a, !(!var_1.x)), (u_input.a & (i32(-1i) * -2147483647i)) >> (global2.a % 32u), 1i);
    return Struct_1(select(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(61987u, global2.b, 1u, 35421u), vec4<u32>(7794u, 0u, 4294967295u, u_input.d))), var_0.b, var_1.x), 4294967295u, _wgslsmith_f_op_vec4_f32(func_2(-1221f, vec4<i32>(14771i, 11121i, var_2.x, _wgslsmith_div_i32(u_input.a, var_2.x | 11104i)), u_input.a)).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global2.b, 29u)], var_0.e.x, global2.e.x, var_0.c))))) + _wgslsmith_f_op_vec4_f32(var_0.e + var_0.e)), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(max(_wgslsmith_mult_u32(u_input.c.x, u_input.d), ~global2.b), global2.a, u_input.d, u_input.c.x);
    var var_1 = Struct_1(4294967295u, u_input.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.c, 1060f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(floor(1000f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(52207u, 3082u, u_input.d), vec3<u32>(42737u, 0u, 80000u)), 29u)], -513f) * global2.e)), global2.e);
    var_1 = func_1(var_1.e.yzy);
    var var_2 = vec2<bool>(all(select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), 1u <= global2.a)), _wgslsmith_clamp_i32(u_input.a, -74731i, firstLeadingBit(u_input.b ^ 32933i)) <= ~0i);
    let var_3 = global0[_wgslsmith_index_u32(min(54132u, (_wgslsmith_div_u32(25946u, _wgslsmith_sub_u32(13569u, var_0.x)) | 0u) << (firstTrailingBit(global2.a) % 32u)), 17u)];
    global0 = array<Struct_1, 17>();
    let var_4 = select(select(vec2<bool>(!var_2.x, var_2.x && false), vec2<bool>(true, true), any(select(select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), var_2.x), vec2<bool>(false, false), vec2<bool>(false, true)))), vec2<bool>(true, var_2.x), select(select(vec2<bool>(true, true), !(!vec2<bool>(false, var_2.x)), vec2<bool>(var_2.x, var_2.x)), !vec2<bool>(!var_2.x, 902u <= var_3.a), vec2<bool>(var_2.x, false)));
    global2 = global0[_wgslsmith_index_u32(~max(18576u, 30081u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global2.d.wzz * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, -993f, -844f) * var_1.d.zzw)) - var_1.d.wzw)), _wgslsmith_mult_u32(2906u, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(u_input.c.x, reverseBits(var_3.b)))), vec4<i32>(_wgslsmith_clamp_i32(-4548i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, 45774i), 25246i, _wgslsmith_clamp_i32(17413i, u_input.a, -26726i)), u_input.a), u_input.a, min(u_input.b, u_input.a), -_wgslsmith_mult_i32(i32(-1i) * -6318i, u_input.a)), global2.b, abs(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -6611i, u_input.b)));
}

