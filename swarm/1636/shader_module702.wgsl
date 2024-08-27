struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(15656i, 2147483647i, -6829i, -28497i);

var<private> global1: f32 = 1000f;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), 26908i, 60537u, 66279u, 1u)), -1i, vec2<i32>(4345i, 8538i), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 0i, 4294967295u, 18717u, 4294967295u)), Struct_2(Struct_1(vec2<i32>(1i, 64713i), -44786i, 70317u, 69774u, 74650u)));

var<private> global3: array<bool, 30>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<i32> {
    global0 = -firstLeadingBit(max(firstTrailingBit(vec4<i32>(-4835i, 74727i, global0.x, -14509i)) ^ vec4<i32>(0i, 2147483647i, -2147483647i, 2147483647i), -_wgslsmith_div_vec4_i32(vec4<i32>(28471i, 2706i, arg_0.x, global0.x), vec4<i32>(3931i, global0.x, arg_0.x, arg_0.x))));
    var var_0 = ~(56539u | _wgslsmith_mult_u32(reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.a.c, u_input.a.x, 5194u, global2.a.a.e), vec4<u32>(27996u, 22063u, global2.a.a.d, u_input.a.x)))) ^ ~abs(u_input.a.x);
    let var_1 = 100f;
    return vec4<i32>(10742i, 7582i, _wgslsmith_dot_vec2_i32(arg_3, (global2.a.a.a >> (u_input.a % vec2<u32>(32u))) ^ arg_0.xz) << (firstTrailingBit(select(_wgslsmith_clamp_u32(u_input.a.x, global2.a.a.c, u_input.a.x), 1u, global3[_wgslsmith_index_u32(6085u >> (u_input.a.x % 32u), 30u)])) % 32u), global0.x);
}

fn func_2() -> Struct_3 {
    let var_0 = 1f;
    global0 = -(firstLeadingBit(-(vec4<i32>(-2147483647i, global0.x, -2147483647i, 1i) >> (vec4<u32>(u_input.a.x, global2.e.a.d, u_input.a.x, 3125u) % vec4<u32>(32u)))) & vec4<i32>(global0.x | _wgslsmith_dot_vec3_i32(global0.yww, vec3<i32>(1i, global0.x, global0.x)), 26390i, global2.b, global2.d.a.a.x));
    var var_1 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(-31814i, _wgslsmith_clamp_i32(countOneBits(0i), -27041i, global0.x)), -select(-global0.x, ~2147483647i, true));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-487f, 114f)) - _wgslsmith_f_op_f32(-157f - 1743f)), var_0, true)), -650f) - var_0);
    return Struct_3(Struct_2(global2.e.a), -_wgslsmith_dot_vec4_i32(func_3(vec3<i32>(global0.x, -1i, 1i), global3[_wgslsmith_index_u32(u_input.a.x, 30u)], vec2<f32>(534f, -220f), global0.zz), _wgslsmith_mod_vec4_i32(vec4<i32>(-37182i, 26993i, -2147483647i, 82526i), vec4<i32>(global0.x, 20390i, -20298i, global0.x))) ^ ~(-29i), global2.c, global2.d, global2.e);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: f32) -> vec4<bool> {
    global2 = func_2();
    global2 = arg_0.d;
    var var_0 = func_2();
    var var_1 = global0.xyx;
    global0 = ~(~_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 78427i, 2147483647i, -61519i), vec4<i32>(global0.x, var_1.x, 20199i, arg_0.d.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, global0.x, global0.x, -34416i) | vec4<i32>(-13163i, global2.c.x, var_0.e.a.b, 21296i), select(vec4<i32>(global0.x, -31807i, 2147483647i, var_0.c.x), vec4<i32>(-2147483647i, -1i, -2147483647i, arg_0.c.b), arg_1))));
    return select(arg_1, !(!(!arg_1)), arg_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    global3 = array<bool, 30>();
    global0 = _wgslsmith_mult_vec4_i32(select(~firstLeadingBit(~vec4<i32>(arg_1.a.b, -18711i, global0.x, global0.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(global2.d.a.b, arg_1.a.a.x, 122268i, global0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.b, 3089i, -46116i, 1i), vec4<i32>(global2.e.a.a.x, global2.a.a.a.x, global0.x, arg_1.a.b), vec4<i32>(global0.x, 1i, global2.a.a.b, global0.x))) << (~(~vec4<u32>(global2.e.a.d, global2.e.a.c, arg_1.a.c, 43663u)) % vec4<u32>(32u)), !(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 30u)], false, false)))), select(-(~vec4<i32>(global2.d.a.b, -13050i, -3441i, global2.a.a.a.x)), vec4<i32>(reverseBits(global0.x), -22500i, -(i32(-1i) * -25688i), _wgslsmith_clamp_i32(-2147483647i, ~(-1i), ~2147483647i)), func_4(Struct_5(!global3[_wgslsmith_index_u32(arg_1.a.c, 30u)], global2.e, func_2(), func_2(), ~4294967295u), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(72242u, global2.d.a.c), 30u)], !global3[_wgslsmith_index_u32(u_input.a.x, 30u)], !global3[_wgslsmith_index_u32(global2.e.a.e, 30u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2063f * arg_0.x)))));
    global3 = array<bool, 30>();
    let var_0 = ~_wgslsmith_mod_u32(4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.a.d, u_input.a.x, global2.d.a.c), reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)))));
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.a & ~vec2<u32>(1u, _wgslsmith_clamp_u32(var_0, 1u, 19903u)), u_input.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(394f, -200f)))))), _wgslsmith_f_op_f32(trunc(520f)), global3[_wgslsmith_index_u32(~(~func_1(vec4<f32>(-172f, -229f, 1116f, 650f), Struct_2(global2.d.a))), 30u)]));
    var var_0 = func_2().e;
    let var_1 = firstLeadingBit(~((~vec4<u32>(u_input.a.x, global2.a.a.c, global2.a.a.e, global2.d.a.c) >> (~vec4<u32>(50573u, global2.d.a.c, global2.a.a.d, var_0.a.c) % vec4<u32>(32u))) << (~(~vec4<u32>(u_input.a.x, 0u, 3239u, global2.a.a.c)) % vec4<u32>(32u))));
    var var_2 = func_2().d.a;
    global2 = Struct_3(Struct_2(func_2().a.a), var_2.a.x, vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, -2147483647i, -2147483647i, 2147483647i), ~vec4<i32>(var_2.b, 0i, var_0.a.a.x, 0i)), ~(-30764i)) & max(vec2<i32>(-var_2.b, -21940i), ~vec2<i32>(global0.x, 2147483647i)), global2.a, func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-166f - 692f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - -885f) + _wgslsmith_f_op_f32(sign(-370f)))))));
}

