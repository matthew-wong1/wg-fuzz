struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(40538i, 2147483647i, 2147483647i, 60287i), true, vec4<bool>(true, true, true, false), -1073f), Struct_1(vec4<i32>(49741i, 21229i, 2147483647i, -1i), false, vec4<bool>(true, true, false, false), 1839f), Struct_1(vec4<i32>(-12372i, i32(-2147483648), 0i, -14354i), false, vec4<bool>(true, false, true, true), 949f), Struct_1(vec4<i32>(i32(-2147483648), 48988i, i32(-2147483648), 18939i), true, vec4<bool>(false, true, true, true), -820f), Struct_1(vec4<i32>(-18426i, 0i, -25700i, -21632i), false, vec4<bool>(false, true, true, true), -1000f), Struct_1(vec4<i32>(-39402i, 50564i, 2147483647i, 2145i), true, vec4<bool>(false, false, true, false), -841f), Struct_1(vec4<i32>(-22642i, -14947i, -1i, 0i), true, vec4<bool>(true, false, false, false), -467f), Struct_1(vec4<i32>(-23466i, 31291i, 1i, 31941i), true, vec4<bool>(true, true, true, true), -618f), Struct_1(vec4<i32>(26690i, 1i, -8356i, i32(-2147483648)), true, vec4<bool>(true, true, false, true), 672f), Struct_1(vec4<i32>(i32(-2147483648), 1443i, 1i, -14251i), false, vec4<bool>(true, false, false, true), 325f), Struct_1(vec4<i32>(0i, -1i, 528i, 2147483647i), true, vec4<bool>(true, false, false, true), 306f), Struct_1(vec4<i32>(44292i, 34652i, 36988i, 48260i), false, vec4<bool>(false, true, true, false), 1000f), Struct_1(vec4<i32>(0i, i32(-2147483648), 26441i, 41097i), false, vec4<bool>(false, true, true, true), -1000f), Struct_1(vec4<i32>(74153i, 27818i, 1i, -3095i), false, vec4<bool>(true, false, false, true), -1307f), Struct_1(vec4<i32>(2147483647i, 30493i, 10137i, 1611i), true, vec4<bool>(true, true, false, false), 370f), Struct_1(vec4<i32>(0i, 43587i, 0i, i32(-2147483648)), false, vec4<bool>(true, false, false, true), -627f), Struct_1(vec4<i32>(-1i, 52144i, i32(-2147483648), -1161i), false, vec4<bool>(true, false, false, false), 306f), Struct_1(vec4<i32>(20413i, 2824i, i32(-2147483648), 5519i), true, vec4<bool>(true, true, false, true), 419f), Struct_1(vec4<i32>(1i, 0i, i32(-2147483648), 0i), true, vec4<bool>(false, false, false, false), 1818f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -11624i, 2147483647i), false, vec4<bool>(true, true, false, false), 1854f));

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), i32(-2147483648)), false, vec4<bool>(false, false, true, true), -1613f), Struct_1(vec4<i32>(-1i, 2147483647i, -48989i, -31655i), false, vec4<bool>(false, true, true, false), 112f), Struct_1(vec4<i32>(0i, -34775i, 16940i, i32(-2147483648)), true, vec4<bool>(false, true, true, true), -538f), Struct_1(vec4<i32>(-1892i, -19268i, i32(-2147483648), 1i), true, vec4<bool>(false, true, false, true), 302f), Struct_1(vec4<i32>(24618i, -24999i, 1i, 1i), false, vec4<bool>(false, true, false, true), -1000f), Struct_1(vec4<i32>(-59351i, -21538i, -1i, -42556i), true, vec4<bool>(true, true, true, false), 443f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -53336i), true, vec4<bool>(true, false, false, false), -1000f));

var<private> global4: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-1i, -1i, -33176i), vec3<i32>(0i, 0i, 0i), vec3<i32>(-6529i, -1986i, -1i), vec3<i32>(2147483647i, 18546i, -16903i), vec3<i32>(50465i, 0i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 69752i), vec3<i32>(-23403i, 1i, -22301i), vec3<i32>(-1i, i32(-2147483648), -59516i), vec3<i32>(30501i, 8973i, -46763i), vec3<i32>(584i, i32(-2147483648), 1i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_1 {
    return global1[_wgslsmith_index_u32(1u, 15u)];
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> i32 {
    global4 = array<vec3<i32>, 10>();
    let var_0 = !vec2<bool>(any(arg_1) & true, arg_0);
    global4 = array<vec3<i32>, 10>();
    let var_1 = global0.a.x;
    var var_2 = global0.d;
    return 2147483647i;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.d, global0.d, global0.d))) + vec4<f32>(-257f, _wgslsmith_f_op_f32(-global0.d), -147f, 665f))), -_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a.yx, global0.a.wx), ~firstTrailingBit(global0.a.wz)), global0.a.yz);
    global3 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_sub_i32(1i, global0.a.x);
    var var_2 = ~(i32(-1i) * -1i) >= (_wgslsmith_mod_i32(~1i, i32(-1i) * -u_input.a) << (firstTrailingBit(u_input.b.x) % 32u));
    var var_3 = -u_input.a;
    return Struct_3(Struct_2(Struct_1(vec4<i32>(global0.a.x, _wgslsmith_dot_vec4_i32(var_0.a, var_0.a), func_3(global0.c.x, global0.c.wz), global0.a.x & -3978i), var_0.b, select(!vec4<bool>(global0.c.x, var_0.b, var_0.b, false), global0.c, vec4<bool>(var_0.b, global0.b, false, var_0.b)), var_0.d), Struct_1(vec4<i32>(global0.a.x, -1i, 29400i, var_0.a.x) ^ func_2(vec4<f32>(var_0.d, 762f, -270f, -1000f), vec2<i32>(23370i, var_0.a.x), var_0.a.wy).a, var_0.c.x, vec4<bool>(global0.c.x, any(global0.c), false, true), -1148f), _wgslsmith_add_vec4_i32(global0.a, reverseBits(~vec4<i32>(-2147483647i, u_input.a, 39810i, 26617i)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> bool {
    global2 = array<Struct_1, 20>();
    let var_0 = abs(global0.a.wx);
    global1 = array<Struct_1, 15>();
    var var_1 = func_1().a.a;
    let var_2 = var_1.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 7>();
    global4 = array<vec3<i32>, 10>();
    var var_0 = Struct_1(-global0.a, false, vec4<bool>(true, global0.c.x, func_4(func_1(), any(global0.c.zy)), false), global0.d);
    global2 = array<Struct_1, 20>();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.d, 761f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1498f, -712f)))))));
}

