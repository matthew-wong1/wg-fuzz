struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
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

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-1i, -10945i), vec2<i32>(-2280i, i32(-2147483648)), vec2<i32>(-4303i, 18966i), vec2<i32>(i32(-2147483648), 35267i), vec2<i32>(1i, -26390i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_2.b;
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    var_0 = vec2<u32>(~36655u, _wgslsmith_add_u32(_wgslsmith_add_u32(countOneBits(arg_2.b.x), 107348u), firstTrailingBit(select(u_input.b.x, arg_2.b.x, true && arg_3.c))));
    let var_1 = u_input.b.x;
    return select(select(vec4<bool>(true, arg_2.c & true, !arg_3.c, ~var_0.x == _wgslsmith_sub_u32(var_1, 40511u)), select(select(vec4<bool>(true, arg_2.c, arg_2.c, false), select(vec4<bool>(true, arg_3.c, arg_2.c, arg_2.c), vec4<bool>(true, arg_2.c, true, arg_3.c), vec4<bool>(true, arg_3.c, true, arg_2.c)), !arg_3.c), vec4<bool>(true, true, true, true), vec4<bool>(arg_3.c | false, arg_2.c, any(vec2<bool>(arg_3.c, false)), true)), true), select(vec4<bool>(true, !arg_3.c, all(vec4<bool>(true, arg_2.c, arg_2.c, false)), true), select(vec4<bool>(false, true, true, arg_2.c), !select(vec4<bool>(arg_2.c, arg_3.c, arg_3.c, false), vec4<bool>(true, false, true, false), true), false), vec4<bool>(min(var_1, 69093u) != (arg_2.b.x & arg_2.b.x), all(select(vec2<bool>(arg_3.c, arg_3.c), vec2<bool>(true, arg_2.c), arg_3.c)), arg_2.c, all(vec2<bool>(arg_3.c, true)))), !select(select(!vec4<bool>(true, arg_2.c, false, arg_3.c), vec4<bool>(true, true, false, true), !arg_3.c), vec4<bool>(true, all(vec4<bool>(arg_3.c, arg_3.c, arg_2.c, false)), true && arg_2.c, true), !(false | arg_2.c)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = 37435u;
    var var_1 = vec4<bool>(any(func_3(5918u, _wgslsmith_add_vec2_i32(vec2<i32>(-44826i, 21146i), u_input.a.zy), Struct_1(u_input.a.x, u_input.b.xx, true), Struct_1(1i, vec2<u32>(15503u, 1u), arg_0))) || !(!func_3(47166u, u_input.a.xy, Struct_1(1i, u_input.b.zx, arg_2.x), Struct_1(2147483647i, vec2<u32>(16742u, 4294967295u), false)).x), true, arg_0, true);
    let var_2 = Struct_1(-5649i, _wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(~19387u | ~u_input.b.x, min(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 47489u, u_input.b.x)), ~4294967295u))), !select(false, !(arg_0 && arg_2.x), arg_0));
    global0 = array<vec2<i32>, 5>();
    let var_3 = -(~vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, -14180i, u_input.a.x), vec4<i32>(-10996i, var_2.a, -11142i, u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, var_2.a), -18968i), var_2.a));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2312i, 1300i, 85482i, -74645i), vec4<i32>(2147483647i, 39429i, -21078i, 17235i)) & vec4<i32>(u_input.a.x, arg_1.a, arg_0.a, -1i), select(_wgslsmith_div_vec4_i32(vec4<i32>(-45415i, 16123i, u_input.a.x, 2147483647i), vec4<i32>(1i, 24728i, arg_1.a, -2147483647i)), -vec4<i32>(1i, -22546i, 1i, arg_2.a), vec4<bool>(arg_0.c, arg_2.c, arg_1.c, true)))), ~arg_2.b, any(!(!vec4<bool>(arg_2.c, false, false, arg_1.c))));
    let var_1 = arg_2.b.x;
    var var_2 = vec4<u32>(~min(_wgslsmith_add_u32(var_0.b.x, select(1u, 18466u, arg_2.c)), ~1u), 76421u, 1u, countOneBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, u_input.b.x, 1u, 0u), vec4<u32>(13326u, arg_2.b.x, arg_1.b.x, var_0.b.x)))));
    return true;
}

fn func_1() -> bool {
    let var_0 = select(vec4<bool>(func_4(func_2(any(vec3<bool>(true, false, false)), -1291f, select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1170f, -203f, -1160f, -1020f) + vec4<f32>(-716f, -504f, 224f, -1074f))), Struct_1(~17947i, firstTrailingBit(u_input.b.zx), true), func_2(true, _wgslsmith_f_op_f32(step(582f, 1000f)), func_3(4294967295u, vec2<i32>(3072i, u_input.a.x), Struct_1(6810i, vec2<u32>(u_input.b.x, u_input.b.x), false), Struct_1(46150i, u_input.b.xz, false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1460f, -309f, 117f, 837f), vec4<f32>(-1171f, -447f, -671f, -302f), vec4<bool>(false, false, false, true))))), func_3(34287u, ~countOneBits(vec2<i32>(-1i, u_input.a.x)), Struct_1(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.b.xz, false), func_2(true, -881f, vec4<bool>(false, false, false, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(421f, -726f, -289f, 674f) + vec4<f32>(830f, -328f, 1280f, -1315f)))).x, false, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, 4726u <= u_input.b.x, u_input.b.x == u_input.b.x)), select(vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), vec4<bool>(func_3(u_input.b.x, vec2<i32>(-2147483647i, 0i), Struct_1(u_input.a.x, vec2<u32>(u_input.b.x, u_input.b.x), true), Struct_1(u_input.a.x, vec2<u32>(u_input.b.x, 4294967295u), true)).x, false, all(vec2<bool>(false, true)), any(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(trunc(261f)) == _wgslsmith_f_op_f32(321f * -541f), true, (u_input.b.x <= 3571u) | true)), vec4<bool>(true, (true | func_2(true, 154f, vec4<bool>(false, true, true, false), vec4<f32>(-334f, -2034f, -963f, -959f)).c) || (select(false, true, false) & func_4(Struct_1(-37453i, u_input.b.yz, false), Struct_1(0i, vec2<u32>(u_input.b.x, 23056u), true), Struct_1(1i, vec2<u32>(67268u, 0u), false))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(20279u, u_input.b.x), u_input.b.x) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), u_input.b), true));
    let var_1 = vec3<bool>(func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-130f))), select(!var_0, vec4<bool>(true, true, true, true), !var_0), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1179f), -869f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-431f))))).c, var_0.x, true);
    var var_2 = var_0.x;
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 5>();
    let var_0 = !(!(!(!func_1())));
    let var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(u_input.b), vec3<u32>(firstLeadingBit(9343u), 0u, 1u), u_input.b);
    let var_2 = vec2<u32>(max(~14196u, ~(~70780u) ^ _wgslsmith_mult_u32(~u_input.b.x, ~u_input.b.x)), u_input.b.x);
    var var_3 = select(vec4<bool>(all(!(!vec4<bool>(false, true, var_0, false))), var_0, true, all(vec4<bool>(true, var_0, false, any(vec4<bool>(true, true, true, var_0))))), select(vec4<bool>(!var_0, var_0, true | all(vec2<bool>(false, var_0)), var_0), vec4<bool>(false, var_0, true, var_0), select(select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, true, false, var_0), true), vec4<bool>(var_1.x == 4294967295u, true, true, all(vec4<bool>(false, false, var_0, false))), select(!vec4<bool>(true, var_0, var_0, false), vec4<bool>(true, true, false, false), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, true, true), vec4<bool>(true, var_0, false, var_0))))), false);
    var_3 = !vec4<bool>(!(-13832i < func_2(var_0, 689f, vec4<bool>(var_0, false, false, false), vec4<f32>(153f, -1665f, -243f, 242f)).a), _wgslsmith_mult_u32(~u_input.b.x, ~var_1.x) != var_2.x, !var_0, !var_3.x);
    var_3 = func_3(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_2.x, u_input.b.x), vec4<u32>(var_1.x, u_input.b.x, 4294967295u, 1u)), _wgslsmith_mult_u32(u_input.b.x, var_2.x)) >> (102949u % 32u), select(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a.x) ^ global0[_wgslsmith_index_u32(3789u, 5u)], _wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, u_input.a.x)))), abs(u_input.a.zx), all(!(!var_3.yy))), Struct_1(1i, ~var_1.yz, !any(vec3<bool>(var_0, var_3.x, var_3.x))), Struct_1(-(~(~u_input.a.x)), firstTrailingBit(~vec2<u32>(36944u, var_1.x)), all(vec4<bool>(true, u_input.a.x < 0i, select(var_3.x, false, true), var_3.x))));
    global0 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(68114i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(815f)), _wgslsmith_f_op_f32(f32(-1f) * -786f))));
}

