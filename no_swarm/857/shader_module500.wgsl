struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    global0 = array<Struct_3, 12>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1091f - 498f)));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-615f)))));
    var var_2 = countOneBits(-(-vec4<i32>(0i, var_0.b, 14761i, u_input.c) & min(vec4<i32>(-28569i, 6961i, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, var_0.c.a, var_0.c.a)))) >> ((select(min(vec4<u32>(0u, 4294967295u, 0u, 0u), ~vec4<u32>(41803u, 27466u, var_0.c.b.x, 47205u)), ~(~vec4<u32>(var_0.c.c, 14640u, 1u, 4294967295u)), vec4<bool>(var_0.b != var_0.a.a, true, true, var_0.a.b.x >= 3858u)) << (~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0.d.x, 62581u, 1u), ~vec4<u32>(var_0.a.c, 14023u, 7170u, 21569u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return vec2<bool>(var_0.d.x == select(var_0.c.c << (var_0.c.b.x % 32u), 1u, (2147483647i < var_0.c.a) && true), !any(vec3<bool>(true, true, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = select(!select(!func_3(), !func_3(), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), true)), !vec2<bool>(true, !all(vec2<bool>(false, true))), true);
    let var_1 = -max(vec2<i32>(-22867i, i32(-1i) * -2147483647i) | ~(u_input.b.xy >> (vec2<u32>(69505u, 30931u) % vec2<u32>(32u))), countOneBits(vec2<i32>(1i, u_input.b.x)));
    global0 = array<Struct_3, 12>();
    var var_2 = Struct_4(var_1.x, abs(vec2<i32>(-1i) * -vec2<i32>(var_1.x, 0i)));
    let var_3 = vec2<bool>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4829u, 32601u), vec3<u32>(7986u, 4294967295u, 8647u)), abs(4294967295u)) > 1u, var_0.x);
    return Struct_1(!var_0.x, select(vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(15359i, var_2.b.x, var_2.a, u_input.b.x), vec4<i32>(var_1.x, -1i, var_2.b.x, -6894i)) > ~var_2.b.x, !var_0.x & !var_0.x, var_3.x, var_3.x && (var_2.b.x < -1i)), vec4<bool>(false, var_3.x, false, true), !select(!vec4<bool>(var_3.x, false, true, var_0.x), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, false, var_0.x, var_3.x), vec4<bool>(var_0.x, false, var_3.x, var_0.x)), false)), ~(~(~(~29172u))), ~(~(-1439i) | u_input.c) & abs(-countOneBits(2147483647i)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_3(Struct_2(_wgslsmith_mod_i32(-22315i, 18358i), abs(~vec3<u32>(arg_1, 4294967295u, var_0.c) & _wgslsmith_mult_vec3_u32(vec3<u32>(36835u, 38753u, arg_1), vec3<u32>(var_0.c, 26835u, 0u))), max(firstLeadingBit(1u), 1u)), reverseBits(_wgslsmith_sub_i32(firstLeadingBit(-var_0.d), ~(-29190i))), Struct_2(1785i << (func_2().c % 32u), vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(37037u, 1u, 0u), vec3<u32>(1u, arg_1, arg_1)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(42542u, 12353u, arg_1), ~0u)), _wgslsmith_div_u32(var_0.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(var_0.c, 4294967295u)))), ~vec2<u32>(arg_0.c, arg_0.c));
    var_1 = Struct_3(var_1.c, -(-_wgslsmith_div_i32(0i, var_0.d) ^ (var_0.d | 2147483647i)), var_1.c, vec2<u32>(var_0.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(3158u, var_0.c), var_0.c), ~_wgslsmith_add_u32(arg_1, 4294967295u))));
    var var_2 = Struct_3(Struct_2(select(select(var_1.c.a, _wgslsmith_add_i32(2147483647i, var_0.d), var_0.b.x), ~(-2147483647i) >> (max(1u, var_0.c) % 32u), any(vec2<bool>(arg_0.b.x, false)) | select(false, var_0.b.x, false)), ~var_1.a.b, 4294967295u), 17983i, var_1.c, ~vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(73925u, 1u, var_1.a.b.x, 1u), vec4<u32>(var_1.a.c, var_0.c, var_1.a.c, 1u))), ~1u));
    var var_3 = arg_1;
    return func_2();
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = func_4(func_2(), 1u, u_input.c);
    var var_1 = var_0.c;
    return vec3<bool>(func_2().a, !var_0.b.x, !var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(func_1(vec3<f32>(1000f, -1094f, 367f)), vec3<bool>(false, true, false), func_2().b.yzw), !all(vec2<bool>(true, true))), vec3<bool>(true, false, any(func_2().b)), func_2().b.zyx);
    var var_1 = vec3<bool>(true, var_0.x, any(!(!var_0)));
    let var_2 = _wgslsmith_sub_i32(~u_input.a, reverseBits(-abs(-23173i)));
    let var_3 = Struct_4(_wgslsmith_sub_i32(var_2, countOneBits(~(-1i))), reverseBits(~vec2<i32>(var_2, ~u_input.c)));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u << ((~6106u & func_4(Struct_1(false, vec4<bool>(true, true, false, true), 78725u, 1i), 0u, -1i).c) % 32u), reverseBits(1u), ~(~abs(51907u)), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(62499u, 31790u, 70855u)), _wgslsmith_div_vec3_u32(vec3<u32>(22872u, 4294967295u, 1u), vec3<u32>(45786u, 39458u, 4560u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), abs(~vec4<u32>(1u, 8907u, 0u, 80719u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_5 = var_0.x;
    let var_6 = u_input.b;
    let var_7 = global0[_wgslsmith_index_u32(abs(~var_4.x), 12u)];
    let var_8 = countOneBits(_wgslsmith_mult_i32(func_4(Struct_1(true, select(vec4<bool>(var_1.x, var_0.x, true, false), vec4<bool>(var_1.x, false, var_1.x, true), false), _wgslsmith_mult_u32(var_4.x, 0u), var_7.a.a), ~(~var_7.d.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-37844i, var_6.x, var_3.b.x, -1i), vec4<i32>(var_7.b, var_7.b, var_6.x, var_2), true), abs(vec4<i32>(-18124i, u_input.b.x, var_6.x, var_7.c.a)))).d, (abs(u_input.c) | -52364i) & -max(var_3.a, var_7.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(round(1062f)), -1025f, -414f)) * vec4<f32>(1328f, 1540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2176f) + _wgslsmith_f_op_f32(trunc(-1101f))), 1381f)), vec2<u32>(0u, _wgslsmith_div_u32(var_7.c.b.x, func_4(Struct_1(false, vec4<bool>(var_0.x, var_0.x, var_0.x, true), 43471u, var_2), var_4.x, 2147483647i).c ^ ~31249u)), _wgslsmith_f_op_f32(-174f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + -1000f)))), 1f, vec3<u32>(countOneBits(51424u), _wgslsmith_mod_u32(abs(var_4.x), min(var_4.x & var_4.x, 4294967295u)), var_4.x));
}

