struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_1(global0.x);
    let var_1 = -193f;
    var var_2 = vec4<i32>(-u_input.b.x, ~_wgslsmith_add_i32(-1i, ~u_input.b.x), -1i, 0i) | firstTrailingBit(select(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(65790i, u_input.b.x, u_input.e, -1i), vec4<i32>(-21074i, u_input.e, 75040i, u_input.b.x))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, u_input.b.x, 0i), vec4<i32>(u_input.e, 1i, u_input.a.x, u_input.b.x)), var_0.a));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 * 1718f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
    var var_4 = var_0;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = vec4<bool>(true, func_3(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.c.x, 2730u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, u_input.d)), vec3<u32>(17594u, 6021u, u_input.d)), u_input.c ^ (vec3<u32>(0u, 66216u, u_input.d) << (vec3<u32>(u_input.c.x, u_input.d, 11355u) % vec3<u32>(32u)))), u_input.c.yy), true, 2147483647i >= -u_input.e);
    global0 = select(vec4<bool>(!arg_0.a, arg_0.a, true, !func_3(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), vec3<u32>(u_input.d, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(14626u, u_input.d)))), vec4<bool>(arg_0.a, false, func_3(_wgslsmith_mod_vec3_u32(~u_input.c, vec3<u32>(u_input.c.x, u_input.d, 4294967295u)), vec2<u32>(u_input.c.x, max(0u, u_input.d))), arg_1), all(select(vec3<bool>(any(vec3<bool>(arg_1, arg_0.a, true)), func_3(u_input.c, u_input.c.xz), select(true, arg_0.a, arg_1)), vec3<bool>(any(global0.www), all(global0.xzx), !global0.x), true)));
    var var_0 = any(vec2<bool>(select(false, true, (arg_1 || arg_1) | (arg_2.x > arg_2.x)), arg_1));
    var_0 = global0.x;
    let var_1 = arg_0;
    return vec4<bool>(true, true, global0.x, arg_0.a);
}

fn func_1() -> vec4<i32> {
    global0 = select(!(!select(vec4<bool>(global0.x, global0.x, true, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, false, true), vec4<bool>(true, false, global0.x, global0.x)), all(vec3<bool>(global0.x, false, global0.x)))), select(select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, false, global0.x, global0.x), select(global0.x, false, false)), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(true, global0.x, false, global0.x), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, true), vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(-1913f - -1292f) < _wgslsmith_f_op_f32(sign(-121f))), select(!select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, false, false, true), vec4<bool>(global0.x, true, false, global0.x)), select(vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x)), func_2(Struct_1(global0.x), global0.x, vec4<i32>(u_input.b.x, -303i, 48916i, -84414i))), select(func_2(Struct_1(true), false, vec4<i32>(2147483647i, u_input.e, u_input.b.x, 16577i)), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, global0.x)))), global0.x);
    let var_0 = any(vec3<bool>(all(global0.wxx), !global0.x || false, true));
    var var_1 = _wgslsmith_mult_i32(-30823i, 1i);
    return -(~(~(-vec4<i32>(u_input.b.x, -1i, -2147483647i, u_input.a.x))) >> (firstTrailingBit(vec4<u32>(select(u_input.c.x, 42629u, var_0), u_input.d, u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 85204u, u_input.c.x), u_input.c))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(-(~max(vec4<i32>(u_input.b.x, -33942i, u_input.b.x, 7417i), vec4<i32>(-1i, u_input.b.x, 26132i, -2147483647i))) ^ vec4<i32>(~u_input.b.x & -u_input.a.x, -_wgslsmith_mult_i32(u_input.b.x, u_input.e), max(2147483647i, u_input.a.x), 8573i), func_1());
    var var_1 = Struct_1(!global0.x);
    let var_2 = Struct_1(global0.x);
    global0 = select(func_2(Struct_1(var_1.a), true, -(~vec4<i32>(var_0.x, -7370i, var_0.x, var_0.x))), !(!vec4<bool>(global0.x & global0.x, var_1.a, all(global0.zw), var_1.a)), select(func_2(Struct_1(func_2(var_2, false, vec4<i32>(var_0.x, var_0.x, -2147483647i, 1i)).x), true, -vec4<i32>(33461i, var_0.x, -2147483647i, -1i) & min(vec4<i32>(u_input.a.x, 22110i, -18296i, var_0.x), vec4<i32>(var_0.x, u_input.b.x, 22651i, u_input.b.x))), select(vec4<bool>(global0.x, var_2.a, false, var_2.a), vec4<bool>(u_input.d <= u_input.d, global0.x, global0.x | true, true), any(select(vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(var_2.a, false, true, var_1.a), var_2.a))), !vec4<bool>(var_1.a, func_2(Struct_1(false), var_1.a, vec4<i32>(u_input.b.x, u_input.e, 53284i, 430i)).x, false & var_1.a, any(global0.wx))));
    var var_3 = Struct_1(global0.x);
    var var_4 = ~func_1().xy;
    let var_5 = ~_wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, 1u)), u_input.c.zy, _wgslsmith_add_vec2_u32(u_input.c.yz << (firstTrailingBit(u_input.c.zz) % vec2<u32>(32u)), firstLeadingBit(~u_input.c.zy)));
    let var_6 = min(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(~47014u, var_5.x), 47455u, var_5.x, 1u)), ~vec4<u32>(_wgslsmith_mult_u32(select(137808u, u_input.c.x, true), ~u_input.d), ~0u, _wgslsmith_clamp_u32(49649u, ~u_input.d, ~var_5.x), var_5.x));
    var_4 = vec2<i32>(u_input.a.x, ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(4294967295u, reverseBits(_wgslsmith_mod_u32(4294967295u, 67830u) | var_5.x), var_6.x), firstTrailingBit(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.b.x, var_4.x)) >> ((var_5.x << (var_5.x % 32u)) % 32u))), ~(-vec4<i32>(var_0.x, _wgslsmith_mod_i32(-2147483647i, var_0.x), -9416i, abs(-53293i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2264f) + _wgslsmith_f_op_f32(f32(-1f) * -613f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1322f - -1000f))));
}

