struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), 0i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(select(global0.a.xx, global0.a.wz, select(vec2<bool>(u_input.c <= u_input.c, any(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), vec2<bool>(false, true), vec2<bool>(any(global0.a.ywx), true))), Struct_1(global0.a, _wgslsmith_div_i32(-global0.b & u_input.b.x, u_input.d.x)), countOneBits(-(vec4<i32>(49992i, -22377i, u_input.a, -2147483647i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, global0.b, u_input.d.x), vec4<i32>(global0.b, global0.b, global0.b, u_input.b.x)))), Struct_1(vec4<bool>(global0.b != (u_input.d.x & 1i), any(global0.a.wwy), select(global0.a.x, global0.a.x, global0.a.x), true), -2147483647i));
    var var_1 = vec2<u32>(u_input.c, u_input.c);
    let var_2 = Struct_2(vec2<bool>(false, all(!(!vec4<bool>(true, global0.a.x, var_0.b.a.x, global0.a.x)))), Struct_1(vec4<bool>(any(var_0.b.a) || (u_input.c < u_input.c), global0.a.x, global0.a.x, !any(var_0.d.a)), _wgslsmith_clamp_i32(reverseBits(~var_0.c.x), 1i, -2147483647i)), var_0.c, Struct_1(var_0.b.a, select(-min(22488i, 27269i), 42928i >> (_wgslsmith_add_u32(u_input.c, 83871u) % 32u), true)));
    var var_3 = var_2.b;
    var_1 = ~_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_1.x), u_input.c | u_input.c)), _wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(var_1.x, var_1.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.x, 1u), ~vec2<u32>(u_input.c, u_input.c))));
    return 1i;
}

fn func_2() -> vec2<i32> {
    let var_0 = all(!vec2<bool>(!all(global0.a), true));
    let var_1 = Struct_1(!global0.a, func_3());
    let var_2 = global0.a.yxy;
    global0 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(322f, _wgslsmith_f_op_f32(min(-813f, _wgslsmith_f_op_f32(160f * 1168f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-245f))))));
    return u_input.b.zz;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = abs(vec3<i32>(0i, arg_2, (_wgslsmith_div_i32(arg_1.b, 15273i) << (0u % 32u)) ^ 49177i));
    let var_1 = Struct_1(global0.a, global0.b ^ var_0.x);
    let var_2 = ~(-9566i);
    var var_3 = func_2() << (vec2<u32>(~u_input.c, _wgslsmith_mult_u32(u_input.c, ~0u)) % vec2<u32>(32u));
    let var_4 = Struct_1(vec4<bool>(arg_1.a.x, false, !all(!arg_1.a.zxx), all(select(select(vec3<bool>(true, var_1.a.x, global0.a.x), vec3<bool>(global0.a.x, arg_1.a.x, global0.a.x), vec3<bool>(arg_1.a.x, var_1.a.x, var_1.a.x)), arg_1.a.yyx, select(arg_1.a.zzx, arg_1.a.ywy, var_1.a.zzx)))), select(var_0.x, _wgslsmith_add_i32(-arg_1.b, func_2().x), true));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, 107378u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(17960u, 8154u)))) >> (reverseBits(u_input.c) % 32u);
    global0 = func_1(select(min(abs(select(vec3<u32>(var_0, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, u_input.c), true)), ~(~vec3<u32>(var_0, 18640u, 10134u))), ~(~(~vec3<u32>(var_0, var_0, 0u))), any(select(select(vec4<bool>(global0.a.x, false, true, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), true), global0.a, select(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), global0.a)))), Struct_1(global0.a, -(u_input.d.x >> (27425u % 32u))), _wgslsmith_sub_i32(global0.b ^ -1i, 1i));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(min(-vec4<i32>(2147483647i, global0.b, 7143i, 2147483647i), vec4<i32>(9376i, u_input.a, u_input.b.x, u_input.d.x)), -select(vec4<i32>(75496i, u_input.b.x, 18949i, 0i), vec4<i32>(u_input.d.x, global0.b, global0.b, -26162i), true))), 0i);
    var var_2 = func_1(~abs(~max(vec3<u32>(0u, var_0, var_0), vec3<u32>(var_0, var_0, 41419u))), func_1(select(abs(firstLeadingBit(vec3<u32>(43808u, var_0, 1u))), ~(~vec3<u32>(93053u, u_input.c, 0u)), !(!global0.a.x)), func_1(vec3<u32>(~var_0, _wgslsmith_add_u32(var_0, u_input.c), u_input.c), Struct_1(vec4<bool>(true, true, true, true), global0.b ^ -88974i), i32(-1i) * -13635i), _wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, func_2().x), u_input.b.x)), func_3());
    var var_3 = 729f;
    var_1 = abs(global0.b);
    let var_4 = !select(vec3<bool>(global0.a.x, func_1(~vec3<u32>(42012u, 0u, u_input.c), func_1(vec3<u32>(30171u, var_0, var_0), Struct_1(global0.a, u_input.a), 20390i), ~2864i).a.x, true), func_1((vec3<u32>(22385u, u_input.c, 31668u) ^ vec3<u32>(63376u, var_0, 0u)) ^ vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(var_2.a, global0.b), abs(u_input.a) & -1i).a.zxz, vec3<bool>(false, true, true));
    var var_5 = Struct_2(global0.a.xw, func_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(min(4294967295u, 4294967295u), u_input.c << (8969u % 32u), abs(79122u))), func_1(_wgslsmith_add_vec3_u32(vec3<u32>(41176u, var_0, u_input.c), vec3<u32>(u_input.c, var_0, u_input.c)) ^ reverseBits(vec3<u32>(var_0, u_input.c, u_input.c)), Struct_1(global0.a, firstLeadingBit(global0.b)), 0i), _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(u_input.d)), u_input.b)), reverseBits(~vec4<i32>(25887i, -10636i >> (var_0 % 32u), 13440i, u_input.d.x << (29509u % 32u))), func_1(countOneBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, var_0), vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 43799u)), ~vec3<u32>(45523u, 62587u, 1u), true)), func_1(min(abs(vec3<u32>(1u, 779u, 69645u)), min(vec3<u32>(u_input.c, var_0, 0u), vec3<u32>(u_input.c, 1u, 18856u))), Struct_1(global0.a, _wgslsmith_mult_i32(1i, 2147483647i)), -1i), abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.xy ^ vec2<i32>(2147483647i, 1i)));
}

