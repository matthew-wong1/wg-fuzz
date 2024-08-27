struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(145f, 287f, -898f, -1257f), vec4<f32>(318f, 340f, -210f, 1000f), vec4<f32>(519f, 1706f, 517f, 565f), vec4<f32>(502f, -2717f, -268f, 249f), vec4<f32>(-396f, -1000f, -471f, 1148f), vec4<f32>(-602f, 764f, -482f, -753f), vec4<f32>(-295f, -615f, 1467f, -1747f), vec4<f32>(-408f, 1735f, -854f, 755f), vec4<f32>(-1000f, -317f, 1035f, -1620f), vec4<f32>(-1161f, -698f, 261f, 807f), vec4<f32>(-1000f, 159f, 1000f, -1000f), vec4<f32>(-643f, -794f, 589f, 572f), vec4<f32>(1156f, -2034f, 588f, 110f), vec4<f32>(1414f, -307f, -1462f, -873f), vec4<f32>(1984f, -455f, -717f, 394f), vec4<f32>(107f, 1000f, -212f, 371f), vec4<f32>(1222f, -484f, 883f, -1645f), vec4<f32>(114f, 581f, 537f, 1549f), vec4<f32>(-794f, 820f, 1532f, 728f), vec4<f32>(800f, -1112f, 813f, -1376f), vec4<f32>(1000f, 358f, -304f, 890f), vec4<f32>(2371f, 1379f, -1072f, -328f), vec4<f32>(782f, 461f, 1610f, 829f), vec4<f32>(573f, 300f, 142f, 1555f), vec4<f32>(-229f, 756f, 1812f, 993f), vec4<f32>(-283f, 148f, 1127f, 877f), vec4<f32>(843f, -556f, -1000f, -898f), vec4<f32>(-282f, 2178f, 561f, -133f), vec4<f32>(-1253f, 1000f, -1755f, 1130f), vec4<f32>(569f, -1601f, -1625f, -1087f));

var<private> global2: vec2<f32> = vec2<f32>(-183f, 346f);

var<private> global3: vec4<bool>;

var<private> global4: array<f32, 26> = array<f32, 26>(300f, -1695f, -550f, 501f, 616f, 526f, 1004f, -196f, 940f, 314f, -1565f, -771f, -1000f, -925f, -733f, 1877f, -1000f, -201f, 398f, -1446f, -280f, 738f, 1614f, -1218f, -277f, -279f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    var var_0 = select(firstLeadingBit(vec4<i32>(-abs(35070i), ~(-14681i), 1i, select(abs(-2147483647i), ~0i, false))), vec4<i32>(32800i, -1i, ~(~_wgslsmith_add_i32(-2147483647i, 53471i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(28417i, 46421i, 2147483647i), vec3<i32>(0i, -37115i, -2147483647i)), -1i)), global3.x);
    let var_1 = ~(~_wgslsmith_add_u32(u_input.b << (~0u % 32u), ~1u));
    let var_2 = Struct_1(false);
    let var_3 = var_2;
    var var_4 = select(!vec3<bool>(false, var_3.a, true), select(select(global3.yyw, vec3<bool>(any(vec3<bool>(var_2.a, false, false)), global3.x, any(vec2<bool>(var_2.a, var_2.a))), !global3.wwx), global3.www, !global3.zzw), global3.xyz);
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_0;
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(12069u, 26u)], _wgslsmith_f_op_f32(global2.x - -537f))))));
    let var_2 = _wgslsmith_add_i32(1i, func_3(global4[_wgslsmith_index_u32(~4294967295u, 26u)], global1[_wgslsmith_index_u32(~63701u << (_wgslsmith_div_u32(70686u, u_input.b) % 32u), 30u)])) | (_wgslsmith_sub_i32(~(i32(-1i) * -55331i), 0i) | ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(43681i, 0i), vec2<i32>(-37781i, -20372i)), 1i));
    var var_3 = arg_0;
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 25>();
    global3 = vec4<bool>(!(!(!func_2(arg_2, global3.x))), global3.x, false, true);
    global3 = vec4<bool>(false, arg_2.a, false, global3.x);
    global3 = !vec4<bool>(true, u_input.b < (_wgslsmith_mult_u32(u_input.d.x, u_input.b) << (~1u % 32u)), true, global3.x);
    let var_0 = u_input.c.xy;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 26>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(42200u, 26u)], 100f))), vec2<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], _wgslsmith_f_op_f32(abs(1f)))));
    var var_1 = reverseBits(3779i);
    var var_2 = func_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-410f + -532f), global2.x)), var_0.x))), -2147483647i, Struct_1(any(vec4<bool>(true, true, true, true))));
    let var_3 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0)), var_0), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, ~4971i), ~1i), _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-1i), ~15174i), _wgslsmith_sub_i32(~(-1i), ~(-2147483647i)))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(47733u, 26u)], _wgslsmith_f_op_f32(global2.x - global2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0)))), -1i, func_1(var_0, min(min(-1i, -40723i), ~(-1i)), func_1(_wgslsmith_f_op_vec2_f32(trunc(var_0)), 3800i, func_1(var_0, 1i, Struct_1(false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~u_input.d));
}

