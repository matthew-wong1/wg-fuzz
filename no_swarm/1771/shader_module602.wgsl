struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = 9386u;
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~62200u, ~arg_1.b, _wgslsmith_sub_u32(33414u ^ arg_1.b, firstTrailingBit(arg_1.b))) >> (~(~(vec3<u32>(1u, 1u, 27027u) | vec3<u32>(var_0.b, arg_1.b, 1u))) % vec3<u32>(32u)), abs(~firstTrailingBit(reverseBits(vec3<u32>(var_0.b, var_0.b, 1u)))), vec3<u32>(4294967295u, reverseBits(~1u), ~(0u & max(var_0.b, 20u))));
    var var_3 = select(select(!select(select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, true), false), vec3<bool>(true, true, true), arg_1.a), !vec3<bool>(false, var_0.a || var_0.a, arg_1.a), vec3<bool>(any(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(false, arg_1.a))), !(2147483647i > u_input.a.x), var_0.a)), !(!vec3<bool>(true, true, any(vec3<bool>(var_0.a, arg_1.a, false)))), !vec3<bool>(true, any(vec3<bool>(var_0.a, true, var_0.a)), true && any(vec4<bool>(true, true, arg_1.a, true))));
    let var_4 = reverseBits(~vec4<i32>(u_input.a.x, select(max(-17790i, u_input.a.x), u_input.a.x, var_3.x || false), ~(-7324i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 82906i, -1i), u_input.a) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2103i, u_input.a.x), u_input.a.wxy)));
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(30958u, arg_1.b), ~0u, 1u, 1u), select(vec4<u32>(41054u, 4294967295u, arg_1.b, arg_1.b) ^ vec4<u32>(var_2.x, var_0.b, var_2.x, arg_1.b), vec4<u32>(35914u, 1u, 19432u, 48572u) & vec4<u32>(var_2.x, arg_1.b, 1u, 1u), vec4<bool>(false, var_3.x, false, var_3.x))), reverseBits(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 51339u, arg_1.b, arg_1.b)), select(vec4<u32>(arg_1.b, 5697u, var_0.b, var_2.x), vec4<u32>(arg_1.b, var_0.b, 34529u, arg_1.b), var_0.a), ~vec4<u32>(var_2.x, 51613u, arg_1.b, 19588u))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(all(vec2<bool>(func_3(vec4<f32>(172f, 286f, 1000f, 2292f), Struct_1(false, 0u)) == _wgslsmith_mult_u32(1u, 20691u), true)), ~countOneBits(func_3(vec4<f32>(290f, -581f, 278f, 1436f), Struct_1(true, 0u))) & _wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(54963u, 41840u, 1u), abs(vec3<u32>(1u, 22544u, 59456u)))));
    let var_1 = select(!vec3<bool>(true, any(select(vec4<bool>(true, true, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(false, false, true, false))), (true | var_0.a) & any(vec3<bool>(var_0.a, false, false))), select(vec3<bool>(!var_0.a, false, all(select(vec3<bool>(true, var_0.a, false), vec3<bool>(true, var_0.a, true), var_0.a))), vec3<bool>(all(!vec3<bool>(false, var_0.a, false)), any(!vec4<bool>(var_0.a, var_0.a, false, false)), !(!var_0.a)), !vec3<bool>(false, var_0.a, false)), !select(select(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a)), vec3<bool>(false, var_0.a, var_0.a), true == var_0.a), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.a, var_0.a), true), var_0.a));
    let var_2 = var_0;
    let var_3 = Struct_1(false, var_0.b);
    var var_4 = var_0.b;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~(vec4<u32>(~0u, ~24582u, _wgslsmith_add_u32(1u, 0u), firstTrailingBit(0u)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 33599u, 12263u), vec4<u32>(0u, 0u, 71055u, 4294967295u), vec4<u32>(1u, 27443u, 4294967295u, 0u)), firstLeadingBit(vec4<u32>(0u, 4294967295u, 0u, 52562u)))));
    var var_1 = var_0.yxy;
    var_1 = ~abs(countOneBits(vec3<u32>(var_1.x, 4294967295u, 2339u)) | firstTrailingBit(var_0.wyy));
    var_1 = vec3<u32>(4294967295u, ~var_1.x, ~(~(firstLeadingBit(var_0.x) & var_0.x)));
    var var_2 = ~(~40579u);
    return Struct_1(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, func_2()))), _wgslsmith_sub_u32(var_0.x, _wgslsmith_mod_u32(~85197u, var_1.x) | _wgslsmith_add_u32(firstLeadingBit(28157u), _wgslsmith_dot_vec2_u32(vec2<u32>(24119u, var_0.x), vec2<u32>(var_0.x, 56484u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !select(!(!(!vec2<bool>(var_0.a, true))), !vec2<bool>(var_0.a, all(vec3<bool>(true, var_0.a, var_0.a))), var_0.a);
    var var_2 = true;
    var_0 = Struct_1(select(!var_0.a, false, true), 4294967295u);
    var_0 = Struct_1(func_2(), max(max(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 41515u, 48729u, 53330u), vec4<u32>(var_0.b, var_0.b, 15446u, var_0.b)), 31698u), ~var_0.b ^ 0u), ~(var_0.b ^ 4294967295u) ^ var_0.b));
    var_0 = func_1();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-136f, 634f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, -643f, 1142f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(307f, -1139f, 155f), vec3<f32>(129f, 219f, -480f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1615f, -117f, -437f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-249f, -1996f, 692f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-991f, -557f, _wgslsmith_f_op_f32(f32(-1f) * -481f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-926f, -288f, -885f), vec3<f32>(2138f, -465f, 291f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-368f, 349f, 410f) - vec3<f32>(-101f, 1058f, -1160f)))))));
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

