struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: f32 = 1010f;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec4<u32>(1u, 0u, 1u, 4294967295u), Struct_1(79608i, 39376u, vec3<bool>(true, false, false), vec3<i32>(1i, -26131i, 0i)), Struct_1(9626i, 4294967295u, vec3<bool>(true, true, true), vec3<i32>(3900i, 1i, 2147483647i))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), Struct_1(i32(-2147483648), 0u, vec3<bool>(true, true, false), vec3<i32>(-8459i, 24332i, -1i)), Struct_1(i32(-2147483648), 8451u, vec3<bool>(true, true, false), vec3<i32>(2147483647i, -1i, -5658i))), Struct_2(vec4<u32>(32540u, 26795u, 0u, 21996u), Struct_1(14632i, 0u, vec3<bool>(false, true, true), vec3<i32>(-1i, 12521i, 0i)), Struct_1(-1i, 4408u, vec3<bool>(true, false, true), vec3<i32>(-7037i, -37160i, -47121i))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> f32 {
    global0 = arg_1.a.b.a;
    let var_0 = arg_1.a.b.b;
    let var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1099f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(705f, 1302f)), _wgslsmith_f_op_f32(f32(-1f) * -465f)), arg_1.a.a.b.c.x)), _wgslsmith_f_op_f32(967f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-281f, -939f)))), arg_0 > max(arg_1.a.a.c.d.x, abs(-19974i)))), -406f, -531f);
    var var_2 = arg_1.a.b;
    global2 = array<Struct_2, 3>();
    return var_1.x;
}

fn func_3() -> i32 {
    global1 = 768f;
    global0 = -max(~_wgslsmith_dot_vec4_i32(vec4<i32>(53081i, 2147483647i, -1i, 16722i), vec4<i32>(-53348i, -90763i, 2147483647i, 39312i)), -12159i) | 40867i;
    var var_0 = true;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -124f)))), -1287f, false)), _wgslsmith_f_op_f32(-1f));
    var var_2 = u_input.a.x;
    return -31977i;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = 46902i;
    global1 = -1341f;
    global2 = array<Struct_2, 3>();
    global2 = array<Struct_2, 3>();
    global1 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(func_2(-2147483647i, Struct_5(Struct_3(Struct_2(vec4<u32>(21652u, 25909u, 0u, u_input.a.x), Struct_1(-31192i, 26697u, vec3<bool>(false, false, true), vec3<i32>(1i, arg_0.x, arg_0.x)), Struct_1(arg_0.x, u_input.a.x, vec3<bool>(false, false, true), arg_0.yxy)), Struct_1(arg_0.x, 4294967295u, vec3<bool>(false, false, false), vec3<i32>(arg_0.x, 2147483647i, 0i))))))));
    return Struct_2(~(~abs(select(vec4<u32>(arg_2.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, arg_2.x, arg_2.x), true))), Struct_1(2147483647i, 0u, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec2<bool>(true, true)), true), true), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 23434i, 15248i), _wgslsmith_mod_vec3_i32(arg_0.xzx, arg_0.wzy))), Struct_1(func_3(), select(~arg_2.x, _wgslsmith_add_u32(106194u, arg_2.x), 45791u < arg_2.x) | arg_2.x, vec3<bool>(true, true, true), -_wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_0.x, arg_0.x, 38507i), arg_0.yyx), arg_0.zwy)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -888f;
    global0 = firstLeadingBit(_wgslsmith_div_i32(~_wgslsmith_div_i32(firstTrailingBit(-18i), _wgslsmith_dot_vec4_i32(vec4<i32>(15825i, 0i, -16701i, 0i), vec4<i32>(1i, 1749i, -2147483647i, 54223i))), -2147483647i));
    global0 = min(-19699i, 0i << (_wgslsmith_sub_u32(~(u_input.a.x << (1u % 32u)), u_input.a.x) % 32u));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(abs(-160f)), func_1(vec4<i32>(1i, 1i, 1i, 1i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), -638f), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 0u), u_input.a.x), vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(19622u, 4294967295u)))), Struct_1(43688i, ~24237u, vec3<bool>(false, false, true), func_1(vec4<i32>(_wgslsmith_mult_i32(4044i, 0i), i32(-1i) * -32495i, 1i, 1i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(545f, 350f))), _wgslsmith_clamp_vec2_u32(u_input.a.yx, ~vec2<u32>(u_input.a.x, 0u), ~u_input.a.zy)).b.d), func_1(vec4<i32>(i32(-1i) * -2147483647i, -33733i, ~1i, 7418i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f * -1197f)), _wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(404f - 322f))), _wgslsmith_div_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xz), u_input.a.yy), vec2<u32>(4294967295u, ~33816u))).b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a.x, 8653u, 4294967295u, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) & ~vec4<u32>(113840u, u_input.a.x, u_input.a.x, 1u)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 6524u, 23968u), vec4<u32>(0u, 23846u, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 48872u, 84100u, u_input.a.x) & vec4<u32>(12223u, u_input.a.x, 50945u, 0u))), 3u)]);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, reverseBits(-42926i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), var_0.d.d.yz)) | 45884i, var_0.e.c.a), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, -9947i, -1i), vec4<i32>(var_0.b.b.d.x, var_0.e.b.d.x, 1i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.d.x, 14977i, 0i, var_0.c.a), vec4<i32>(36473i, -26206i, var_0.d.a, 5525i)))), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.e.c.d.x, 13585i, var_0.d.d.x, -72i), vec4<i32>(var_0.e.c.a, -2147483647i, -9886i, -9772i))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-144f, _wgslsmith_f_op_f32(var_0.a + -583f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1729f))), var_0.e, var_0.c, var_0.c, Struct_2(vec4<u32>(var_0.c.b, firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.e.a.zww, vec3<u32>(u_input.a.x, 26575u, 4294967295u))), var_0.c.b, ~(u_input.a.x & var_0.b.b.b)), Struct_1(46795i, var_0.c.b, vec3<bool>(var_0.c.c.x && var_0.c.c.x, true, true), var_0.d.d), Struct_1(var_0.e.c.a, 0u, var_0.d.c, var_0.e.c.d)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(802f - 435f), global2[_wgslsmith_index_u32(reverseBits(abs(1u)), 3u)], func_1(firstLeadingBit(vec4<i32>(1i, var_0.e.b.a, -var_0.c.a, -2147483647i)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1151f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -671f)))), vec2<u32>(~1u, ~u_input.a.x)).b, var_0.e.c, func_1(vec4<i32>(-1i) * -select(vec4<i32>(var_0.b.b.a, 24272i, 43808i, -1i), vec4<i32>(1i, 12446i, 0i, var_0.e.b.a), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-660f, -1511f) - vec2<f32>(var_0.a, var_0.a)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, -2025f))))), var_0.e.a.wy));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_0.e.b.a, 29205i, var_0.d.a, -4118i), vec4<i32>(-21877i, var_0.b.c.d.x, var_0.b.c.a, -4123i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2698i, var_0.e.c.d.x, var_0.d.a, var_0.d.d.x), vec4<i32>(var_0.b.b.d.x, -40866i, var_0.e.b.a, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-13692i, -17968i, -8548i, var_0.e.b.d.x), vec4<i32>(var_0.c.a, 0i, 44886i, -1384i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, 2147483647i), vec4<i32>(var_0.e.b.d.x, -2147483647i, 0i, -2147483647i)) << (~var_0.e.a % vec4<u32>(32u)))), var_0.b.a.zx, -27456i);
}

