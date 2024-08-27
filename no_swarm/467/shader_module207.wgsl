struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(-226i, vec2<u32>(31132u, 1u), 44459u), 725f, vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 40932u), false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a << (global0.d.x % 32u), global0.a.a, _wgslsmith_clamp_i32(global0.a.a, 1i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, global0.a.a, global0.a.a), vec4<i32>(-19623i, global0.a.a, -2147483647i, global0.a.a))), (vec4<i32>(-15383i, 23728i, u_input.d.x, u_input.b) ^ vec4<i32>(16040i, 2147483647i, 774i, global0.a.a)) & vec4<i32>(global0.a.a, global0.a.a, -1i, -2147483647i)) ^ reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, global0.a.a, 1i), select(vec4<i32>(40947i, -9739i, 0i, -12873i), vec4<i32>(1i, global0.a.a, -1i, u_input.a), vec4<bool>(global0.c.x, false, global0.e, true))));
    var var_1 = Struct_4(Struct_2(global0.a.a, select(vec2<u32>(_wgslsmith_sub_u32(global0.a.b.x, 4294967295u), 87502u), u_input.e.xz, global0.c.x), u_input.c), global0.b, !(!global0.c), ~u_input.e, all(vec4<bool>(any(!vec3<bool>(true, true, global0.c.x)), !any(vec3<bool>(false, true, true)), false, all(vec2<bool>(false, global0.c.x)))));
    let var_2 = _wgslsmith_mod_vec3_u32(global0.d, ~var_1.d);
    let var_3 = reverseBits(-u_input.d.x);
    let var_4 = ~var_0.xz;
    return global0.b;
}

fn func_2() -> Struct_2 {
    let var_0 = !(!select(select(!vec3<bool>(true, false, global0.e), vec3<bool>(false, global0.c.x, global0.e), true), vec3<bool>(false, true, true), select(select(vec3<bool>(false, false, global0.c.x), vec3<bool>(false, false, global0.c.x), vec3<bool>(false, false, global0.e)), vec3<bool>(false, true, global0.e), !global0.e)));
    let var_1 = true;
    let var_2 = u_input.e.zy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -294f));
    let var_4 = Struct_1(!select(select(select(vec4<bool>(global0.e, true, false, var_0.x), vec4<bool>(var_0.x, var_1, false, true), vec4<bool>(true, var_0.x, global0.e, false)), vec4<bool>(var_0.x, false, true, true), any(vec3<bool>(true, var_1, var_0.x))), !(!vec4<bool>(global0.c.x, global0.e, var_0.x, true)), !vec4<bool>(false, global0.e, var_1, false)), select(firstTrailingBit(countOneBits(-83i)), -_wgslsmith_sub_i32(8803i, global0.a.a), !global0.c.x), all(vec2<bool>(true, false)));
    return global0.a;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    var var_0 = vec2<i32>(12067i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-35990i, arg_0, global0.a.a, -2147483647i) >> (vec4<u32>(15276u, 18708u, u_input.e.x, global0.d.x) % vec4<u32>(32u))), reverseBits(~vec4<i32>(0i, arg_1.x, 2147483647i, -1i)) ^ min(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 25464i, global0.a.a, u_input.b), vec4<i32>(28860i, arg_1.x, arg_2.b.a, 21413i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1.x, 19148i, -1i), vec4<i32>(arg_2.b.a, global0.a.a, 2147483647i, -2147483647i)))));
    var var_1 = global0.c.x;
    global0 = Struct_4(func_2(), -514f, select(global0.c, select(!vec2<bool>(global0.e, global0.e), !(!vec2<bool>(global0.e, global0.e)), false), !(!(!global0.c))), select(_wgslsmith_mult_vec3_u32(u_input.e, global0.d), vec3<u32>(~(~29234u), 4294967295u, _wgslsmith_clamp_u32(~global0.a.b.x, 4294967295u, 58672u | global0.d.x)), vec3<bool>(any(select(global0.c, global0.c, vec2<bool>(false, global0.c.x))), false, all(vec3<bool>(global0.e, false, false)))), select(any(!vec4<bool>(global0.e, global0.e, false, global0.c.x)), global0.c.x, any(select(vec3<bool>(true, false, global0.e), vec3<bool>(true, false, true), true))) | global0.c.x);
    var_1 = true;
    var_1 = true;
    return vec4<bool>(true, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(33221i, arg_2.b.a, -1i, var_0.x), vec4<i32>(var_0.x, 0i, -1i, var_0.x)), ~vec4<i32>(27485i, 27239i, arg_2.b.a, 2147483647i))) != (_wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(arg_1.x, 2147483647i)) << (u_input.c % 32u)), true, !all(!(!vec3<bool>(false, global0.e, global0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(vec4<bool>(true, true, global0.e, false), select(vec4<bool>(global0.e, false, false, global0.e), vec4<bool>(global0.c.x, false, global0.e, false), vec4<bool>(true, global0.c.x, global0.e, true)), global0.c.x), !func_1(u_input.a, u_input.d, Struct_3(vec2<f32>(215f, 505f), global0.a), -378f), true));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2692f, global0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1764f, global0.b)) + vec2<f32>(global0.b, 241f))), var_0.zw)), global0.a);
    var var_2 = select(abs(_wgslsmith_div_i32(select(u_input.b, 0i, var_0.x), firstLeadingBit(global0.a.a))), -19769i, func_1(~var_1.b.a, ~(~vec2<i32>(-2147483647i, global0.a.a)), Struct_3(vec2<f32>(-841f, -740f), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))).x) | -23i;
    let var_3 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1709f))) < 319f) == !global0.c.x;
    var_2 = ~_wgslsmith_mult_i32(-1i, -(~global0.a.a) & var_1.b.a);
    var var_4 = global0.b;
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.x + var_5.a.x), u_input.d, -(~(-abs(0i))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.b.b.x, u_input.c, ~74297u), ~_wgslsmith_mod_vec3_u32(~u_input.e, u_input.e)));
}

