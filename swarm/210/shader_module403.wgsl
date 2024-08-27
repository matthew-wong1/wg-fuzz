struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, 35670u), arg_2)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(arg_2), arg_3.b.yz), abs(~arg_3.b.zz))), 33551u);
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<bool> {
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_sub_u32(54224u, 3805u), 4294967295u), global0.x), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(0u, global0.x), vec2<u32>(global0.x, global0.x)), vec2<u32>(arg_0, ~arg_0) ^ ~(~vec2<u32>(0u, global0.x))), vec2<u32>(129627u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0, arg_0, 0u), vec4<u32>(4294967295u, global0.x, 1u, 62493u) | vec4<u32>(0u, 12823u, global0.x, 1u))) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0, arg_0) | vec2<u32>(arg_0, 1u), ~vec2<u32>(arg_0, global0.x) << (~vec2<u32>(arg_0, 23608u) % vec2<u32>(32u))));
    global0 = ~firstLeadingBit(min(_wgslsmith_div_vec2_u32(max(vec2<u32>(2717u, arg_0), vec2<u32>(64098u, 1297u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, global0.x), vec2<u32>(0u, 73241u))), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, global0.x), vec2<u32>(global0.x, 4294967295u), vec2<u32>(51353u, arg_0)))));
    let var_0 = Struct_2(Struct_1(1u, vec4<u32>(global0.x, 109297u, func_3(-818f, 515f, vec2<u32>(4294967295u, global0.x), Struct_1(arg_0, vec4<u32>(32512u, 51355u, arg_0, 4294967295u), 4294967295u, u_input.c.x)), 1u) ^ select(~vec4<u32>(arg_0, arg_0, global0.x, global0.x), countOneBits(vec4<u32>(arg_0, arg_0, 1u, 4162u)), all(vec3<bool>(arg_1, false, false))), ~arg_0, 1i), Struct_1(func_3(_wgslsmith_f_op_f32(abs(-705f)), _wgslsmith_f_op_f32(-1119f - _wgslsmith_f_op_f32(f32(-1f) * -168f)), reverseBits(abs(vec2<u32>(1u, 58716u))), Struct_1(~36108u, vec4<u32>(4294967295u, arg_0, 0u, global0.x) & vec4<u32>(arg_0, arg_0, arg_0, 1u), arg_0, u_input.c.x)), ~select(firstLeadingBit(vec4<u32>(global0.x, global0.x, 0u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, arg_0), vec4<u32>(arg_0, arg_0, 23064u, global0.x)), !arg_1), arg_0, u_input.c.x), Struct_1(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1141f), -228f, firstTrailingBit(vec2<u32>(arg_0, arg_0)), Struct_1(36797u, vec4<u32>(4294967295u, 6199u, global0.x, 63517u), arg_0, u_input.a)), 1u & global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0 << (global0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(4294967295u, arg_0)), 4294967295u, firstLeadingBit(global0.x)), vec4<u32>(global0.x, global0.x, 9439u, arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.x, 45013u, 1u, _wgslsmith_add_u32(63934u, 0u)), min(vec4<u32>(global0.x, 102453u, 2655u, 9337u), vec4<u32>(3821u, 23298u, arg_0, arg_0)) | countOneBits(vec4<u32>(arg_0, global0.x, 1u, arg_0))), -1i), Struct_1(_wgslsmith_clamp_u32(~global0.x, max(_wgslsmith_clamp_u32(global0.x, 128266u, 4294967295u), 0u ^ arg_0), _wgslsmith_add_u32(~3690u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 37437u, 0u, 4294967295u), vec4<u32>(1u, 26550u, global0.x, global0.x)))), min(vec4<u32>(global0.x, _wgslsmith_mod_u32(global0.x, 4294967295u), 24403u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 39081u, global0.x, global0.x), ~vec4<u32>(arg_0, 0u, 1913u, global0.x))), global0.x, u_input.c.x << (~(~global0.x) % 32u)));
    global0 = firstLeadingBit(vec2<u32>(71797u, var_0.a.b.x));
    var var_1 = var_0.c;
    return !vec4<bool>(!(!any(vec3<bool>(true, arg_1, arg_1))), true, !any(vec3<bool>(true, arg_1, true)), arg_1);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 177f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.x, -1153f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.x, arg_1.x), arg_1.zy))))), any(func_2(_wgslsmith_add_u32(28884u, global0.x), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy), arg_1.zy), arg_1.yy, false)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, arg_1.x))) - vec2<f32>(_wgslsmith_f_op_f32(max(890f, arg_1.x)), _wgslsmith_f_op_f32(931f - arg_1.x))))));
    global0 = vec2<u32>(_wgslsmith_clamp_u32(~(~27186u), global0.x, ~global0.x), abs(global0.x));
    global0 = vec2<u32>(_wgslsmith_mod_u32(reverseBits(~38237u), 4294967295u & _wgslsmith_clamp_u32(global0.x, 4294967295u, 4294967295u)), ~firstTrailingBit(4294967295u)) & abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(4294967295u, global0.x)) & select(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(global0.x, 40523u)), vec2<u32>(1u, 0u) << (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u)), false));
    let var_1 = Struct_2(Struct_1(1u, ~vec4<u32>(~global0.x, 39371u, ~global0.x, _wgslsmith_add_u32(global0.x, global0.x)), _wgslsmith_mod_u32(global0.x, 2901u), -27732i), Struct_1(0u, ~vec4<u32>(~global0.x, ~1u, 1u, 33438u ^ global0.x), ~(~global0.x), arg_0), Struct_1(0u, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 0u, 1u, global0.x), vec4<u32>(global0.x, 20535u, 24783u, 34369u)), vec4<u32>(1u, global0.x, 30447u, 82478u)), reverseBits(vec4<u32>(19629u, 12209u, 1u, 1u))), global0.x, -20408i), Struct_1(min(firstTrailingBit(max(4294967295u, 1u)), 1u), reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(18173u, 4294967295u, global0.x, 2970u), vec4<u32>(global0.x, global0.x, 4294967295u, global0.x))), global0.x, ~(min(-1i, arg_0) & -2147483647i)));
    let var_2 = arg_0;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~global0.x), ~67620u << (global0.x % 32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(22201u, global0.x) << (~vec2<u32>(1u, var_1.b.c) % vec2<u32>(32u)), ~vec2<u32>(10882u, var_1.c.a))) & global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.x, ~(~vec4<u32>(func_1(u_input.c.x, vec3<f32>(668f, -951f, 773f)), global0.x, ~global0.x, ~54732u)), global0.x, -1i);
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-596f * _wgslsmith_f_op_f32(min(-186f, 1000f)))));
    let var_3 = vec2<u32>(~(~_wgslsmith_div_u32(global0.x, global0.x) & 0u), global0.x);
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(select(-1562f, var_2, false)), var_2)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, var_2, var_2, var_2)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(738f, -227f, var_2, -399f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1086f * -1192f), 650f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(floor(629f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2, var_2, var_2) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, 344f, var_2, var_2) - vec4<f32>(var_2, -374f, var_2, 1401f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1707f, 596f, 460f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(315f, var_2, var_2, -495f) - vec4<f32>(var_2, -1921f, var_2, var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-360f, -626f)))), _wgslsmith_div_u32(var_3.x, var_3.x), vec3<u32>(25972u, min(1u | (var_3.x & 20504u), 2562u), global0.x));
}

