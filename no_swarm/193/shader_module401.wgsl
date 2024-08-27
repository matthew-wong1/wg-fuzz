struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(1u, 328f, vec3<f32>(-1175f, 234f, 1000f), vec2<u32>(4294967295u, 21098u)), -4745i, 1u);

var<private> global1: vec4<i32> = vec4<i32>(0i, -6448i, 1i, 1i);

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = vec2<i32>(arg_0.x, _wgslsmith_add_i32(-30051i >> (global0.a.a % 32u), ~(2147483647i << (u_input.a.x % 32u))) ^ abs(global0.b));
    global1 = ~vec4<i32>(firstTrailingBit(global0.b), -1i, firstTrailingBit(abs(var_0.x)), 0i);
    return global0.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = global1.xy ^ (select(vec2<i32>(18326i, global1.x), _wgslsmith_add_vec2_i32(vec2<i32>(4738i, -2147483647i), global1.yw) >> (~global0.a.d % vec2<u32>(32u)), true) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(44758u, 18779u), firstLeadingBit(arg_1.a.d) | vec2<u32>(85601u, 90412u)) % vec2<u32>(32u)));
    global2 = select(!(!(!(!vec3<bool>(global2.x, global2.x, false)))), vec3<bool>(any(!select(vec3<bool>(false, global2.x, true), vec3<bool>(false, true, global2.x), global2.x)), global2.x, !(!global2.x) || global2.x), !select(!(!vec3<bool>(true, true, global2.x)), !(!vec3<bool>(false, true, global2.x)), !vec3<bool>(global2.x, true, global2.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.c.x)))));
    global0 = Struct_3(arg_3.a, -(6613i ^ (i32(-1i) * -global0.b)), 1u);
    let var_2 = arg_2.a.d.x;
    return arg_3.a.d.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    global0 = Struct_3(global0.a, global1.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, ~(~1u)), func_3(global0.a.d | firstTrailingBit(u_input.a.xx), Struct_3(Struct_1(1829u, global0.a.b, vec3<f32>(global0.a.c.x, global0.a.c.x, -1053f), global0.a.d), -1i, 1u), Struct_2(Struct_1(u_input.a.x, global0.a.c.x, global0.a.c, global0.a.d)), Struct_2(global0.a))));
    let var_0 = global0.a.c.x;
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global0.c, 56127u, global0.c), vec4<u32>(0u, global0.c, 0u, u_input.a.x), vec4<u32>(0u, 1u, 0u, 67100u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(14159u, 4294967295u, global0.c, u_input.a.x), vec4<u32>(global0.c, 0u, 94822u, global0.c) & vec4<u32>(global0.c, global0.c, global0.a.a, 1u))), vec4<u32>(u_input.a.x, 0u, ~(~countOneBits(u_input.a.x)), global0.c));
    var_1 = u_input.a.x;
    let var_2 = global2.xz;
    return Struct_4(global0.a.c, -42400i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.c.x - global0.a.c.x), -865f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.c.x), -2197f)))), Struct_1(u_input.a.x, global0.a.c.x, vec3<f32>(137f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.c.x * global0.a.c.x), 1f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1064f)), vec2<u32>(_wgslsmith_clamp_u32(1u, ~u_input.a.x, func_3(global0.a.d, Struct_3(global0.a, -47091i, 1u), Struct_2(Struct_1(0u, global0.a.b, global0.a.c, vec2<u32>(97468u, 0u))), Struct_2(Struct_1(32494u, -1606f, vec3<f32>(global0.a.c.x, global0.a.c.x, global0.a.c.x), global0.a.d)))), u_input.a.x)), min(0u, func_3(~global0.a.d << (select(vec2<u32>(u_input.a.x, global0.a.d.x), vec2<u32>(1u, 10119u), global2.x) % vec2<u32>(32u)), Struct_3(global0.a, 1i, u_input.a.x), Struct_2(Struct_1(4294967295u, 1192f, global0.a.c, vec2<u32>(u_input.a.x, global0.c))), Struct_2(Struct_1(4294967295u, global0.a.b, global0.a.c, u_input.a.xx)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = -2147483647i;
    var var_1 = global0.a.a;
    var var_2 = arg_3;
    var var_3 = _wgslsmith_mult_vec3_u32(u_input.a, ~_wgslsmith_div_vec3_u32(min(u_input.a, u_input.a) >> (vec3<u32>(58212u, global0.a.a, 58641u) % vec3<u32>(32u)), abs(u_input.a)));
    global2 = vec3<bool>(true, all(!select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), true)) | true, false);
    return select(!(!select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, true), !global2.x)), !vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, !global2.x, true));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: f32) -> bool {
    return true;
}

fn func_6(arg_0: vec3<i32>, arg_1: bool) -> Struct_2 {
    let var_0 = vec2<i32>(global0.b, global0.b);
    let var_1 = select(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4793u), vec4<u32>(global0.a.a, 0u, 1u, global0.a.d.x)), min(vec4<u32>(1u, 37693u, global0.a.d.x, 70220u), vec4<u32>(global0.a.d.x, u_input.a.x, 3906u, u_input.a.x))), ~vec4<u32>(~62727u, u_input.a.x, 1u, _wgslsmith_div_u32(u_input.a.x, global0.a.d.x)), select(select(vec4<bool>(true, global2.x, arg_1, global2.x), vec4<bool>(arg_1, false, true, false), global2.x), vec4<bool>(true, true, !global2.x, arg_1), (global1.x ^ 145i) < select(global1.x, global1.x, true))) ^ ~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.a.d.x, global0.c, u_input.a.x), max(vec4<u32>(global0.a.a, u_input.a.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x))));
    var var_2 = _wgslsmith_sub_vec4_i32(min(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-59432i, var_0.x, 30900i, 0i), vec4<i32>(-1i, 25409i, var_0.x, var_0.x), arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, -31774i, 0i), vec4<i32>(global1.x, global0.b, var_0.x, 14955i))), vec4<i32>(max(var_0.x, 2147483647i), 38106i, -41151i, -var_0.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(var_0.x, 25493i)), 28401i, -2147483647i, global0.b) | _wgslsmith_mod_vec4_i32(vec4<i32>(48200i, var_0.x, var_0.x, arg_0.x), select(vec4<i32>(var_0.x, arg_0.x, global0.b, arg_0.x), vec4<i32>(-59773i, var_0.x, -1i, -36413i), arg_1))), ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, 0i, var_0.x)), abs(vec4<i32>(var_0.x, var_0.x, -1i, -2147483647i))) ^ (vec4<i32>(1i, -23634i, global1.x, ~24046i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(50327u, 70110u, 4294967295u, global0.c) >> (vec4<u32>(u_input.a.x, 55365u, var_1.x, var_1.x) % vec4<u32>(32u)), firstLeadingBit(var_1), var_1) % vec4<u32>(32u))));
    global0 = Struct_3(Struct_1(36757u, -1000f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.c) + _wgslsmith_f_op_vec3_f32(-global0.a.c)), vec3<f32>(global0.a.b, _wgslsmith_f_op_f32(sign(-139f)), func_2(var_2.zwx).a.x))), ~_wgslsmith_clamp_vec2_u32(~u_input.a.xy, var_1.zz & vec2<u32>(23057u, var_1.x), min(u_input.a.zx, global0.a.d))), _wgslsmith_dot_vec4_i32(~max(~vec4<i32>(5494i, 26224i, global0.b, -4303i), vec4<i32>(global0.b, 2147483647i, -7178i, global0.b)), ~(firstTrailingBit(vec4<i32>(var_0.x, -1i, 1i, -27664i)) >> (var_1 % vec4<u32>(32u)))), ~(~_wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(14488u, 21114u))));
    global1 = ~(select(~vec4<i32>(var_2.x, var_0.x, 0i, arg_0.x), vec4<i32>(_wgslsmith_add_i32(-15639i, arg_0.x), _wgslsmith_div_i32(var_0.x, var_0.x), -39465i, var_0.x), (arg_1 | global2.x) || func_4(Struct_4(vec3<f32>(-2059f, -665f, global0.a.c.x), -24263i, global0.a.c, global0.a, u_input.a.x), Struct_1(var_1.x, 980f, vec3<f32>(-2138f, 1271f, 1114f), global0.a.d), vec4<f32>(-1000f, global0.a.c.x, global0.a.b, global0.a.b), Struct_2(global0.a)).x) ^ _wgslsmith_div_vec4_i32(-(vec4<i32>(-37595i, global0.b, arg_0.x, var_0.x) >> (vec4<u32>(4294967295u, 18590u, var_1.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0.b, global0.b, var_0.x), vec4<i32>(63752i, arg_0.x, 6982i, var_0.x)), ~vec4<i32>(-17835i, 2147483647i, -23900i, var_0.x))));
    return Struct_2(Struct_1(~global0.c, _wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1644f, -564f, 564f) * global0.a.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.x, 1407f, 397f)), func_4(func_2(global1.wwz), global0.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1122f, -480f, global0.a.c.x, global0.a.b), vec4<f32>(871f, global0.a.b, global0.a.b, global0.a.b), vec4<bool>(false, arg_1, false, false))), Struct_2(global0.a)))), ~((var_1.xw >> (global0.a.d % vec2<u32>(32u))) & vec2<u32>(global0.a.a, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<i32>(~(-func_1(vec4<i32>(2147483647i, 21836i, global0.b, -1i))), 1i, 0i), func_5(-(func_1(vec4<i32>(global1.x, -44638i, global0.b, global0.b)) | ~global0.b), func_4(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b, global0.b, -28387i), vec3<i32>(-1i, 0i, global0.b))), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(trunc(2500f)), _wgslsmith_f_op_vec3_f32(-global0.a.c), ~global0.a.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2072f, -1000f, 456f, global0.a.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, 634f, -2014f, 583f) + vec4<f32>(1168f, global0.a.b, -628f, global0.a.c.x))), Struct_2(Struct_1(u_input.a.x, 555f, global0.a.c, global0.a.d))), ~vec4<i32>(1i, _wgslsmith_clamp_i32(global1.x, -60347i, global0.b), -global1.x, -24836i), global0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b, 1227f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.b) * vec2<f32>(global0.a.c.x, var_0.a.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-179f, var_0.a.c.x) * global0.a.c.zx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, 342f))), !(!vec2<bool>(global2.x, false)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-848f, _wgslsmith_f_op_f32(step(1565f, 1160f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0.a.c.x)))), select(global2.yy, global2.zz, select(global2.zz, global2.yx, !global2.x)))), 25894i, global0.c);
}

