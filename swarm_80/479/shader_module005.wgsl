struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_sub_u32(select(1u, _wgslsmith_dot_vec3_u32(u_input.a, abs(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(124745u, u_input.b, 4294967295u)))), true), u_input.d);
    var_0 = _wgslsmith_div_u32(~u_input.a.x, 4294967295u) ^ ~abs(1u);
    global0 = 50368u;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(549f, 1003f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1144f, 332f), vec2<f32>(-1000f, -1000f), true)), vec2<f32>(257f, -2078f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, 324f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-939f, 296f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1089f, 1732f))), false))));
    global0 = u_input.d;
    return vec2<i32>(~_wgslsmith_mult_i32(reverseBits(_wgslsmith_mod_i32(-23433i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-37990i, -2147483647i, 4173i, 0i), vec4<i32>(-5302i, -4743i, -10106i, -16102i)) ^ -38495i), -(_wgslsmith_sub_i32(max(-45052i, 1i), ~(-31645i)) << (~abs(u_input.a.x) % 32u)));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    return -_wgslsmith_sub_vec2_i32(-max(vec2<i32>(-1i, 2147483647i), func_3()), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 10466i), 1i), min(-31362i, -35653i)));
}

fn func_1(arg_0: Struct_1) -> Struct_5 {
    var var_0 = vec3<i32>(-(i32(-1i) * -1i), _wgslsmith_div_i32(arg_0.d >> (~abs(u_input.d) % 32u), 2147483647i), -2147483647i);
    var_0 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(func_2(0i >> (u_input.d % 32u)), var_0.yz), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(-11041i, 12714i)) ^ -arg_0.d, firstTrailingBit(0i) | ~var_0.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, -54567i), arg_0.d)), arg_0.d), -55554i, -_wgslsmith_mod_i32(2147483647i, 5323i));
    var var_1 = Struct_4(vec4<i32>(func_3().x, var_0.x, arg_0.d, arg_0.d));
    var var_2 = 36496u;
    var_2 = max(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, ~4294967295u), 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, 0u) | vec4<u32>(41949u, 0u, 58752u, u_input.c.x), reverseBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.b, u_input.d)))), _wgslsmith_mod_u32(u_input.c.x, firstTrailingBit(87510u)) | _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(u_input.b, 43894u)), 0u));
    return Struct_5(func_2(-2147483647i | _wgslsmith_dot_vec3_i32(var_1.a.wyx, _wgslsmith_mult_vec3_i32(var_1.a.ywx, vec3<i32>(-2147483647i, arg_0.d, -2147483647i)))), min(vec4<i32>(abs(-68894i), -7974i, arg_0.d << (select(u_input.a.x, 1u, true) % 32u), func_2(0i).x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d << (u_input.d % 32u), _wgslsmith_add_i32(var_1.a.x, -25893i), var_1.a.x, _wgslsmith_mult_i32(var_0.x, var_1.a.x)), -reverseBits(vec4<i32>(var_1.a.x, 0i, 22248i, var_1.a.x)))), Struct_2(~(~(u_input.c.xy ^ vec2<u32>(0u, u_input.c.x)))), Struct_3(!vec2<bool>(all(vec4<bool>(true, false, arg_0.a, true)), arg_0.a), arg_0), Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yx, u_input.c.zz), countOneBits(vec2<u32>(u_input.d, u_input.b))) >> (u_input.c.xz % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_4(vec4<i32>(-1i) * -vec4<i32>(~2147483647i, 0i, ~0i, _wgslsmith_add_i32(arg_1.x, -27485i)));
    let var_1 = func_1(func_1(arg_0.d.b).d.b);
    var var_2 = func_1(func_1(Struct_1(func_3().x != abs(2147483647i), -902f, _wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(min(1279f, arg_0.d.b.c))), -2147483647i)).d.b).e;
    let var_3 = Struct_3(vec2<bool>(var_1.d.b.a, arg_0.d.a.x), Struct_1(false, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(Struct_1(!var_1.d.b.a, var_1.d.b.b, _wgslsmith_f_op_f32(f32(-1f) * -2008f), ~(-71747i))).d.b.d));
    var var_4 = arg_3;
    return (1i | var_3.b.d) | ~countOneBits(~(-arg_1.x));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = reverseBits(1u);
    let var_0 = vec3<i32>(arg_1, -21241i, -arg_1);
    let var_1 = func_1(Struct_1(!(1u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 82234u, u_input.b), vec4<u32>(u_input.c.x, 4294967295u, 29189u, 1u))), arg_0, arg_3.c, arg_3.d)).c;
    global1 = ~1u;
    global0 = firstTrailingBit(~(~abs(6537u)) >> (~(~34824u | ~var_1.a.x) % 32u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-476f, -1261f, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1492f))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, ~16346i, -1i, abs(-6400i)))), vec3<bool>(!any(vec2<bool>(true, true)), true, true), Struct_1(true, 1000f, -1620f, func_4(func_1(Struct_1(true, 1465f, -1562f, 78938i)), ~(~vec2<i32>(33428i, 4635i)), _wgslsmith_add_u32(7436u, 1u) | abs(u_input.c.x), Struct_2(abs(u_input.c.xz)))));
    let var_1 = func_1(var_0);
    var var_2 = var_1.d;
    var var_3 = max(vec3<i32>(~var_0.d << (_wgslsmith_dot_vec3_u32(u_input.c, u_input.a) % 32u), ~var_0.d, func_1(func_5(var_2.b.c, -2147483647i, vec3<bool>(false, true, true), Struct_1(false, -480f, var_1.d.b.c, var_1.d.b.d))).d.b.d) >> (vec3<u32>(~4294967295u, ~u_input.a.x, u_input.d) % vec3<u32>(32u)), var_1.b.xxw);
    var var_4 = _wgslsmith_mod_vec4_i32(var_1.b, abs(vec4<i32>(1i, var_2.b.d, func_2(func_5(-1250f, var_3.x, vec3<bool>(false, var_2.a.x, var_0.a), var_0).d).x, ~_wgslsmith_add_i32(23036i, var_2.b.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b + var_1.d.b.b), var_1.c.a.x, _wgslsmith_add_vec4_i32(var_1.b, firstLeadingBit(var_1.b)));
}

