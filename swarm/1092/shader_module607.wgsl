struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> vec3<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-738f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = !vec4<bool>(true, (_wgslsmith_dot_vec2_u32(vec2<u32>(24303u, 8446u), vec2<u32>(91555u, 4294967295u)) < global0.x) && select(all(vec3<bool>(true, false, true)), true, true), u_input.a.x <= 2147483647i, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), _wgslsmith_f_op_f32(1000f + var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(856f, 522f)), var_0.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 1419f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1635f)), true))))));
    let var_3 = vec4<bool>(any(!vec2<bool>(any(vec3<bool>(var_1.x, true, true)), true)), -917f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -344f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -607f))), !(!any(!vec4<bool>(false, true, var_1.x, var_1.x))), false);
    var var_4 = ~global0.zz;
    return abs((abs(vec3<u32>(global0.x, 13643u, 0u)) | vec3<u32>(select(14985u, 1u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, var_4.x), vec4<u32>(58959u, 4294967295u, 4294967295u, 44108u)), 7873u)) >> (select(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.x, var_4.x, 1u), max(vec3<u32>(4294967295u, global0.x, 4294967295u), vec3<u32>(var_4.x, var_4.x, 1u))), firstTrailingBit(abs(vec3<u32>(global0.x, 31546u, 92098u))), true) % vec3<u32>(32u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true), 1u <= _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(42662u, 1u), ~1u, 4294967295u), 34464u, abs(firstTrailingBit(abs(global0.x) | ~1u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 62200u, 4294967295u), ~vec3<u32>(global0.x, 0u, global0.x)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(global0.yz, global0.yx), ~global0.x, _wgslsmith_mult_u32(global0.x, 0u)) % vec3<u32>(32u))));
    var var_1 = reverseBits(_wgslsmith_dot_vec4_i32(~firstTrailingBit(u_input.a) | (firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, arg_0, 47811i)) ^ (u_input.a | u_input.a)), max(u_input.a, u_input.a)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(-var_2);
    global0 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.e.yz, _wgslsmith_mod_vec2_u32(~global0.xz, abs(vec2<u32>(var_0.d, 1u)))), ~20424u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.c >> (30934u % 32u), 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, var_0.c, 93910u, var_0.c) & vec4<u32>(62447u, 0u, 35265u, global0.x), reverseBits(vec4<u32>(global0.x, 69713u, var_0.c, global0.x))))) | ~var_0.e;
    return 32374i;
}

fn func_2() -> bool {
    global0 = vec3<u32>(_wgslsmith_sub_u32(~global0.x, _wgslsmith_mult_u32(22511u, 24642u)), func_1(-28581i, min(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -5835i, 1544i)), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, func_3(u_input.a.x, -106f), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i)))).x, func_1(u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-24573i, -52838i), _wgslsmith_sub_vec2_i32(u_input.a.wy, u_input.a.wz)), min(firstLeadingBit(u_input.a.yxz), u_input.a.zxw >> (~vec3<u32>(global0.x, 17043u, global0.x) % vec3<u32>(32u)))).x);
    var var_0 = Struct_1(vec4<bool>(true, 0u >= global0.x, true && all(vec3<bool>(false, false, true)), _wgslsmith_sub_u32(abs(4294967295u), ~34242u) < min(_wgslsmith_mod_u32(0u, global0.x), _wgslsmith_sub_u32(global0.x, 1u))), true, ~_wgslsmith_clamp_u32(~(~global0.x), (global0.x ^ global0.x) & ~global0.x, _wgslsmith_clamp_u32(0u, global0.x, global0.x)), 0u, ~(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.x, 1u, global0.x)), countOneBits(vec3<u32>(1u, 1u, global0.x))) >> (reverseBits(abs(vec3<u32>(0u, global0.x, 1u))) % vec3<u32>(32u))));
    return !var_0.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = -1618f;
    var var_1 = global0.x;
    var_1 = 0u;
    var var_2 = func_3(1i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -590f)));
    var_2 = 0i;
    return ~firstLeadingBit(arg_2.e) | _wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(select(vec3<u32>(arg_0.a.x, 1686u, 33564u), arg_0.a.wxy, arg_2.b), arg_0.a.xyx & vec3<u32>(88498u, arg_2.e.x, 64967u)), ~arg_2.e, !arg_2.a.yzy), arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_u32(firstTrailingBit(firstLeadingBit(abs(vec3<u32>(global0.x, 4294967295u, global0.x)))), ~(~vec3<u32>(global0.x, 4294967295u, global0.x)) | min(vec3<u32>(~global0.x, ~global0.x, ~global0.x), max(vec3<u32>(26746u, global0.x, 0u), ~vec3<u32>(0u, 4294967295u, global0.x))));
    global0 = ~(~(~max(~vec3<u32>(global0.x, 10152u, 0u), ~vec3<u32>(4539u, global0.x, 24722u))));
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_1(-1i, u_input.a.zxz), vec3<u32>(1u, global0.x, global0.x)), ~(~4294967295u)), ((global0.x | 1u) & (global0.x | 24939u)) & global0.x, 0u), vec3<u32>(~1u, firstTrailingBit(~(~1u)), 36361u));
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(global0.x << (3672u % 32u), global0.x, 0u), firstTrailingBit(func_4(Struct_3(vec4<u32>(global0.x, global0.x, 14380u, global0.x) ^ vec4<u32>(69560u, global0.x, global0.x, global0.x)), vec2<f32>(_wgslsmith_f_op_f32(884f + 1562f), _wgslsmith_f_op_f32(select(-1943f, -463f, true))), Struct_1(vec4<bool>(false, false, true, false), func_2(), ~1u, 36348u, vec3<u32>(17538u, global0.x, global0.x)))));
    let var_0 = 1f;
    let var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(~u_input.a.x) ^ u_input.a.x, abs(~_wgslsmith_mod_i32(-66101i, u_input.a.x)), _wgslsmith_div_i32(~u_input.a.x, 1i)), 4294967295u, 1u);
}

