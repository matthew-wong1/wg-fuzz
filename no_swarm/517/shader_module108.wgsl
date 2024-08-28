struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, true, true, false, false, true, false, true, true, true, true, true, false, false, false, false, true, true, false, true, false, true);

var<private> global1: array<i32, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_sub_i32(1i, arg_2)), _wgslsmith_mult_i32(arg_2, -arg_2), _wgslsmith_dot_vec3_i32(select(vec3<i32>(38616i, -1i, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<i32>(-36437i, -1i, 0i), false), vec3<i32>(-29513i, global1[_wgslsmith_index_u32(13041u, 12u)], arg_2) & vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a, 12u)], arg_2))), ~_wgslsmith_mod_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], -1i, 0i), -vec3<i32>(arg_2, -32670i, global1[_wgslsmith_index_u32(u_input.a, 12u)]))), 1i, global1[_wgslsmith_index_u32(~u_input.a, 12u)]);
    let var_1 = -1i;
    var var_2 = countOneBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(37254u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(43995u, u_input.a)), vec2<u32>(63755u, 53211u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1067u), _wgslsmith_clamp_vec2_u32(vec2<u32>(93849u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)))));
    let var_3 = -(~var_0.x);
    global1 = array<i32, 12>();
    return select(~firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(67603u, u_input.a, 4460u, 1u)) >> ((vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) & vec4<u32>(4294967295u, u_input.a, 4294967295u, 46245u)) % vec4<u32>(32u)), abs(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), true) >= ~(~u_input.a);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(vec4<bool>(select(arg_1.a, global0[_wgslsmith_index_u32(31962u, 23u)], any(select(vec3<bool>(global0[_wgslsmith_index_u32(46857u, 23u)], true, true), vec3<bool>(arg_1.a, arg_1.a, arg_1.c), vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], false, arg_1.c)))), ~arg_1.d >= u_input.a, !(all(vec2<bool>(false, arg_1.a)) | global0[_wgslsmith_index_u32(u_input.a ^ 0u, 23u)]), 0u > ~u_input.a), select(vec2<bool>(global0[_wgslsmith_index_u32(~arg_1.b, 23u)], true | !global0[_wgslsmith_index_u32(u_input.a, 23u)]), !select(!vec2<bool>(arg_1.c, false), vec2<bool>(false, arg_1.c), !global0[_wgslsmith_index_u32(39934u, 23u)]), select(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec4<f32>(-303f, arg_0, -183f, -2346f), global1[_wgslsmith_index_u32(35266u, 12u)]), arg_1.c, ~10128u > u_input.a)));
    var var_1 = Struct_3(var_0.a, var_0.a.xy);
    let var_2 = ~vec4<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 39722u), 12u)], ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 12u)]), -min(-global1[_wgslsmith_index_u32(arg_1.b, 12u)], -1i), global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(arg_1.b, 12u)]);
    var_0 = Struct_3(!(!select(vec4<bool>(true, true, true, true), var_0.a, var_0.a)), var_0.b);
    var var_3 = _wgslsmith_f_op_f32(trunc(1f));
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(1u, ~func_2(arg_0.x, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, true, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 47u, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 82494u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 0u, 1u)))), 4294967295u, !(!all(vec3<bool>(true, true, false)))) | ~4294967295u, 12u)];
    var var_1 = select(!select(select(!vec3<bool>(global0[_wgslsmith_index_u32(48018u, 23u)], false, false), select(vec3<bool>(true, global0[_wgslsmith_index_u32(31549u, 23u)], false), vec3<bool>(global0[_wgslsmith_index_u32(5034u, 23u)], false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(97404u, 23u)], global0[_wgslsmith_index_u32(35231u, 23u)], false)), vec3<bool>(true, false, false)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a, 23u)], !global0[_wgslsmith_index_u32(u_input.a, 23u)], true)), !vec3<bool>(true, arg_0.x <= arg_0.x, any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 23u)]))), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), !vec3<bool>(global0[_wgslsmith_index_u32(66119u, 23u)], global0[_wgslsmith_index_u32(56171u, 23u)], true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, 1u)), 23u)]), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)])) & any(vec2<bool>(true, true))), select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(~u_input.a, 23u)], !global0[_wgslsmith_index_u32(u_input.a, 23u)]), global0[_wgslsmith_index_u32(12766u, 23u)]), vec3<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(11950u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])), true, global0[_wgslsmith_index_u32(func_2(arg_0.x, Struct_2(false, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a)), 23u)])));
    let var_2 = firstLeadingBit(0u);
    var var_3 = !(var_1.x != any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], var_1.x, var_1.x, false)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -353f)), -3240f, _wgslsmith_f_op_f32(abs(arg_0.x)));
    return Struct_3(vec4<bool>(!var_1.x, !global0[_wgslsmith_index_u32(reverseBits(u_input.a), 23u)], global0[_wgslsmith_index_u32(49058u ^ _wgslsmith_div_u32(1u, u_input.a & u_input.a), 23u)], _wgslsmith_f_op_f32(step(-156f, -3006f)) <= _wgslsmith_f_op_f32(abs(var_4.x))), !select(vec2<bool>(var_1.x, !var_1.x), var_1.xx, var_1.xx));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<i32>(-countOneBits(reverseBits(~0i)), _wgslsmith_div_i32(68582i, 2147483647i) << (arg_3 % 32u));
    var var_1 = vec2<bool>(false, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(779f, -706f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-385f, 228f), vec2<f32>(249f, -617f))), vec2<f32>(959f, 322f))), vec4<f32>(1f, 1f, 1f, 1f), ~(-40827i | (global1[_wgslsmith_index_u32(u_input.a, 12u)] ^ 1i))));
    let var_2 = Struct_1(vec2<i32>(-1i, firstTrailingBit(global1[_wgslsmith_index_u32(~arg_2.d, 12u)])) & vec2<i32>(abs(var_0.x), countOneBits(var_0.x & var_0.x)));
    var var_3 = var_2;
    var var_4 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(936f, 1000f), vec2<f32>(-193f, -811f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 513f)))))))))).a.yy;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    var var_0 = vec4<u32>(u_input.a, ~28730u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), 0u);
    var var_1 = -18990i;
    let var_2 = func_4(true, func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1395f, 1f)))), Struct_2(any(!select(vec2<bool>(global0[_wgslsmith_index_u32(53247u, 23u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), global0[_wgslsmith_index_u32(var_0.x, 23u)])), 16477u, global0[_wgslsmith_index_u32(~(4294967295u << (var_0.x % 32u)), 23u)] | false, ~(~(~29607u))), u_input.a);
    let var_3 = var_2.a;
    var var_4 = (~2147483647i >= ~var_3.x) || true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(u_input.a, 4802u));
}

