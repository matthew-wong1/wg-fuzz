struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(320i, 13611i, 3266i, 66857i), vec4<i32>(1i, i32(-2147483648), -19567i, 1i), vec4<i32>(34156i, 38091i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 73794i, 1i, -75942i), vec4<i32>(-70611i, -1i, 1i, 0i));

var<private> global3: vec2<u32>;

var<private> global4: i32 = 19838i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_5) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -442f);
    let var_1 = -vec3<i32>(~u_input.c, ~2147483647i, 50692i);
    global4 = 27084i;
    let var_2 = vec3<u32>(~global3.x, 1332u, arg_1.d.c);
    var var_3 = arg_1.b.wwz;
    return u_input.d;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = u_input.a.x;
    global2 = array<vec4<i32>, 5>();
    var var_1 = ~(vec2<u32>(~firstTrailingBit(69077u), 15402u) >> (global0.zx % vec2<u32>(32u)));
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.c & global0.x, func_1(1u, Struct_5(vec3<f32>(579f, arg_2.x, 145f), vec4<bool>(arg_3.x, false, false, false), arg_1.a, Struct_2(arg_1.d, arg_1.b, global0.x, arg_1.a, Struct_1(arg_1.b.a, vec2<f32>(506f, arg_1.e.a.x), global1.x, arg_1.a.d)))).x >> (arg_0 % 32u), abs(45132u) & arg_0, arg_1.c), vec4<u32>(func_1(~46920u, Struct_5(arg_1.d.a, vec4<bool>(global1.x, false, false, true), Struct_1(arg_1.d.a, vec2<f32>(arg_1.d.d.x, 213f), arg_1.e.c, vec2<f32>(510f, -236f)), Struct_2(Struct_1(vec3<f32>(arg_2.x, arg_1.d.b.x, -1041f), arg_1.b.d, false, arg_2), Struct_1(arg_1.d.a, arg_2, global1.x, arg_1.b.d), u_input.b, arg_1.a, arg_1.d))).x, _wgslsmith_dot_vec4_u32(func_3(vec4<bool>(false, arg_3.x, false, false), arg_3.yy, arg_1.a.c, Struct_3(arg_3.xz)), _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, u_input.b, 29435u, 74736u), u_input.d)), _wgslsmith_mult_u32(17631u, u_input.b), 4027u)), 4294967295u);
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a ^ ~(u_input.a >> (vec4<u32>(arg_0, var_0, 4294967295u, u_input.b) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(u_input.d, ~vec4<u32>(arg_1.c, 4294967295u, 4294967295u, 56146u), func_1(~1u, Struct_5(arg_1.e.a, vec4<bool>(arg_3.x, global1.x, arg_3.x, false), Struct_1(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec2<f32>(-877f, -2385f), false, arg_1.b.a.xz), arg_1)))), arg_0, ~304u);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b.a - arg_1.b.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.a.a))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x * 610f), -1052f, arg_1.d.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.d.x, arg_1.a.d.x, 269f))), all(select(global1.yyw, vec3<bool>(global1.x, true, global1.x), false)))))));
    let var_2 = 2147483647i;
    let var_3 = Struct_4(func_1(_wgslsmith_mod_u32(2905u, arg_0), Struct_5(vec3<f32>(_wgslsmith_f_op_f32(select(-339f, var_1.x, arg_1.e.c)), -2610f, _wgslsmith_f_op_f32(var_1.x - var_1.x)), select(vec4<bool>(false, true, arg_3.x, false), select(vec4<bool>(false, arg_3.x, arg_3.x, global1.x), vec4<bool>(global1.x, false, global1.x, false), false), select(vec4<bool>(arg_1.d.c, false, arg_1.e.c, global1.x), vec4<bool>(true, true, false, true), vec4<bool>(false, arg_1.a.c, arg_1.a.c, true))), arg_1.e, Struct_2(arg_1.d, arg_1.a, _wgslsmith_clamp_u32(1u, 28760u, 4119u), arg_1.e, arg_1.e))).x, -(i32(-1i) * -2147483647i));
    return _wgslsmith_div_u32(var_3.a, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(any(global1.wzz), false, any(vec2<bool>(true, global1.x)), all(!vec2<bool>(false, global1.x)) && true);
    let var_0 = _wgslsmith_mult_i32(-34372i, -_wgslsmith_mod_i32(u_input.c & _wgslsmith_dot_vec3_i32(vec3<i32>(-31545i, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, -2147483647i)), u_input.c));
    var var_1 = _wgslsmith_mult_vec4_u32(u_input.a << (_wgslsmith_mult_vec4_u32(func_1(4294967295u, Struct_5(vec3<f32>(744f, -1000f, 1433f), vec4<bool>(global1.x, global1.x, true, false), Struct_1(vec3<f32>(1000f, -151f, 299f), vec2<f32>(1005f, 272f), global1.x, vec2<f32>(-891f, -307f)), Struct_2(Struct_1(vec3<f32>(216f, 2130f, 232f), vec2<f32>(943f, -786f), global1.x, vec2<f32>(861f, -330f)), Struct_1(vec3<f32>(-936f, -477f, 728f), vec2<f32>(1532f, -230f), global1.x, vec2<f32>(-1155f, 383f)), global3.x, Struct_1(vec3<f32>(287f, -604f, 332f), vec2<f32>(1000f, -550f), false, vec2<f32>(305f, 473f)), Struct_1(vec3<f32>(-1127f, 522f, -479f), vec2<f32>(953f, -443f), global1.x, vec2<f32>(-324f, 1070f))))) << (~u_input.d % vec4<u32>(32u)), func_1(func_2(global3.x, Struct_2(Struct_1(vec3<f32>(-783f, 602f, 427f), vec2<f32>(657f, 847f), true, vec2<f32>(-2164f, 310f)), Struct_1(vec3<f32>(-671f, -1199f, 1000f), vec2<f32>(896f, -154f), global1.x, vec2<f32>(-1000f, 748f)), 0u, Struct_1(vec3<f32>(493f, -1130f, 1893f), vec2<f32>(-1691f, -1020f), false, vec2<f32>(148f, 1027f)), Struct_1(vec3<f32>(595f, 371f, 696f), vec2<f32>(627f, -1844f), false, vec2<f32>(-784f, 204f))), vec2<f32>(1000f, 247f), vec3<bool>(false, global1.x, true)), Struct_5(vec3<f32>(613f, -471f, 2186f), vec4<bool>(false, global1.x, global1.x, false), Struct_1(vec3<f32>(509f, -1176f, -398f), vec2<f32>(1000f, -1085f), false, vec2<f32>(106f, -2093f)), Struct_2(Struct_1(vec3<f32>(-498f, 1000f, 278f), vec2<f32>(-833f, 446f), true, vec2<f32>(800f, -267f)), Struct_1(vec3<f32>(1433f, -1000f, -115f), vec2<f32>(-385f, -538f), global1.x, vec2<f32>(-102f, 108f)), global0.x, Struct_1(vec3<f32>(1282f, 325f, 326f), vec2<f32>(2007f, -475f), global1.x, vec2<f32>(-1000f, 410f)), Struct_1(vec3<f32>(-817f, -430f, -1721f), vec2<f32>(993f, -824f), global1.x, vec2<f32>(1736f, 1054f)))))) % vec4<u32>(32u)), ~(~(vec4<u32>(0u, global0.x, u_input.a.x, 4294967295u) << (u_input.d % vec4<u32>(32u)))));
    var var_2 = 51252u;
    global1 = !vec4<bool>(true, true & any(vec4<bool>(true, true, global1.x, false)), !any(!global1.zw), false);
    var var_3 = ~vec4<u32>(min(1006u, var_1.x), global3.x, ~_wgslsmith_mult_u32(539u, global0.x) >> (~(~0u) % 32u), global3.x);
    let var_4 = _wgslsmith_add_i32(-abs(firstTrailingBit(reverseBits(var_0))), countOneBits(var_0));
    global4 = var_0;
    let var_5 = _wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_0, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, -2147483647i), vec3<i32>(u_input.c, var_0, 0i)), abs(-27185i)), _wgslsmith_mult_i32(-25040i, 1320i) << (u_input.a.x % 32u)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(vec2<i32>(u_input.c, 0i), vec2<i32>(var_0, -2147483647i), false)), select(vec2<i32>(-1i) * -vec2<i32>(-36956i, -39849i), _wgslsmith_sub_vec2_i32(select(vec2<i32>(0i, u_input.c), vec2<i32>(-2147483647i, var_4), global1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_5, var_0), vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-14085i, var_0))), global1.x) & vec2<i32>(select(1i, -1i, false), ~(-var_5)), -(~vec3<i32>(u_input.c, u_input.c, -2147483647i)) ^ -(-vec3<i32>(var_4, var_5, -101174i) >> (vec3<u32>(var_1.x, 43507u, global0.x) % vec3<u32>(32u))));
}

