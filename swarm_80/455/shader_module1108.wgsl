struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_5) -> f32 {
    var var_0 = select(all(vec4<bool>(true, true, true, true)), false, true) && all(vec4<bool>(false, any(select(arg_2.c.b.c.xz, vec2<bool>(arg_2.a.b.c.x, true), false)), any(select(vec2<bool>(false, arg_2.a.b.c.x), vec2<bool>(true, arg_0.b.c.x), vec2<bool>(arg_0.b.c.x, arg_0.b.c.x))), true));
    var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) << (~vec4<u32>(arg_2.a.a.x, 25006u, arg_2.c.a.x, arg_0.a.x) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a.a.x, arg_0.a.x, arg_0.a.x, 9422u), vec4<u32>(arg_0.a.x, arg_2.c.a.x, 37430u, arg_2.a.a.x)), max(vec4<u32>(25723u, arg_2.a.a.x, 1u, 64793u), vec4<u32>(0u, 25424u, 4294967295u, arg_0.a.x)), select(vec4<bool>(true, arg_2.c.b.c.x, true, true), vec4<bool>(true, arg_0.b.c.x, false, arg_2.a.b.c.x), arg_2.a.b.c.x))), firstLeadingBit(0u)) != ~(~arg_0.a.x);
    let var_1 = Struct_4(Struct_1(false, true, all(select(vec2<bool>(arg_0.b.c.x, false), arg_0.b.c.yw, vec2<bool>(true, arg_2.a.b.c.x))), _wgslsmith_clamp_vec3_i32(~(-u_input.a), _wgslsmith_mod_vec3_i32(u_input.a << (vec3<u32>(15198u, arg_0.a.x, 665u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, arg_0.b.b, -4182i) | vec3<i32>(-2147483647i, 2147483647i, arg_1.x)), vec3<i32>(arg_1.x, u_input.b.x, _wgslsmith_div_i32(arg_2.c.b.b, -13416i)))), arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), arg_2.b.x)), arg_2.b.xx), arg_0);
    return -1584f;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec4<i32>(i32(-1i) * -1i, select(-((u_input.b.x & u_input.a.x) >> (arg_0.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -22863i, 48012i, u_input.a.x), min(vec4<i32>(22356i, -1i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x))), u_input.a.x), all(vec2<bool>(true, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.a, _wgslsmith_mult_vec3_i32(u_input.b, u_input.a) | vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x)), u_input.b), 0i);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1583f * _wgslsmith_f_op_f32(sign(-295f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) - -1039f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<u32>(arg_0.x, 23306u), Struct_2(vec4<i32>(var_0.x, var_0.x, u_input.a.x, 1i), u_input.a.x, vec4<bool>(true, false, false, true))), ~var_0, Struct_5(Struct_3(arg_0.yx, Struct_2(var_0, -2147483647i, vec4<bool>(true, true, true, true))), vec3<f32>(1005f, -1637f, 1868f), Struct_3(arg_0.xx, Struct_2(var_0, var_0.x, vec4<bool>(false, true, false, true)))))), 1274f))));
    var var_2 = Struct_3(_wgslsmith_clamp_vec2_u32(arg_0.yx, arg_0.zz, vec2<u32>(countOneBits(arg_0.x), 0u)) ^ _wgslsmith_div_vec2_u32(~(~arg_0.xx), ~select(arg_0.zx, vec2<u32>(34040u, 53073u), vec2<bool>(false, false))), Struct_2(vec4<i32>(firstLeadingBit(var_0.x), 49647i, ~(-2147483647i), -firstLeadingBit(var_0.x)), ~(~(-var_0.x)), vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true)), false, -u_input.a.x >= var_0.x, min(u_input.a.x, 1i) == 2147483647i)));
    var var_3 = ~(~(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, var_2.a.x, arg_0.x, 1u), vec4<u32>(var_2.a.x, var_2.a.x, 4294967295u, arg_0.x)))));
    var_2 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(~43185u, ~firstTrailingBit(1620u)), var_2.a), Struct_2(var_2.b.a, u_input.b.x, var_2.b.c));
    return arg_0.x;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_u32(countOneBits(2838u), ~_wgslsmith_add_u32(~2823u, arg_0)) | _wgslsmith_add_u32(_wgslsmith_mult_u32(~(~arg_0), ~46566u | max(33780u, arg_0)), max(127541u, arg_0) | func_2(vec3<u32>(arg_0, 1u, arg_0) | vec3<u32>(1u, 97399u, 0u)));
    var var_1 = 1u | var_0;
    var var_2 = select(vec4<bool>(true, true, true, true), !vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, true), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false), any(vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(arg_0, 4294967295u, 1u, 1u))) | abs(vec4<u32>(14851u, abs(106807u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(var_0, 14540u)), select(4294967295u, arg_0, var_2.x))), ~(~vec4<u32>(37387u, 8381u, var_0, 54820u)) ^ ~(vec4<u32>(21021u, arg_0, 0u, 1u) | vec4<u32>(var_0, var_0, 0u, arg_0)));
    var_2 = vec4<bool>(var_2.x, var_2.x, false, true && any(select(vec3<bool>(var_2.x, var_2.x, true), !var_2.xzz, var_2.x)));
    return select(!vec4<bool>(!(!var_2.x), var_2.x, any(!var_2.wy), !var_2.x), !select(!select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, false), true), select(!vec4<bool>(var_2.x, true, var_2.x, var_2.x), select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(false, var_2.x, false, false), var_2.x), !vec4<bool>(false, false, true, var_2.x)), var_2.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, arg_0, var_0), vec4<u32>(arg_0, var_0, 9218u, 4294967295u)) < ~countOneBits(arg_0));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    return Struct_4(Struct_1(arg_0.b.c.x, !(!arg_1.b.c.x), true, _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_2, -2147483647i, -34529i), u_input.b, u_input.b)), arg_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-416f, 719f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, 1574f))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(vec2<u32>(~30435u, ~31994u) & vec2<u32>(~2871u, _wgslsmith_clamp_u32(0u, 1u, 1u)), Struct_2(min(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -21200i), vec4<i32>(29037i, 64101i, -42604i, u_input.a.x)), 42500i, func_1(firstTrailingBit(0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(689f, -349f, -2669f) + vec3<f32>(1844f, 650f, -1623f))))), Struct_3(select(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 35745u), vec2<u32>(56855u, 1u)), any(vec4<bool>(false, true, false, true))) >> (vec2<u32>(0u, ~69395u) % vec2<u32>(32u)), Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-31923i, 1i, 0i), u_input.b), u_input.b.x, ~u_input.a.x, -u_input.b.x), u_input.b.x, vec4<bool>(func_1(0u, vec3<f32>(-591f, -133f, -1636f)).x, all(vec2<bool>(true, false)), true, true))), -15817i);
    let var_1 = var_0.b.b;
    var var_2 = func_4(func_4(var_0.b, Struct_3(~(vec2<u32>(4294967295u, 0u) << (var_0.b.a % vec2<u32>(32u))), func_4(func_4(Struct_3(var_0.d.a, var_1), Struct_3(vec2<u32>(var_0.d.a.x, var_0.b.a.x), var_1), 1i).b, func_4(Struct_3(vec2<u32>(0u, var_0.d.a.x), var_0.b.b), var_0.d, var_0.d.b.b).b, var_0.b.b.a.x).d.b), ~max(_wgslsmith_sub_i32(var_0.b.b.b, var_0.b.b.b), select(-2147483647i, var_0.a.d.x, var_1.c.x))).d, func_4(var_0.d, var_0.b, firstLeadingBit(var_1.a.x)).d, firstTrailingBit(min(u_input.b.x, i32(-1i) * -19216i))).d.b;
    var_2 = var_0.b.b;
    var_2 = var_0.d.b;
    var var_3 = func_4(Struct_3(vec2<u32>(~abs(40334u), 0u), Struct_2(var_1.a, 2147483647i | (-26771i >> (var_0.d.a.x % 32u)), !vec4<bool>(var_0.a.c, var_0.b.b.c.x, var_2.c.x, true))), func_4(var_0.b, Struct_3(max(select(vec2<u32>(16386u, var_0.d.a.x), vec2<u32>(var_0.b.a.x, var_0.d.a.x), true), ~vec2<u32>(var_0.b.a.x, 1u)), Struct_2(countOneBits(var_0.d.b.a), var_2.a.x, select(vec4<bool>(false, true, var_0.b.b.c.x, true), var_2.c, vec4<bool>(true, true, var_1.c.x, var_1.c.x)))), (i32(-1i) * -u_input.b.x) ^ -38241i).b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.d.x, var_2.a.x, var_2.a.x, var_1.b), vec4<i32>(-1i, -2147483647i, var_2.a.x, -3422i)) << (func_4(var_0.b, var_0.d, var_2.b).d.a.x % 32u), i32(-1i) * -2147483647i, ~1i, 2147483647i), firstLeadingBit(var_2.a))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(-19609i, -var_3.d.x), vec2<i32>(2147483647i, -2147483647i)), var_0.d.a);
}

