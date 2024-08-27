struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 25103u, 4459u, 0u), false);

var<private> global1: array<vec3<f32>, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    return !(!(!select(vec4<bool>(false, global0.b, false, global0.b), !vec4<bool>(global0.b, global0.b, global0.b, global0.b), !vec4<bool>(global0.b, global0.b, true, global0.b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = firstTrailingBit(global0.a.x);
    global0 = Struct_2(countOneBits(~(~(vec4<u32>(u_input.b, var_0, 51942u, global0.a.x) << (arg_1.a % vec4<u32>(32u))))), !all(select(arg_0.yz, arg_0.xy, arg_1.b)) && false);
    let var_1 = Struct_1(reverseBits(u_input.c.x), arg_0.x, vec2<u32>(48053u, u_input.b), u_input.b);
    let var_2 = select(vec3<i32>(-36433i, (~1i >> (firstTrailingBit(var_1.d) % 32u)) | u_input.c.x, u_input.d.x), u_input.a, !any(vec3<bool>(all(vec3<bool>(false, true, true)), true, !global0.b)));
    global0 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(global0.a.x, 7329u), global0.a.x), ~global0.a.x, abs(countOneBits(var_0)), var_0), arg_1.b);
    return _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, arg_1.a.x), global0.a) << (reverseBits(1u) % 32u)), u_input.b, global0.a.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(9171i, true, _wgslsmith_mod_vec2_u32(~global0.a.xy, vec2<u32>(4666u, 4294967295u) | _wgslsmith_mod_vec2_u32(global0.a.xy, vec2<u32>(global0.a.x, 11175u))) & global0.a.zy, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(global0.a.x, u_input.b)))));
    global0 = Struct_2(select(~global0.a, global0.a, !(!vec4<bool>(false, false, var_0.b, var_0.b))) >> (_wgslsmith_clamp_vec4_u32(select(min(vec4<u32>(36297u, u_input.b, var_0.c.x, 8327u), vec4<u32>(global0.a.x, 0u, var_0.d, 4294967295u)), vec4<u32>(0u, u_input.b, 4294967295u, 0u), any(vec2<bool>(true, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, u_input.b, var_0.d, var_0.c.x), global0.a ^ vec4<u32>(39156u, var_0.c.x, 4294967295u, var_0.c.x)), global0.a) % vec4<u32>(32u)), true || (global0.b || true));
    var_0 = Struct_1((arg_0.x ^ abs(_wgslsmith_div_i32(u_input.d.x, var_0.a))) & _wgslsmith_dot_vec4_i32(u_input.d, (u_input.d ^ u_input.d) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global0.a.x, u_input.b, 105001u), global0.a) % vec4<u32>(32u))), -1000f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1781f)), -2067f))), ~var_0.c, u_input.b);
    let var_1 = Struct_2(select(global0.a, vec4<u32>(abs(global0.a.x) ^ var_0.c.x, 19532u, (global0.a.x ^ 0u) >> ((u_input.b ^ global0.a.x) % 32u), ~var_0.c.x | func_3(vec3<bool>(global0.b, var_0.b, var_0.b), Struct_2(vec4<u32>(global0.a.x, 5204u, 17622u, 0u), global0.b), -863f)), true), false);
    var var_2 = select(~global0.a.wxz, ~(~global0.a.xzx) & ~countOneBits(var_1.a.ywz), false) >> (min(max(var_1.a.wzx, vec3<u32>(64510u, 50605u ^ global0.a.x, 1u)), vec3<u32>(0u, 4294967295u, ~(56763u | u_input.b))) % vec3<u32>(32u));
    return select(vec4<bool>(~var_0.c.x >= min(53540u, select(var_2.x, 4294967295u, true)), var_0.b, !(~u_input.c.x == 1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1017f * -573f))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-546f, -2020f)))), select(vec4<bool>(!(!var_1.b), min(var_0.a, arg_0.x) != ~var_0.a, (global0.a.x == var_0.d) | (false || var_1.b), var_0.b), vec4<bool>(true, all(!vec2<bool>(false, global0.b)), false, var_0.b), !(!vec4<bool>(false, var_1.b, var_0.b, false))), select(vec4<bool>(global0.b, global0.b, global0.b, func_1(arg_1).x), vec4<bool>(true, !(!var_0.b), var_1.b & !global0.b, var_0.c.x > var_1.a.x), !select(vec4<bool>(var_0.b, true, global0.b, false), select(vec4<bool>(var_0.b, global0.b, true, global0.b), vec4<bool>(true, var_1.b, true, var_1.b), vec4<bool>(false, global0.b, var_0.b, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(u_input.a.zz), select(vec4<bool>(any(func_2(u_input.d, u_input.c)), true, true, any(vec4<bool>(global0.b, global0.b, global0.b, false))), !(!(!vec4<bool>(false, global0.b, global0.b, true))), global0.b), func_2(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, u_input.a.x & -2147483647i, max(1i, 21083i), abs(u_input.d.x))), u_input.a.xy).x);
    var var_1 = vec4<f32>(-1000f, 559f, _wgslsmith_f_op_f32(ceil(462f)), 1f);
    let var_2 = !(!func_1(u_input.d.zw));
    let var_3 = vec3<f32>(-411f, 159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.x))));
    let var_4 = abs(~(~global0.a));
    global1 = array<vec3<f32>, 20>();
    global1 = array<vec3<f32>, 20>();
    let var_5 = Struct_2(global0.a, select(func_1(u_input.a.xz).x & var_0.x, func_1(_wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.d.yx) | u_input.d.zw).x, _wgslsmith_f_op_f32(step(var_3.x, var_1.x)) >= -517f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yw, 2147483647i);
}

