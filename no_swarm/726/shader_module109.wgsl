struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-169i, i32(-2147483648));

var<private> global1: f32 = -356f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.d), select(~u_input.a.zx, _wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(u_input.d.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.d.x)), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(true, true)) ^ ~vec2<u32>(firstLeadingBit(594u), u_input.a.x), reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 67962u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(69175u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x)), 10666u))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1719f, _wgslsmith_f_op_f32(f32(-1f) * -1130f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-143f)) + 443f));
    global0 = select(max(select(u_input.b.yy << (~u_input.a.zz % vec2<u32>(32u)), countOneBits(abs(u_input.b.yx)), false), _wgslsmith_div_vec2_i32(u_input.b.zz, u_input.b.yz)), ~u_input.b.yy, true);
    let var_1 = vec3<i32>(u_input.b.x, -u_input.c, -24308i);
    var var_2 = firstTrailingBit(vec2<i32>(-min(-1i, -global0.x), global0.x));
    return !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), -2147483647i < u_input.b.x)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = -2008f;
    var var_1 = arg_0.c;
    var var_2 = -var_1.d;
    let var_3 = all(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), any(vec2<bool>(true, true)))));
    var var_4 = Struct_1(arg_0.d.a, -2471i, vec4<u32>(abs(u_input.d.x), ~4294967295u, u_input.a.x, arg_0.a | select(var_1.c.x, 21624u, var_3)), abs(-39354i) >> (firstLeadingBit(u_input.a.x) % 32u));
    return ~_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.c.c.x, var_4.c.x), ~0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = arg_3;
    var var_1 = func_3(arg_3);
    global1 = 897f;
    global0 = -((_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.b.yy), var_0.d.a.ww ^ u_input.b.yx) >> (u_input.a.yz % vec2<u32>(32u))) & -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(arg_3.d.a.yx, vec2<i32>(arg_3.c.a.x, global0.x)), _wgslsmith_div_vec2_i32(arg_3.c.a.yx, arg_3.d.a.zw)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) + -240f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1209f)), -1000f, true)))))));
    return StorageBuffer(var_0.d.b, ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, 3700i), reverseBits(-22458i)), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 5771i)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1864f;
    global0 = -firstLeadingBit(u_input.b.yx);
    let var_0 = func_1();
    global0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xz, vec2<i32>(u_input.c, global0.x)), vec2<i32>(global0.x, ~_wgslsmith_mod_i32(-880i, -61485i)));
    var var_1 = vec2<u32>(81273u, u_input.a.x);
    let var_2 = Struct_2(1u, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1928f * 309f))), -449f)), -722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) - _wgslsmith_f_op_f32(f32(-1f) * -1284f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f - -785f)), -725f)), Struct_1(-reverseBits(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 2147483647i))), 19178i, ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, 93111u), select(vec4<u32>(u_input.d.x, 1u, 1u, var_1.x), vec4<u32>(4294967295u, var_1.x, u_input.d.x, var_1.x), vec4<bool>(false, false, false, var_0.x))), select(_wgslsmith_div_i32(7672i, -39815i), _wgslsmith_add_i32(u_input.b.x | u_input.b.x, u_input.c), (false & var_0.x) | var_0.x)), Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, u_input.b.x, global0.x, -1i), max(vec4<i32>(1i, -1i, u_input.c, -2147483647i), vec4<i32>(-1i, u_input.b.x, u_input.c, global0.x))), ~abs(vec4<i32>(-36404i, -2147483647i, u_input.b.x, global0.x))), _wgslsmith_add_i32(u_input.c, -2147483647i), (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, var_1.x), vec4<u32>(0u, u_input.a.x, u_input.d.x, var_1.x)) >> ((vec4<u32>(u_input.a.x, u_input.d.x, 26790u, u_input.a.x) & vec4<u32>(var_1.x, u_input.d.x, u_input.a.x, 12737u)) % vec4<u32>(32u))) << (max(~vec4<u32>(var_1.x, u_input.a.x, 78041u, 64850u), vec4<u32>(60895u, 1u, 1u, 11942u)) % vec4<u32>(32u)), u_input.b.x));
    let var_3 = var_2.d;
    let x = u_input.a;
    s_output = func_2(~(~max(vec3<u32>(var_2.a, var_1.x, var_3.c.x), var_3.c.yzz)) ^ select(vec3<u32>(3874u, ~var_1.x, 18681u & u_input.a.x), var_3.c.wwy, var_0.x), ~var_3.d, var_3, var_2);
}

