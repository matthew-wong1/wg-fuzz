struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: i32;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: vec3<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b.x;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = ~(~_wgslsmith_div_i32(-_wgslsmith_mod_i32(arg_1.c.x, arg_1.c.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(42984i, -18505i, arg_1.c.x), vec3<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x))));
    let var_1 = Struct_3(arg_1.a, global3.yx, -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_1.c.x, -45222i), firstTrailingBit(-4945i), arg_1.c.x & 44904i), vec3<i32>(31252i >> (u_input.a.x % 32u), _wgslsmith_div_i32(2147483647i, arg_1.c.x), arg_1.c.x), abs(vec3<i32>(1i, arg_1.c.x, arg_1.c.x)) | _wgslsmith_add_vec3_i32(vec3<i32>(18542i, -42596i, -25162i), vec3<i32>(2147483647i, 2147483647i, arg_1.c.x))));
    var var_2 = vec4<i32>(var_1.c.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.c >> (max(vec3<u32>(u_input.b, 0u, 0u), u_input.c) % vec3<u32>(32u)), var_1.c), ~_wgslsmith_dot_vec3_i32(vec3<i32>(44331i, 68795i, -2147483647i) ^ var_1.c, _wgslsmith_sub_vec3_i32(var_1.c, vec3<i32>(var_1.c.x, var_1.c.x, -16764i)))), -1i, ~arg_1.c.x);
    var var_3 = _wgslsmith_f_op_f32(sign(434f));
    var var_4 = var_1.b.x;
    return !(_wgslsmith_mult_i32(var_1.c.x, -arg_1.c.x) == var_2.x) & true;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>) -> vec3<i32> {
    global0 = array<Struct_2, 30>();
    let var_0 = ~min(vec2<u32>(_wgslsmith_div_u32(4294967295u, arg_0.x), ~1u), vec2<u32>(u_input.c.x, u_input.b) ^ (~arg_2.xz ^ u_input.c.yy));
    let var_1 = -_wgslsmith_dot_vec4_i32(~reverseBits(~vec4<i32>(arg_1, 1i, -2147483647i, arg_1)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 1i, arg_1, arg_1), vec4<i32>(-1i, -2147483647i, arg_1, arg_1) & vec4<i32>(-26129i, -15599i, arg_1, arg_1))));
    var var_2 = ~vec3<u32>(arg_0.x, _wgslsmith_add_u32(19022u, select(firstTrailingBit(9024u), _wgslsmith_mult_u32(arg_0.x, 4294967295u), true)), 58932u);
    var var_3 = global3.x || func_3(false, Struct_3(Struct_1(false, !vec4<bool>(true, global3.x, false, true), !vec4<bool>(global3.x, global3.x, false, global3.x)), vec2<bool>(false && global3.x, global3.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, var_1, var_1) >> (vec3<u32>(4294967295u, 4294967295u, u_input.b) % vec3<u32>(32u)), vec3<i32>(12148i, 0i, arg_1))));
    return reverseBits(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, 8972i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1, arg_1, 1i), vec3<i32>(-16968i, 0i, 0i))), countOneBits(vec3<i32>(arg_1, var_1, var_1)) << (vec3<u32>(var_0.x, 40857u, u_input.a.x) % vec3<u32>(32u)), min(-vec3<i32>(arg_1, -30758i, 41572i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, arg_1, -715i), vec3<i32>(var_1, arg_1, arg_1), vec3<i32>(var_1, var_1, -2147483647i)))), select(-vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(countOneBits(-2147483647i), -var_1, _wgslsmith_add_i32(-2147483647i, 2147483647i)), vec3<bool>(global3.x, all(vec3<bool>(true, false, false)), global3.x))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = countOneBits(~(~(~u_input.c.zy)));
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, -65924i, _wgslsmith_clamp_i32(arg_2.c.x, -_wgslsmith_clamp_i32(arg_2.c.x, -22899i, 85554i), -39881i), 5192i), countOneBits(abs(vec4<i32>(-arg_2.c.x, arg_3.x, arg_3.x, arg_3.x))));
    var var_2 = -(-(vec3<i32>(-24599i, -2147483647i, arg_3.x) ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.c.x, 1i, var_1.x), arg_3)) >> (_wgslsmith_sub_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u)));
    global1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(13015i, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.c.x >> (u_input.b % 32u), var_1.x), ~var_2.x)), arg_3.x);
    var var_3 = u_input.c.x >> (firstTrailingBit(abs(abs(u_input.c.x))) % 32u);
    return func_1(Struct_1(func_3(arg_1.x, Struct_3(arg_2.a, arg_1, arg_2.c)), !arg_2.a.b, arg_2.a.c));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> i32 {
    return ~(-(~(-1i))) << ((u_input.b << (u_input.b % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-144f + 841f))), _wgslsmith_f_op_f32(-946f * -803f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -291f), 747f)))), global0[_wgslsmith_index_u32(u_input.b, 30u)], Struct_3(func_4(true, select(global2[_wgslsmith_index_u32(u_input.a.x >> (u_input.b % 32u), 27u)], vec2<bool>(global3.x, true), true), Struct_3(func_1(Struct_1(false, vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, false))), vec2<bool>(true, true), firstLeadingBit(vec3<i32>(-10666i, 1i, 1i))), ~func_2(vec2<u32>(4294967295u, 10668u), 0i, vec3<u32>(25116u, 4294967295u, u_input.b))), vec2<bool>(!(global3.x && true), false), ~(~select(vec3<i32>(-10901i, 0i, -62285i), vec3<i32>(-1i, 44869i, -1i), vec3<bool>(global3.x, false, global3.x)))), 59477u);
    global3 = vec3<bool>(true | global3.x, global3.x | false, global3.x);
    global3 = vec3<bool>(global3.x, global3.x, true);
    var var_1 = Struct_2(false, func_4(true, vec2<bool>(global3.x, global3.x), Struct_3(func_4(false, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], Struct_3(Struct_1(global3.x, vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(global3.x, false, false, global3.x)), vec2<bool>(true, true), vec3<i32>(var_0, 0i, var_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 1i, var_0), vec3<i32>(1i, -19145i, var_0))), global3.zx, firstLeadingBit(firstLeadingBit(vec3<i32>(1i, var_0, var_0)))), -vec3<i32>(abs(35429i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(1i, var_0, var_0)), var_0)), select(func_4(func_3(!global3.x, Struct_3(Struct_1(false, vec4<bool>(true, true, global3.x, true), vec4<bool>(false, global3.x, false, global3.x)), global3.zz, vec3<i32>(0i, -1i, var_0))), vec2<bool>(select(false, true, global3.x), !global3.x), Struct_3(Struct_1(false, vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, true, global3.x, true)), !vec2<bool>(global3.x, global3.x), ~vec3<i32>(-1i, var_0, 1i)), vec3<i32>(-var_0, _wgslsmith_mult_i32(var_0, -1i), _wgslsmith_mult_i32(-39597i, var_0))).c, !vec4<bool>(global3.x && true, all(global2[_wgslsmith_index_u32(1u, 27u)]), any(vec4<bool>(false, false, global3.x, global3.x)), false), !vec4<bool>(!global3.x, true, global3.x, true)), 1i);
    global3 = select(!var_1.c.zxz, vec3<bool>(!global3.x | !func_1(var_1.b).b.x, global3.x, true), var_1.a);
    global3 = !select(!vec3<bool>(true, 42023i > var_1.d, true), !(!select(vec3<bool>(var_1.b.c.x, true, var_1.a), var_1.b.b.yzy, var_1.b.b.wxy)), true);
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)))), min(min(1u, ~u_input.c.x) | 0u, u_input.c.x));
}

