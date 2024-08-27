struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = false;
    let var_1 = Struct_1(!(!select(!arg_2.a.a, vec4<bool>(false, arg_2.a.a.x, false, arg_1), arg_2.c.a)));
    var var_2 = u_input.a;
    var var_3 = !var_1.a.wz;
    var var_4 = all(!select(!vec2<bool>(var_0, false), arg_2.c.a.yx, var_1.a.x));
    return ~_wgslsmith_mult_i32(2147483647i, arg_2.b);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = ~(~(~(u_input.a & u_input.a) & 13760u));
    let var_1 = countOneBits(vec3<i32>(0i, func_3(vec4<u32>(u_input.a, _wgslsmith_div_u32(12121u, 13782u), 38552u & u_input.a, ~25387u), true, Struct_2(Struct_1(vec4<bool>(false, false, true, false)), 3710i, Struct_1(vec4<bool>(true, false, true, true)))), -(~_wgslsmith_mod_i32(-28905i, 1i))));
    var_0 = 4294967295u;
    var var_2 = Struct_3(vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -791f)), true, var_1.x, countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 12122i, 27067i, var_1.x), vec4<i32>(42699i, -34771i, var_1.x, var_1.x), vec4<i32>(-12459i, var_1.x, var_1.x, var_1.x)), vec4<i32>(var_1.x, var_1.x, -1i, 10148i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-3621i, 23760i, var_1.x, 2147483647i) | vec4<i32>(2147483647i, 2147483647i, -70482i, var_1.x), vec4<i32>(33975i, var_1.x, 2147483647i, -38221i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))), Struct_1(vec4<bool>(false, 1i <= _wgslsmith_add_i32(var_1.x, -9815i), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), select(true, true, true))));
    var var_3 = Struct_2(Struct_1(select(var_2.e.a, !select(var_2.e.a, var_2.e.a, var_2.e.a.x), all(select(var_2.e.a, vec4<bool>(true, var_2.e.a.x, true, var_2.b), vec4<bool>(false, true, true, var_2.b))))), -_wgslsmith_add_i32(var_1.x, -(~(-20217i))), var_2.e);
    return Struct_1(!vec4<bool>(57191u >= ~u_input.a, all(vec2<bool>(true, true)), false, var_3.c.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = 1i;
    var_0 = -52509i;
    return Struct_4(_wgslsmith_f_op_f32(abs(1f)), arg_0.a.a, Struct_2(arg_0.c, ~(-(~(-49277i))), func_2(vec2<f32>(-1098f, _wgslsmith_f_op_f32(abs(-824f))))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-486f, -1333f)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = firstTrailingBit(~vec2<u32>(1u, ~u_input.a) | reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 1u)), vec2<u32>(0u, 1u) >> (vec2<u32>(46678u, u_input.a) % vec2<u32>(32u)))));
    let var_1 = func_4(Struct_2(func_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-429f - arg_0))), _wgslsmith_clamp_i32(1i, 2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, 13207i, -2147483647i)), reverseBits(vec3<i32>(68156i, 0i, 1i)))), func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), select(select(vec2<bool>(true, all(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), vec2<bool>(true, true), select(vec2<bool>(any(vec2<bool>(false, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(any(vec2<bool>(false, true)), true))));
    let var_2 = func_4(func_4(Struct_2(var_1.c.c, -37204i, Struct_1(func_2(vec2<f32>(1000f, -304f)).a)), select(select(func_2(vec2<f32>(-1000f, 539f)).a.xy, func_2(vec2<f32>(var_1.e, -343f)).a.yy, select(var_1.c.c.a.xz, var_1.b.zx, var_1.d.a.x)), !var_1.d.a.zz, true)).c, select(var_1.b.zz, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1008f, var_1.e)))).a.zx, vec2<bool>(var_1.c.a.a.x, !var_1.b.x))).d;
    var var_3 = -1217f;
    var_0 = select(_wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(88686u, var_0.x, u_input.a), 0u), vec2<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.x, u_input.a), vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a)))), abs(~vec2<u32>(firstLeadingBit(u_input.a), 1u)), vec2<bool>(true, (arg_0 < _wgslsmith_f_op_f32(f32(-1f) * -303f)) | true));
    return ~reverseBits(max(select(vec3<u32>(u_input.a, var_0.x, var_0.x), vec3<u32>(16967u, 58717u, u_input.a), vec3<bool>(var_2.a.x, var_1.c.a.a.x, var_2.a.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4893u, 8788u, var_0.x), vec3<u32>(1u, u_input.a, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(1200f);
    var var_1 = func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -489f) - vec2<f32>(-206f, 1934f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1184f, -1154f)))), 71707i, Struct_1(vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, false)), any(vec3<bool>(false, false, false)), true))), vec2<bool>(func_4(func_4(func_4(Struct_2(Struct_1(vec4<bool>(true, false, true, true)), 0i, Struct_1(vec4<bool>(true, false, false, true))), vec2<bool>(true, true)).c, vec2<bool>(false, true)).c, vec2<bool>(true, any(vec4<bool>(true, false, false, false)))).b.x, any(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1048f, 302f))).a))).c.b;
    let var_2 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), true, false, true), true));
    var_1 = i32(-1i) * -1i;
    var var_3 = Struct_3(vec3<f32>(1f, 1f, 1f), false, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-11780i, 12120i, -13884i, 1i), ~vec4<i32>(-65560i, -12653i, 1i, 36035i)), -30309i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(64879i, -1i) << (~var_0.x % 32u), _wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, -1i), vec2<i32>(9829i, 2147483647i)), ~vec2<i32>(-86406i, 1i)), firstLeadingBit(~(-15140i)), _wgslsmith_mod_i32(~2147483647i, _wgslsmith_add_i32(26630i, 1i))), ~vec4<i32>(1i, 1i, -25706i, -2147483647i) | vec4<i32>(1i, 1i, 37057i, _wgslsmith_clamp_i32(0i, -1i, -2147483647i))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1805f, 896f), vec2<f32>(451f, 2953f), false))))));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-var_3.a.x), !(!func_2(var_3.a.xy).a), Struct_2(var_3.e, var_3.c, func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, var_3.a.x) + vec2<f32>(237f, -722f)))))), Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a.zz * var_3.a.xy))).a), var_3.a.x);
    let var_5 = var_3.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

