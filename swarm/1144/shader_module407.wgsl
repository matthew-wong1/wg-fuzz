struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, false, false, true, false, true, false, true, false, false, false, false, true, true, true, false, false, true, true, false, true, true, true, true);

var<private> global1: u32 = 11445u;

var<private> global2: array<f32, 26>;

var<private> global3: array<bool, 30>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = ~1u;
    global2 = array<f32, 26>();
    var var_1 = ~vec4<i32>(~(-(~2147483647i)), _wgslsmith_add_i32(~_wgslsmith_mod_i32(-26293i, u_input.c.x), i32(-1i) * -9348i), 31643i, -1i);
    var var_2 = arg_2.x <= 1i;
    return vec2<u32>(_wgslsmith_mult_u32(1u, 1u), 58103u);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(626f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 26u)])) - global2[_wgslsmith_index_u32(arg_1.x, 26u)])));
    global1 = 1u;
    global2 = array<f32, 26>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 55733u, 44072u), arg_1), arg_1.x), 26u)] * global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(0u), _wgslsmith_mult_u32(u_input.a, u_input.a)), 26u)])));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.a, ~arg_1.x, 5836u, countOneBits(arg_1.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1.x, arg_1.x, 12830u), select(vec4<u32>(48277u, u_input.a, 14120u, 6180u), vec4<u32>(1u, arg_1.x, arg_1.x, 1u), vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(0u, 30u)], true, false))), 1u, _wgslsmith_sub_u32(~27702u, 56280u), 53402u)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(41473u, u_input.a, _wgslsmith_mult_u32(~(~arg_1.x), func_1(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 25u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(2608u, 26u)], 219f), vec4<i32>(1i, 1i, 1i, 1i)).x)), 25u)]);
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(var_1.a), ~abs(var_1.a ^ (vec4<u32>(41711u, var_1.a.x, var_1.a.x, arg_1.x) << (vec4<u32>(u_input.a, 0u, u_input.a, var_1.a.x) % vec4<u32>(32u)))));
}

fn func_2() -> vec3<u32> {
    var var_0 = countOneBits(abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(~u_input.c.x, -50246i))));
    let var_1 = true;
    global0 = array<bool, 25>();
    global1 = u_input.a;
    var var_2 = Struct_2(~min(func_3(-1i, ~vec3<u32>(40983u, u_input.a, 17759u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 59819u), ~u_input.a, ~16485u, u_input.a)), all(vec3<bool>(global0[_wgslsmith_index_u32(~24109u, 25u)], true, false)));
    return vec3<u32>(44857u, var_2.a.x, u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.a ^ arg_0.a, vec4<u32>(arg_1, 44973u, u_input.a, 0u)), arg_0.a)), false);
    let var_1 = Struct_2(vec4<u32>(~abs(var_0.a.x), 4467u, ~4294967295u, arg_2.x), true);
    let var_2 = Struct_1(-707f);
    global3 = array<bool, 30>();
    global2 = array<f32, 26>();
    return StorageBuffer(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b >> (var_1.a.x % 32u)), countOneBits(vec4<i32>(u_input.c.x, -9778i, 0i, u_input.b)) & ~vec4<i32>(0i, -27621i, u_input.b, -2147483647i), true), _wgslsmith_sub_vec4_i32(vec4<i32>(-54629i, u_input.b, 1549i, u_input.c.x) << (~var_1.a % vec4<u32>(32u)), ~vec4<i32>(-45847i, u_input.b, u_input.c.x, u_input.b))), -1226f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~u_input.a, u_input.a) | u_input.a), 26u)]);
    let var_1 = var_0;
    global0 = array<bool, 25>();
    let var_2 = _wgslsmith_mult_vec2_u32(func_1(select(vec2<bool>(global3[_wgslsmith_index_u32(28758u, 30u)], false), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(17721u, 30u)]), true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -648f)), abs(vec4<i32>(u_input.b, u_input.b, u_input.c.x, -11801i))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), min(vec2<u32>(u_input.a, 50326u), vec2<u32>(4294967295u, u_input.a)) & (vec2<u32>(27866u, u_input.a) << (vec2<u32>(36781u, u_input.a) % vec2<u32>(32u))))) >> ((~(firstLeadingBit(vec2<u32>(19982u, u_input.a)) & ~vec2<u32>(15415u, u_input.a)) ^ (_wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 4294967295u)) ^ firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(12592u, 1u), vec2<u32>(u_input.a, 10952u))))) % vec2<u32>(32u));
    global1 = 26054u ^ ~u_input.a;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = func_4(Struct_2(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 21842u, u_input.a), vec4<u32>(u_input.a, 4267u, 1u, 4294967295u))), any(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 30u)])))), 0u, min(func_2(), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_2.x, u_input.a), vec3<u32>(57762u, u_input.a, var_2.x)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(51461u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, var_2.x, 24028u)) % vec3<u32>(32u))));
}

