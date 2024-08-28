struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(~6881i, ~0i), ~vec2<i32>(-37181i, 0i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 19527i), max(vec2<i32>(27306i, -14263i), firstLeadingBit(vec2<i32>(0i, -16317i)))), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 4136i), 0i << (u_input.a.x % 32u))));
    var var_1 = -(~vec4<i32>(firstLeadingBit(34789i), var_0.x ^ -2147483647i, var_0.x, 0i)) & max(-firstTrailingBit(vec4<i32>(1i, var_0.x, var_0.x, var_0.x)) << ((firstLeadingBit(vec4<u32>(u_input.a.x, global0.x, 0u, 66400u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 66915u), vec4<u32>(44846u, 4294967295u, global0.x, global0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-var_0.x, var_0.x ^ -15991i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 1i), vec4<i32>(42063i, var_0.x, 14342i, var_0.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.x, -2147483647i), vec2<i32>(var_0.x, -1379i))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(659f * -620f), _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f * arg_1) * arg_1), true)))));
    var var_3 = vec2<i32>(~0i, countOneBits(firstTrailingBit(var_1.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))));
    return countOneBits(abs(0u));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(arg_0, ~arg_0)), arg_0), arg_0);
    global0 = ~vec4<u32>(firstLeadingBit(func_3(1u, 435f)), ~_wgslsmith_sub_u32(~global0.x, ~4294967295u), _wgslsmith_mod_u32(abs(~u_input.a.x), global1.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(global1.x, 4294967295u, u_input.a.x, global1.x))), vec4<u32>(global0.x, global0.x, u_input.a.x, 4294967295u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 32142u, 110964u, 4294967295u), vec4<u32>(global1.x, 0u, 1731u, global0.x)) % vec4<u32>(32u))));
    var var_1 = select(vec4<i32>(~_wgslsmith_mod_i32(0i, arg_0), 0i, -26847i, arg_0), ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 18054i), vec4<i32>(arg_0, -2409i, -15855i, arg_0))), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))) >> (_wgslsmith_div_vec4_u32(~(~(vec4<u32>(global1.x, global0.x, 0u, u_input.a.x) << (vec4<u32>(global1.x, 1u, 11735u, global1.x) % vec4<u32>(32u)))), ~(~(vec4<u32>(0u, 24571u, global1.x, global1.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, global0.x) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var_0 = 1i;
    var var_2 = any(vec4<bool>(true, true, !all(vec4<bool>(true, false, true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    return u_input.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(select(u_input.a.x, global0.x, true), 30636u, firstLeadingBit(4294967295u), func_2(4649i))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.x >> (global0.x % 32u), 83561u, ~global1.x), abs(~vec4<u32>(1u, u_input.a.x, global0.x, u_input.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global1.x, 4294967295u), vec4<u32>(18084u, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u)))));
    var var_0 = _wgslsmith_f_op_f32(floor(1193f));
    let var_1 = _wgslsmith_sub_vec4_i32(-(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -39890i, arg_0.x, arg_0.x), firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, 0i, arg_1.x))) << (select(vec4<u32>(global0.x, 13683u, 0u, 28515u) ^ vec4<u32>(0u, global0.x, u_input.a.x, 1720u), ~vec4<u32>(global1.x, 1u, 16820u, 644u), true) % vec4<u32>(32u))), vec4<i32>(~(-(i32(-1i) * -10989i)), arg_1.x, reverseBits(arg_1.x), abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, arg_1.x), ~2147483647i))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(793f, _wgslsmith_div_f32(-2592f, 1395f)))));
    let var_2 = arg_1.x;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1367f), select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, any(vec4<bool>(false, true, false, true))), !any(vec2<bool>(true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 1000f, _wgslsmith_f_op_f32(722f * _wgslsmith_f_op_f32(-917f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-592f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(-1i, countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(34635i, -7930i), vec2<i32>(1i, 0i))), abs(_wgslsmith_mult_i32(14371i, -12525i)) & firstTrailingBit(_wgslsmith_sub_i32(0i, -8856i))), vec3<i32>(abs(-1i << (select(0u, 4294967295u, true) % 32u)), ~(-abs(33976i)), firstTrailingBit(0i)));
    var var_1 = Struct_5(Struct_3(vec2<f32>(-3035f, var_0.a), 2147483647i, select(select(!vec2<bool>(var_0.b.x, true), vec2<bool>(true, var_0.b.x), !var_0.b.x), !var_0.b.yx, -948f > _wgslsmith_f_op_f32(max(-1148f, var_0.d))), var_0.b.x, abs(~(~vec3<u32>(17255u, 70528u, 0u)))), true);
    global1 = global0.yw;
    let var_2 = any(vec4<bool>(var_1.b, false, !(1u <= firstTrailingBit(global1.x)), false));
    let var_3 = Struct_2(~u_input.a, !var_0.b);
    let var_4 = vec3<i32>(abs(31929i), max(_wgslsmith_add_i32(2147483647i, var_1.a.b & firstTrailingBit(2147483647i)), abs(var_1.a.b) >> (abs(min(var_1.a.e.x, u_input.a.x)) % 32u)), firstLeadingBit(var_1.a.b));
    global0 = vec4<u32>(var_3.a.x, ~58030u >> (func_2(1i) % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(min(48493u, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, 51185u, 1u) & vec4<u32>(65659u, 71106u, u_input.a.x, 4294967295u), vec4<u32>(var_1.a.e.x, 14910u, 1u, var_3.a.x))), max(0u, _wgslsmith_mod_u32(4931u, u_input.a.x) >> (1108u % 32u))), 42508u << (global0.x % 32u));
    var var_5 = !vec3<bool>((any(var_3.b) & (1485f == var_0.a)) & false, all(var_0.b.yzx), var_3.b.x);
    var var_6 = _wgslsmith_f_op_f32(f32(-1f) * -1397f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(sign(var_0.d)))), -1801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1311f, var_0.c)))), -415f), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1602f), var_2 && true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.d)), 648f)), var_3.b.x))), u_input.a.x & ~select(~1u, ~global0.x, var_3.b.x), ~(vec2<i32>(~var_4.x, var_1.a.b) | firstLeadingBit(var_4.xx)), countOneBits(1u));
}

