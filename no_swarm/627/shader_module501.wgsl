struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(43957i), Struct_1(1i)), Struct_1(83871i), vec3<f32>(-945f, -511f, -826f), vec2<bool>(true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_3(global1.a, global1.a.a, global1.c, !(!global1.d));
    let var_1 = vec2<bool>((((global1.d.x & false) && (global1.d.x && var_0.d.x)) && !(!global1.d.x)) & global1.d.x, var_0.d.x);
    var var_2 = 66738u;
    let var_3 = -vec4<i32>(~(1i >> ((0u >> (1u % 32u)) % 32u)), var_0.a.a.a, ~reverseBits(_wgslsmith_mod_i32(-61830i, 80674i)), global1.a.b.a);
    var var_4 = Struct_4(global1.a);
    return select(vec4<bool>(!all(select(vec4<bool>(true, false, global1.d.x, var_1.x), vec4<bool>(true, var_0.d.x, true, true), vec4<bool>(var_0.d.x, var_0.d.x, global1.d.x, var_1.x))), var_0.d.x, !(!global1.d.x), var_1.x), select(!(!vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x)), !(!select(vec4<bool>(var_0.d.x, false, global1.d.x, true), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, var_1.x), false)), select(vec4<bool>(!var_1.x, select(false, false, true), all(vec4<bool>(false, global1.d.x, global1.d.x, false)), var_1.x || false), vec4<bool>(!var_1.x, false, true, false), !select(vec4<bool>(global1.d.x, global1.d.x, var_0.d.x, false), vec4<bool>(var_0.d.x, false, var_0.d.x, false), var_0.d.x))), vec4<bool>(!(any(var_0.d) & true), true, global1.d.x, true));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec2<i32>) -> Struct_4 {
    global0 = Struct_1(~(-54698i));
    let var_0 = abs(u_input.a);
    var var_1 = !select(func_3(arg_1.a.b.a, global1.a.a.a), func_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, global0.a), arg_1.a.b.a), arg_3.x), !global1.d.x);
    var var_2 = Struct_1(-firstTrailingBit(arg_0));
    global0 = global1.b;
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = vec2<u32>(u_input.a.x, u_input.a.x) & u_input.a;
    global0 = Struct_1(~abs(global1.a.a.a & 98867i));
    var var_1 = func_2(_wgslsmith_clamp_i32(firstLeadingBit(countOneBits(~(-1i))), global0.a | global0.a, _wgslsmith_sub_i32(global0.a, arg_1.b.a)), Struct_4(global1.a), global1.c.x, firstTrailingBit(abs(-vec2<i32>(arg_1.a.a.a, 0i)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), u_input.a) % vec2<u32>(32u))));
    let var_2 = Struct_3(var_1.a, func_2(var_1.a.b.a, Struct_4(var_1.a), -1000f, select((vec2<i32>(global0.a, -57903i) >> (u_input.a % vec2<u32>(32u))) << (~u_input.a % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(50857i, arg_1.b.a), vec2<i32>(47007i, arg_1.a.b.a), vec2<i32>(arg_0, arg_0)) & _wgslsmith_div_vec2_i32(vec2<i32>(1i, global1.b.a), vec2<i32>(arg_0, 0i)), !(!arg_1.d.x))).a.a, vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) - 1044f), global1.c.x), arg_1.d);
    var var_3 = Struct_1(-40006i);
    return StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-40305i, 33094i), var_1.a.b.a), 0i), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(41923u, 1672u, var_0.x)), u_input.a.x), max(vec3<u32>(u_input.a.x, 1u, var_0.x), abs(vec3<u32>(689u, u_input.a.x, 87715u)))), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 4786u), ~vec4<u32>(57813u, 43035u, var_0.x, 27435u)), _wgslsmith_mult_u32(abs(var_0.x), var_0.x << (u_input.a.x % 32u)))), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.a, -5939i, -2147483647i, global0.a)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.b.a, 2147483647i, -96584i, global1.b.a), vec4<i32>(-14862i, global1.a.b.a, global1.b.a, global0.a), vec4<i32>(-2147483647i, global1.b.a, 57612i, 0i)), select(vec4<i32>(-5047i, -1i, -2147483647i, 7447i), vec4<i32>(-1i, -17941i, global0.a, 4632i), false))), Struct_3(global1.a, global1.b, global1.c, vec2<bool>(!global1.d.x, -1i >= ~global0.a)));
}

