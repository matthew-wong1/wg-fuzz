struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    let var_0 = min(min((vec4<i32>(-4720i, u_input.b, -1i, u_input.b) >> (u_input.d % vec4<u32>(32u))) | reverseBits(-vec4<i32>(2147483647i, u_input.b, 2147483647i, 14565i)), vec4<i32>(-32712i, u_input.c, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-16521i, u_input.b, u_input.b), ~vec3<i32>(u_input.c, u_input.c, u_input.b)))), countOneBits(_wgslsmith_mult_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b, u_input.c, -1249i), vec4<i32>(40493i, u_input.c, -35526i, 1i), vec4<i32>(-6370i, -2147483647i, u_input.b, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1750i, u_input.c, u_input.b, u_input.c), vec4<i32>(u_input.c, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, -2147483647i))), select(-vec4<i32>(u_input.c, -2147483647i, u_input.c, 0i), -vec4<i32>(-1i, u_input.b, 17839i, 1i), vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_add_i32(-1i << (max(firstLeadingBit(0u) | max(1u, u_input.d.x), arg_1.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-24806i, 6917i, var_0.x), var_0.wxx), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, var_0.x), vec3<i32>(-1i, u_input.b, var_0.x))), var_0.x));
    var var_2 = 0u;
    return ~0u;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_1(firstTrailingBit(vec3<u32>(u_input.d.x, reverseBits(4294967295u), 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(step(-308f, -579f)), _wgslsmith_f_op_f32(trunc(506f)), -1389f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -286f, 365f, -1132f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 704f, 585f))))), ~(-2147483647i), -1042f), Struct_1(vec3<u32>(~countOneBits(u_input.e.x), _wgslsmith_sub_u32(u_input.a, 1u), 73335u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(535f, 627f, -661f, -1392f) * vec4<f32>(1000f, 1023f, 490f, -439f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(978f, 1400f, 1011f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, -1297f, -218f, -838f))))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1356f))), Struct_3(vec2<i32>(~(u_input.c << (1u % 32u)), ~_wgslsmith_clamp_i32(0i, 2147483647i, u_input.c)), Struct_1(vec3<u32>(func_3(u_input.e.x, vec4<u32>(u_input.a, 1u, u_input.d.x, u_input.a)), reverseBits(u_input.e.x), u_input.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2339f, 1097f, -475f, -342f)), abs(u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -512f))), -_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, u_input.c), vec3<i32>(-2147483647i, -28320i, u_input.b)), ~max(vec3<i32>(30082i, 60273i, -2289i), vec3<i32>(u_input.c, u_input.b, u_input.c))));
    let var_1 = true;
    var var_2 = Struct_1(select(abs(u_input.e.zxx), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(26928u, var_0.a.a.x), u_input.d.x, 1u), u_input.d.x ^ ~13900u, u_input.a), vec3<bool>(any(vec4<bool>(var_1, var_1, var_1, true)), true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d + var_0.b.b.x)), _wgslsmith_f_op_f32(ceil(302f)), var_0.c.b.b.x, var_0.a.b.x), _wgslsmith_f_op_vec4_f32(-var_0.c.b.b)), 4706i, _wgslsmith_f_op_f32(-var_0.c.b.d));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x + var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.d - 576f), _wgslsmith_f_op_f32(543f + 280f))))), _wgslsmith_f_op_f32(abs(var_0.a.d)));
    var var_4 = !(var_2.b.x < var_3);
    return var_3;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = arg_1.yzy;
    let var_1 = -933f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(234f))))), _wgslsmith_f_op_f32(func_2()));
    let var_2 = Struct_1(max(vec3<u32>(0u & ~arg_2.a.x, _wgslsmith_div_u32(u_input.a, arg_2.a.x >> (1u % 32u)), 1u), firstTrailingBit(select(vec3<u32>(1u, u_input.d.x, 4294967295u), vec3<u32>(arg_2.a.x, u_input.a, 0u), arg_0) & u_input.e.wxz)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-637f, arg_2.b.x, arg_2.b.x, -285f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, 445f, -467f, arg_1.x))))), any(vec4<bool>(var_0.x == arg_1.x, all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), all(vec4<bool>(true, arg_3, arg_3, var_1)), var_1 || arg_0.x)))), _wgslsmith_div_i32(-u_input.b, arg_2.c), arg_1.x);
    var var_3 = select(vec2<bool>(any(!select(vec4<bool>(var_1, true, arg_3, arg_3), vec4<bool>(arg_3, arg_3, true, var_1), false)), true), vec2<bool>(any(arg_0), any(arg_0)), any(!select(vec3<bool>(var_1, arg_3, true), select(vec3<bool>(false, var_1, true), arg_0, arg_0), true)));
    var_3 = !arg_0.yx;
    return vec2<i32>(-1i, countOneBits(_wgslsmith_add_i32(_wgslsmith_div_i32(-5271i, arg_2.c), -1i)) | 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var var_1 = Struct_3(~(-func_1(vec3<bool>(false, true, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(616f, 161f, -1807f, -1000f) - vec4<f32>(-2110f, 594f, -1769f, 255f)), Struct_1(vec3<u32>(u_input.d.x, u_input.e.x, 15188u), vec4<f32>(-168f, -2407f, 301f, -1244f), u_input.b, -413f), -7505i != u_input.b)), Struct_1(_wgslsmith_sub_vec3_u32(select(u_input.e.xxy, vec3<u32>(61225u, u_input.a, u_input.e.x), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), u_input.d.xxz << (u_input.e.xxw % vec3<u32>(32u))), vec4<f32>(1947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f - 113f)), -886f, _wgslsmith_f_op_f32(-448f - 856f)), min(-(u_input.b | u_input.b), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(603f))))));
    var var_2 = 18278i << (~(u_input.e.x & countOneBits(~var_1.b.a.x)) % 32u);
    var var_3 = var_1.b.d;
    var_1 = Struct_3(abs(select(-(~vec2<i32>(u_input.b, -1121i)), vec2<i32>(countOneBits(-2147483647i), ~(-2147483647i)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), var_1.b);
    var_1 = Struct_3(var_1.a, Struct_1(firstTrailingBit(vec3<u32>(~var_1.b.a.x, u_input.d.x, _wgslsmith_add_u32(u_input.a, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.d, -1008f, var_1.b.b.x, var_1.b.d), vec4<f32>(238f, 397f, 175f, var_1.b.d)) - _wgslsmith_f_op_vec4_f32(trunc(var_1.b.b)))), ~(~(-2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.d) + var_1.b.d), -884f))));
    let var_4 = Struct_5(abs(select(abs(vec4<i32>(-1i, -22130i, var_1.b.c, 0i)), -vec4<i32>(var_1.b.c, 5693i, 1i, 2147483647i), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))) | ((-vec4<i32>(-1i, -2147483647i, var_1.b.c, u_input.c) ^ vec4<i32>(1i, -3898i, u_input.c, -31953i)) << (max(vec4<u32>(0u, u_input.e.x, 81886u, u_input.d.x), u_input.e) % vec4<u32>(32u))), _wgslsmith_div_i32(-1i, ~(-u_input.c)), var_1.b.a);
    var var_5 = var_4.a.wwx;
    let var_6 = _wgslsmith_f_op_f32(abs(141f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(var_1.b.a.x, _wgslsmith_clamp_u32(var_1.b.a.x, u_input.e.x, 0u))));
}

