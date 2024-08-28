struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, false, false, false, false, false, true, false, true, true, true);

var<private> global2: array<vec4<u32>, 25>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), -3254f, -1424f);
    let var_1 = Struct_1(vec3<i32>(arg_1.e, _wgslsmith_sub_i32(20771i, u_input.b.x) & (global0.x & 1i), global0.x), ~_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.b.x), global0.wz), -arg_1.a.zx), abs(select(-12928i, ~1i, global1[_wgslsmith_index_u32(arg_0, 12u)])), arg_1.d, -2147483647i);
    var var_2 = arg_1;
    var var_3 = var_1;
    global1 = array<bool, 12>();
    return select(select(!arg_1.d.wx, select(select(vec2<bool>(var_2.d.x, true), select(arg_1.d.ww, vec2<bool>(false, true), vec2<bool>(var_1.d.x, var_3.d.x)), var_1.d.yy), select(vec2<bool>(arg_1.d.x, arg_1.d.x), var_3.d.xy, vec2<bool>(false, true)), var_2.d.zw), vec2<bool>(!all(vec4<bool>(arg_1.d.x, var_2.d.x, global1[_wgslsmith_index_u32(arg_0, 12u)], true)), any(vec4<bool>(arg_1.d.x, var_3.d.x, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(arg_0, 12u)])))), !arg_1.d.zw, vec2<bool>(true, !(var_2.d.x & any(arg_1.d.xxw))));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.b.zzw, -(reverseBits(vec3<i32>(-2147483647i, global0.x, u_input.a)) & (vec3<i32>(1i, 779i, global0.x) << (vec3<u32>(1u, 74428u, 4294967295u) % vec3<u32>(32u))))), _wgslsmith_sub_vec2_i32(-_wgslsmith_add_vec2_i32(global0.wz, vec2<i32>(1i, global0.x) & vec2<i32>(12587i, -2920i)), _wgslsmith_add_vec2_i32(-(~vec2<i32>(1i, -1i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b.x, 20180i), u_input.b.xz))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~countOneBits(u_input.b.xxw), abs(-vec3<i32>(-10184i, 1i, 2147483647i))), -u_input.b.wzz), vec4<bool>(true, true, true & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(1716u, 25u)]), 12u)], all(select(func_3(31451u, Struct_1(global0.xyx, u_input.b.zz, global0.x, vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], false, global1[_wgslsmith_index_u32(0u, 12u)]), global0.x)), select(vec2<bool>(false, global1[_wgslsmith_index_u32(31488u, 12u)]), vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(62910u, 12u)])), false))), u_input.a);
    global2 = array<vec4<u32>, 25>();
    let var_1 = firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(~select(1u, 62911u, global1[_wgslsmith_index_u32(64828u, 12u)])), _wgslsmith_dot_vec2_u32(min(vec2<u32>(60470u, 33488u), abs(vec2<u32>(4840u, 66667u))), vec2<u32>(_wgslsmith_mult_u32(1u, 50533u), ~0u))));
    let var_2 = Struct_1(global0.xyy, ~vec2<i32>(0i, global0.x), -45575i, var_0.d, -1986i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(571f, -2391f) - _wgslsmith_f_op_f32(f32(-1f) * -1436f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1428f)), 224f))) - 141f);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(611f - _wgslsmith_f_op_f32(func_2()));
    global0 = u_input.b;
    global1 = array<bool, 12>();
    return _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(~reverseBits(~0u), 1u, firstLeadingBit(~_wgslsmith_clamp_u32(1u, 3259u, 57280u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-firstLeadingBit(global0.xyz), ~_wgslsmith_add_vec2_i32(global0.xx | ~vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(~(-161i), u_input.b.x)), -24553i, vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(_wgslsmith_sub_u32(4418u, 1u), _wgslsmith_sub_u32(69010u, 68443u)), func_1(Struct_1(vec3<i32>(-1i, 0i, 19275i), u_input.b.yy, global0.x, vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(33806u, 12u)], true), u_input.a), _wgslsmith_div_i32(u_input.a, -19924i), Struct_1(global0.wxx, global0.yx, 0i, vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(14020u, 12u)], true, false), -2147483647i))), 12u)], all(vec2<bool>(global1[_wgslsmith_index_u32(~4294967295u, 12u)], false)), true), 40357i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1148f))))))), u_input.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(117f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1593f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-723f * 397f) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1723f * -1194f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-859f, 994f, 1535f, -1196f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, 2575f, -1453f, 816f) * vec4<f32>(747f, -292f, 574f, 180f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(861f * -1000f)))))), ~(~firstLeadingBit(vec4<u32>(30259u, 0u, 4294967295u, 4294967295u))) & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(Struct_1(vec3<i32>(u_input.b.x, 65271i, global0.x), vec2<i32>(1i, global0.x), global0.x, var_0.d, 2147483647i), -u_input.b.x, var_0), 90668u), 25u)]);
}

