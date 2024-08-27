struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = abs(~select(vec4<i32>(-19052i, _wgslsmith_mod_i32(2147483647i, 1i), 0i, abs(48819i)), vec4<i32>(1i, 1i, 1i, 1i), !any(arg_2.xx)));
    let var_1 = arg_0;
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-var_0.x, 32090i, var_0.x, -15298i), -(vec4<i32>(0i, 0i, var_0.x, 17833i) >> (vec4<u32>(u_input.a, u_input.a, 1u, 6189u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(~5605i, _wgslsmith_add_i32(var_0.x, 11320i), var_0.x << (17224u % 32u), _wgslsmith_sub_i32(1i, -33094i)), vec4<i32>(var_0.x, _wgslsmith_mod_i32(1i, var_0.x), _wgslsmith_clamp_i32(var_0.x, -1i, -27176i), var_0.x << (4294967295u % 32u)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, 0i, var_0.x, -17528i)), vec4<i32>(var_0.x, 10155i, 2147483647i, var_0.x))));
    let var_2 = 32886i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1634f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1416f))));
    return vec4<bool>(-1309i != reverseBits(abs(~var_2)), true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_2.x, true, true, arg_1.a), true)) || (reverseBits(var_2) > var_0.x), select(!(!var_1.a), false, var_2 < -var_0.x) && any(!arg_2.yy));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = true;
    var_0 = all(select(!vec4<bool>(false, true, false, arg_0.a & arg_0.a), !func_3(arg_0, arg_0, select(vec3<bool>(arg_0.a, true, false), vec3<bool>(true, false, true), false)), vec4<bool>(false, any(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, true, arg_0.a))), true, arg_0.a)));
    var var_1 = arg_0;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f) * -1082f), _wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(-175f - 1261f))))), -141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1066f * -527f))), _wgslsmith_f_op_f32(-114f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = func_3(Struct_1(true), arg_0, select(!(!select(vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, arg_0.a, arg_0.a), false)), vec3<bool>(any(!vec3<bool>(arg_0.a, true, true)), true, any(vec2<bool>(true, arg_0.a)) || (var_1.a & var_1.a)), select(false, all(select(vec4<bool>(var_1.a, true, true, arg_0.a), vec4<bool>(arg_0.a, false, true, true), vec4<bool>(arg_0.a, false, true, arg_0.a))), !(var_2.x >= 531f)))).x;
    return ~(~select(~vec3<u32>(u_input.a, 0u, arg_1.x) & ~vec3<u32>(u_input.a, 4294967295u, 0u), ~(vec3<u32>(39831u, arg_1.x, arg_1.x) | vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), !arg_0.a | all(vec4<bool>(var_1.a, arg_0.a, var_1.a, var_1.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(func_3(arg_0, arg_0, func_3(Struct_1(!arg_0.a), Struct_1(arg_0.a), !(!vec3<bool>(true, arg_0.a, arg_0.a))).wwz).x);
    var var_1 = !vec4<bool>(!arg_0.a, var_0.a, true, false);
    let var_2 = arg_0;
    var_1 = select(!(!vec4<bool>(true, true, var_1.x | var_0.a, false)), !(!select(vec4<bool>(false, var_1.x, var_2.a, true), vec4<bool>(var_1.x, false, var_1.x, arg_0.a), true)), func_3(Struct_1(var_2.a), arg_0, var_1.ywz));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f + -164f)), 1349f, 1376f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1939f), _wgslsmith_f_op_f32(round(2156f))))) + vec4<f32>(228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - 1426f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(294f * -389f)), _wgslsmith_f_op_f32(abs(-836f)))));
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = -276f;
    var_0 = -1853f;
    var var_1 = func_4(arg_1, countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-20516i, -2147483647i)), 0i, -1i), countOneBits(vec3<i32>(-2147483647i, -1i, -2147483647i)))), (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_0.x), ~vec3<u32>(u_input.a, 28104u, 39589u), vec3<u32>(29805u, u_input.a, 0u)) << (func_2(Struct_1(false), vec2<u32>(arg_0.x, u_input.a)) % vec3<u32>(32u))) | ((~vec3<u32>(arg_0.x, arg_0.x, 1u) << (~vec3<u32>(arg_0.x, u_input.a, arg_0.x) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(41812u, u_input.a, u_input.a)), ~vec3<u32>(arg_0.x, 67732u, 13800u)) % vec3<u32>(32u))));
    var_0 = 1000f;
    return 64931u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec2<u32>(abs(_wgslsmith_div_u32(4294967295u, 41172u)), u_input.a) >> (vec2<u32>(func_1(vec2<u32>(0u, 48497u), Struct_1(false)) << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(94085u, 49365u, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 70185u, u_input.a))) % vec2<u32>(32u)));
    let var_1 = ~select(abs(vec4<u32>(4294967295u, u_input.a, ~0u, var_0.x)), ~firstLeadingBit(~vec4<u32>(var_0.x, 0u, var_0.x, u_input.a)), ((48745u << (var_0.x % 32u)) < abs(28890u)) && true);
    let var_2 = func_4(func_4(Struct_1(false), vec3<i32>(-(~(-1i)), select(36290i, -28036i, true), 0i), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 0u, 35256u), vec3<u32>(38125u, var_0.x, 12387u)))), _wgslsmith_add_vec3_i32(firstTrailingBit(min(vec3<i32>(-54993i, 2147483647i, 34195i) << (var_1.xzx % vec3<u32>(32u)), -vec3<i32>(-18118i, 32893i, -1i))), countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(1i, 44522i, -1i), vec3<i32>(1i, 1i, 1i)))), ~func_2(Struct_1(true), vec2<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), ~1u)));
    var_0 = abs(~(~var_1.ww));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1596f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)));
    let var_4 = Struct_1(!(var_1.x <= ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(min(-(i32(-1i) * -31062i), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -17264i), vec2<i32>(-2147483647i, 0i)), -35220i)));
}

