struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(3404i, 8813i);

var<private> global1: array<f32, 30>;

var<private> global2: vec2<u32>;

var<private> global3: i32 = 2678i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(select(true, global1[_wgslsmith_index_u32(arg_1.b.x, 30u)] >= -1176f, true), global1[_wgslsmith_index_u32(~56863u, 30u)] != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 30u)] * global1[_wgslsmith_index_u32(arg_1.b.x, 30u)]), select(true, true, all(vec4<bool>(true, true, false, true)))), vec3<bool>(true, true, true));
    global3 = arg_1.a.x;
    return !vec2<bool>(all(var_0.yz), !var_0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = u_input.a ^ arg_0.x;
    var var_1 = !func_3(4294967295u, Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, arg_2.b.x), vec3<i32>(2147483647i, global0.x, arg_2.b.x)), vec3<i32>(arg_1.x, global0.x, 2147483647i)), ~vec3<u32>(0u, 41850u, 36198u)));
    var var_2 = Struct_1(vec2<u32>(~firstLeadingBit(arg_2.a.x), reverseBits(0u)), arg_1, firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.c.x, 4294967295u), arg_2.c) << ((arg_0.xw | vec2<u32>(u_input.a, arg_2.c.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(arg_2.c, abs(vec2<u32>(0u, global2.x))))));
    var_0 = 4294967295u;
    global2 = var_2.a;
    return 4294967295u | (arg_0.x ^ _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 78473u, 4294967295u) ^ arg_0.zwz), firstTrailingBit(arg_0.zwz)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = ~min(firstTrailingBit(vec3<u32>(35271u, global2.x & 30404u, ~global2.x)), ~(~(~vec3<u32>(u_input.a, 1u, u_input.a))));
    var var_1 = Struct_1(~(~(~vec2<u32>(0u, global2.x))), vec2<i32>(-_wgslsmith_mult_i32(14563i, global0.x), -global0.x) >> (~(~vec2<u32>(u_input.a, 3059u) & vec2<u32>(65136u, var_0.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(u_input.a, ~abs(u_input.a)), global2.x));
    var var_2 = u_input.a;
    var_2 = _wgslsmith_div_u32(79142u, ~u_input.a ^ (func_2(vec4<u32>(0u, global2.x, 0u, 1900u), select(var_1.b, vec2<i32>(var_1.b.x, var_1.b.x), true), Struct_1(vec2<u32>(4294967295u, global2.x), vec2<i32>(global0.x, var_1.b.x), var_0.xy), _wgslsmith_f_op_f32(-arg_0.x)) ^ (4294967295u | ~global2.x)));
    global3 = -1i;
    return select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, arg_1.x, true, false), arg_1.x && true), false), vec4<bool>(select((var_1.b.x >= 0i) | func_3(0u, Struct_2(vec3<i32>(2147483647i, var_1.b.x, 10894i), vec3<u32>(var_1.c.x, var_1.a.x, var_0.x))).x, true, arg_1.x | arg_1.x), arg_1.x, true, true), select(vec4<bool>(!(arg_0.x == global1[_wgslsmith_index_u32(1u, 30u)]), any(arg_1), !(global0.x < global0.x), !arg_1.x), !vec4<bool>(all(vec4<bool>(true, true, arg_1.x, false)), arg_1.x, any(vec3<bool>(arg_1.x, arg_1.x, true)), true), arg_1.x));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~(~global2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(645f))) - _wgslsmith_f_op_f32(1013f - 332f)), 294f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -423f))));
    var_0 = (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, 2404u, arg_2.x, 47631u), vec4<u32>(4294967295u, arg_2.x, 49079u, 12031u), true), abs(vec4<u32>(66149u, u_input.a, 4294967295u, arg_2.x))), reverseBits(~vec4<u32>(62279u, u_input.a, 4294967295u, global2.x))) << (firstTrailingBit(_wgslsmith_mod_u32(4294967295u, ~1u)) % 32u)) & arg_2.x;
    global0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, global0.x), _wgslsmith_add_vec2_i32(-vec2<i32>(-1i, 8880i), firstLeadingBit(~vec2<i32>(global0.x, global0.x)))), ~select(vec2<i32>(global0.x, firstTrailingBit(global0.x)), firstTrailingBit(reverseBits(vec2<i32>(global0.x, global0.x))), vec2<bool>(true, true)));
    let var_2 = Struct_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, firstTrailingBit(global0.x), -12010i), reverseBits(~countOneBits(vec3<i32>(global0.x, global0.x, global0.x)))), max(firstLeadingBit(~(vec3<u32>(arg_2.x, arg_2.x, 1u) ^ vec3<u32>(arg_2.x, 35778u, 4294967295u))), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, u_input.a, u_input.a), vec3<u32>(0u, arg_2.x, u_input.a)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, u_input.a, global2.x), vec3<u32>(global2.x, u_input.a, arg_2.x))))));
    return var_2;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = 30524u;
    var var_1 = !(-3305i < (-2147483647i >> (max(28988u, global2.x) % 32u))) == true;
    let var_2 = Struct_2(-min(_wgslsmith_add_vec3_i32(arg_1.a, arg_1.a >> (vec3<u32>(arg_1.b.x, 5429u, global2.x) % vec3<u32>(32u))), func_4(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1672f, global1[_wgslsmith_index_u32(32505u, 30u)], -809f) * vec4<f32>(3803f, arg_2.x, global1[_wgslsmith_index_u32(6619u, 30u)], arg_0.x)), arg_1.b.yy ^ vec2<u32>(global2.x, 0u)).a), arg_1.b);
    let var_3 = Struct_1(~_wgslsmith_mult_vec2_u32(arg_1.b.xx, min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), arg_1.b.yy), var_2.b.zy)), vec2<i32>(_wgslsmith_div_i32(select(global0.x, abs(global0.x), true), ~(0i >> (arg_1.b.x % 32u))), ~_wgslsmith_sub_i32(13470i, firstLeadingBit(-77424i))), vec2<u32>(global2.x, ~var_2.b.x));
    let var_4 = abs(-(~firstTrailingBit(vec4<i32>(global0.x, 1i, global0.x, 0i)))) >> (vec4<u32>(arg_1.b.x, select(1823u, 1u, true), ~countOneBits(_wgslsmith_add_u32(global2.x, u_input.a)), global2.x) % vec4<u32>(32u));
    return Struct_2(var_4.xzx, vec3<u32>(global2.x, ~var_3.c.x, arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 30u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 30u)] - 702f));
    var var_1 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], var_0.x, global1[_wgslsmith_index_u32(13659u, 30u)], 1694f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], -1372f, global1[_wgslsmith_index_u32(u_input.a, 30u)], var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, -669f, 367f, -789f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), 1f, 499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1075f * -1006f) * _wgslsmith_f_op_f32(sign(591f))))), func_4(all(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, var_0.x, -1695f, var_0.x)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(591f, -551f, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(~u_input.a, 30u)]) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1491f, -304f, var_0.x, var_0.x), vec4<f32>(-1898f, 684f, -495f, global1[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(-467f, var_0.x, -428f, var_0.x), vec4<f32>(-1090f, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)])))), vec2<u32>(global2.x, u_input.a)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1377f, 1020f, _wgslsmith_f_op_f32(var_0.x + -597f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 965f, global1[_wgslsmith_index_u32(global2.x, 30u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1343f, var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~(1i >> (1u % 32u)))), ~(-13183i));
}

