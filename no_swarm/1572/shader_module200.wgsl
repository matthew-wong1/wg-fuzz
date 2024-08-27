struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(false), 0u);

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(-204f, Struct_1(false)), Struct_2(642f, Struct_1(false)), Struct_2(821f, Struct_1(false)), Struct_2(143f, Struct_1(true)), Struct_2(106f, Struct_1(false)), Struct_2(1604f, Struct_1(false)), Struct_2(1000f, Struct_1(false)), Struct_2(-862f, Struct_1(false)), Struct_2(-336f, Struct_1(false)), Struct_2(-1242f, Struct_1(false)), Struct_2(1000f, Struct_1(false)), Struct_2(387f, Struct_1(false)), Struct_2(2837f, Struct_1(true)), Struct_2(-1326f, Struct_1(true)), Struct_2(2669f, Struct_1(false)), Struct_2(-1549f, Struct_1(false)), Struct_2(-604f, Struct_1(false)), Struct_2(103f, Struct_1(true)), Struct_2(-1571f, Struct_1(true)), Struct_2(-1963f, Struct_1(false)), Struct_2(1172f, Struct_1(false)), Struct_2(590f, Struct_1(false)), Struct_2(1000f, Struct_1(true)), Struct_2(819f, Struct_1(false)), Struct_2(-1030f, Struct_1(true)), Struct_2(670f, Struct_1(true)), Struct_2(-1074f, Struct_1(false)), Struct_2(-418f, Struct_1(false)), Struct_2(-945f, Struct_1(true)), Struct_2(-459f, Struct_1(false)), Struct_2(1597f, Struct_1(true)), Struct_2(156f, Struct_1(true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(u_input.a, u_input.a, 2147483647i)), reverseBits(u_input.a)) ^ min(-1i, u_input.a), -(firstLeadingBit(-1i) ^ u_input.a), i32(-1i) * -firstLeadingBit(arg_0.x), firstLeadingBit(arg_0.x << (u_input.d % 32u))), _wgslsmith_add_vec4_i32(~countOneBits(vec4<i32>(-1i, u_input.a, arg_0.x, 7833i) >> (vec4<u32>(1988u, u_input.d, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(26475i, -5523i, arg_0.x, u_input.a) | vec4<i32>(u_input.a, 2147483647i, 1i, 0i), max(vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, u_input.c.x), vec4<i32>(arg_0.x, 2147483647i, arg_0.x, u_input.a))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -30146i, 1i, u_input.a), vec4<i32>(u_input.c.x, arg_0.x, 1i, 0i), vec4<i32>(-2809i, -2147483647i, 23016i, u_input.a)), firstTrailingBit(vec4<i32>(arg_0.x, 1i, -1i, u_input.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c.x, -31603i, 11177i) & vec4<i32>(arg_0.x, u_input.c.x, 13090i, arg_0.x), -vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, arg_0.x), vec4<i32>(arg_0.x, 1i, 68173i, arg_0.x)))));
    global1 = array<vec4<u32>, 16>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(154f, -924f, 100f, -714f), vec4<f32>(1031f, 1007f, -1000f, -2607f))) * vec4<f32>(1114f, 985f, 1913f, -1458f)) + vec4<f32>(-2296f, _wgslsmith_f_op_f32(f32(-1f) * -906f), -1323f, _wgslsmith_f_op_f32(f32(-1f) * -939f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-859f, 999f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2663f, var_2.x), vec2<f32>(var_2.x, var_2.x), arg_1.x)) - _wgslsmith_f_op_vec2_f32(var_2.zz + vec2<f32>(856f, -437f)))))));
    return abs(~4221u);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    global0 = Struct_3(Struct_1(true), 0u);
    global0 = Struct_3(Struct_1(true), func_3(u_input.c, vec4<bool>(true, all(vec2<bool>(arg_2.a, true)) | true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -711f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1179f, 1727f)) * _wgslsmith_f_op_f32(func_2(-37510i, vec3<i32>(u_input.c.x, u_input.a, u_input.a), global0.a))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)));
    global0 = Struct_3(Struct_1(all(select(select(vec2<bool>(global0.a.a, false), vec2<bool>(global0.a.a, false), vec2<bool>(global0.a.a, false)), !vec2<bool>(global0.a.a, global0.a.a), !vec2<bool>(true, global0.a.a)))), u_input.b);
    let var_2 = reverseBits(~vec3<i32>(-countOneBits(41632i), -1i, 0i));
    let var_3 = global0.a;
    return !(!(47276i >= (u_input.c.x & -62876i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec3<bool>(true, all(vec3<bool>(true, global0.a.a, global0.a.a)), any(vec4<bool>(false, false, global0.a.a, true))), vec3<bool>(true, global0.a.a, all(!vec4<bool>(global0.a.a, global0.a.a, true, global0.a.a))), vec3<bool>(all(vec3<bool>(true, global0.a.a, global0.a.a)), any(vec4<bool>(global0.a.a, global0.a.a, true, global0.a.a)), any(!vec3<bool>(global0.a.a, true, global0.a.a)))), select(!(!vec3<bool>(global0.a.a, global0.a.a, true)), vec3<bool>(global0.a.a, true, false), !select(!vec3<bool>(global0.a.a, global0.a.a, global0.a.a), !vec3<bool>(global0.a.a, global0.a.a, global0.a.a), !vec3<bool>(true, global0.a.a, global0.a.a))), vec3<bool>(global0.a.a || !global0.a.a, global0.a.a, global0.a.a));
    let var_1 = select(!select(!vec3<bool>(true, false, var_0.x), select(!var_0, vec3<bool>(global0.a.a, var_0.x, false), var_0), false), var_0, true);
    let var_2 = -1279f;
    var var_3 = abs(vec3<i32>(u_input.c.x << (_wgslsmith_clamp_u32(43922u, global0.b, 4294967295u) % 32u), _wgslsmith_add_i32(-1i, ~25815i), -44181i)) << (~reverseBits(~(~vec3<u32>(u_input.b, global0.b, u_input.e))) % vec3<u32>(32u));
    global2 = array<Struct_2, 32>();
    let var_4 = Struct_4(~max(~17869u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 16060u, global0.b, 22846u), global1[_wgslsmith_index_u32(global0.b, 16u)])), ~select(var_3.x, min(0i, -20447i), global0.a.a | true) ^ (-2304i & -firstTrailingBit(28472i)), ~_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(23871i, var_3.x)), !vec4<bool>(true, func_1(), any(var_0), u_input.e != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(4294967295u, 13029u))));
    let var_5 = countOneBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(-u_input.c.x), var_4.c), ~69359i));
    global1 = array<vec4<u32>, 16>();
    var var_6 = _wgslsmith_mult_vec2_i32(u_input.c.yx, var_3.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, var_6.x, -8098i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, var_5, var_5, u_input.c.x), vec4<i32>(0i, -45734i, u_input.c.x, var_4.b), vec4<i32>(var_3.x, -38038i, -3562i, 16423i))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 41990i, 22360i, ~var_4.b), ~(vec4<i32>(36468i, var_4.b, u_input.a, 2147483647i) | vec4<i32>(var_4.c, var_5, var_4.c, var_4.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1223f, 1507f, var_2)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, var_2, 802f)))))), ~2147483647i, -1005f);
}

