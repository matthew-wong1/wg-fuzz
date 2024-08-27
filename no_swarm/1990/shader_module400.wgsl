struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(92745u, 0u, 49736u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> bool {
    global0 = Struct_2(global0.a);
    global0 = arg_1.a;
    let var_0 = !(!arg_2);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.e, u_input.e) << (countOneBits(_wgslsmith_mult_u32(u_input.c, u_input.c)) % 32u), u_input.b) | 4576i;
    return all(vec4<bool>((_wgslsmith_div_f32(arg_3, arg_3) == -336f) & var_0, false, arg_2, false));
}

fn func_3() -> u32 {
    var var_0 = 963f;
    global0 = Struct_2(vec4<u32>(_wgslsmith_add_u32(44975u, _wgslsmith_div_u32(u_input.c, ~38190u)), global0.a.x, _wgslsmith_dot_vec4_u32(global0.a, global0.a), ~(~_wgslsmith_mod_u32(u_input.c, u_input.c))));
    global0 = Struct_2(abs(vec4<u32>(abs(global0.a.x), u_input.c, 4294967295u | global0.a.x, u_input.c)));
    var var_1 = select(~vec4<i32>(-(~u_input.b), 43615i, _wgslsmith_add_i32(~1i, 1i), i32(-1i) * -1i), vec4<i32>(0i, 1i, 1i, 0i | (_wgslsmith_div_i32(u_input.d, u_input.d) >> (0u % 32u))), true);
    var_1 = _wgslsmith_mod_vec4_i32(~select(vec4<i32>(u_input.a.x, 27822i, u_input.d, u_input.e) ^ vec4<i32>(0i, u_input.e, 1i, u_input.d), -vec4<i32>(2147483647i, -11279i, 18232i, u_input.d), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)) & -(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_1.x, var_1.x, u_input.e), vec4<i32>(var_1.x, 631i, 19891i, var_1.x))), -vec4<i32>(~(-u_input.a.x), -15468i, select(max(var_1.x, -1155i), _wgslsmith_mult_i32(var_1.x, 2195i), true), _wgslsmith_div_i32(countOneBits(var_1.x), i32(-1i) * -3765i)));
    return 4294967295u;
}

fn func_2() -> bool {
    let var_0 = func_3();
    global0 = Struct_2(min(global0.a, reverseBits(global0.a) >> (~_wgslsmith_div_vec4_u32(global0.a, global0.a) % vec4<u32>(32u))));
    let var_1 = Struct_4(Struct_2(vec4<u32>(61174u, _wgslsmith_sub_u32(firstTrailingBit(23081u), ~var_0), var_0, 36928u | ~var_0)));
    let var_2 = _wgslsmith_add_i32(1i, min(0i, i32(-1i) * -(~269i)));
    global0 = var_1.a;
    return !(!(true | !any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = select(vec2<bool>((_wgslsmith_mult_i32(u_input.e, 0i) != reverseBits(-28037i)) | true, !func_1(true, Struct_4(Struct_2(vec4<u32>(2272u, 85992u, 71171u, u_input.c))), false, -959f) | true), !select(vec2<bool>(any(vec2<bool>(false, false)), func_2()), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec3<bool>(true, false, false))), true && (global0.a.x <= abs(reverseBits(0u))));
    let var_2 = false;
    let var_3 = select(!vec4<bool>(false, true, !(!var_2), !any(vec2<bool>(var_1.x, var_2))), select(!(!vec4<bool>(var_2, var_1.x, var_2, var_1.x)), vec4<bool>(var_2, !(var_2 && var_2), !any(vec4<bool>(false, true, var_2, true)), all(vec4<bool>(var_1.x, false, var_2, true))), !(true | !var_1.x)), select(select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_2), vec4<bool>(var_2, true, var_2, var_1.x), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, var_1.x), var_2), select(vec4<bool>(true, var_2, true, true), vec4<bool>(var_2, false, var_1.x, var_1.x), vec4<bool>(true, false, true, var_1.x)), !vec4<bool>(var_1.x, true, var_1.x, false)), !select(vec4<bool>(var_2, var_2, true, false), vec4<bool>(false, true, var_2, true), true)), vec4<bool>(true, false, true, var_0.x >= ~u_input.c), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_2, true, var_1.x, true), true)), vec4<bool>(false, any(vec4<bool>(true, var_1.x, var_1.x, false)), false, var_2), select(select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(false, true, var_2, var_2), false), vec4<bool>(var_2, var_1.x, var_1.x, var_2), select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.x, true, false, var_2), vec4<bool>(false, false, true, true))))));
    let var_4 = _wgslsmith_clamp_vec3_i32(max(select(~abs(u_input.a), ~u_input.a, func_1(true, Struct_4(Struct_2(global0.a)), var_1.x, _wgslsmith_f_op_f32(max(1000f, -868f)))), u_input.a >> (vec3<u32>(u_input.c << (var_0.x % 32u), u_input.c, global0.a.x) % vec3<u32>(32u))), u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec2_i32(-abs(u_input.a.yx), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_4.zx, var_4.zz), _wgslsmith_mult_vec2_i32(u_input.a.yx, var_4.yz))), -(~vec2<i32>(u_input.e, u_input.d) & vec2<i32>(-1i, u_input.b))), 4294967295u, -5179i);
}

