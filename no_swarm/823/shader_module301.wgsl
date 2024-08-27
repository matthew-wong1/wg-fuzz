struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = Struct_2(-705f, arg_0.b, 1i >> (firstTrailingBit(global0.d.x >> (~global0.d.x % 32u)) % 32u));
    var var_1 = select(vec3<bool>((countOneBits(u_input.a) | 1u) > u_input.a, true, global0.d.x >= u_input.a), !select(select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, true, global0.a), false), select(vec3<bool>(true, global0.a, true), vec3<bool>(false, global0.a, false), global0.a), vec3<bool>(global0.a && global0.a, any(vec3<bool>(true, global0.a, false)), all(vec3<bool>(global0.a, global0.a, false)))), ~(~(u_input.a | global0.d.x)) == (u_input.a << ((~u_input.a | u_input.a) % 32u)));
    var_1 = !(!vec3<bool>(global0.a & var_1.x, all(vec2<bool>(true, true)), global0.a | global0.a));
    var var_2 = !var_1.xz;
    var_2 = select(!(!(!(!vec2<bool>(true, global0.a)))), vec2<bool>(!global0.a, var_2.x), var_1.zx);
    return var_2.x;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = false;
    global0 = Struct_1(_wgslsmith_sub_u32(1u, select(27u & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, 4294967295u, 4294967295u), vec3<u32>(126130u, 1u, global0.d.x)), global0.a)) > ~(~55689u), i32(-1i) * -1i, -2147483647i, global0.d);
    global0 = Struct_1(true || func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -459f), -vec2<i32>(20655i, 1i), global0.b), _wgslsmith_clamp_i32(countOneBits(2147483647i), _wgslsmith_clamp_i32(-2147483647i, global0.c, 2644i), 42566i)), countOneBits(-89327i), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.c, global0.b, global0.c, 8200i)), vec4<i32>(global0.c, -45297i, global0.b, -9460i) << (vec4<u32>(global0.d.x, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)))), 2147483647i), reverseBits(firstLeadingBit(vec2<u32>(u_input.a, 102277u)) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))));
    global0 = Struct_1(var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-42589i, 1055i, -2147483647i, global0.b), vec4<i32>(~global0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-26885i, -2147483647i), vec2<i32>(0i, global0.b)), global0.c, _wgslsmith_clamp_i32(global0.c, global0.b, global0.c))) & min(global0.b, ~(-global0.c)), 22972i, ~(select(~global0.d, vec2<u32>(33720u, 4294967295u), vec2<bool>(false, true)) ^ ~(~vec2<u32>(global0.d.x, global0.d.x))));
    let var_1 = abs(vec4<u32>(u_input.a, max(_wgslsmith_add_u32(15079u, u_input.a), u_input.a), global0.d.x, (global0.d.x << (u_input.a % 32u)) << (global0.d.x % 32u))) ^ (vec4<u32>(abs(_wgslsmith_clamp_u32(global0.d.x, 0u, u_input.a)), 0u, _wgslsmith_div_u32(~0u, select(u_input.a, 0u, var_0)), _wgslsmith_add_u32(max(global0.d.x, global0.d.x), ~59959u)) & (~reverseBits(vec4<u32>(4294967295u, 68371u, 0u, 9195u)) & vec4<u32>(~4294967295u, 0u, ~global0.d.x, countOneBits(1u))));
    return _wgslsmith_add_u32(var_1.x & 4294967295u, abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(31741u, global0.d.x), firstLeadingBit(global0.d.x)) ^ min(u_input.a, global0.d.x)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = ~(~(~(~func_2(arg_0.a))));
    global0 = Struct_1(!(~(global0.d.x | u_input.a) >= (u_input.a << (12356u % 32u))), ~(-1266i), global0.c, _wgslsmith_clamp_vec2_u32(~max(select(global0.d, vec2<u32>(global0.d.x, 0u), vec2<bool>(true, global0.a)), _wgslsmith_sub_vec2_u32(global0.d, global0.d)), countOneBits(firstTrailingBit(vec2<u32>(u_input.a, u_input.a))), ~(max(vec2<u32>(u_input.a, global0.d.x), vec2<u32>(global0.d.x, u_input.a)) >> (~global0.d % vec2<u32>(32u)))));
    var var_1 = Struct_1(!any(!vec3<bool>(global0.a, true, false)), 0i, global0.c, vec2<u32>(abs(u_input.a), _wgslsmith_div_u32(~4294967295u, u_input.a)));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(798f))) * arg_0.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + vec2<f32>(arg_0.a, 435f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - vec2<f32>(-1414f, arg_0.a)), !vec2<bool>(true, global0.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, arg_0.a))))));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(var_0, global0.d.x)), 1u, 0u, 63707u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~var_0, min(var_1.d.x, var_1.d.x), _wgslsmith_mod_u32(4294967295u, 4209u)), _wgslsmith_div_vec4_u32(vec4<u32>(55405u, var_1.d.x, 4294967295u, u_input.a), vec4<u32>(0u, 54968u, u_input.a, global0.d.x)) ^ vec4<u32>(global0.d.x, u_input.a, 0u, u_input.a)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(34661u, 32337u), vec2<u32>(27611u, u_input.a)), 44820u, global0.d.x, var_1.d.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(max(~global0.d.x, global0.d.x), var_0, ~firstTrailingBit(1588u), ~72424u), ~min(~vec4<u32>(u_input.a, var_1.d.x, var_1.d.x, u_input.a), abs(vec4<u32>(89985u, var_0, 32686u, u_input.a))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((~(~global0.d.x) == ~56248u) && all(vec2<bool>(false, func_1(Struct_2(-1294f, vec2<i32>(global0.c, global0.b), -4374i), true))));
    var var_1 = Struct_1(false, -2147483647i, ~(~max(-12323i, reverseBits(global0.b))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.d.x, 4294967295u), vec3<u32>(global0.d.x, 1u, 1u)) << (global0.d.x % 32u), ~(~u_input.a)), 3774u));
    let var_2 = !var_1.a;
    var_1 = Struct_1(!all(!select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.a), vec2<bool>(var_2, false))), ~var_1.c, -(~var_1.b), var_1.d);
    let var_3 = var_1.d.x;
    var var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~max(vec3<u32>(67803u, countOneBits(var_1.d.x), ~0u), firstLeadingBit(vec3<u32>(30638u, 4294967295u, global0.d.x)) << (select(vec3<u32>(var_1.d.x, 1u, 4294967295u), vec3<u32>(u_input.a, var_1.d.x, u_input.a), vec3<bool>(false, var_2, true)) % vec3<u32>(32u))));
}

