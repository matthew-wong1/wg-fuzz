struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec2<i32> = vec2<i32>(-3970i, 2147483647i);

var<private> global2: vec4<f32> = vec4<f32>(-1558f, -146f, -461f, -829f);

var<private> global3: vec3<f32> = vec3<f32>(1029f, -962f, -878f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> f32 {
    global0 = array<Struct_1, 32>();
    var var_0 = !(u_input.a.x <= countOneBits(_wgslsmith_mult_i32(1i, select(-2147483647i, -42923i, false))));
    let var_1 = ~(~vec4<u32>(_wgslsmith_clamp_u32(~7568u, _wgslsmith_mod_u32(1u, 1u), ~arg_0.x), ~1u, arg_0.x, ~0u | (4983u ^ arg_0.x)));
    var var_2 = -u_input.a;
    let var_3 = 0i;
    return _wgslsmith_f_op_f32(abs(1f));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> bool {
    var var_0 = Struct_1(select(vec4<bool>(!all(vec2<bool>(arg_0.x, arg_0.x)), !all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(arg_0.x, true, !arg_0.x), false), !(!(!vec4<bool>(false, arg_0.x, true, arg_0.x))), all(!vec4<bool>(true, true, arg_0.x, true)) | false), 1211f, vec4<bool>(all(arg_0), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(20731u, 279u), vec2<u32>(1u, 5643u))) == min(abs(1u), ~4294967295u), !arg_0.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(297f)), _wgslsmith_f_op_f32(step(global2.x, 1267f)), _wgslsmith_f_op_f32(-global2.x), arg_3))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1997f, 388f, global3.x, 1053f))))));
    var var_1 = ~1u;
    let var_2 = vec4<i32>(7074i, ~global1.x, arg_2.x, 30465i);
    let var_3 = 103f;
    var var_4 = reverseBits(-_wgslsmith_div_vec4_i32(u_input.a, reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, -3662i, arg_2.x, global1.x), vec4<i32>(-1i, arg_2.x, -2147483647i, 2147483647i)))));
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f * -1878f)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(func_2(vec4<u32>(0u, 0u, 1u, 16360u), 39506u, arg_1.c.wx, vec4<bool>(true, arg_0, arg_0, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + -342f), -691f)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.zxx) - vec3<f32>(545f, 478f, global3.x))) - var_0));
    let var_1 = Struct_1(select(arg_1.a, vec4<bool>(func_3(!arg_1.a.wyw, u_input.a.x, ~u_input.a.wwx, -476f), true, true, true), arg_1.a), var_0.x, vec4<bool>(false, arg_1.a.x, true, all(arg_1.c.yyy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.d)) + arg_1.d) * arg_1.d) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.d)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_1.d.wyy))) + vec3<f32>(_wgslsmith_div_f32(var_0.x, global2.x), _wgslsmith_f_op_f32(1028f + -621f), -445f)))));
    global1 = -reverseBits(min(u_input.a.yz, ~(vec2<i32>(-1i, -40393i) | vec2<i32>(global1.x, 26236i))));
    return select(select(select(!arg_1.a.wz, select(var_1.c.yw, select(var_1.c.yx, vec2<bool>(arg_1.c.x, var_1.a.x), arg_1.a.x), true), arg_1.a.x), vec2<bool>(true, true), !var_1.a.wz), arg_1.c.xx, !(!select(var_1.a.wy, select(var_1.a.zx, vec2<bool>(arg_1.a.x, true), arg_0), var_1.a.yx)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> vec2<bool> {
    var var_0 = global2.xzy;
    var var_1 = 53472u;
    global0 = array<Struct_1, 32>();
    var_0 = global2.zxw;
    var var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(firstTrailingBit(firstLeadingBit(0u))), 32u)];
    return vec2<bool>(0i >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(u_input.a), min(vec4<i32>(2147483647i, arg_1, 0i, 0i), vec4<i32>(0i, arg_1, -2147483647i, arg_1))), ~vec4<i32>(-21080i, u_input.a.x, u_input.a.x, 2147483647i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), arg_0.x);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    var var_0 = global2.yyy;
    var var_1 = ~vec3<u32>(max(_wgslsmith_div_u32(_wgslsmith_mult_u32(54758u, 0u), 1u), abs(firstLeadingBit(1u))), 58587u, min(max(~26085u, 72628u), ~firstTrailingBit(51654u)));
    var var_2 = !(!(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), false), true)));
    var var_3 = global0[_wgslsmith_index_u32(var_1.x, 32u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, min(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 51303u, var_1.x), vec4<u32>(17295u, var_1.x, var_1.x, 42038u)) ^ firstTrailingBit(var_1.x)) << ((_wgslsmith_dot_vec3_u32(~vec3<u32>(47103u, 0u, var_1.x), max(vec3<u32>(74605u, 65188u, 1u), vec3<u32>(7918u, var_1.x, 1u))) >> (1u % 32u)) % 32u)), 32u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = -(~(~_wgslsmith_div_vec2_i32(-u_input.a.xz, _wgslsmith_clamp_vec2_i32(vec2<i32>(35194i, -28657i), u_input.a.yw, u_input.a.wz))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_1.d, arg_0.d)))))));
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_div_u32(4294967295u, 4294967295u >> (1u % 32u));
    let var_1 = global0[_wgslsmith_index_u32(0u, 32u)];
    return arg_0;
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(1u, 32u)];
    let var_1 = any(var_0.a.zx);
    let var_2 = u_input.a;
    var var_3 = Struct_1(!var_0.c, global3.x, vec4<bool>(all(vec2<bool>(func_4(var_0.c.wx, u_input.a.x).x, false)), !all(func_6(global0[_wgslsmith_index_u32(arg_0.x, 32u)], arg_1).a), var_1, var_0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(530f * global3.x) + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))), -390f, _wgslsmith_f_op_f32(f32(-1f) * -936f)) + _wgslsmith_f_op_vec4_f32(arg_1.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d - var_0.d)))));
    var var_4 = var_0.b;
    return StorageBuffer(-902f, -42862i, 1i, 89256u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a.zz)));
    global1 = u_input.a.ww;
    let var_1 = 4294967295u;
    let var_2 = u_input.a.x;
    var var_3 = global2.x;
    let x = u_input.a;
    s_output = func_7(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_1, 0u, 18889u)), vec3<u32>(0u, 7888u, ~var_1)) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(70347u, 4294967295u, var_1), ~vec3<u32>(82344u, var_1, var_1)), func_6(func_5(-33263i, func_4(func_1(true, Struct_1(vec4<bool>(false, false, false, false), global3.x, vec4<bool>(false, true, false, true), vec4<f32>(global2.x, global2.x, -1000f, -599f))), var_0.x)), Struct_1(vec4<bool>(func_4(vec2<bool>(false, true), -27723i).x, true, true, false), _wgslsmith_f_op_f32(f32(-1f) * -274f), vec4<bool>(true, func_1(false, Struct_1(vec4<bool>(false, true, true, true), 635f, vec4<bool>(false, false, true, false), vec4<f32>(-568f, -800f, global2.x, -1016f))).x, true, func_4(vec2<bool>(false, false), global1.x).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, -185f, -568f, 371f) * vec4<f32>(global3.x, -1136f, 448f, global2.x))))));
}

