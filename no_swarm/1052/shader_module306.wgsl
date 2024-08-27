struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = !(!vec2<bool>(select(all(vec3<bool>(false, false, false)), select(true, false, true), true), any(vec4<bool>(true, true, true, true))));
    var var_1 = select(select(arg_0.x, u_input.a.x, !var_0.x), abs(u_input.a.x), var_0.x) ^ select(-u_input.a.x, arg_0.x, var_0.x);
    var var_2 = _wgslsmith_f_op_f32(-arg_1.a.x);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(1062f, arg_1.a.x, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, 786f, arg_1.a.x, arg_1.a.x))))));
    let var_4 = var_3.a;
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true)), !vec4<bool>(u_input.a.x != -17951i, true, false, true), true), vec4<bool>(true, !any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec3<bool>(false, true, func_3(vec4<i32>(35173i, u_input.b.x, -28709i, -1i), arg_1))), true), select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, (arg_0.x < 4294967295u) | all(vec4<bool>(true, true, true, true)), (u_input.b.x ^ u_input.b.x) < u_input.b.x), vec4<bool>(true, true, true, true), func_3(vec4<i32>(0i, ~2710i, -2147483647i, ~u_input.b.x), arg_1)));
    var var_1 = arg_1;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, arg_1.a.x, arg_1.a.x, arg_2) * vec4<f32>(-1195f, var_1.a.x, arg_1.a.x, arg_1.a.x)))))), _wgslsmith_f_op_f32(abs(arg_2)), vec2<bool>(false, var_0.x), _wgslsmith_f_op_f32(abs(arg_2)));
    var var_3 = 39982i >= u_input.b.x;
    let var_4 = var_0;
    return var_2.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    let var_0 = func_2(vec3<u32>(~(~1u), _wgslsmith_add_u32(arg_0.x, arg_0.x ^ arg_0.x), 0u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), 207f, _wgslsmith_f_op_f32(min(arg_2, 184f)), _wgslsmith_f_op_f32(sign(1571f))))), arg_2);
    let var_1 = _wgslsmith_add_vec2_u32(~countOneBits(~select(vec2<u32>(55450u, arg_0.x), arg_0.yw, vec2<bool>(true, true))), ~arg_0.xz);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.ww)), _wgslsmith_f_op_vec2_f32(arg_3 * func_2(vec3<u32>(var_1.x & var_1.x, firstLeadingBit(arg_0.x), ~4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(arg_2, 844f, 911f, -374f))), var_0.a.x).a.zy)));
    var_2 = var_0.a.yz;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_2, -642f, -1000f))))))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~func_1(reverseBits(vec4<u32>(17074u, 47168u, 1u, 27099u)), true, _wgslsmith_f_op_f32(f32(-1f) * -449f), vec2<f32>(-180f, 186f)), ~(~select(53847u, 22296u, true)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(45323u, 12062u), var_0.x) << (vec2<u32>(var_0.x, abs(~0u)) % vec2<u32>(32u)), vec2<u32>(1u, var_0.x), vec2<u32>(~29279u, _wgslsmith_mod_u32(9412u, _wgslsmith_clamp_u32(19005u << (var_0.x % 32u), ~4294967295u, firstTrailingBit(1u)))));
    var_0 = firstTrailingBit(max(firstLeadingBit(abs(vec2<u32>(0u, 1u) ^ vec2<u32>(98497u, var_0.x))), vec2<u32>(~(31069u << (var_0.x % 32u)), 1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 * 324f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-var_1))), var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(645f, var_1, 1000f, -1000f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1212f, -1031f, var_1), vec4<f32>(var_1, var_1, var_1, 343f), vec4<bool>(true, false, true, false)))) * vec4<f32>(820f, 534f, -1473f, _wgslsmith_f_op_f32(-var_1))), vec4<bool>(false, true, all(vec3<bool>(false, true, false)), !any(vec2<bool>(true, false))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-662f, var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(798f + 747f), var_1), _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, -239f)))))));
    var var_3 = !vec2<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true)));
    let var_4 = !vec2<bool>(var_3.x, var_1 != _wgslsmith_f_op_f32(exp2(var_1)));
    let var_5 = var_2.zx;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b.x), -1737f, 2126f, u_input.a.x);
}

