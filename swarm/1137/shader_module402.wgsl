struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_4,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    return arg_1.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, 730f, -1539f, 246f) * vec4<f32>(932f, -1393f, 549f, -1507f)))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, 806f)))), Struct_2(vec2<i32>(-2147483647i ^ u_input.b.x, 1i), arg_0.x, func_1(vec3<u32>(27491u, 1u, 43109u) | vec3<u32>(4294967295u, 4294967295u, arg_0.x), Struct_2(u_input.b.zx, 4294967295u, Struct_1(vec4<f32>(290f, -246f, -141f, 1571f), arg_1.xy, vec2<f32>(-1363f, -295f)), Struct_1(vec4<f32>(-617f, 415f, -259f, 2118f), vec2<bool>(arg_1.x, false), vec2<f32>(-703f, -1118f))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 9709i, 24991i), vec4<i32>(-13083i, 42832i, u_input.b.x, 2147483647i)), u_input.a), func_1(vec3<u32>(u_input.a, u_input.c.x, arg_0.x), Struct_2(u_input.b.yz, 1u, Struct_1(vec4<f32>(422f, 1297f, -229f, -731f), vec2<bool>(arg_1.x, true), vec2<f32>(-618f, -172f)), Struct_1(vec4<f32>(480f, 931f, 723f, 1250f), arg_1.xx, vec2<f32>(2571f, -870f))), select(-6018i, 14615i, true), 64831u))), ~_wgslsmith_dot_vec2_i32(abs(-u_input.b.yx), vec2<i32>(2147483647i, reverseBits(51543i))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) + 1110f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -403f) + -273f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-202f, 872f, true))), -984f), arg_1.xz, vec2<f32>(_wgslsmith_f_op_f32(ceil(-633f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-273f, -390f) - _wgslsmith_f_op_f32(sign(-1253f))))));
    let var_1 = arg_1.x;
    var var_2 = var_0.c;
    var_0 = Struct_4(Struct_3(var_0.c, Struct_2(~vec2<i32>(var_0.a.b.a.x, var_0.b), reverseBits(countOneBits(25233u)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a.a), arg_1.xz, _wgslsmith_div_vec2_f32(var_0.c.c, var_2.c)), Struct_1(vec4<f32>(-257f, -329f, 1000f, -643f), select(vec2<bool>(false, var_2.b.x), var_2.b, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_0.a.a.a.x))))), _wgslsmith_div_i32(-24772i ^ (var_0.b << (0u % 32u)), ~u_input.b.x), func_1(vec3<u32>(max(var_0.a.b.b, 4294967295u) << (1u % 32u), ~var_0.a.b.b, arg_0.x), Struct_2(var_0.a.b.a, var_0.a.b.b, var_0.c, func_1(vec3<u32>(var_0.a.b.b, u_input.c.x, 1u), var_0.a.b, -20180i, 1u)), ~select(i32(-1i) * -42085i, _wgslsmith_sub_i32(var_0.b, 1i), true), 37518u));
    var var_3 = 1000f;
    return var_0.a.b;
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = ~u_input.c.zz;
    var var_1 = select(vec3<bool>(var_0.x == u_input.c.x, !(!any(arg_1.a.b.c.b)), !arg_1.c.b.x), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(arg_2.b.x, true, true), arg_2.b.x), select(vec3<bool>(true, false, arg_1.c.b.x), vec3<bool>(arg_1.c.b.x, true, false), vec3<bool>(arg_2.b.x, false, arg_1.c.b.x)), select(vec3<bool>(true, arg_1.c.b.x, false), vec3<bool>(true, arg_2.b.x, false), arg_2.b.x))), select(select(select(select(vec3<bool>(arg_1.a.b.c.b.x, arg_2.b.x, arg_1.c.b.x), vec3<bool>(true, arg_1.c.b.x, arg_2.b.x), vec3<bool>(false, arg_1.c.b.x, true)), vec3<bool>(arg_1.a.a.b.x, false, arg_2.b.x), select(vec3<bool>(arg_1.c.b.x, arg_2.b.x, arg_2.b.x), vec3<bool>(false, false, arg_1.a.b.d.b.x), arg_1.a.b.c.b.x)), select(vec3<bool>(true, arg_1.c.b.x, true), !vec3<bool>(arg_2.b.x, arg_1.c.b.x, true), select(vec3<bool>(true, arg_1.a.a.b.x, arg_2.b.x), vec3<bool>(true, arg_2.b.x, true), vec3<bool>(true, arg_1.a.b.c.b.x, true))), vec3<bool>(true, func_1(vec3<u32>(arg_1.a.b.b, u_input.c.x, 4294967295u), Struct_2(vec2<i32>(2147483647i, 40831i), 4294967295u, arg_2, arg_2), 0i, u_input.c.x).b.x, any(vec2<bool>(arg_1.a.b.c.b.x, arg_2.b.x)))), !(!vec3<bool>(arg_1.a.b.d.b.x, false, arg_1.a.b.d.b.x)), all(vec3<bool>(arg_2.b.x, any(vec3<bool>(arg_1.c.b.x, arg_2.b.x, false)), true))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-279f, arg_3, arg_1.a.b.c.c.x), arg_2.a.zwy, false)), _wgslsmith_f_op_vec3_f32(exp2(arg_2.a.yzy)), vec3<bool>(true, var_1.x, var_1.x))) + arg_1.c.a.xzy))), Struct_3(func_1(vec3<u32>(firstTrailingBit(arg_1.a.b.b), select(21723u, arg_1.a.b.b, arg_2.b.x), 50200u), Struct_2(~vec2<i32>(u_input.b.x, 4370i), u_input.c.x, Struct_1(arg_2.a, vec2<bool>(var_1.x, arg_2.b.x), vec2<f32>(741f, -1222f)), arg_1.c), abs(_wgslsmith_div_i32(3266i, 1i)), var_0.x), Struct_2(_wgslsmith_div_vec2_i32(abs(u_input.b.xz), vec2<i32>(2147483647i, -2147483647i)), countOneBits(var_0.x << (var_0.x % 32u)), arg_1.c, arg_1.c)), arg_1, ~_wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(arg_0, 4294967295u)), ~1u), func_2(vec2<u32>(9260u, 32655u), !vec3<bool>(false, var_1.x, all(vec3<bool>(arg_2.b.x, false, arg_1.a.a.b.x)))));
    var var_3 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.x, false, all(vec3<bool>(var_2.e.d.b.x, var_2.c.c.b.x, false))), vec4<bool>(!arg_2.b.x, arg_1.a.a.b.x, true, !arg_1.a.b.d.b.x)));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x - -613f), _wgslsmith_f_op_f32(-var_2.e.c.a.x), _wgslsmith_f_op_f32(select(-1567f, var_2.b.b.d.a.x, var_2.c.a.a.b.x)), arg_3)), !arg_1.a.b.d.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, -914f))), arg_1.a.b);
    return arg_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.ww;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_i32(select(~u_input.b.yz, ~vec2<i32>(u_input.b.x, u_input.b.x) << ((u_input.c.yw << (var_0 % vec2<u32>(32u))) % vec2<u32>(32u)), all(vec4<bool>(true, true, false, true))), vec2<i32>(-25919i, min(1i ^ u_input.b.x, ~0i))), 25534u, func_3(reverseBits(0u), Struct_4(Struct_3(func_1(vec3<u32>(var_0.x, var_0.x, u_input.a), Struct_2(u_input.b.yz, var_0.x, Struct_1(vec4<f32>(345f, -459f, -1341f, 915f), vec2<bool>(false, true), vec2<f32>(-1293f, 671f)), Struct_1(vec4<f32>(-1127f, -272f, -1000f, -1000f), vec2<bool>(false, false), vec2<f32>(-1566f, 761f))), -27805i, var_0.x), Struct_2(vec2<i32>(u_input.b.x, 18270i), var_0.x, Struct_1(vec4<f32>(-655f, 583f, -437f, 409f), vec2<bool>(true, true), vec2<f32>(1102f, 1202f)), Struct_1(vec4<f32>(816f, 795f, -112f, -1412f), vec2<bool>(true, true), vec2<f32>(1785f, -602f)))), _wgslsmith_mult_i32(11259i, u_input.b.x), func_1(u_input.c.wzz, func_2(u_input.c.yx, vec3<bool>(true, false, false)), 6129i, var_0.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1000f + -937f), _wgslsmith_f_op_f32(round(245f)), -823f, _wgslsmith_f_op_f32(f32(-1f) * -1188f)), vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(113f, 720f)))), _wgslsmith_f_op_f32(max(325f, -1549f))), func_2(~(~(~var_0)), vec3<bool>(true, true, true)).c);
    let var_2 = !vec4<bool>(true, var_1.c.b.x, true, -1752f >= var_1.d.c.x);
    var var_3 = true;
    let var_4 = Struct_4(Struct_3(Struct_1(vec4<f32>(-1875f, var_1.c.a.x, _wgslsmith_f_op_f32(-var_1.d.c.x), var_1.d.c.x), !var_1.c.b, _wgslsmith_f_op_vec2_f32(-var_1.c.c)), func_2(~var_0, vec3<bool>(var_1.c.b.x | false, var_1.d.c.x == var_1.c.a.x, select(var_2.x, var_2.x, false)))), (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -659i, 0i), abs(vec3<i32>(var_1.a.x, 2147483647i, -2147483647i))) << (_wgslsmith_dot_vec2_u32(select(var_0, u_input.c.ww, false), ~u_input.c.wz) % 32u)) | var_1.a.x, func_1(firstLeadingBit(~vec3<u32>(var_0.x, var_1.b, var_0.x)), func_2(~vec2<u32>(47616u, u_input.a), vec3<bool>(true, true, var_1.d.b.x & var_1.d.b.x)), u_input.b.x, _wgslsmith_div_u32(~(~u_input.c.x), 50365u)));
    var_3 = true;
    var var_5 = 284f;
    let var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.b.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c.c.x))), _wgslsmith_f_op_f32(-var_4.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.d.a.x, _wgslsmith_div_f32(2152f, -167f)), func_2(vec2<u32>(114468u, u_input.c.x), vec3<bool>(!any(var_1.c.b), var_4.a.b.c.b.x, false & var_1.d.b.x)).c.a.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.a.x)), func_2(_wgslsmith_mod_vec2_u32(var_0 & var_0, ~var_0), var_2.xzy).c.c.x));
}

