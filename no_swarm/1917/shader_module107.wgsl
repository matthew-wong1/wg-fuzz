struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: vec4<i32> = vec4<i32>(497i, 0i, 13142i, 26773i);

var<private> global3: Struct_3;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    global1 = !(true & (1u != u_input.a.x));
    var var_0 = false;
    var var_1 = 1u;
    var var_2 = vec4<bool>(global3.a.b.x, global3.a.b.x, false, true);
    var var_3 = ~(~abs(abs(countOneBits(vec4<u32>(u_input.b.x, 4294967295u, 0u, 0u)))));
    return 39627i;
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-global3.c, 24892i, ~(func_3() | global3.c), global3.c), _wgslsmith_div_vec4_i32(select(~vec4<i32>(global2.x, 0i, 24356i, global2.x), vec4<i32>(global2.x, 1i, global3.c, -2147483647i) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 1347u) % vec4<u32>(32u)), false) << (vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.b.x), ~u_input.b.x, ~u_input.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global2.x, 1i, 0i, global2.x), select(vec4<i32>(global2.x, -8849i, -67569i, global3.c), vec4<i32>(global3.c, global3.c, global2.x, -2147483647i), true) | vec4<i32>(17387i, global3.c, global3.c, global2.x))));
    let var_0 = min(~(~global3.c), select(0i, firstTrailingBit(~global3.c), true));
    var var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 0u, 1u, 11420u), vec4<u32>(max(u_input.b.x, u_input.b.x), u_input.b.x, firstLeadingBit(43577u), u_input.b.x)), _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(20277u, 1u, u_input.b.x, 82906u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(20412u, u_input.a.x, 6362u, 4294967295u) << (vec4<u32>(u_input.a.x, 42465u, 26847u, 30365u) % vec4<u32>(32u)), vec4<u32>(0u, 12798u, u_input.b.x, 4294967295u) >> (vec4<u32>(4294967295u, u_input.b.x, 0u, 64789u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(min(firstTrailingBit(vec4<u32>(0u, u_input.b.x, 28803u, 1u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a.x))), ~vec4<u32>(u_input.b.x, 33908u, u_input.a.x, 38533u))));
    let var_2 = Struct_2(-(firstLeadingBit(~vec4<i32>(global3.c, 17677i, 2147483647i, -11903i)) << ((countOneBits(vec4<u32>(22333u, 0u, 2595u, 12082u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, var_1.x, 0u), vec4<u32>(42169u, 4294967295u, var_1.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.a), _wgslsmith_f_op_f32(max(global3.a.a, global3.b))) + global3.b), global3.a.c.wxz, global3.a.c), 573f);
    var_1 = vec4<u32>(13859u, ~var_1.x, 5810u, (7233u >> (abs(~var_1.x) % 32u)) | _wgslsmith_dot_vec3_u32(~var_1.wzx, u_input.a));
    return Struct_3(global3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a - global3.a.a) * _wgslsmith_f_op_f32(floor(var_2.b.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a.a, -1134f))) + global3.a.a))), firstTrailingBit(_wgslsmith_add_i32(29868i | -global3.c, firstLeadingBit(global2.x) << (u_input.b.x % 32u))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global1 = arg_0.b.x;
    var var_0 = func_2();
    global1 = global3.a.b.x && !arg_0.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, arg_0.a, _wgslsmith_f_op_f32(trunc(-546f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1529f, _wgslsmith_f_op_f32(global3.b * 1136f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.xz), var_1.yz, global3.a.c.x | false)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    var var_1 = func_1(global3.a);
    let var_2 = func_2().a;
    global3 = func_1(global3.a);
    var var_3 = vec4<i32>(~(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2.yx, global2.wz), -32526i & global3.c)), ~(_wgslsmith_mod_i32(global2.x, -59154i) & 2147483647i), firstLeadingBit(-41214i), (global3.c << (abs(~u_input.a.x) % 32u)) << (71748u % 32u));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f * var_1.b))))), global3.a.a);
    let var_5 = vec2<bool>(true, var_2.b.x);
    var var_6 = 4294967295u;
    global1 = 331f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a))) + var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(334f, var_1.a.a, -695f))) - vec3<f32>(-1083f, -1800f, 1746f)))), u_input.a.x, vec2<u32>(countOneBits(min(max(u_input.b.x, u_input.a.x), u_input.b.x)), ~abs(1u & u_input.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(431f, -1316f))) + vec2<f32>(var_1.a.a, 1672f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, var_1.a.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_1.b)))))));
}

