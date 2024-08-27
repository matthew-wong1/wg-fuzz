struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: Struct_1 = Struct_1(1345f, vec2<i32>(i32(-2147483648), -61604i), 56187u);

var<private> global2: Struct_1 = Struct_1(-626f, vec2<i32>(-1032i, 72357i), 4294967295u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = global2.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_clamp_vec2_i32(-vec2<i32>(global1.b.x, _wgslsmith_sub_i32(37697i, global2.b.x)), countOneBits(-vec2<i32>(2147483647i, 22327i)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.b, vec2<i32>(global2.b.x, -2147483647i), vec2<i32>(6368i, global1.b.x)), vec2<i32>(-22042i, global2.b.x)) << ((u_input.a.zz ^ ~vec2<u32>(0u, global1.c)) % vec2<u32>(32u))), ~u_input.c.x);
    let var_2 = firstTrailingBit(20403i);
    global0 = array<u32, 32>();
    let var_3 = vec4<i32>(global1.b.x, ~_wgslsmith_mult_i32(2147483647i, var_1.b.x), -_wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(global2.b.x), i32(-1i) * -30525i), abs(abs(global1.b.x))), abs(_wgslsmith_dot_vec3_i32(abs(firstLeadingBit(vec3<i32>(1i, -1i, global2.b.x))), -vec3<i32>(var_0.x, global1.b.x, var_1.b.x) | vec3<i32>(1i, -2147483647i, var_2))));
    return vec4<i32>(-1i, _wgslsmith_add_i32((-var_2 | reverseBits(global1.b.x)) & -38251i, var_2), var_0.x, -56503i);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = (vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, 23106i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, global2.b.x, -58642i), vec3<i32>(-3997i, 1i, global1.b.x))), ~1655i, global2.b.x, global1.b.x) >> (~(~max(vec4<u32>(74034u, 4294967295u, 4294967295u, global2.c), vec4<u32>(arg_0, global0[_wgslsmith_index_u32(34354u, 32u)], 15673u, 339u))) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(global1.b.x, global1.b.x, global2.b.x, global1.b.x), vec4<i32>(global1.b.x, global1.b.x, -1i, global2.b.x), true), vec4<i32>(2147483647i, 11005i, global1.b.x, global1.b.x)), vec4<i32>(-20757i, max(global1.b.x, -2147483647i), -9670i, global1.b.x)), _wgslsmith_div_vec4_i32(func_3(vec2<bool>(true, true)), vec4<i32>(firstLeadingBit(global1.b.x), global2.b.x, 1i, i32(-1i) * -2147483647i)));
    global1 = Struct_1(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(global1.a - -1436f))), _wgslsmith_clamp_vec2_i32(global2.b, _wgslsmith_div_vec2_i32(global1.b, vec2<i32>(global1.b.x, countOneBits(global1.b.x))), ~vec2<i32>(-2147483647i, var_0.x) & _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b.x, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 29536i), global2.b))), arg_0);
    global0 = array<u32, 32>();
    let var_1 = _wgslsmith_f_op_f32(select(-2588f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.a, 395f))) - global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1611f)) == 2589f));
    var var_2 = min(vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_mod_i32(select(global1.b.x, var_0.x, false), -9069i), -25782i), countOneBits(vec4<i32>(-(i32(-1i) * -14369i), var_0.x, -(var_0.x << (1u % 32u)), 1i)));
    return Struct_1(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-global1.a)), vec2<i32>(func_3(vec2<bool>(true, true)).x, -1i << (global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(u_input.a.x | 1u, 32u)], 79840u >> (global0[_wgslsmith_index_u32(1u, 32u)] % 32u)), 32u)] % 32u)), countOneBits(13681u));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    let var_0 = func_2(abs(global2.c >> (global0[_wgslsmith_index_u32(arg_1.c, 32u)] % 32u)));
    global2 = Struct_1(-1436f, global2.b, global0[_wgslsmith_index_u32(reverseBits(1u), 32u)]);
    var var_1 = func_2(u_input.a.x);
    let var_2 = var_0.b.x & var_0.b.x;
    var var_3 = func_2(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2.c, global1.c, 1u), vec3<u32>(arg_1.c, global0[_wgslsmith_index_u32(46944u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), vec3<u32>(4294967295u, var_0.c, 66658u))), global2.c, firstTrailingBit(var_0.c))).c;
    return arg_1.c;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-887f)) + _wgslsmith_f_op_f32(-global1.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(func_3(vec2<bool>(false, true)).xy, global1.b), 1i), global2.c);
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let var_1 = _wgslsmith_dot_vec4_u32(abs(u_input.b), u_input.b);
    var var_2 = global2.c;
    return Struct_1(_wgslsmith_f_op_f32(sign(-268f)), var_0.b, ~countOneBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-698f, 1u, Struct_1(-122f, max(global1.b ^ -global1.b, global1.b), func_1(true, Struct_1(-1274f, vec2<i32>(-1i, global1.b.x), u_input.c.x), 1605f, min(max(vec2<u32>(u_input.a.x, global1.c), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], global2.c)), vec2<u32>(3852u, global2.c)))));
    global0 = array<u32, 32>();
    let var_1 = var_0.c;
    let var_2 = any(vec3<bool>(!(true && any(vec2<bool>(true, true))), !(!(-35431i > var_0.b.x)), !(!all(vec4<bool>(true, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-271f)), -1707f), _wgslsmith_sub_vec2_u32(u_input.a.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(0u), 37032u), abs(_wgslsmith_mod_vec2_u32(u_input.b.zx, vec2<u32>(var_0.c, var_1))), ~u_input.b.ww)), -1i, var_0.a);
}

