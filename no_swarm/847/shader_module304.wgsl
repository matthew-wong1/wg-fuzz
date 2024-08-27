struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec2<i32>, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = u_input.a.x;
    global1 = array<Struct_2, 19>();
    let var_1 = ~u_input.b;
    var var_2 = abs(_wgslsmith_clamp_vec4_i32(u_input.a, abs(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x)), firstTrailingBit(abs(vec4<i32>(u_input.d.x, 7239i, u_input.d.x, -2781i))))) & min(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(var_1.x, 21u)], global2[_wgslsmith_index_u32(16467u, 21u)]), countOneBits(2147483647i), u_input.d.x, -9675i)), min(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.d.x, 8872i, u_input.a.x, u_input.a.x)), u_input.a), abs(u_input.a)));
    var_0 = _wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.x, var_2.x), ~u_input.d.x), u_input.d.x >> (~0u % 32u), u_input.a.x, 66404i)) & (u_input.d.x << (15226u % 32u));
    return select(arg_2.b, vec2<bool>(!all(select(vec2<bool>(true, false), arg_2.b, arg_2.b.x)), !select(!arg_2.b.x, !arg_2.b.x, true)), !(!(var_1.x < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 6264u, var_1.x, var_1.x), vec4<u32>(45496u, 1u, 4294967295u, var_1.x)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> bool {
    global2 = array<vec2<i32>, 21>();
    global0 = false;
    let var_0 = arg_0.wzw;
    var var_1 = Struct_1(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mult_u32(5131u, arg_2), arg_2), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 4294967295u), ~vec2<u32>(arg_1, u_input.c)))), !func_3(global1[_wgslsmith_index_u32(1u & arg_2, 19u)], Struct_2(vec2<f32>(arg_0.x, var_0.x), _wgslsmith_f_op_f32(sign(-529f))), Struct_1(vec3<u32>(344u, arg_2, u_input.b.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<f32>(var_0.x, 114f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2061f, 2782f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, -759f)))))));
    let var_2 = global1[_wgslsmith_index_u32(1u << (0u % 32u), 19u)];
    return false;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = 44487i;
    global1 = array<Struct_2, 19>();
    var var_1 = -1712f;
    let var_2 = true;
    var_1 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(232f + arg_1.c.x) * _wgslsmith_f_op_f32(select(1016f, _wgslsmith_f_op_f32(abs(1000f)), false || arg_1.b.x))), 624f, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(519f, 264f, -1895f, 430f) - vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x))), (arg_1.a.x ^ 0u) & ~64833u, ~(~arg_1.a.x)))));
    return max(arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_1.a.x, u_input.c) >> (~u_input.c % 32u), _wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(arg_1.a.x, 61947u, arg_1.a.x))), ~_wgslsmith_mult_u32(1u, 42100u), ~min(4294967295u, arg_1.a.x)), vec4<u32>(arg_1.a.x, ~11397u | max(u_input.c, u_input.c), 0u, _wgslsmith_sub_u32(53034u, arg_1.a.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = arg_0;
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(154u), func_4(Struct_3(vec2<i32>(2164i, ~u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_f32(abs(-517f)), firstTrailingBit(1u), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, true)), Struct_1(vec3<u32>(func_1(vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 4294967295u, u_input.c), vec2<bool>(true, false), vec2<f32>(670f, 927f))), 89642u, ~u_input.c), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, 1152f)))), _wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.c)), select(4294967295u, 25899u >> (u_input.b.x % 32u), true))), max(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(1u, 1u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), true), firstLeadingBit(~vec3<u32>(20040u, 37666u, 59184u))), u_input.b.x), ~u_input.c >> (func_1(select(func_3(global1[_wgslsmith_index_u32(u_input.c, 19u)], Struct_2(vec2<f32>(145f, 650f), -1944f), Struct_1(vec3<u32>(u_input.c, 1u, u_input.b.x), vec2<bool>(false, false), vec2<f32>(3641f, -974f))), func_3(Struct_2(vec2<f32>(412f, 1654f), 1205f), Struct_2(vec2<f32>(-2110f, 1444f), 913f), Struct_1(vec3<u32>(26988u, 34653u, u_input.c), vec2<bool>(true, false), vec2<f32>(1637f, -641f))), func_3(Struct_2(vec2<f32>(-1000f, -1613f), 761f), global1[_wgslsmith_index_u32(u_input.c, 19u)], Struct_1(vec3<u32>(u_input.c, u_input.b.x, 3005u), vec2<bool>(false, false), vec2<f32>(266f, 1000f)))), Struct_1(vec3<u32>(0u, u_input.b.x, u_input.b.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-515f, 387f) - vec2<f32>(149f, -1700f)))) % 32u));
    var var_1 = Struct_2(vec2<f32>(271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-690f * 985f))) - _wgslsmith_f_op_f32(-1367f - -606f))), 1033f);
    var var_2 = _wgslsmith_div_u32(0u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)) - -784f) - _wgslsmith_f_op_f32(abs(-1000f))), -2052i);
}

