struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: i32) -> bool {
    let var_0 = vec2<i32>(firstLeadingBit(-28871i), _wgslsmith_clamp_i32(max(1i, _wgslsmith_mult_i32(arg_2, arg_2 >> (arg_1.d.a % 32u))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_2, -10415i, reverseBits(u_input.a)), _wgslsmith_mod_i32(arg_2, 2147483647i) | 31472i), max(1i, max(~u_input.a, countOneBits(5643i)))));
    return arg_1.b.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-190f, -1000f)), _wgslsmith_f_op_f32(-240f - 848f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1730f)))))));
    var var_2 = arg_2;
    let var_3 = ~select(abs(-vec3<i32>(u_input.a, 1i, 18316i)), vec3<i32>(-1i) * -vec3<i32>(-1i, -33708i, 31923i), func_3(_wgslsmith_f_op_f32(var_1 * -812f), Struct_5(arg_2.a, Struct_4(arg_1), var_1, Struct_1(u_input.d, arg_2.a.x)), _wgslsmith_mod_i32(u_input.a, var_2.b))) & select(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(arg_2.b, arg_2.b), i32(-1i) * -16974i, 2147483647i), vec3<i32>(-9654i, -33100i, ~arg_2.b)), ~vec3<i32>(arg_3, arg_2.b, _wgslsmith_mod_i32(var_2.b, 2147483647i)), var_2.a.xwy);
    var var_4 = arg_2;
    return -21563i;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_3(vec3<bool>(arg_0.b, select(arg_0.b, arg_1.x && any(arg_1), true), all(vec3<bool>(all(vec2<bool>(false, false)), arg_0.b, !arg_0.b))), arg_1.x, vec2<i32>(func_2(Struct_1(u_input.b, true), arg_1.zw, Struct_2(!vec4<bool>(arg_0.b, false, false, true), 1i), -(u_input.a & u_input.a)), _wgslsmith_mult_i32(~(u_input.a | u_input.a), func_2(arg_0, arg_1.yw, Struct_2(arg_1, u_input.a), u_input.a) >> (select(arg_0.a, 0u, arg_1.x) % 32u))), vec4<i32>(u_input.a, _wgslsmith_div_i32(firstLeadingBit(-34158i), ~_wgslsmith_sub_i32(u_input.a, 0i)), u_input.a, 13138i));
    let var_1 = var_0;
    var var_2 = _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(~var_1.d, var_1.d), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, var_1.c.x), -18170i, var_1.c.x, _wgslsmith_dot_vec3_i32(var_0.d.xyy, vec3<i32>(u_input.a, var_1.c.x, u_input.a))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, var_1.d.x), vec3<i32>(-2147483647i, var_0.c.x, var_1.c.x)), ~u_input.a, var_1.c.x, _wgslsmith_div_i32(var_0.d.x, u_input.a)))), var_1.d);
    var_2 = var_0.d;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)))));
    return ~1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_5(select(!(!(!vec4<bool>(false, arg_1.a.x, arg_1.a.x, false))), !vec4<bool>(true, true, arg_1.a.x, !arg_1.a.x), true), Struct_4(!(!arg_1.a)), 1f, Struct_1(abs(4294967295u), true));
    var var_1 = vec2<i32>(u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 430i) >> (vec4<u32>(23300u, 71722u, u_input.c, arg_0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-52482i, -1i, 14404i, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i))) << (19121u % 32u));
    var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, -31742i), _wgslsmith_div_i32(~var_1.x, var_1.x)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_1.x), max(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(-41740i, 15920i)));
    var_1 = -select(~vec2<i32>(_wgslsmith_div_i32(u_input.a, 0i), 0i), vec2<i32>(min(~1i, _wgslsmith_div_i32(u_input.a, var_1.x)), select(countOneBits(u_input.a), u_input.a, 4294967295u <= u_input.b)), var_0.b.a);
    var_1 = _wgslsmith_clamp_vec2_i32(~(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.x), vec2<i32>(15856i, 40479i)) & ~vec2<i32>(u_input.a, var_1.x)), vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(u_input.a, u_input.a)), ~_wgslsmith_div_i32(-44453i, var_1.x)), countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -27947i, var_1.x), vec4<i32>(u_input.a, var_1.x, var_1.x, 17623i)))));
    return _wgslsmith_dot_vec4_u32(min(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, var_0.d.a, arg_0.x), vec4<u32>(u_input.d, arg_0.x, 1845u, 37141u)), min(min(vec4<u32>(61716u, var_0.d.a, arg_0.x, 4324u), vec4<u32>(arg_0.x, var_0.d.a, u_input.b, u_input.d)), min(vec4<u32>(var_0.d.a, 0u, var_0.d.a, var_0.d.a), vec4<u32>(u_input.d, 39152u, arg_0.x, 1u))), select(var_0.a, !var_0.a, !arg_1.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.a, arg_0.x, 26867u, 1u), max(vec4<u32>(28773u, arg_0.x, u_input.c, 644u) | vec4<u32>(arg_0.x, 4294967295u, var_0.d.a, 14613u), firstTrailingBit(vec4<u32>(arg_0.x, 1u, u_input.b, 57691u))))), max(~vec4<u32>(29551u, 721u, u_input.b, 61350u) << (~abs(vec4<u32>(12666u, var_0.d.a, 30432u, arg_0.x)) % vec4<u32>(32u)), abs(reverseBits(~vec4<u32>(u_input.b, 4294967295u, 32038u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!(!vec2<bool>(false, all(vec3<bool>(false, true, true)))));
    var var_1 = abs(func_4(~vec2<u32>(func_1(Struct_1(0u, true), vec4<bool>(true, false, true, var_0.a.x)), ~71121u), Struct_4(vec2<bool>(select(true, var_0.a.x, true), var_0.a.x && var_0.a.x))));
    var var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(58920i, u_input.a)), i32(-1i) * -2147483647i), select(-_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(1i, 0i)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a, 0i)), vec2<i32>(-39000i, u_input.a)), vec2<i32>(u_input.a & -60665i, -1i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(61793u, u_input.c) & vec2<u32>(2855u, u_input.d), vec2<u32>(u_input.d, 45285u) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), func_3(-1000f, Struct_5(vec4<bool>(true, false, true, var_0.a.x), Struct_4(var_0.a), _wgslsmith_div_f32(1177f, 603f), Struct_1(1u, var_0.a.x)), firstLeadingBit(func_2(Struct_1(u_input.b, false), vec2<bool>(var_0.a.x, var_0.a.x), Struct_2(vec4<bool>(var_0.a.x, true, false, false), -1i), u_input.a)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(1485f - -446f), _wgslsmith_f_op_f32(floor(-878f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1058f, -595f)), -790f)), ~(~1u) < _wgslsmith_mult_u32(func_1(Struct_1(u_input.b, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, true)) ^ ~15690u, 4294967295u)));
    let var_4 = vec2<f32>(1770f, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1562f));
}

