struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = ~(~(~abs(~vec4<u32>(arg_0.x, u_input.a, 4294967295u, u_input.a))));
    let var_1 = select(78967i, -arg_1.a.x, true);
    var var_2 = 1u;
    let var_3 = 5625u;
    let var_4 = -abs(firstLeadingBit(abs(-global0.b.zy)));
    return ~(~(~((vec4<u32>(43572u, u_input.a, u_input.a, var_0.x) & vec4<u32>(var_3, arg_0.x, arg_0.x, var_3)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_3, 1u, 17999u, 0u), vec4<u32>(0u, 37995u, 4294967295u, 24357u)))));
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.a.x, 0i), vec3<i32>(-select(2147483647i, 0i, true), ~(i32(-1i) * -4057i), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global0.b.x, 11383i, 1i), vec4<i32>(-66812i, 2502i, 2147483647i, -62331i)))), global0.c);
    let var_0 = 95759u;
    var var_1 = Struct_1(global0.a, select(-(_wgslsmith_div_vec3_i32(global0.a.yww, vec3<i32>(-1i, global0.b.x, global0.a.x)) | firstTrailingBit(vec3<i32>(-2147483647i, 0i, global0.a.x))), countOneBits(~vec3<i32>(global0.b.x, -2147483647i, -1i)), global0.c.x), global0.c);
    global0 = Struct_1(-vec4<i32>(var_1.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(61818u, u_input.a, arg_0.x, 1u), arg_0) % 32u), abs(_wgslsmith_sub_i32(0i, var_1.a.x)), global0.a.x & 2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.b.x, -2147483647i, -2147483647i), global0.a.x)), global0.a.xyx, !(!vec2<bool>(u_input.a > 56151u, true)));
    var var_2 = ~(arg_0.wzx & vec3<u32>((74470u & var_0) >> (67351u % 32u), _wgslsmith_mod_u32(var_0, 61332u), ~arg_0.x));
    return Struct_1(var_1.a, vec3<i32>(_wgslsmith_mod_i32(1i, global0.a.x) & 16708i, 42772i, ~_wgslsmith_dot_vec2_i32(global0.b.zy, global0.a.yx)) ^ global0.b, var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global0.a, arg_0.a), vec4<i32>(0i, arg_0.b.x, -5917i, global0.b.x) ^ global0.a)), 21079i, arg_0.b.x, global0.a.x), global0.b, func_3(~_wgslsmith_add_vec4_u32(vec4<u32>(48649u, u_input.a, 52762u, u_input.a), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 23962u))).c);
    let var_1 = abs(~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(u_input.a, 38406u, 39291u))) | max(abs(firstTrailingBit(vec3<u32>(74095u, u_input.a, 33436u))), vec3<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, 1u), u_input.a)));
    var var_2 = arg_0;
    var_0 = func_3(abs(~(~vec4<u32>(32961u, var_1.x, var_1.x, u_input.a)) << (~vec4<u32>(u_input.a, u_input.a, var_1.x, u_input.a) % vec4<u32>(32u))));
    let var_3 = arg_0;
    return Struct_1(select(vec4<i32>(-(~arg_0.a.x), -13903i, 21107i << (firstTrailingBit(var_1.x) % 32u), _wgslsmith_clamp_i32(func_3(vec4<u32>(var_1.x, u_input.a, u_input.a, 4294967295u)).b.x, _wgslsmith_add_i32(var_3.b.x, 0i), arg_0.b.x >> (var_1.x % 32u))), var_0.a, var_0.c.x), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-50890i), 2147483647i), var_3.a.zz), select(var_3.a.x, var_3.a.x, true), -_wgslsmith_dot_vec4_i32(var_3.a, global0.a)), func_3(~(func_2(vec2<u32>(var_1.x, 1u), arg_0) & vec4<u32>(u_input.a, 0u, var_1.x, u_input.a))).c);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> vec2<i32> {
    var var_0 = func_4(func_3(func_2(~vec2<u32>(1u, 1u), Struct_1(global0.a, global0.b, vec2<bool>(true, false))) << (vec4<u32>(1u, 0u, 4294967295u, reverseBits(u_input.a)) % vec4<u32>(32u))), any(select(arg_0.wxy, select(!vec3<bool>(true, false, arg_0.x), select(arg_0.wyz, arg_0.wzz, arg_0.x), arg_0.yww), any(select(arg_0.yy, vec2<bool>(false, false), arg_0.x)))));
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(1u, 39518u), u_input.a) << (min(abs(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), false)), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u));
    var_0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-11974i, 0i, abs(51001i) & (47804i << (u_input.a % 32u)), var_0.a.x), vec4<i32>(-1i) * -global0.a), vec3<i32>(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(15372u, 45194u, var_1.x, var_1.x), ~vec4<u32>(var_1.x, var_1.x, 1u, 62889u))).a.x, 0i, global0.a.x), var_0.c);
    let var_2 = !select(!arg_0, vec4<bool>(var_0.c.x, true, arg_0.x, true), global0.c.x);
    var_0 = func_4(Struct_1(min(var_0.a >> (select(vec4<u32>(u_input.a, 4294967295u, var_1.x, 0u), vec4<u32>(0u, var_1.x, var_1.x, 62587u), false) % vec4<u32>(32u)), vec4<i32>(var_0.b.x | global0.b.x, max(var_0.a.x, 0i), var_0.b.x, var_0.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(15528i, ~1i, global0.a.x | var_0.b.x), firstLeadingBit(var_0.b)), var_0.c), var_2.x);
    return -vec2<i32>(max(~var_0.b.x, -(~25360i)), _wgslsmith_div_i32(1i, var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-19313i, -42292i), func_1(!vec4<bool>(global0.c.x, false, global0.c.x, false), _wgslsmith_f_op_f32(min(859f, -903f)))), 1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(global0.a.xwx, global0.b)), global0.b), 1i), func_4(Struct_1(_wgslsmith_mod_vec4_i32(min(vec4<i32>(global0.a.x, 0i, 5771i, -2147483647i), global0.a), min(vec4<i32>(4399i, global0.a.x, global0.b.x, global0.a.x), global0.a)), -vec3<i32>(global0.a.x, 26357i, global0.b.x), vec2<bool>(func_3(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)).c.x, global0.c.x)), -853f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f))))).b, vec2<bool>(select(global0.c.x, true, !(global0.c.x || true)), u_input.a >= u_input.a));
    var var_1 = u_input.a;
    var var_2 = func_3(~(~(~vec4<u32>(u_input.a, 51544u, u_input.a, 22660u))) ^ (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, 41285u, u_input.a, u_input.a)), abs(vec4<u32>(0u, 1u, 0u, u_input.a))) << (firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, 84791u)) % vec4<u32>(32u))));
    var_1 = 0u;
    var_2 = Struct_1(-((var_2.a & reverseBits(var_0.a)) << (vec4<u32>(_wgslsmith_mult_u32(37781u, u_input.a), 1u, ~u_input.a, 1u << (0u % 32u)) % vec4<u32>(32u))), vec3<i32>(-1i) * -var_0.a.wwz, func_4(func_4(var_0, ~var_0.a.x <= 1i), false).c);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, _wgslsmith_add_u32(35989u, ~abs(u_input.a)), _wgslsmith_div_i32(-1i, var_2.b.x), 8827u & (_wgslsmith_mult_u32(u_input.a, ~u_input.a) & reverseBits(u_input.a)));
}

