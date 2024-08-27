struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> bool {
    var var_0 = Struct_2(-1i);
    return arg_0.a.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_mod_vec2_u32(max(~vec2<u32>(4294967295u, max(0u, 44025u)), reverseBits(~(~vec2<u32>(u_input.b.x, global0.b)))), vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.xy & u_input.c.zw, _wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(104896u, 1u))), ~_wgslsmith_add_u32(~arg_1, global0.b)));
    global0 = Struct_1(!global0.a, ~66799u | max(global0.b, 17341u));
    var var_1 = -1i;
    let var_2 = Struct_4(all(vec4<bool>(true, true, any(select(vec3<bool>(global0.a.x, true, global0.a.x), global0.a, global0.a)), true)), select(!(!(!vec4<bool>(global0.a.x, true, global0.a.x, false))), select(!(!vec4<bool>(global0.a.x, global0.a.x, true, false)), vec4<bool>(false, true, global0.a.x, global0.a.x), !vec4<bool>(false, global0.a.x, false, false)), vec4<bool>(global0.a.x, true, global0.a.x, all(select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.a, global0.a.x)))));
    let var_3 = var_2;
    return _wgslsmith_div_i32(-1i, select(i32(-1i) * -2147483647i, -_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.x, -20740i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(u_input.d, u_input.d))), all(!(!vec4<bool>(var_2.b.x, global0.a.x, true, false)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = select(!vec4<bool>(any(select(global0.a, vec3<bool>(true, global0.a.x, true), global0.a)), all(global0.a.zx), select(false, false, false), global0.a.x), vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), !(!vec4<bool>(func_2(Struct_1(vec3<bool>(true, false, global0.a.x), arg_1), -1i, 0i), !global0.a.x, true, global0.a.x)));
    var var_1 = arg_2;
    let var_2 = arg_0;
    var var_3 = func_3(countOneBits(~(~max(vec3<i32>(-32752i, -1i, u_input.d), vec3<i32>(-39232i, -1i, u_input.d)))), 0u);
    let var_4 = Struct_4(true, var_0);
    return Struct_1(vec3<bool>(all(!vec4<bool>(false, var_0.x, false, global0.a.x)), all(select(select(vec3<bool>(false, true, true), vec3<bool>(global0.a.x, true, var_4.b.x), var_4.b.x), vec3<bool>(true, var_4.b.x, global0.a.x), !var_0.ywx)), any(vec3<bool>(0i != u_input.d, func_2(Struct_1(vec3<bool>(true, true, var_4.b.x), 0u), u_input.d, u_input.d), func_2(Struct_1(var_4.b.ywy, arg_3), u_input.d, -2147483647i)))), ~40105u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(211f, -736f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1727f, 1000f)))))) * vec2<f32>(-1129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f))), global0.b, 1f, ~global0.b);
    global0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1119f - -553f)), _wgslsmith_f_op_f32(round(-464f))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-649f, 931f, false)), _wgslsmith_f_op_f32(abs(434f)))), -522f)), ~(~(~(~global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1284f, -1699f)), 327f)), global0.b);
    global0 = Struct_1(vec3<bool>(~22919u == firstLeadingBit(firstTrailingBit(47864u)), global0.a.x, !global0.a.x), _wgslsmith_mod_u32(~(global0.b >> (~15362u % 32u)), 0u));
    global0 = func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(707f, _wgslsmith_f_op_f32(f32(-1f) * -859f)))), max((abs(u_input.b.x) >> (global0.b % 32u)) | u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a, reverseBits(4294967295u), global0.b, ~0u))), _wgslsmith_f_op_f32(f32(-1f) * -1612f), global0.b);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(757f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1056f - 276f), _wgslsmith_f_op_f32(520f + 861f))) + -1565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 303f), _wgslsmith_f_op_f32(floor(-271f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2234f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1256f))))) - -161f));
    global0 = Struct_1(!global0.a, 1u);
    var var_1 = ~(~u_input.a);
    var var_2 = Struct_2(-u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 241f, -205f, var_0.x), vec4<f32>(2329f, var_0.x, var_0.x, 487f))))))), -(~(countOneBits(vec4<i32>(u_input.d, 1i, var_2.a, -2147483647i)) | -vec4<i32>(-33878i, var_2.a, u_input.d, 23733i))), var_0.x);
}

