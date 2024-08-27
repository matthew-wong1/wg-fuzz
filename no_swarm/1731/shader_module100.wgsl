struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, false, false, false, true, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<u32> {
    return ~(~countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 7191u, u_input.b), vec3<u32>(arg_1, arg_1, 725u))));
}

fn func_4(arg_0: vec3<u32>) -> vec3<bool> {
    global0 = array<bool, 9>();
    var var_0 = _wgslsmith_sub_vec4_u32(((~vec4<u32>(u_input.b, u_input.a, u_input.a, arg_0.x) ^ abs(vec4<u32>(13506u, 0u, 4294967295u, u_input.a))) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(29461u, u_input.a, u_input.b, arg_0.x), vec4<u32>(1u, arg_0.x, arg_0.x, 44243u))) | abs(~(~vec4<u32>(0u, 0u, arg_0.x, arg_0.x))), (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(22145u, 4294967295u, 4294967295u, u_input.a)), reverseBits(vec4<u32>(arg_0.x, arg_0.x, 1u, u_input.b))) >> (max(~vec4<u32>(12936u, arg_0.x, 60603u, 119147u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(11618u, 0u, 1u, 4294967295u))) % vec4<u32>(32u))) >> (vec4<u32>(~(~u_input.a), 45258u, u_input.a, firstTrailingBit(76916u)) % vec4<u32>(32u)));
    return select(select(vec3<bool>(false, true, _wgslsmith_div_u32(u_input.a, var_0.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.a, arg_0.x, u_input.a), vec4<u32>(3124u, 1u, arg_0.x, 4294967295u))), !vec3<bool>(true, true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true))), !vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(8563u, 9u)], global0[_wgslsmith_index_u32(55317u, 9u)], true)), true, true)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)] && global0[_wgslsmith_index_u32(var_0.x, 9u)], true || global0[_wgslsmith_index_u32(arg_0.x, 9u)], true), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)], true)), true, any(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(11861u, 9u)]))), !select(true, true, true)), select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], false, global0[_wgslsmith_index_u32(15471u, 9u)]), false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(95330u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 9u)], global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 9u)], true)), true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 9u)] && global0[_wgslsmith_index_u32(0u, 9u)], true), false), !select(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 9u)], false), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(80412u, 9u)]), vec3<bool>(false, true, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 9u)])), vec3<bool>(true, global0[_wgslsmith_index_u32(32455u, 9u)], false))), vec3<bool>(true, any(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(3119u, 9u)], true, global0[_wgslsmith_index_u32(var_0.x, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], false, global0[_wgslsmith_index_u32(1u, 9u)]), global0[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(45909u, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)]), global0[_wgslsmith_index_u32(14480u, 9u)] || false)), true));
}

fn func_2() -> f32 {
    let var_0 = any(func_4(func_3(!(!global0[_wgslsmith_index_u32(u_input.a, 9u)]), 17872u)));
    global0 = array<bool, 9>();
    let var_1 = !vec2<bool>(func_4(vec3<u32>(0u, u_input.b, 8823u) ^ firstTrailingBit(vec3<u32>(u_input.a, 8446u, u_input.b))).x, true);
    var var_2 = vec2<u32>(u_input.b, ~u_input.a);
    var var_3 = Struct_1((firstLeadingBit(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)) << (~1u % 32u)) >> (func_3(!select(var_0, var_0, false), var_2.x & _wgslsmith_div_u32(0u, 19355u)).x % 32u), -firstLeadingBit(max(u_input.c.zw ^ u_input.c.yw, select(u_input.c.wz, vec2<i32>(-2147483647i, u_input.c.x), var_1))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_2.x, u_input.b) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.x), vec2<u32>(4294967295u, 23267u)), abs(vec2<u32>(var_2.x, 14240u)) & reverseBits(vec2<u32>(0u, 93825u)), firstLeadingBit(vec2<u32>(var_2.x, var_2.x))), var_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1620f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<bool, 9>();
    var var_0 = reverseBits(vec2<u32>(countOneBits(27083u), 0u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(arg_1, arg_1)));
    global0 = array<bool, 9>();
    let var_2 = false;
    return -max(_wgslsmith_add_vec3_i32(firstTrailingBit(abs(vec3<i32>(-77509i, arg_2.b.x, u_input.c.x))), -(vec3<i32>(0i, -1i, arg_2.b.x) | vec3<i32>(13625i, -51938i, u_input.c.x))), vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, 1i), u_input.c.x, -2147483647i));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f))))) <= _wgslsmith_f_op_f32(ceil(-1698f)), !global0[_wgslsmith_index_u32(0u, 9u)], ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), ~vec3<u32>(0u, u_input.b, u_input.b)) > 1u);
    var var_1 = u_input.c.x;
    var var_2 = u_input.c.zy;
    let var_3 = Struct_4(firstLeadingBit(_wgslsmith_mod_u32(min(~u_input.b, ~4294967295u), 0u)), arg_0.a);
    var var_4 = vec4<i32>(max(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.wwx, u_input.c.zzz)), _wgslsmith_dot_vec3_i32(func_5(vec2<f32>(var_3.b, 720f), _wgslsmith_f_op_f32(func_2()), Struct_1(-20182i, vec2<i32>(var_2.x, -2147483647i), vec2<u32>(u_input.b, var_3.a), u_input.a)) | -_wgslsmith_mult_vec3_i32(u_input.c.zzx, u_input.c.yww), _wgslsmith_div_vec3_i32(u_input.c.zyx, vec3<i32>(countOneBits(-2147483647i), u_input.c.x & 0i, abs(-1i)))), -u_input.c.x & ~firstTrailingBit(_wgslsmith_div_i32(-12934i, u_input.c.x)), ~_wgslsmith_dot_vec2_i32(~func_5(vec2<f32>(2858f, 809f), arg_0.a, Struct_1(701i, vec2<i32>(1i, 15721i), vec2<u32>(u_input.a, 0u), var_3.a)).yx, reverseBits(-vec2<i32>(u_input.c.x, 1i))));
    return ~vec3<i32>(-_wgslsmith_mod_i32(abs(var_4.x), ~var_4.x), 70624i, u_input.c.x ^ _wgslsmith_dot_vec2_i32(~u_input.c.xz, -vec2<i32>(-2022i, var_4.x)));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_2));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_1 = Struct_3(654f);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_6(_wgslsmith_sub_vec3_i32(func_1(Struct_3(420f), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], false)), u_input.c.zwz >> (~vec3<u32>(1u, u_input.a, 61826u) % vec3<u32>(32u))), u_input.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-541f * _wgslsmith_f_op_f32(round(-200f))))), func_4(vec3<u32>(0u, u_input.a, 61779u) | func_3(false, u_input.a)).xz), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -abs(u_input.c.x), ~2147483647i), vec3<i32>(-16337i, max(u_input.c.x, -2147483647i), _wgslsmith_add_i32(~2147483647i, -55138i >> (u_input.b % 32u)))), func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1583f - 566f))), func_4(vec3<u32>(u_input.a, u_input.a, u_input.a) << (min(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(37521u, u_input.b, 65679u)) % vec3<u32>(32u))).xz).x);
    let var_1 = Struct_1(select(var_0.x, -_wgslsmith_clamp_i32(~u_input.c.x, 54438i, u_input.c.x & -15510i), func_4(~vec3<u32>(152060u, u_input.b, u_input.a)).x), vec2<i32>(-32577i, _wgslsmith_add_i32(-u_input.c.x, _wgslsmith_sub_i32(-var_0.x, var_0.x ^ 0i))), ~(~firstLeadingBit(~vec2<u32>(u_input.a, 0u))), u_input.a);
    global0 = array<bool, 9>();
    let var_2 = vec4<u32>(var_1.c.x, 1u, 29741u, 1u);
    let var_3 = true;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(func_2()));
    let var_5 = Struct_3(var_4.a);
    let var_6 = Struct_2(false, -1i);
    var_4 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_5.a))))))), ~var_0.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_5.a, -188f, var_4.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_5.a, 1065f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.a, var_4.a, var_5.a), vec3<f32>(var_4.a, var_4.a, var_5.a)))))), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(15786u, var_1.c.x), 1u), var_1.c), 0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, var_2.x, 1u), _wgslsmith_mod_u32(var_2.x, 35032u)) << (30529u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1055f, var_5.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, var_5.a)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, var_5.a))));
}

