struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(i32(-2147483648), 8678i, 25176i, 52932i, 23541i, 11816i, -13095i, i32(-2147483648), i32(-2147483648), -50783i);

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(-220f, -38263i, Struct_2(vec3<bool>(false, false, true), 35031u, vec4<i32>(-1i, 1i, 364i, -21446i)));

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(1716f, -16607i, Struct_2(vec3<bool>(true, true, true), 0u, vec4<i32>(-1i, 46442i, -14091i, 1i))), Struct_3(-848f, -17819i, Struct_2(vec3<bool>(false, false, false), 78196u, vec4<i32>(0i, 46154i, 0i, 6130i))), Struct_3(817f, -8082i, Struct_2(vec3<bool>(true, true, false), 1u, vec4<i32>(-35044i, 1930i, -5526i, -52806i))), Struct_3(-212f, 2147483647i, Struct_2(vec3<bool>(false, false, false), 1u, vec4<i32>(i32(-2147483648), 1i, 57841i, i32(-2147483648)))), Struct_3(1261f, -10656i, Struct_2(vec3<bool>(false, false, true), 1u, vec4<i32>(24667i, 0i, 25155i, -38219i))), Struct_3(788f, 2147483647i, Struct_2(vec3<bool>(true, false, false), 4789u, vec4<i32>(-31951i, 1i, i32(-2147483648), 17992i))), Struct_3(-1558f, -1i, Struct_2(vec3<bool>(true, false, true), 1u, vec4<i32>(4766i, i32(-2147483648), 9047i, -1186i))), Struct_3(1048f, -1i, Struct_2(vec3<bool>(false, true, false), 4294967295u, vec4<i32>(-1i, -396i, 16280i, -30408i))), Struct_3(-941f, 12332i, Struct_2(vec3<bool>(true, false, true), 1u, vec4<i32>(3823i, -1i, 0i, 43466i))));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> vec4<i32> {
    var var_0 = all(vec3<bool>(global2.c.a.x | any(vec2<bool>(global2.c.a.x, false)), global2.c.a.x || global2.c.a.x, true)) || (global2.c.a.x && true);
    let var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 9u)];
    global0 = array<i32, 10>();
    var var_2 = ~u_input.c.ywz;
    var var_3 = vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(-global2.c.c.xz, _wgslsmith_mult_vec2_i32(var_1.c.c.wy, vec2<i32>(global2.b, u_input.e))), _wgslsmith_add_i32(-15605i, reverseBits(_wgslsmith_add_i32(-55311i, countOneBits(u_input.e)))));
    return vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(~var_1.c.c.x, var_3.x), 42210i), _wgslsmith_dot_vec4_i32(-global2.c.c, _wgslsmith_div_vec4_i32((var_1.c.c & vec4<i32>(global2.c.c.x, 2147483647i, 1i, var_1.c.c.x)) & -vec4<i32>(-2147483647i, u_input.d, var_1.c.c.x, global0[_wgslsmith_index_u32(44771u, 10u)]), -vec4<i32>(u_input.e, 0i, -2147483647i, -2147483647i) << (vec4<u32>(global2.c.b, 18963u, var_2.x, 24927u) % vec4<u32>(32u)))), 0i, -firstTrailingBit(21578i));
}

fn func_3(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = global2.a;
    var_0 = _wgslsmith_f_op_f32(-global2.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(global2.a));
    let var_2 = select(vec3<u32>(global2.c.b, _wgslsmith_dot_vec3_u32(u_input.c.yww, u_input.c.xyz), 45437u), vec3<u32>(_wgslsmith_add_u32(global2.c.b, 16266u), global2.c.b, 1u), true);
    var var_3 = !select(vec4<bool>(true, all(vec4<bool>(true, global2.c.a.x, global2.c.a.x, global2.c.a.x)) && (global2.a < var_1), -1233f <= _wgslsmith_f_op_f32(min(282f, global2.a)), true), vec4<bool>(true, true, !(!global2.c.a.x), any(vec3<bool>(global2.c.a.x, global2.c.a.x, true))), false);
    return global2.c;
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = func_3(_wgslsmith_div_vec4_i32(global2.c.c, reverseBits(func_2()) & global2.c.c));
    var var_1 = abs(~(~u_input.c.zzw) ^ ~u_input.c.yxw) << (vec3<u32>(var_0.b, ~(global2.c.b | global2.c.b), abs(~0u)) % vec3<u32>(32u));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a))), global2.b, func_3(global2.c.c));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a - -1498f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(global2.a + -164f))) - _wgslsmith_f_op_f32(-655f + -326f))));
    var var_3 = _wgslsmith_mod_i32(reverseBits(var_0.c.x), ~(~func_3(var_0.c).c.x) >> (countOneBits(21276u) % 32u));
    return firstTrailingBit(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a)));
    var var_1 = vec4<u32>(global2.c.b, _wgslsmith_dot_vec4_u32(func_1(_wgslsmith_mod_vec2_i32(global2.c.c.ww, vec2<i32>(74664i, 22667i))), u_input.c), u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.c.xxy, _wgslsmith_mult_vec3_u32(vec3<u32>(global2.c.b, global2.c.b, 31631u), vec3<u32>(1u, 0u, u_input.b.x)))) & ((~(~vec4<u32>(u_input.c.x, global2.c.b, 0u, global2.c.b)) << ((~vec4<u32>(50789u, 48433u, global2.c.b, u_input.b.x) << (~vec4<u32>(global2.c.b, global2.c.b, global2.c.b, global2.c.b) % vec4<u32>(32u))) % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u)));
    global0 = array<i32, 10>();
    var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, ~var_1.x, u_input.a, 67986u), func_1(_wgslsmith_div_vec2_i32(global2.c.c.xx, global2.c.c.wy))), ~abs(u_input.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(106f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * -770f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f + 191f))));
    let var_3 = vec2<bool>(false, global2.c.a.x);
    var var_4 = vec3<i32>(~u_input.d, u_input.d, _wgslsmith_dot_vec2_i32(~((vec2<i32>(global2.b, u_input.d) << (u_input.b % vec2<u32>(32u))) & abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global2.b))), global2.c.c.ww));
    let var_5 = -221f;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b >> (~(~_wgslsmith_div_u32(global2.c.b, u_input.c.x)) % 32u), -939f, firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(global2.b, 13793i << (var_1.x % 32u)), _wgslsmith_div_i32(~(-1i), global2.c.c.x))));
}

