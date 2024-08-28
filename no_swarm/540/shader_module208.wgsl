struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<bool> {
    global0 = Struct_1(2147483647i, arg_0.b, global0.a, 823f);
    global0 = arg_0;
    var var_0 = arg_0;
    var var_1 = arg_0;
    return !vec3<bool>(any(vec2<bool>(true, true)), true, false && (true && any(vec3<bool>(false, false, true))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, -1428i, global0.c, arg_2.x), arg_2, min(arg_2, vec4<i32>(u_input.a.x, arg_2.x, arg_2.x, -2147483647i))), _wgslsmith_mod_vec4_i32((u_input.a ^ arg_2) >> ((vec4<u32>(arg_3, u_input.b, arg_3, arg_3) << (vec4<u32>(u_input.b, arg_3, 53724u, arg_3) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(0i, ~20504i, global0.a >> (55553u % 32u), arg_2.x >> (37344u % 32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1)))), ~_wgslsmith_sub_i32(-8836i, 0i) & global0.c, _wgslsmith_f_op_f32(1027f + global0.d));
    let var_1 = var_0;
    let var_2 = false;
    return countOneBits(~u_input.b);
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(0u, u_input.b, 1u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 27876u)))), 0u);
    let var_1 = Struct_1(global0.a & ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 0i, global0.a), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b)))), firstTrailingBit(reverseBits(global0.a)), global0.b);
    var var_2 = false;
    var var_3 = var_1;
    var var_4 = all(func_2(var_1, u_input.a.yx));
    return func_3(false, -176f, ~max(u_input.a, ~u_input.a), (76964u & _wgslsmith_dot_vec3_u32(vec3<u32>(54480u, u_input.b, 1u), vec3<u32>(var_0, u_input.b, 40809u))) << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 0u), vec3<u32>(u_input.b, var_0, var_0)), reverseBits(1u)) % 32u)) & ~u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(func_2(arg_0, vec2<i32>(-1i, arg_0.c)).x, false, true);
    var_0 = !(!select(func_2(Struct_1(-2147483647i, global0.d, 0i, arg_0.b), -vec2<i32>(u_input.a.x, 2147483647i)), func_2(arg_0, _wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.a.wz)), (u_input.b ^ 0u) == 1u));
    let var_1 = ~(-_wgslsmith_clamp_i32(-max(28385i, arg_0.a), max(max(u_input.a.x, arg_0.c), min(u_input.a.x, 0i)), _wgslsmith_mod_i32(1i, firstLeadingBit(8627i))));
    var_0 = func_2(arg_0, _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(-vec2<i32>(35365i, u_input.a.x), abs(vec2<i32>(21782i, 2147483647i))), ~(_wgslsmith_mult_vec2_i32(u_input.a.wx, u_input.a.wx) >> ((vec2<u32>(1u, 1u) & vec2<u32>(u_input.b, 69200u)) % vec2<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_div_i32(i32(-1i) * -max(var_1, arg_0.c), ~(-28149i)), 1720f, -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.b)), -1714f, any(var_0.zy))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1i, _wgslsmith_f_op_f32(min(-1295f, 1291f)), u_input.a.x, 582f);
    global0 = func_4(Struct_1(-u_input.a.x, 813f, ~(-56597i), global0.b), all(vec4<bool>(true && any(vec3<bool>(false, false, true)), -404f == _wgslsmith_f_op_f32(sign(-865f)), true, func_1(true, false) >= ~51256u)), Struct_1(select(_wgslsmith_mult_i32(_wgslsmith_sub_i32(11161i, global0.c), global0.a), 62057i, false), _wgslsmith_div_f32(-834f, _wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(ceil(677f)))), firstTrailingBit(global0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-900f, _wgslsmith_f_op_f32(-global0.d)))));
    let var_0 = vec2<bool>(!((u_input.a.x <= abs(-32154i)) != true), false);
    var var_1 = func_4(Struct_1(i32(-1i) * -18059i, global0.b, _wgslsmith_div_i32(firstTrailingBit(-44380i), -global0.a), _wgslsmith_f_op_f32(global0.b + -2040f)), true, func_4(func_4(Struct_1(_wgslsmith_add_i32(-53345i, u_input.a.x), 550f, -1i, 1000f), 1u <= ~u_input.b, func_4(Struct_1(-1i, global0.d, 0i, 596f), global0.c > -8022i, Struct_1(-31047i, global0.d, -2147483647i, -1757f))), var_0.x, func_4(func_4(func_4(Struct_1(u_input.a.x, global0.b, global0.a, -642f), var_0.x, Struct_1(global0.a, -972f, 0i, 1486f)), all(vec4<bool>(var_0.x, true, false, var_0.x)), Struct_1(-38198i, global0.d, -2147483647i, global0.b)), func_2(func_4(Struct_1(-2147483647i, global0.b, global0.c, 158f), false, Struct_1(-4171i, -581f, global0.a, 490f)), vec2<i32>(2147483647i, -2147483647i)).x, Struct_1(_wgslsmith_add_i32(2147483647i, global0.a), global0.d, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-global0.d)))));
    let var_2 = true;
    var var_3 = !func_2(func_4(Struct_1(_wgslsmith_clamp_i32(2147483647i, -21957i, 1i), global0.b, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(abs(1006f))), u_input.a.x > firstTrailingBit(global0.a), Struct_1(-9388i, -927f, -2147483647i >> (u_input.b % 32u), _wgslsmith_f_op_f32(786f - var_1.b))), _wgslsmith_sub_vec2_i32(firstLeadingBit(min(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-1i, -39i))), u_input.a.yz)).yx;
    let var_4 = vec4<bool>(!var_3.x, true, !(1267u < _wgslsmith_add_u32(_wgslsmith_mult_u32(22631u, 8353u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 101346u)))), var_2);
    var_3 = vec2<bool>(var_3.x, var_0.x);
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1153f, u_input.b);
}

