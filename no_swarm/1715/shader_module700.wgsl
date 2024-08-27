struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    global0 = !all(select(arg_0.wx, !arg_0.wy, arg_0.x));
    let var_0 = 880f;
    var var_1 = -275f;
    let var_2 = firstTrailingBit((vec2<u32>(~1u, u_input.b.x << (17791u % 32u)) << (vec2<u32>(1u, ~u_input.b.x) % vec2<u32>(32u))) ^ vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 67259u)), abs(select(0u, u_input.b.x, false))));
    global0 = _wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1327f)))) * var_0);
    return Struct_3(1u, Struct_1(~_wgslsmith_sub_u32(var_2.x, u_input.b.x) | var_2.x, var_0), vec2<u32>(~(var_2.x >> (0u % 32u)), _wgslsmith_mod_u32(~19942u, ~118113u)) & ~vec2<u32>(_wgslsmith_add_u32(0u, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 4294967295u)), vec3<i32>(_wgslsmith_sub_i32(-(~35693i), max(1i, _wgslsmith_add_i32(0i, 2147483647i))), abs(u_input.c.x), ~_wgslsmith_add_i32(countOneBits(u_input.a.x), _wgslsmith_mult_i32(0i, u_input.d))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(~0u, arg_2.b.b, ~(~(~(~arg_3.c))), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.d.x, -u_input.a.x, -u_input.c.x) ^ arg_3.d, ~_wgslsmith_clamp_vec3_i32(arg_3.d, ~vec3<i32>(arg_1.x, -2147483647i, -32965i), ~arg_3.d)));
    global0 = !all(vec3<bool>(true, true, true)) | true;
    let var_1 = Struct_1(29507u, arg_2.a.b.b);
    return Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(5595u, 10152u, 5991u), _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(var_1.a, 24086u, 43297u))) >> (u_input.b.x % 32u), var_1, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 37884u, var_1.a), u_input.b), 24384u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, countOneBits(arg_3.a)), var_0.c)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-12659i, ~arg_1.x, arg_0.x), u_input.a.wzy), vec3<i32>(2147483647i, _wgslsmith_add_i32(max(9508i, arg_0.x), _wgslsmith_mult_i32(u_input.a.x, arg_0.x)), -min(0i, -44561i)), arg_2.a.d << (~(~u_input.b) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = select(true, all(vec4<bool>(true, true, true, true)), (any(vec2<bool>(true, true)) || any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))) || all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)));
    global0 = false;
    let var_1 = _wgslsmith_sub_i32(arg_0.d.x, ~(-1i));
    global1 = var_1;
    global1 = firstTrailingBit(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))).d.x) ^ u_input.d;
    return min(50404u, u_input.b.x) <= u_input.b.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5) -> i32 {
    global1 = arg_1.c.a.x;
    var var_0 = all(vec2<bool>(!(any(vec2<bool>(true, true)) && select(false, true, true)), !func_4(func_3(vec2<i32>(arg_1.c.a.x, -38245i), vec2<i32>(0i, arg_1.a.a.x), Struct_4(Struct_3(arg_1.b.b.a, Struct_1(4294967295u, arg_0.x), arg_1.b.a.c, u_input.c.wyy), Struct_3(4294967295u, Struct_1(4294967295u, arg_0.x), vec2<u32>(u_input.b.x, 1u), arg_1.c.a.xzx)), arg_1.b.b))));
    let var_1 = all(select(!vec4<bool>(true, false, any(vec4<bool>(true, false, true, false)), true), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))));
    var var_2 = arg_1.b.a.d.x;
    var var_3 = -vec3<i32>(1i, -_wgslsmith_mult_i32(u_input.e, arg_1.b.b.d.x) >> (~max(37524u, arg_1.b.b.b.a) % 32u), -1300i);
    return abs(var_3.x) ^ func_1(vec4<bool>(var_1, !(arg_0.x > 304f), -1074f == arg_0.x, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, var_1))))).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(u_input.b.x <= ((1u | u_input.b.x) >> (u_input.b.x % 32u)), true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.d.x & func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1111f, 824f) - vec2<f32>(var_0.b.b, var_0.b.b)), Struct_5(Struct_2(vec4<i32>(16340i, -8609i, u_input.e, -35013i)), Struct_4(Struct_3(var_0.c.x, var_0.b, vec2<u32>(4294967295u, u_input.b.x), u_input.a.xzw), Struct_3(u_input.b.x, Struct_1(u_input.b.x, -709f), vec2<u32>(var_0.a, var_0.a), vec3<i32>(var_0.d.x, -1i, var_0.d.x))), Struct_2(vec4<i32>(2147483647i, 30453i, u_input.a.x, 3501i)))), u_input.d), ~u_input.a.x);
    let var_2 = var_0.a;
    var_0 = func_3(reverseBits(var_0.d.zx) | select(vec2<i32>(11108i, -1i) | u_input.a.xy, u_input.c.zx, select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true)), u_input.a.xx, Struct_4(Struct_3(~0u, var_0.b, _wgslsmith_div_vec2_u32(vec2<u32>(14014u, var_0.a), ~var_0.c), u_input.c.yzw | vec3<i32>(-2147483647i, var_1, -1i)), func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), Struct_3(~var_0.b.a, Struct_1(u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<u32>(u_input.b.x & ~u_input.b.x, var_0.b.a), func_3(-(u_input.a.yy << (var_0.c % vec2<u32>(32u))), ~var_0.d.xx, Struct_4(Struct_3(1u, var_0.b, vec2<u32>(32630u, 1u), vec3<i32>(var_0.d.x, -32458i, -19697i)), Struct_3(1u, Struct_1(u_input.b.x, 296f), u_input.b.xz, vec3<i32>(-1i, var_0.d.x, 0i))), Struct_3(select(u_input.b.x, 41420u, true), func_3(var_0.d.yy, vec2<i32>(-2147483647i, -9358i), Struct_4(Struct_3(var_0.b.a, var_0.b, vec2<u32>(49426u, var_0.c.x), var_0.d), Struct_3(26434u, Struct_1(u_input.b.x, -435f), var_0.c, var_0.d)), Struct_3(u_input.b.x, var_0.b, vec2<u32>(17517u, var_0.c.x), vec3<i32>(var_0.d.x, 61726i, u_input.d))).b, vec2<u32>(0u, 0u), vec3<i32>(9323i, var_0.d.x, 1i) >> (u_input.b % vec3<u32>(32u)))).d));
    var_0 = Struct_3(u_input.b.x, func_3(var_0.d.zx, vec2<i32>(~(-var_1), var_1), Struct_4(Struct_3(min(44029u, 43866u), Struct_1(10904u, 171f), vec2<u32>(var_0.b.a, u_input.b.x), vec3<i32>(var_0.d.x, var_0.d.x, -3200i) ^ var_0.d), func_1(vec4<bool>(true, true, true, true))), Struct_3(~(~4746u), func_1(vec4<bool>(true, true, true, true)).b, var_0.c, -countOneBits(var_0.d))).b, min(u_input.b.zz, vec2<u32>(~(~var_0.c.x), var_0.b.a)), u_input.a.yyy);
    var var_3 = ~firstLeadingBit(select(var_0.c, min(~u_input.b.zy, vec2<u32>(1u, 4294967295u)), any(vec2<bool>(false, false))));
    var_3 = min(vec2<u32>(1u, var_0.b.a) & u_input.b.zx, _wgslsmith_mult_vec2_u32(select(~(var_0.c | var_0.c), var_0.c, !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), var_0.c));
    var var_4 = _wgslsmith_div_vec2_u32(u_input.b.yy, ~(~vec2<u32>(firstTrailingBit(var_0.a), ~var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-701f, var_0.b.b, vec4<u32>(~(~var_4.x) >> (~36381u % 32u), ~var_3.x >> (81479u % 32u), _wgslsmith_mult_u32(func_3(u_input.c.yx, ~vec2<i32>(var_0.d.x, var_1), Struct_4(Struct_3(u_input.b.x, var_0.b, vec2<u32>(4294967295u, 58485u), vec3<i32>(var_1, u_input.a.x, 2147483647i)), Struct_3(4294967295u, var_0.b, u_input.b.yy, u_input.a.xwz)), func_1(vec4<bool>(false, false, false, false))).a, min(4294967295u, var_4.x) << (98647u % 32u)), countOneBits(reverseBits(~var_3.x))));
}

