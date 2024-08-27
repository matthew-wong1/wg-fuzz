struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = Struct_1(vec2<u32>(~global0.a.x, ~arg_0.c.x), ~_wgslsmith_add_u32(~4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.c.x, global0.a.x, 44430u), vec4<u32>(30838u, global0.a.x, arg_0.c.x, global0.b)))), (global0.c << (max(~arg_0.c, vec4<u32>(global0.a.x, 62694u, 65184u, arg_0.b)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(~arg_0.c, max(arg_0.c, arg_0.c)) % vec4<u32>(32u)));
    let var_0 = arg_0;
    let var_1 = any(vec2<bool>(true, -724f > _wgslsmith_f_op_f32(sign(-1000f)))) | (global0.b >= ~arg_0.b);
    var var_2 = Struct_1(~global0.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(var_0.c.x), _wgslsmith_dot_vec2_u32(var_0.c.ww, global0.a), _wgslsmith_clamp_u32(1u, arg_0.c.x, var_0.a.x), var_0.b), var_0.c), select(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, 1u, 1u, var_0.c.x), ~vec4<u32>(arg_0.b, var_0.b, global0.a.x, global0.a.x)), abs(select(~arg_0.c, reverseBits(vec4<u32>(1738u, 4294967295u, 1u, var_0.a.x)), select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, false, true, true)))), var_1 && true));
    var var_3 = !(!select(!(!vec3<bool>(var_1, var_1, false)), !select(vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, false), var_1), false));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-908f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1103f))), _wgslsmith_f_op_f32(f32(-1f) * -2267f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-726f - -1000f))), 314f, _wgslsmith_f_op_f32(732f * _wgslsmith_f_op_f32(f32(-1f) * -968f))))));
}

fn func_4(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec2<u32>(0u, global0.c.x), ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, 4187u), vec2<u32>(global0.b, 0u)), global0.a.x ^ 1213u)), global0.c);
    let var_1 = any(!vec4<bool>(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<u32>(var_0.a.x, 1u), global0.b, global0.c))).x != -669f, select(1u, var_0.c.x, false) < _wgslsmith_sub_u32(1u, global0.c.x), any(vec3<bool>(true, true, true)), true));
    var var_2 = firstLeadingBit(max(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -2147483647i, firstLeadingBit(-1i)) ^ vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 1i), u_input.a.x, -21450i), vec3<i32>(~_wgslsmith_clamp_i32(3773i, u_input.a.x, u_input.a.x), -95369i & u_input.a.x, ~u_input.a.x)));
    var var_3 = var_0.c.x;
    let var_4 = arg_0.x;
    return ~countOneBits(~global0.c.x) | (var_0.b ^ ~var_0.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = abs(global0.c.wxy);
    var_0 = vec3<u32>(global0.a.x, var_0.x, _wgslsmith_div_u32(4294967295u, func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<u32>(4294967295u, var_0.x), 52066u, vec4<u32>(var_0.x, global0.b, 57085u, var_0.x)))))))));
    let var_1 = global0.c;
    let var_2 = Struct_1(abs(max(~vec2<u32>(var_0.x, 29019u) ^ _wgslsmith_clamp_vec2_u32(global0.c.wy, vec2<u32>(global0.c.x, 1u), vec2<u32>(1u, var_1.x)), ~(~vec2<u32>(global0.c.x, 46639u)))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, 0u)), select(vec2<u32>(1u, 46238u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, 0u), var_0.xx, var_0.xz), vec2<bool>(true, true))) ^ abs(var_0.x), vec4<u32>(select(var_1.x, ~60675u, u_input.a.x <= -9137i) << (countOneBits(1u) % 32u), 4294967295u, var_1.x, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_0.x, 1u), var_0.x)));
    return Struct_1(vec2<u32>(global0.a.x, ~_wgslsmith_mod_u32(global0.c.x, var_2.b)), ~func_4(vec3<f32>(_wgslsmith_f_op_f32(194f - -1521f), _wgslsmith_f_op_f32(f32(-1f) * -847f), -287f)), global0.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_f32(524f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(278f))))), 144f, (arg_2 < arg_2) && false)));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, min(arg_1.x, global0.a.x >> (1u % 32u)), arg_3.a.x), _wgslsmith_add_vec3_u32(arg_0.c.zwy, ~vec3<u32>(abs(arg_3.b), arg_0.a.x, 4294967295u)));
    var var_2 = Struct_1(arg_3.c.yz, 0u << (var_1.x % 32u), firstTrailingBit(global0.c << (vec4<u32>(4294967295u, 37187u, arg_1.x, 20113u) % vec4<u32>(32u))) & vec4<u32>(~(1u ^ arg_3.a.x), 86654u, global0.c.x, 0u));
    global0 = Struct_1(abs(vec2<u32>(func_2().c.x, arg_1.x)), ~(_wgslsmith_dot_vec3_u32(~global0.c.xxx, vec3<u32>(var_2.a.x, 1u, var_1.x)) & ~0u), ~(~min(select(vec4<u32>(1u, arg_1.x, arg_3.b, var_1.x), arg_3.c, false), vec4<u32>(arg_0.a.x, 12370u, arg_0.b, 1u) | global0.c)));
    return Struct_1(arg_1.zy, 20472u, ~(~global0.c));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(min(vec3<u32>(57885u, 13629u, arg_1.b), arg_1.c.zxy)), ~vec3<u32>(arg_1.b, 4294967295u, global0.a.x) | arg_1.c.xxw), global0.c.x), min(20669u, 21844u), ~countOneBits(vec4<u32>(~77988u, firstTrailingBit(var_0.c.x), arg_1.c.x, var_0.b)));
    let var_1 = 4294967295u;
    global0 = Struct_1(~_wgslsmith_add_vec2_u32(arg_1.a, vec2<u32>(26923u, 1u)), abs(_wgslsmith_sub_u32(arg_1.c.x, ~global0.b)), global0.c);
    let var_2 = func_1(arg_1, arg_1.c.zyy, ~abs(abs(arg_0)), func_2());
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!(u_input.a.x != 1i) || false, any(vec2<bool>(true, true)), false), vec3<bool>(func_5(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), func_1(Struct_1(global0.c.xz, global0.a.x, global0.c), vec3<u32>(global0.a.x, global0.b, 0u), -2147483647i, Struct_1(global0.c.xy, global0.a.x, global0.c)), any(vec4<bool>(true, false, false, true))) > 1u, any(vec4<bool>(false, false, true, false)) | (_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) == (u_input.a.x << (26682u % 32u))), any(vec3<bool>(global0.a.x >= global0.b, true, true))), select(select(vec3<bool>(true, false, all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), all(vec3<bool>(true, false, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), false));
    let var_1 = ~2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.c.ww, reverseBits(firstTrailingBit(44640u)), ~(global0.c ^ global0.c)))).x);
    let var_3 = u_input.a;
    global0 = func_2();
    let var_4 = ~(-5329i);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.wx, i32(-1i) * -38904i);
}

