struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> Struct_4 {
    let var_0 = Struct_3(~vec2<u32>(~_wgslsmith_add_u32(51612u, u_input.b), firstTrailingBit(~0u)));
    return Struct_4(select(all(vec2<bool>(false, arg_3)), select(false, !arg_3, false), arg_0.x >= arg_2), arg_3, Struct_3(var_0.a), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.wzz))), arg_3, true, _wgslsmith_div_vec3_i32(arg_1 | -u_input.a.wxy, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, 876i, u_input.a.x) >> (vec3<u32>(55688u, 4904u, 34531u) % vec3<u32>(32u)), -vec3<i32>(1i, -25484i, -1i)))), _wgslsmith_f_op_vec3_f32(-arg_0.zyx));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    global0 = false;
    let var_0 = ~max(select(~(~vec4<u32>(arg_1.c.a.x, arg_0.c.x, 8864u, arg_0.c.x)), vec4<u32>(arg_1.c.a.x, _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(arg_1.c.a.x, arg_0.c.x, arg_1.c.a.x)), ~arg_1.c.a.x, ~1u), select(vec4<bool>(false, true, arg_0.b.c, true), !vec4<bool>(arg_0.b.b, arg_0.b.c, arg_1.b, true), !vec4<bool>(false, arg_0.b.b, arg_1.a, false))), ~(~(vec4<u32>(u_input.c.x, 78087u, u_input.c.x, 1u) >> (vec4<u32>(arg_0.c.x, 63987u, 123246u, u_input.b) % vec4<u32>(32u)))));
    let var_1 = arg_1.c;
    let var_2 = !vec4<bool>(any(!(!vec4<bool>(false, arg_0.b.b, false, arg_1.a))), false, arg_0.b.c, arg_1.d.c);
    global0 = false;
    return u_input.c.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = vec2<u32>(45341u, ~func_3(Struct_2(-vec3<i32>(-2147483647i, arg_1.d.x, -2147483647i), Struct_1(vec3<f32>(arg_1.a.x, arg_2.x, 1118f), arg_1.c, true, vec3<i32>(u_input.a.x, arg_1.d.x, arg_0)), u_input.c), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, 422f, arg_2.x, -712f) - vec4<f32>(arg_1.a.x, 221f, -2465f, arg_2.x)), vec3<i32>(2147483647i, -2147483647i, 53079i) | arg_1.d, _wgslsmith_f_op_f32(-arg_2.x), u_input.c.x != 53830u), -8969i, _wgslsmith_f_op_vec2_f32(arg_1.a.yy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(960f, arg_2.x)))));
    let var_1 = u_input.a;
    let var_2 = vec3<bool>(arg_1.c, 1i <= _wgslsmith_dot_vec4_i32(abs(u_input.a), vec4<i32>(-2147483647i, 56356i, 2147483647i, ~(-63i))), arg_1.c);
    var var_3 = firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, ~func_3(Struct_2(var_1.wyw, Struct_1(vec3<f32>(345f, 1314f, 703f), arg_1.c, true, var_1.wwy), u_input.c), Struct_4(true, arg_1.b, Struct_3(var_0), Struct_1(arg_1.a, false, false, vec3<i32>(35611i, u_input.a.x, var_1.x)), arg_1.a), arg_0, arg_1.a.zx), var_0.x), ~(~arg_3), _wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-411f, arg_2.x, 1238f, 223f))), _wgslsmith_div_vec3_i32(vec3<i32>(-26170i, -81257i, -34349i), u_input.a.yxw), arg_2.x, !arg_1.c).c.a.x, _wgslsmith_div_u32(u_input.c.x << (arg_3 % 32u), abs(41134u))), 60399u));
    global0 = var_2.x;
    return Struct_2(var_1.www, Struct_1(arg_1.a, true, true, (~vec3<i32>(2147483647i, 0i, arg_1.d.x) | vec3<i32>(1i, -16358i, 0i)) ^ var_1.yxz), var_3.zzz);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    let var_0 = u_input.a.x;
    global0 = !(arg_1.b.b & arg_2);
    var var_1 = arg_1;
    var var_2 = ~1i;
    let var_3 = !(!select(!select(vec3<bool>(arg_2, false, false), vec3<bool>(true, true, var_1.b.c), false), vec3<bool>(!arg_2, 763f <= var_1.b.a.x, -3311i <= arg_1.b.d.x), true));
    return StorageBuffer(arg_1.c.x, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = any(vec2<bool>(true, true));
    let var_0 = ~_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -14312i), -u_input.a.x, ~1i, u_input.a.x));
    var var_1 = 515f;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 1i, -2147483647i, var_0.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x), vec4<u32>(42040u, 47608u, u_input.b, u_input.b)) % vec4<u32>(32u)), -u_input.a | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x), vec4<i32>(-1i, var_0.x, -2147483647i, var_0.x)), vec4<i32>(2147483647i << (u_input.b % 32u), _wgslsmith_mod_i32(var_0.x, -21284i), firstTrailingBit(var_0.x), 37732i)) >> (~(vec4<u32>(0u, 18796u, 0u, 14023u) >> (vec4<u32>(u_input.b, u_input.c.x, 69241u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), func_1(i32(-1i) * -17792i, Struct_1(vec3<f32>(-1794f, _wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(var_2.x - -1226f)), true, (u_input.a.x | u_input.a.x) > _wgslsmith_mod_i32(2147483647i, var_0.x), _wgslsmith_div_vec3_i32(select(vec3<i32>(1241i, -22691i, var_0.x), var_0.yyx, true), var_0.zyx)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zy)))), ~39713u ^ u_input.c.x), select(-1282f > _wgslsmith_f_op_f32(var_2.x * -1624f), any(vec4<bool>(false, false, false, true)) != select(false, false, true), all(vec4<bool>(true, true, true, true))) & false);
}

