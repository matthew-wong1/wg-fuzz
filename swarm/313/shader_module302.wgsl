struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-19376i, vec3<bool>(false, true, false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global0 = Struct_2(global0.a, !global0.b);
    let var_0 = vec2<bool>(true, true);
    global0 = Struct_2(firstLeadingBit(1i), global0.b);
    global0 = Struct_2(reverseBits(u_input.c), select(!select(select(vec3<bool>(arg_1, false, arg_1), global0.b, global0.b), global0.b, select(global0.b, vec3<bool>(arg_1, true, false), vec3<bool>(false, true, arg_1))), global0.b, !(!global0.b)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, global0.a >> (1u % 32u)), min(-2147483647i, select(global0.a, 12048i, false)) | _wgslsmith_dot_vec2_i32(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, u_input.c), vec2<i32>(-1i, u_input.c), vec2<i32>(global0.a, u_input.c)), max(vec2<i32>(-2147483647i, -8611i), vec2<i32>(2147483647i, global0.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, -2147483647i), vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -1i)) & vec2<i32>(u_input.c, u_input.c)), -firstLeadingBit(firstLeadingBit(~global0.a)));
    return reverseBits(-49066i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec4<bool>) -> bool {
    var var_0 = !select(!arg_3.wz, select(!vec2<bool>(arg_1.x, true), !vec2<bool>(false, arg_1.x), all(arg_1)), vec2<bool>(any(arg_3), false));
    var var_1 = arg_2.wz;
    let var_2 = !(!(!vec2<bool>(arg_1.x, true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1269f, var_1.x, var_1.x), arg_2.zxw)))) - _wgslsmith_div_vec3_f32(arg_2.yxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2.zzw)))));
    global0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-global0.a, firstLeadingBit(global0.a), func_3(arg_0, true)), -(~vec3<i32>(u_input.c, global0.a, -1i))) & _wgslsmith_clamp_i32(~u_input.c, u_input.c, reverseBits(_wgslsmith_sub_i32(1i, global0.a))), !(!vec3<bool>(all(arg_3), !arg_1.x, false & var_0.x)));
    return arg_3.x;
}

fn func_1() -> u32 {
    var var_0 = u_input.d;
    let var_1 = select(!(!select(!vec4<bool>(false, global0.b.x, true, false), !vec4<bool>(global0.b.x, false, false, true), true)), !(!vec4<bool>(false, func_2(vec4<u32>(u_input.b.x, 7282u, u_input.a, u_input.e), global0.b.yy, vec4<f32>(529f, 1000f, 672f, 2088f), vec4<bool>(false, true, global0.b.x, global0.b.x)), global0.b.x, global0.b.x && true)), select(vec4<bool>(max(4294967295u, u_input.d) < ~1u, 2147483647i != ~u_input.c, true, true), !select(select(vec4<bool>(global0.b.x, false, true, global0.b.x), vec4<bool>(true, global0.b.x, false, global0.b.x), global0.b.x), select(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), vec4<bool>(false, global0.b.x, global0.b.x, true), global0.b.x), vec4<bool>(global0.b.x, false, false, global0.b.x)), false));
    var var_2 = Struct_2(u_input.c, var_1.wwy);
    let var_3 = Struct_2(-38079i, global0.b);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1262f, 2499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f + 564f)))), var_3.a);
    return abs(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(0u, ~u_input.d, func_1(), countOneBits(u_input.a | 4294967295u)) | ~(vec4<u32>(0u, firstLeadingBit(u_input.b.x), u_input.b.x, 4294967295u & u_input.e) >> (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 538u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.e, u_input.e, u_input.b.x), vec4<u32>(0u, 4294967295u, u_input.e, u_input.a)), vec4<u32>(4294967295u, 9360u, 37190u, 0u)) % vec4<u32>(32u)));
    let var_1 = var_0.x;
    var_0 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(u_input.d, 4294967295u) & (81764u & u_input.b.x)) >> (26327u % 32u), ~1u, var_0.x, reverseBits(var_0.x));
    global0 = Struct_2(u_input.c, vec3<bool>(false, false, global0.b.x));
    var var_2 = Struct_2(u_input.c, vec3<bool>(global0.b.x | true, false, true));
    let var_3 = all(var_2.b);
    let var_4 = var_0.yz;
    var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits((vec4<u32>(0u, var_0.x, var_0.x, 64868u) >> (vec4<u32>(var_0.x, 15599u, 1u, 0u) % vec4<u32>(32u))) | countOneBits(vec4<u32>(u_input.e, var_0.x, 1u, var_0.x))), ~(~vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, var_4.x))), (vec4<u32>(u_input.b.x, ~var_0.x, 1u, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(25455u, 0u, u_input.e, 0u) >> (vec4<u32>(u_input.a, 19686u, 27437u, var_4.x) % vec4<u32>(32u)), vec4<u32>(2559u, 1u, var_4.x, u_input.d) ^ vec4<u32>(var_4.x, 833u, 78438u, 61227u))) ^ (~firstTrailingBit(vec4<u32>(57930u, var_4.x, var_4.x, 1u)) | ~(~vec4<u32>(78107u, 0u, u_input.b.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.b.zy)));
}

