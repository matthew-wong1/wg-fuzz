struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<i32>(2147483647i, -8749i, 929i), 40117u, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    global0 = Struct_1(select(select(!vec3<bool>(false, false, global0.d), select(select(vec3<bool>(true, global0.a.x, global0.d), global0.a, global0.a.x), vec3<bool>(true, global0.a.x, global0.d), true), !vec3<bool>(global0.d, global0.a.x, global0.a.x)), global0.a, true), global0.b, arg_1, ~(~69354u) == arg_1);
    let var_0 = vec3<i32>(~global0.b.x, 4500i, -(~global0.b.x & ~(-40433i)));
    var var_1 = Struct_1(global0.a, vec3<i32>(global0.b.x, ~abs(~(-32957i)), max(1i, -countOneBits(var_0.x))), 24826u, false);
    return reverseBits(1i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = abs(u_input.c);
    let var_1 = arg_0;
    global0 = Struct_1(vec3<bool>(true, all(vec3<bool>(any(vec4<bool>(false, var_1.a.x, false, global0.d)), !var_1.d, true)), var_1.d), vec3<i32>(func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(52789u, var_1.c, u_input.c.x), u_input.c) & vec3<u32>(1u, var_0.x, var_1.c), _wgslsmith_add_u32(~4294967295u, ~1u)), abs(global0.b.x), 2800i), 27466u, true);
    var var_2 = global0.a.xx;
    var var_3 = var_0.xx;
    return arg_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = func_2(Struct_1(global0.a, firstLeadingBit(~countOneBits(vec3<i32>(u_input.a, -9754i, u_input.a))), global0.c, global0.a.x));
    let var_1 = !var_0.a;
    global0 = func_2(func_2(Struct_1(!(!vec3<bool>(true, var_0.d, var_1.x)), vec3<i32>(u_input.a, func_3(u_input.c, 1u), ~global0.b.x), _wgslsmith_div_u32(u_input.b, 12303u) << (~21786u % 32u), !var_1.x)));
    let var_2 = func_2(Struct_1(vec3<bool>(global0.c < (global0.c >> (arg_0.x % 32u)), var_1.x, true), var_0.b << (u_input.c % vec3<u32>(32u)), firstTrailingBit(global0.c << (~global0.c % 32u)), true));
    var var_3 = Struct_1(vec3<bool>(!global0.a.x, any(select(var_1, var_2.a, var_1)), true), vec3<i32>(~(-1i), -(var_0.b.x & 26453i), 15014i) ^ ~vec3<i32>(u_input.a, ~u_input.a, 59242i), u_input.c.x, !all(!vec4<bool>(var_2.a.x, global0.a.x, false, true)) & true);
    return firstTrailingBit(var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(vec3<u32>(u_input.c.x, 43422u, 4294967295u), vec2<f32>(-662f, 810f)), -vec3<i32>(16154i, -1i, global0.b.x)), vec3<i32>(-1i) * -global0.b), 24459u, !global0.a.x);
    global0 = Struct_1(vec3<bool>(any(!vec2<bool>(global0.a.x, false)), (_wgslsmith_mod_u32(0u, global0.c) < _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 4294967295u, 19477u), u_input.c)) && global0.d, select(_wgslsmith_mult_u32(global0.c, 67843u) < 0u, any(global0.a.zx), _wgslsmith_mod_i32(global0.b.x, 12563i) != -u_input.a)), global0.b, 3965u, !(!(!all(global0.a.xy))));
    var var_0 = true;
    let var_1 = Struct_1(!vec3<bool>(global0.d, !(!global0.a.x), false), vec3<i32>(19255i, abs(_wgslsmith_clamp_i32(u_input.a >> (9555u % 32u), countOneBits(1i), u_input.a)), 0i), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_mult_vec2_u32(u_input.c.xx, u_input.c.xz)), false);
    let var_2 = Struct_1(select(select(vec3<bool>(any(vec2<bool>(var_1.d, true)), !var_1.a.x, true), vec3<bool>(true, true, true), all(global0.a.zy)), var_1.a, global0.a), firstTrailingBit(var_1.b), 35623u, false);
    global0 = func_2(Struct_1(vec3<bool>(false, true == any(vec4<bool>(false, true, true, false)), !global0.a.x), var_2.b, 4294967295u, any(vec4<bool>(select(var_1.d, global0.d, true), var_1.a.x, any(vec3<bool>(true, false, var_2.a.x)), false))));
    global0 = var_1;
    let var_3 = var_2;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1240f)), vec4<i32>(func_2(func_2(func_2(Struct_1(var_3.a, vec3<i32>(-34445i, var_3.b.x, var_3.b.x), 1u, var_3.d)))).b.x, -53671i, _wgslsmith_add_i32(~func_1(u_input.c, vec2<f32>(1000f, -873f)).x, ~(-1i)), -58592i));
}

