struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    var var_0 = !vec4<bool>(any(vec3<bool>(select(true, arg_2.d.a.x, arg_2.d.b.x), 4294967295u != arg_2.b.d, arg_2.d.b.x)), true, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1785f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f * 461f)));
    let var_1 = Struct_1(arg_0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.b.b, -16842i, 27460i, arg_2.c.c.x), select(arg_0.a, firstTrailingBit(vec4<i32>(arg_0.a.x, u_input.a, -1i, 26073i)), arg_2.c.b)) & ~(-arg_0.a.x & ~17204i), ~(~(~u_input.b.xy)), 0u);
    var_0 = vec4<bool>(all(!arg_2.c.a.zz), any(arg_2.c.b.xwz) && (-1i > firstLeadingBit(firstTrailingBit(-2147483647i))), arg_2.d.b.x, max(73795u, arg_0.c.x) != _wgslsmith_mod_u32(15086u, ~arg_0.d));
    var_0 = !select(!vec4<bool>(24118u < arg_0.d, var_0.x, true, true), !select(!arg_2.d.b, vec4<bool>(false, true, var_0.x, true), arg_2.c.b), any(!var_0.zwy) && arg_2.c.a.x);
    var_0 = select(vec4<bool>(all(var_0.yxw), true, arg_1.x, !(!all(arg_2.c.b))), !vec4<bool>(!arg_1.x & true, false, all(vec4<bool>(false, true, true, arg_2.c.a.x)), true & arg_2.a), !arg_1.x);
    return !(arg_2.c.a.x && arg_2.c.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> u32 {
    var var_0 = arg_0.d;
    let var_1 = arg_0;
    let var_2 = arg_0.b;
    let var_3 = 1u;
    let var_4 = Struct_3(var_0.a.x, var_1.b, var_1.c, Struct_2(vec3<bool>(true, !(!var_0.a.x), _wgslsmith_clamp_u32(var_2.c.x, 46008u, 2078u) != _wgslsmith_div_u32(4294967295u, arg_0.b.c.x)), vec4<bool>(17953i >= arg_1, func_3(var_2, var_0.a.xz, var_1), true, false), -var_2.a.xw));
    return 5906u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = ~(~2417i) >> (arg_0.x % 32u);
    let var_1 = arg_1.b;
    let var_2 = arg_1.c;
    let var_3 = var_2;
    var var_4 = _wgslsmith_dot_vec4_i32(arg_1.b.a, _wgslsmith_mult_vec4_i32(firstLeadingBit((arg_1.b.a | var_1.a) << (~arg_0 % vec4<u32>(32u))), var_1.a));
    return Struct_1(reverseBits(~(var_1.a << (u_input.b % vec4<u32>(32u)))) ^ _wgslsmith_div_vec4_i32(arg_1.b.a, var_1.a), 2654i, vec2<u32>(43149u, arg_1.b.c.x), var_1.c.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = func_4(vec4<u32>(0u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.b.d, 4294967295u), _wgslsmith_dot_vec2_u32(arg_2.c, u_input.b.xw)), _wgslsmith_mult_u32(u_input.b.x, func_2(arg_0, 1i)), ~5336u), arg_0, arg_0.d.c.x);
    let var_1 = vec4<u32>(func_4(vec4<u32>(arg_0.b.c.x, var_0.d, var_0.c.x, _wgslsmith_mult_u32(83835u, arg_0.b.c.x)), arg_0, reverseBits(-u_input.a)).d ^ countOneBits(arg_2.d), 0u, _wgslsmith_mod_u32(~(~85131u), func_2(Struct_3(arg_1.a.x, Struct_1(arg_2.a, -40246i, vec2<u32>(1u, u_input.b.x), 4294967295u), arg_0.d, arg_0.c), _wgslsmith_sub_i32(var_0.b, -3617i))), min(1u, 4294967295u) >> (~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.d, 1u, 0u), vec4<u32>(arg_2.c.x, 51623u, 1u, 4294967295u)) | arg_2.d) % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1126f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_div_f32(-814f, _wgslsmith_f_op_f32(f32(-1f) * -122f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1551f)), -289f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1429f, 1285f, 439f, 520f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2469f, -1000f, 1774f, 1469f))))) - vec4<f32>(_wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(359f - -2078f)), 365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-853f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -616f))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-538f)), 1f, !arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(select(2327f, -1000f, arg_1.a.x))) * -284f))), -869f, -2007f);
    var var_3 = 1412f;
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = u_input.b.xwz;
    var_0 = max(~vec3<u32>(~arg_0.b.c.x, 4294967295u, var_0.x), select(vec3<u32>(~4294967295u, func_1(arg_1, Struct_2(arg_1.d.a, vec4<bool>(true, true, false, false), arg_0.d.c), arg_0.b).b.c.x, var_0.x), firstLeadingBit(u_input.b.wwz), true)) & abs(vec3<u32>(u_input.b.x, ~0u, ~1u));
    var_0 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(select(vec3<u32>(u_input.b.x, arg_1.b.c.x, arg_1.b.c.x), u_input.b.zzy, arg_1.c.b.x)), vec3<u32>(arg_1.b.d, var_0.x, arg_1.b.d) << (vec3<u32>(18437u, 0u, 0u) % vec3<u32>(32u))), u_input.b.zyx, select(select(u_input.b.xzy, u_input.b.xwz, vec3<bool>(arg_1.c.a.x, true, arg_1.d.b.x)), vec3<u32>(arg_0.b.c.x, u_input.b.x, var_0.x), func_1(arg_1, Struct_2(vec3<bool>(arg_0.a, true, false), arg_1.d.b, vec2<i32>(0i, arg_1.d.c.x)), Struct_1(vec4<i32>(1i, 22039i, arg_1.d.c.x, arg_1.c.c.x), 44974i, arg_0.b.c, arg_1.b.c.x)).d.a) & u_input.b.zyw));
    var_0 = min(~u_input.b.wyx, vec3<u32>(arg_0.b.c.x, var_0.x, ~_wgslsmith_mod_u32(79539u, 45912u)));
    var var_1 = Struct_1(min(arg_1.b.a, vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.a, -1i)), u_input.a, u_input.a, u_input.a)), arg_1.c.c.x, vec2<u32>(~4294967295u, func_4(_wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(4294967295u, 36585u, 1672u, 5720u), vec4<u32>(36651u, u_input.b.x, 67182u, u_input.b.x)), arg_1, ~_wgslsmith_mult_i32(u_input.a, u_input.a)).d), 45428u);
    return func_1(Struct_3(arg_0.d.a.x, Struct_1((var_1.a >> (vec4<u32>(u_input.b.x, 1u, 69123u, arg_1.b.c.x) % vec4<u32>(32u))) & vec4<i32>(arg_1.d.c.x, arg_1.b.b, arg_0.d.c.x, arg_0.d.c.x), arg_1.b.b, arg_1.b.c, 0u), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, arg_1.c.a.x, arg_1.d.b.x, !arg_1.c.b.x), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(51420i, -1i)), vec2<i32>(0i, arg_0.c.c.x), select(arg_1.c.c, arg_0.b.a.yx, arg_0.a))), Struct_2(select(select(arg_1.d.b.zxz, arg_0.d.b.xxw, arg_0.c.a), vec3<bool>(true, arg_1.a, arg_0.d.a.x), !arg_1.c.a), select(arg_1.c.b, select(vec4<bool>(arg_1.a, true, true, false), vec4<bool>(arg_1.a, arg_0.c.b.x, arg_0.a, true), arg_1.d.a.x), true), firstTrailingBit(~vec2<i32>(1i, 7799i)))), Struct_2(select(arg_0.c.a, !select(arg_0.d.a, arg_0.c.b.ywx, arg_1.d.b.x), func_3(arg_1.b, arg_1.c.b.yw, arg_0)), !(!select(vec4<bool>(false, true, arg_1.a, true), arg_0.c.b, arg_0.a)), -select(~vec2<i32>(-64253i, arg_0.c.c.x), arg_0.c.c, arg_1.c.b.xw)), func_1(func_1(Struct_3(true, Struct_1(vec4<i32>(0i, var_1.a.x, u_input.a, 2147483647i), -37026i, arg_0.b.c, 1833u), arg_0.c, func_1(Struct_3(true, arg_0.b, arg_1.d, Struct_2(arg_0.c.b.wwz, arg_0.d.b, vec2<i32>(u_input.a, arg_1.d.c.x))), arg_1.d, arg_0.b).c), func_1(arg_0, arg_1.d, func_4(vec4<u32>(var_1.d, arg_0.b.d, 33994u, 0u), Struct_3(arg_1.d.a.x, arg_1.b, Struct_2(vec3<bool>(false, arg_0.a, false), arg_0.d.b, vec2<i32>(-2473i, u_input.a)), Struct_2(vec3<bool>(false, false, false), arg_0.c.b, vec2<i32>(-41246i, arg_0.b.b))), 22015i)).c, arg_0.b), Struct_2(arg_0.d.a, select(select(vec4<bool>(arg_1.a, arg_0.d.b.x, true, true), arg_1.d.b, arg_1.d.b), select(arg_0.d.b, arg_0.c.b, false), vec4<bool>(arg_0.a, arg_1.d.a.x, arg_0.a, true)), func_4(u_input.b, arg_1, var_1.a.x).a.yy), func_4(max(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, arg_1.b.c.x, arg_1.b.c.x, var_1.d), u_input.b), vec4<u32>(0u, var_1.d, 60304u, 32020u) & vec4<u32>(arg_0.b.d, arg_0.b.d, 11694u, arg_1.b.d)), Struct_3(false, arg_1.b, arg_0.c, arg_1.d), 43845i)).b).c.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = select(vec2<bool>(_wgslsmith_sub_u32(u_input.b.x, 1u) > _wgslsmith_mod_u32(17452u, _wgslsmith_add_u32(48927u, 1u)), all(vec2<bool>(true, true))), select(!func_5(func_1(Struct_3(true, Struct_1(vec4<i32>(-2147483647i, u_input.a, 41377i, u_input.a), -1i, u_input.b.wx, 0u), Struct_2(vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), vec2<i32>(u_input.a, u_input.a)), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), vec2<i32>(u_input.a, -59893i))), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), vec2<i32>(-1i, 1i)), Struct_1(vec4<i32>(u_input.a, -22308i, -1i, u_input.a), 11428i, u_input.b.ww, 4294967295u)), Struct_3(true, Struct_1(vec4<i32>(u_input.a, 3485i, 9542i, u_input.a), u_input.a, vec2<u32>(u_input.b.x, 1u), 0u), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), vec2<i32>(-13633i, u_input.a)), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), vec2<i32>(51881i, u_input.a)))), select(vec2<bool>(false, all(vec4<bool>(true, false, false, true))), vec2<bool>(true, true), true), func_3(func_1(Struct_3(true, Struct_1(vec4<i32>(2147483647i, 2147483647i, u_input.a, 4685i), u_input.a, u_input.b.wz, var_0), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, false, true, true), vec2<i32>(-2147483647i, u_input.a)), Struct_2(vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, 1i))), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, true, true, false), vec2<i32>(u_input.a, u_input.a)), Struct_1(vec4<i32>(u_input.a, 0i, -34556i, u_input.a), -1i, vec2<u32>(63831u, var_0), u_input.b.x)).b, select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), func_1(func_1(Struct_3(false, Struct_1(vec4<i32>(2147483647i, 0i, 0i, u_input.a), u_input.a, u_input.b.yw, 20689u), Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec2<i32>(u_input.a, 1i)), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, false, false, true), vec2<i32>(u_input.a, 2147483647i))), Struct_2(vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), vec2<i32>(8459i, 1i)), Struct_1(vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i), u_input.a, vec2<u32>(31510u, var_0), 58066u)), func_1(Struct_3(false, Struct_1(vec4<i32>(u_input.a, u_input.a, 54358i, 2147483647i), u_input.a, u_input.b.zw, 0u), Struct_2(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec2<i32>(u_input.a, u_input.a)), Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, true, false, true), vec2<i32>(u_input.a, 66209i))), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, true, true, false), vec2<i32>(u_input.a, u_input.a)), Struct_1(vec4<i32>(46744i, -70227i, u_input.a, -3201i), u_input.a, u_input.b.wz, var_0)).d, func_1(Struct_3(true, Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a, u_input.b.zw, var_0), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, false, false, true), vec2<i32>(u_input.a, u_input.a)), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, false, true, false), vec2<i32>(u_input.a, -2147483647i))), Struct_2(vec3<bool>(false, true, true), vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, -5013i)), Struct_1(vec4<i32>(u_input.a, 0i, u_input.a, -17720i), -47424i, vec2<u32>(1u, 0u), 16227u)).b))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32((vec4<i32>(u_input.a, 1i, u_input.a, 0i) >> ((u_input.b & vec4<u32>(var_0, var_0, 0u, var_0)) % vec4<u32>(32u))) & vec4<i32>(countOneBits(16956i), -u_input.a, u_input.a, -u_input.a), vec4<i32>(-59405i >> (u_input.b.x % 32u), 1i, u_input.a & u_input.a, func_4(u_input.b, Struct_3(var_1.x, Struct_1(vec4<i32>(1i, -2147483647i, 0i, -22044i), -33275i, u_input.b.yz, 47533u), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(var_1.x, true, false, var_1.x), vec2<i32>(2080i, u_input.a)), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec2<i32>(-13432i, 0i))), u_input.a).a.x) ^ vec4<i32>(u_input.a, -28370i, 1i & u_input.a, -51901i)), ~(~(-36704i)) << (var_0 % 32u), vec2<u32>(var_0, var_0), firstLeadingBit(0u));
    let var_3 = -2147483647i;
    var_2 = func_4(~u_input.b, Struct_3(true, func_1(Struct_3(var_1.x, func_1(Struct_3(true, Struct_1(vec4<i32>(1i, var_3, u_input.a, -266i), var_3, vec2<u32>(100645u, 4294967295u), 4294967295u), Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, true, var_1.x, false), var_2.a.yz), Struct_2(vec3<bool>(var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, false), vec2<i32>(16075i, -2147483647i))), Struct_2(vec3<bool>(true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), vec2<i32>(-2147483647i, 47456i)), Struct_1(var_2.a, -2147483647i, vec2<u32>(u_input.b.x, var_2.d), 0u)).b, func_1(Struct_3(false, Struct_1(vec4<i32>(var_2.b, var_2.b, 51054i, u_input.a), -2147483647i, vec2<u32>(var_2.c.x, 47826u), 4294967295u), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), vec2<i32>(u_input.a, var_2.a.x)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec2<i32>(u_input.a, 1i))), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, var_1.x, var_1.x, true), vec2<i32>(u_input.a, var_3)), Struct_1(var_2.a, var_3, vec2<u32>(4294967295u, var_2.d), 37280u)).d, Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), var_2.a.xw)), Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, false, true), true), !vec4<bool>(var_1.x, true, var_1.x, true), -vec2<i32>(var_2.b, 0i)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(82806i, -1367i, -1i, -2147483647i), vec4<i32>(2379i, 0i, 0i, 0i), vec4<i32>(u_input.a, u_input.a, -26778i, var_2.a.x)), 32812i, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 3711u), vec2<u32>(var_2.d, 1u)), 87894u)).b, func_1(func_1(Struct_3(var_1.x, Struct_1(var_2.a, 41578i, var_2.c, 27230u), Struct_2(vec3<bool>(var_1.x, false, false), vec4<bool>(true, true, var_1.x, false), vec2<i32>(0i, var_3)), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, false, true), var_2.a.yw)), func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(u_input.a, var_2.b, -2147483647i, 40641i), var_2.a.x, vec2<u32>(68374u, var_0), var_0), Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, var_1.x, var_1.x, true), vec2<i32>(var_2.b, var_2.b)), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(false, true, false, var_1.x), var_2.a.xy)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec2<i32>(0i, -62784i)), Struct_1(vec4<i32>(u_input.a, var_3, u_input.a, 1009i), 1i, vec2<u32>(var_0, var_0), var_0)).c, func_1(Struct_3(var_1.x, Struct_1(var_2.a, -2147483647i, u_input.b.yx, 4294967295u), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(true, var_1.x, false, var_1.x), var_2.a.xz), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, false), vec2<i32>(var_3, var_3))), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(true, false, false, true), var_2.a.zw), Struct_1(var_2.a, 23599i, u_input.b.yz, u_input.b.x)).b), func_1(func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(var_3, -2147483647i, -11930i, 16248i), u_input.a, u_input.b.zy, u_input.b.x), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), var_2.a.yy), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec2<i32>(2147483647i, var_2.b))), Struct_2(vec3<bool>(var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, true), var_2.a.wx), Struct_1(var_2.a, u_input.a, u_input.b.zx, var_0)), func_1(Struct_3(false, Struct_1(var_2.a, 2815i, vec2<u32>(4294967295u, u_input.b.x), u_input.b.x), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec2<i32>(u_input.a, var_3)), Struct_2(vec3<bool>(var_1.x, false, false), vec4<bool>(false, true, true, true), vec2<i32>(var_3, var_3))), Struct_2(vec3<bool>(true, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_2.a.ww), Struct_1(vec4<i32>(1i, 0i, var_2.a.x, -57747i), -93814i, u_input.b.xy, 0u)).c, Struct_1(vec4<i32>(u_input.a, var_2.a.x, -40393i, var_3), -23893i, vec2<u32>(1u, u_input.b.x), 0u)).c, Struct_1(~var_2.a, u_input.a, ~vec2<u32>(u_input.b.x, 1u), func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(18127i, var_2.b, var_2.b, 1i), u_input.a, vec2<u32>(52731u, 36088u), var_0), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), var_2.a.yw), Struct_2(vec3<bool>(false, true, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), var_2.a.zx)), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_2.a.zw), Struct_1(var_2.a, 2147483647i, vec2<u32>(55461u, u_input.b.x), 14966u)).b.d)).d, Struct_2(func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(13346i, u_input.a, -1i, var_3), u_input.a, vec2<u32>(1u, var_0), 0u), Struct_2(vec3<bool>(var_1.x, true, false), vec4<bool>(false, false, false, true), vec2<i32>(-2147483647i, 2147483647i)), Struct_2(vec3<bool>(var_1.x, var_1.x, false), vec4<bool>(false, false, false, var_1.x), var_2.a.zx)), Struct_2(vec3<bool>(true, false, true), vec4<bool>(var_1.x, false, false, var_1.x), vec2<i32>(var_3, -10498i)), Struct_1(var_2.a, 2147483647i, var_2.c, 0u)).c.b.xxz, vec4<bool>(select(var_1.x, false, var_1.x), true, func_1(Struct_3(false, Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, var_2.b), u_input.a, vec2<u32>(u_input.b.x, u_input.b.x), 25465u), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, true, false, var_1.x), vec2<i32>(-1i, var_3)), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec2<i32>(2079i, 2147483647i))), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_2.a.wz), Struct_1(var_2.a, u_input.a, var_2.c, 4294967295u)).a, true), vec2<i32>(var_3, -var_3))), func_4(_wgslsmith_clamp_vec4_u32(min(~u_input.b, u_input.b), u_input.b, vec4<u32>(1u, ~var_2.c.x, 110974u >> (0u % 32u), _wgslsmith_sub_u32(var_2.c.x, 44665u))), func_1(Struct_3(!var_1.x, Struct_1(vec4<i32>(2147483647i, 0i, 1i, var_2.a.x), 2937i, var_2.c, var_2.c.x), Struct_2(vec3<bool>(var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_2.a.yx), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(true, false, true, true), vec2<i32>(u_input.a, -2147483647i))), func_1(func_1(Struct_3(var_1.x, Struct_1(var_2.a, -2147483647i, var_2.c, 0u), Struct_2(vec3<bool>(var_1.x, var_1.x, false), vec4<bool>(false, true, var_1.x, var_1.x), vec2<i32>(-10743i, -1i)), Struct_2(vec3<bool>(true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, true), var_2.a.xy)), Struct_2(vec3<bool>(false, false, false), vec4<bool>(var_1.x, true, true, var_1.x), vec2<i32>(1i, 2147483647i)), Struct_1(var_2.a, -2147483647i, vec2<u32>(110401u, 14483u), 4294967295u)), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec2<i32>(2147483647i, -2208i)), func_4(vec4<u32>(var_0, 47698u, var_2.c.x, 7408u), Struct_3(true, Struct_1(vec4<i32>(18356i, 2147483647i, var_2.a.x, var_2.b), 33574i, vec2<u32>(42943u, u_input.b.x), 52336u), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, false), var_2.a.wx), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, false, true), vec2<i32>(-10358i, 1i))), var_3)).d, func_1(func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(var_2.b, 21592i, var_2.b, u_input.a), -1i, var_2.c, var_2.c.x), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec2<i32>(u_input.a, -2147483647i)), Struct_2(vec3<bool>(true, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec2<i32>(var_2.b, u_input.a))), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec2<i32>(u_input.a, -2147483647i)), Struct_1(var_2.a, -2147483647i, u_input.b.zy, var_2.d)), func_1(Struct_3(false, Struct_1(var_2.a, -2147483647i, u_input.b.xx, 4294967295u), Struct_2(vec3<bool>(var_1.x, true, false), vec4<bool>(true, true, var_1.x, false), var_2.a.wz), Struct_2(vec3<bool>(var_1.x, true, true), vec4<bool>(true, var_1.x, false, true), var_2.a.zy)), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_2.a.xz), Struct_1(var_2.a, var_2.b, vec2<u32>(var_0, 0u), 4294967295u)).c, func_4(vec4<u32>(25560u, var_0, var_2.d, var_0), Struct_3(false, Struct_1(vec4<i32>(0i, -36852i, var_2.b, var_3), u_input.a, vec2<u32>(39972u, 8036u), 29721u), Struct_2(vec3<bool>(false, var_1.x, false), vec4<bool>(false, var_1.x, true, var_1.x), vec2<i32>(1i, 45642i)), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, true), var_2.a.zx)), 12110i)).b), _wgslsmith_div_i32(-29956i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_2.a.yxy, var_2.a.xwz), 2147483647i | var_2.a.x))).a.x);
    let var_4 = ~26933u << (func_1(func_1(Struct_3(!var_1.x, Struct_1(vec4<i32>(65985i, -4107i, var_3, u_input.a), 0i, u_input.b.zx, 4294967295u), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec2<i32>(var_2.b, -15640i)), func_1(Struct_3(true, Struct_1(vec4<i32>(var_2.a.x, -21925i, -5471i, -1i), u_input.a, var_2.c, 0u), Struct_2(vec3<bool>(false, var_1.x, false), vec4<bool>(true, true, true, true), var_2.a.xw), Struct_2(vec3<bool>(var_1.x, true, true), vec4<bool>(false, false, var_1.x, true), var_2.a.yy)), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), var_2.a.xw), Struct_1(var_2.a, u_input.a, u_input.b.wz, u_input.b.x)).c), func_1(func_1(Struct_3(true, Struct_1(var_2.a, 55607i, vec2<u32>(var_2.d, 70512u), u_input.b.x), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec2<i32>(29305i, 9587i)), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(false, var_1.x, false, var_1.x), vec2<i32>(0i, var_2.a.x))), Struct_2(vec3<bool>(false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, false), vec2<i32>(var_3, -1i)), Struct_1(var_2.a, -1264i, var_2.c, u_input.b.x)), Struct_2(vec3<bool>(var_1.x, false, true), vec4<bool>(true, true, var_1.x, false), vec2<i32>(var_2.b, 43491i)), func_4(vec4<u32>(1u, 1u, u_input.b.x, 13567u), Struct_3(true, Struct_1(var_2.a, 2147483647i, var_2.c, u_input.b.x), Struct_2(vec3<bool>(false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec2<i32>(-28103i, -2147483647i)), Struct_2(vec3<bool>(false, true, true), vec4<bool>(var_1.x, var_1.x, false, false), vec2<i32>(var_3, u_input.a))), var_3)).d, func_4(~vec4<u32>(4294967295u, var_0, u_input.b.x, 4294967295u), Struct_3(true, Struct_1(var_2.a, var_3, vec2<u32>(var_0, 64088u), u_input.b.x), Struct_2(vec3<bool>(true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_2.a.zz), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, false), vec2<i32>(var_2.a.x, -19005i))), u_input.a)), Struct_2(!vec3<bool>(true, var_1.x, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), vec2<i32>(abs(u_input.a), ~0i)), func_4(~vec4<u32>(var_2.c.x, var_2.d, var_0, u_input.b.x), func_1(Struct_3(true, Struct_1(var_2.a, u_input.a, vec2<u32>(54904u, 0u), var_0), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_2.a.yz), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, true), vec2<i32>(-2147483647i, 0i))), Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, var_1.x, true, false), vec2<i32>(-2147483647i, -30567i)), func_1(Struct_3(true, Struct_1(var_2.a, 7858i, vec2<u32>(1u, var_2.d), u_input.b.x), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, var_1.x, true, false), vec2<i32>(u_input.a, u_input.a)), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_2.a.zw)), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_2.a.zx), Struct_1(vec4<i32>(0i, var_3, var_3, var_2.b), 23974i, vec2<u32>(u_input.b.x, var_0), var_0)).b), select(-19843i, var_3, any(vec3<bool>(var_1.x, var_1.x, false))))).b.c.x % 32u);
    let var_5 = _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(~0u, ~var_4, ~var_0, var_4), select(~u_input.b, u_input.b, select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false)))), _wgslsmith_sub_vec4_u32(~firstLeadingBit(u_input.b), vec4<u32>(~var_2.d, ~_wgslsmith_div_u32(1u, var_0), ~var_0, 3388u)));
    var var_6 = func_1(func_1(func_1(func_1(Struct_3(var_1.x, Struct_1(var_2.a, u_input.a, vec2<u32>(var_5.x, 455u), 29099u), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec2<i32>(-62350i, var_3)), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec2<i32>(u_input.a, -2147483647i))), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(true, false, true, false), var_2.a.yw), Struct_1(var_2.a, var_3, var_2.c, u_input.b.x)), func_1(func_1(Struct_3(false, Struct_1(vec4<i32>(var_3, -43156i, 2147483647i, var_2.a.x), u_input.a, vec2<u32>(0u, 0u), 20074u), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec2<i32>(var_3, 2147483647i)), Struct_2(vec3<bool>(var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec2<i32>(var_3, var_3))), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec2<i32>(u_input.a, 10086i)), Struct_1(vec4<i32>(-6893i, u_input.a, -42787i, u_input.a), -67377i, vec2<u32>(var_4, 1u), 17710u)), func_1(Struct_3(var_1.x, Struct_1(var_2.a, var_2.a.x, var_2.c, var_4), Struct_2(vec3<bool>(var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec2<i32>(10937i, u_input.a)), Struct_2(vec3<bool>(false, true, true), vec4<bool>(true, false, false, var_1.x), vec2<i32>(-12836i, u_input.a))), Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, true, var_1.x, false), var_2.a.yz), Struct_1(var_2.a, u_input.a, var_5.xx, 4294967295u)).c, func_4(vec4<u32>(7637u, 1u, var_5.x, 4294967295u), Struct_3(false, Struct_1(vec4<i32>(var_3, 2147483647i, var_2.b, var_2.a.x), var_2.b, vec2<u32>(var_4, var_0), 4294967295u), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(true, true, false, true), vec2<i32>(27931i, 0i)), Struct_2(vec3<bool>(var_1.x, false, true), vec4<bool>(var_1.x, false, false, var_1.x), var_2.a.xy)), var_2.b)).d, Struct_1(var_2.a, var_3, max(var_2.c, vec2<u32>(var_4, var_4)), _wgslsmith_clamp_u32(1u, var_0, var_5.x))), func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(-2147483647i, var_3, -5544i, u_input.a), 52548i, var_5.zx, 40260u), Struct_2(vec3<bool>(true, true, true), vec4<bool>(var_1.x, true, true, true), var_2.a.wy), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_2.a.yy)), Struct_2(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, var_1.x)), func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(-21518i, u_input.a, -4688i, var_3), var_2.b, u_input.b.zz, 32778u), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(var_1.x, false, false, true), var_2.a.xz), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), vec2<i32>(0i, -37804i))), Struct_2(vec3<bool>(false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, false), var_2.a.xz), Struct_1(var_2.a, u_input.a, vec2<u32>(var_4, 4294967295u), var_5.x)).c.b, ~vec2<i32>(2147483647i, -20841i)), Struct_1(-vec4<i32>(u_input.a, var_2.a.x, 0i, 37575i), _wgslsmith_mod_i32(var_3, 1i), ~vec2<u32>(1u, 22224u), var_2.d)).c, Struct_1(min(_wgslsmith_mod_vec4_i32(var_2.a, vec4<i32>(0i, 0i, var_3, 0i)), var_2.a >> (vec4<u32>(22418u, 438u, 1u, var_0) % vec4<u32>(32u))), u_input.a, func_1(func_1(Struct_3(false, Struct_1(var_2.a, var_3, u_input.b.zz, u_input.b.x), Struct_2(vec3<bool>(false, false, true), vec4<bool>(var_1.x, true, false, var_1.x), vec2<i32>(var_3, u_input.a)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, false, true), var_2.a.zw)), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), var_2.a.yw), Struct_1(var_2.a, -2147483647i, var_5.xw, 21105u)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec2<i32>(0i, 57764i)), func_4(vec4<u32>(61135u, 80346u, var_5.x, var_0), Struct_3(var_1.x, Struct_1(var_2.a, u_input.a, vec2<u32>(var_2.c.x, 4294967295u), var_5.x), Struct_2(vec3<bool>(false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_2.a.xz), Struct_2(vec3<bool>(var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, true, false), vec2<i32>(-1i, -1i))), 16732i)).b.c, ~1u)), Struct_2(func_1(Struct_3(any(vec2<bool>(var_1.x, var_1.x)), func_4(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 4294967295u), Struct_3(false, Struct_1(vec4<i32>(var_3, 236i, 49517i, var_2.a.x), -2147483647i, u_input.b.wz, var_5.x), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec2<i32>(48544i, var_3)), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(false, true, true, var_1.x), var_2.a.xz)), -2147483647i), func_1(Struct_3(true, Struct_1(var_2.a, -2147483647i, vec2<u32>(64003u, var_4), 4294967295u), Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, var_1.x, true, var_1.x), vec2<i32>(-2147483647i, var_2.b)), Struct_2(vec3<bool>(false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), var_2.a.ww)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, false, true), vec2<i32>(2147483647i, 8780i)), Struct_1(var_2.a, var_3, vec2<u32>(42478u, var_2.c.x), 0u)).c, Struct_2(vec3<bool>(var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, false, false), vec2<i32>(-46470i, 1i))), Struct_2(!vec3<bool>(var_1.x, false, true), vec4<bool>(false, false, false, true), var_2.a.xy >> (vec2<u32>(4470u, var_5.x) % vec2<u32>(32u))), Struct_1(var_2.a ^ var_2.a, -u_input.a, firstTrailingBit(u_input.b.xw), abs(var_0))).d.a, select(select(!vec4<bool>(var_1.x, var_1.x, true, true), !vec4<bool>(true, var_1.x, false, var_1.x), true), func_1(Struct_3(var_1.x, Struct_1(var_2.a, var_2.b, vec2<u32>(15461u, var_4), var_5.x), Struct_2(vec3<bool>(var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, false, var_1.x), vec2<i32>(u_input.a, -2147483647i)), Struct_2(vec3<bool>(false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec2<i32>(u_input.a, 2147483647i))), func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(var_2.b, -1i, 0i, var_3), var_3, u_input.b.yy, var_4), Struct_2(vec3<bool>(true, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec2<i32>(u_input.a, u_input.a)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec2<i32>(2147483647i, 58235i))), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, var_1.x, false, var_1.x), vec2<i32>(-17297i, 0i)), Struct_1(var_2.a, -3364i, var_5.wx, 80139u)).c, Struct_1(var_2.a, 1737i, var_5.yx, 0u)).d.b, select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x))), _wgslsmith_div_vec2_i32(vec2<i32>(36692i, var_3) ^ var_2.a.xz, func_4(u_input.b, func_1(Struct_3(false, Struct_1(vec4<i32>(var_2.b, var_3, 1i, var_3), 0i, vec2<u32>(u_input.b.x, var_4), var_2.d), Struct_2(vec3<bool>(var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), vec2<i32>(u_input.a, u_input.a)), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec2<i32>(var_2.b, var_3))), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, true, false, var_1.x), var_2.a.zy), Struct_1(vec4<i32>(var_2.a.x, var_3, u_input.a, 2147483647i), var_2.b, vec2<u32>(var_5.x, var_4), 0u)), 0i).a.zx)), func_1(Struct_3(!var_1.x, func_1(func_1(Struct_3(var_1.x, Struct_1(var_2.a, var_3, u_input.b.yx, var_5.x), Struct_2(vec3<bool>(false, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), var_2.a.wx), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), var_2.a.zz)), Struct_2(vec3<bool>(var_1.x, true, false), vec4<bool>(false, var_1.x, false, false), vec2<i32>(2147483647i, u_input.a)), Struct_1(var_2.a, -18488i, var_5.wy, u_input.b.x)), Struct_2(vec3<bool>(false, true, false), vec4<bool>(var_1.x, var_1.x, false, true), vec2<i32>(2147483647i, -18962i)), Struct_1(vec4<i32>(var_2.b, 12224i, 0i, -1i), var_2.a.x, vec2<u32>(53130u, 0u), u_input.b.x)).b, Struct_2(vec3<bool>(true, true, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), false), countOneBits(vec2<i32>(-2147483647i, var_3))), func_1(func_1(Struct_3(false, Struct_1(vec4<i32>(var_3, var_2.b, 63179i, u_input.a), var_2.b, var_5.zw, 48836u), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec2<i32>(var_3, -31171i)), Struct_2(vec3<bool>(true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec2<i32>(var_3, 2147483647i))), Struct_2(vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec2<i32>(var_3, var_2.b)), Struct_1(var_2.a, var_2.a.x, vec2<u32>(var_2.c.x, 9126u), 4294967295u)), func_1(Struct_3(var_1.x, Struct_1(var_2.a, u_input.a, vec2<u32>(85728u, u_input.b.x), 4294967295u), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), vec2<i32>(14502i, var_3)), Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_2.a.zz)), Struct_2(vec3<bool>(false, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, false), var_2.a.yy), Struct_1(vec4<i32>(0i, var_2.b, 1i, u_input.a), 2147483647i, vec2<u32>(var_0, 4294967295u), var_5.x)).d, Struct_1(var_2.a, 0i, var_2.c, var_4)).c), Struct_2(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), false), vec4<bool>(var_1.x, any(vec3<bool>(false, false, var_1.x)), true, false), vec2<i32>(max(-1i, u_input.a), func_1(Struct_3(var_1.x, Struct_1(var_2.a, u_input.a, var_5.xz, var_5.x), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_2.a.wz), Struct_2(vec3<bool>(var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, false), vec2<i32>(var_2.a.x, -28168i))), Struct_2(vec3<bool>(true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_2.a.ww), Struct_1(var_2.a, 2147483647i, var_2.c, var_5.x)).c.c.x)), Struct_1(~(-var_2.a), countOneBits(_wgslsmith_add_i32(u_input.a, -2147483647i)), u_input.b.zx, ~(var_4 | 84163u))).b);
    var_6 = Struct_3(true, Struct_1(var_6.b.a, ~(-22454i), _wgslsmith_mod_vec2_u32(vec2<u32>(43013u, var_5.x ^ 7477u), vec2<u32>(~1u, 4294967295u)), u_input.b.x), func_1(func_1(Struct_3(!var_1.x, var_6.b, func_1(Struct_3(var_1.x, var_6.b, var_6.d, Struct_2(vec3<bool>(false, var_6.a, false), vec4<bool>(var_6.c.a.x, var_6.c.b.x, true, false), var_6.d.c)), var_6.c, Struct_1(vec4<i32>(10851i, u_input.a, -28889i, -55i), 0i, vec2<u32>(0u, var_0), 0u)).d, var_6.c), var_6.c, var_6.b), Struct_2(var_6.c.a, !vec4<bool>(var_6.d.b.x, false, var_6.d.a.x, true), ~(vec2<i32>(var_3, var_3) >> (vec2<u32>(21781u, 55759u) % vec2<u32>(32u)))), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3, var_6.b.b, -2147483647i), var_2.a, vec4<i32>(1i, var_3, var_3, u_input.a)) | -vec4<i32>(-48156i, u_input.a, var_2.a.x, var_3), 26037i, select(~var_6.b.c, ~var_5.yx, select(var_6.d.a.zz, var_6.c.a.xx, true)), 12238u)).d, func_1(func_1(Struct_3(var_1.x, Struct_1(var_6.b.a, -23728i, var_6.b.c, u_input.b.x), var_6.c, Struct_2(vec3<bool>(var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, true, false), var_2.a.zw)), var_6.d, func_1(func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(var_2.a.x, var_6.c.c.x, u_input.a, 2147483647i), var_6.d.c.x, var_6.b.c, 0u), var_6.d, Struct_2(var_6.d.b.yyy, vec4<bool>(var_1.x, false, var_1.x, true), var_2.a.zx)), Struct_2(vec3<bool>(false, var_6.a, true), var_6.d.b, var_2.a.wz), Struct_1(vec4<i32>(1i, 28333i, u_input.a, -21819i), 10150i, var_2.c, 1u)), var_6.d, func_4(vec4<u32>(43141u, var_6.b.c.x, 1u, 80122u), Struct_3(var_1.x, var_6.b, Struct_2(vec3<bool>(true, false, var_6.a), vec4<bool>(true, var_1.x, false, false), vec2<i32>(var_2.b, var_6.c.c.x)), Struct_2(vec3<bool>(var_6.d.b.x, var_1.x, false), var_6.d.b, vec2<i32>(var_2.b, var_3))), var_6.c.c.x)).b), func_1(func_1(Struct_3(var_1.x, Struct_1(vec4<i32>(var_6.d.c.x, var_3, var_6.d.c.x, -2147483647i), var_3, vec2<u32>(var_4, 37291u), u_input.b.x), var_6.d, Struct_2(vec3<bool>(true, false, true), var_6.d.b, vec2<i32>(3290i, 1i))), func_1(Struct_3(var_1.x, Struct_1(var_2.a, var_2.a.x, vec2<u32>(34963u, var_2.d), 59444u), Struct_2(var_6.d.b.zzz, vec4<bool>(true, var_6.a, var_6.c.a.x, var_1.x), var_2.a.yy), Struct_2(var_6.d.b.wxw, vec4<bool>(var_1.x, true, false, var_1.x), vec2<i32>(var_2.a.x, u_input.a))), var_6.c, Struct_1(var_2.a, var_6.b.b, vec2<u32>(14198u, var_6.b.c.x), 4294967295u)).d, func_4(u_input.b, Struct_3(var_6.c.b.x, Struct_1(var_2.a, -1i, var_5.zy, u_input.b.x), Struct_2(vec3<bool>(true, var_1.x, var_1.x), var_6.d.b, var_6.b.a.xy), Struct_2(vec3<bool>(true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_6.d.a.x), var_6.c.c)), -1i)), func_1(Struct_3(false, var_6.b, var_6.c, var_6.d), Struct_2(var_6.d.b.xyy, var_6.c.b, var_2.a.zz), var_6.b).d, Struct_1(var_6.b.a, var_2.b, _wgslsmith_sub_vec2_u32(var_5.zx, var_2.c), var_4)).d, var_6.b).c);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_3(true, var_6.b, func_1(Struct_3(var_6.c.a.x, var_6.b, Struct_2(vec3<bool>(false, var_1.x, false), var_6.d.b, var_6.d.c), var_6.c), func_1(Struct_3(var_6.a, var_6.b, var_6.c, Struct_2(vec3<bool>(var_1.x, true, var_6.d.a.x), vec4<bool>(true, var_1.x, false, var_6.d.b.x), var_2.a.yx)), Struct_2(var_6.c.a, vec4<bool>(var_6.a, false, var_1.x, var_1.x), var_6.d.c), Struct_1(var_2.a, var_6.d.c.x, vec2<u32>(u_input.b.x, var_0), u_input.b.x)).d, var_6.b).d, var_6.c), func_1(func_1(func_1(Struct_3(true, var_6.b, var_6.d, Struct_2(var_6.d.a, var_6.c.b, var_6.b.a.wy)), var_6.d, Struct_1(var_6.b.a, u_input.a, u_input.b.zx, var_2.d)), func_1(Struct_3(false, Struct_1(var_2.a, 2147483647i, vec2<u32>(534u, 55860u), var_2.c.x), var_6.d, Struct_2(var_6.d.a, vec4<bool>(true, true, var_1.x, var_1.x), var_6.b.a.yy)), Struct_2(var_6.c.a, vec4<bool>(false, var_6.a, var_1.x, true), var_6.c.c), var_6.b).d, Struct_1(var_6.b.a, u_input.a, vec2<u32>(var_6.b.d, 43u), var_2.d)), func_1(func_1(Struct_3(false, var_6.b, Struct_2(vec3<bool>(true, false, var_1.x), var_6.c.b, vec2<i32>(var_3, -55864i)), Struct_2(var_6.c.b.zyy, var_6.c.b, vec2<i32>(1i, var_3))), var_6.c, Struct_1(var_6.b.a, 71819i, vec2<u32>(var_2.c.x, var_2.d), var_6.b.d)), func_1(Struct_3(true, var_6.b, var_6.c, var_6.c), var_6.c, Struct_1(var_6.b.a, u_input.a, var_6.b.c, var_5.x)).d, func_1(Struct_3(true, var_6.b, Struct_2(var_6.c.a, vec4<bool>(true, var_1.x, false, var_6.a), vec2<i32>(u_input.a, var_3)), Struct_2(vec3<bool>(false, var_1.x, var_1.x), vec4<bool>(false, true, true, var_6.a), var_6.d.c)), Struct_2(var_6.d.a, var_6.d.b, var_2.a.zy), var_6.b).b).c, var_6.b).d, var_6.b).b.c, reverseBits(firstTrailingBit(_wgslsmith_div_u32(var_2.d & 1u, ~var_0))), -_wgslsmith_mod_i32(1i, var_6.d.c.x) >> (select(var_6.b.c.x, 0u, !var_1.x) % 32u), ~var_5.zx);
}

