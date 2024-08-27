struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 75050u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4294967295u, 43568u, 1u), vec3<f32>(-110f, 679f, 1639f), vec3<f32>(-1013f, -1389f, -439f)), 0u, vec3<bool>(true, true, false), i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    return reverseBits(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(global1.a.b, vec4<u32>(18996u, 4294967295u, 41208u, 10815u)), ~min(global1.a.b, global1.a.b))) | vec4<u32>(24370u, 0u, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(49388u, 4294967295u, 4294967295u), vec3<u32>(29788u, global1.b, 0u)), ~vec3<u32>(global0.x, 41129u, global0.x) & global1.a.b.wzz), 1u);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = Struct_2(Struct_1(select(!select(arg_1.c, vec3<bool>(false, false, global1.c.x), arg_1.a.a.x), vec3<bool>(all(vec3<bool>(true, true, false)), true, !global1.c.x), global1.a.a.x), func_3(), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a.d, vec3<f32>(-1164f, arg_2, arg_2), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.d.x, global1.a.d.x, arg_2))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.c.x, global1.a.d.x, -1117f))), arg_1.a.c))), 8381u, vec3<bool>(false, arg_1.c.x & any(!arg_1.a.a.zx), any(vec2<bool>(any(arg_1.a.a.zz), global1.a.a.x))), -abs(reverseBits(62275i)));
    let var_1 = ~u_input.c;
    global1 = var_0;
    global0 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, 2829u), vec2<u32>(arg_0.x, 4294967295u))));
    let var_2 = -(2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.b, arg_1.b, 7082u), arg_1.b, arg_0.x, 1u), _wgslsmith_mult_vec4_u32(arg_1.a.b, ~vec4<u32>(0u, 11926u, var_0.a.b.x, 25708u))) % 32u));
    return true && !(!(!(arg_0.x >= 4294967295u)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = !select(vec4<bool>(true, true, true, true), !select(!vec4<bool>(global1.c.x, true, global1.c.x, true), select(vec4<bool>(arg_0.x, false, global1.a.a.x, true), vec4<bool>(global1.c.x, true, global1.c.x, true), vec4<bool>(false, false, false, global1.c.x)), arg_0.x), select(vec4<bool>(u_input.a > -1i, false, global1.a.b.x <= 61633u, func_2(global1.a.b.yzx, Struct_2(Struct_1(global1.c, global1.a.b, global1.a.c, vec3<f32>(140f, global1.a.d.x, global1.a.c.x)), 0u, global1.a.a, -1i), global1.a.c.x)), !(!vec4<bool>(arg_0.x, false, global1.c.x, false)), vec4<bool>(global1.c.x || false, false, func_2(vec3<u32>(global1.b, 3987u, u_input.b), Struct_2(global1.a, 6034u, vec3<bool>(arg_0.x, arg_0.x, global1.a.a.x), global1.d), global1.a.d.x), global1.a.a.x)));
    var var_1 = global1.a;
    var var_2 = Struct_1(vec3<bool>(all(var_0.wzz), !(!(var_0.x && var_0.x)), _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(var_1.b.x, 0u)) > _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 0u), _wgslsmith_mod_u32(global0.x, global0.x))), ~vec4<u32>(min(global0.x, 33331u), 43310u, ~1u, 63631u) ^ firstLeadingBit(vec4<u32>(0u, var_1.b.x | 1u, reverseBits(58852u), var_1.b.x)), var_1.c, global1.a.c);
    let var_3 = vec3<bool>(var_0.x, false || var_0.x, select(true, !(!var_0.x), u_input.b > (firstLeadingBit(u_input.b) | abs(1u))));
    let var_4 = ~vec4<i32>(-16928i, global1.d, 1i, _wgslsmith_clamp_i32(1i, global1.d, u_input.c)) >> (~var_2.b % vec4<u32>(32u));
    return ~var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(u_input.b, ~_wgslsmith_add_u32(func_1(global1.a.a.yy) & 1u, min(firstLeadingBit(28173u), 4294967295u)));
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global1.d, -27274i, u_input.a, -26741i)), vec4<i32>(-1i, u_input.a, u_input.a, 0i) | vec4<i32>(1131i, u_input.c, u_input.c, 12871i)), vec4<i32>(_wgslsmith_div_i32(u_input.c, global1.d), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, u_input.a, global1.d, 57125i), vec4<i32>(19586i, u_input.c, global1.d, -1i)), -2147483647i, u_input.a), global1.a.a.x), firstLeadingBit(~vec4<i32>(0i, u_input.c, -2147483647i, -29479i))), u_input.a, u_input.a, u_input.c);
    let var_1 = global1.a;
    global1 = Struct_2(Struct_1(vec3<bool>((-1154i < var_0.x) & (var_1.c.x >= 1114f), false, true), ~_wgslsmith_div_vec4_u32(var_1.b & var_1.b, _wgslsmith_div_vec4_u32(global1.a.b, vec4<u32>(4294967295u, u_input.b, 4766u, global1.a.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(349f, _wgslsmith_f_op_f32(-global1.a.d.x), var_1.c.x)), vec3<f32>(-231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - _wgslsmith_f_op_f32(trunc(var_1.d.x))), _wgslsmith_f_op_f32(-global1.a.d.x))), func_3().x, vec3<bool>(!var_1.a.x, var_1.a.x, true), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.zzy, vec3<i32>(-53709i, global1.d, var_0.x) | (var_0.wwy >> (var_1.b.zyx % vec3<u32>(32u)))), var_0.xxy));
    let var_2 = global1.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-423f)) + -854f) <= _wgslsmith_f_op_f32(ceil(global1.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-983f * -1219f));
}

