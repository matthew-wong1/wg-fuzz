struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -480f;

var<private> global1: array<f32, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = max(u_input.c.zx, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(73411u, u_input.d.x), vec2<u32>(65338u, 35410u)), vec2<u32>(u_input.d.x, 4294967295u)), ~vec2<u32>(u_input.c.x, u_input.a.x)) ^ select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xz, u_input.a.wy), u_input.d.zy), vec2<u32>(u_input.d.x | u_input.a.x, u_input.d.x), !vec2<bool>(arg_0, false)));
    var var_2 = Struct_2(Struct_1(~u_input.b.x, -u_input.b, u_input.c, arg_0, select(vec4<bool>(false, true, all(vec3<bool>(true, arg_0, arg_0)), false), select(!vec4<bool>(true, arg_0, true, false), !vec4<bool>(arg_0, arg_0, false, arg_0), false & arg_0), !vec4<bool>(true, false, false, arg_0))), Struct_1(-2147483647i << ((1u >> ((0u & u_input.a.x) % 32u)) % 32u), vec2<i32>(max(u_input.b.x | 0i, 3676i), u_input.b.x), u_input.d, arg_0, !select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, arg_0, arg_0, true), arg_0), !vec4<bool>(arg_0, true, arg_0, false), u_input.d.x > 1u)), ~vec4<u32>(~u_input.a.x, var_1.x, _wgslsmith_mult_u32(firstTrailingBit(var_1.x), 4294967295u), ~var_1.x | 17806u));
    var_0 = _wgslsmith_sub_i32(firstLeadingBit(2147483647i), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b));
    var_0 = u_input.b.x;
    return !(!(var_2.a.e.x | false));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    return !select(false, func_3(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), ~_wgslsmith_div_i32(-13056i, u_input.b.x) != firstLeadingBit(max(arg_0.x, u_input.b.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_i32(~(-(~u_input.b.x)), _wgslsmith_mod_i32(1i, u_input.b.x)), vec2<i32>(u_input.b.x, -1137i), abs(_wgslsmith_add_vec3_u32(u_input.d, ~vec3<u32>(28917u, u_input.d.x, u_input.c.x) & vec3<u32>(0u, arg_0.x, 33925u))), true, vec4<bool>(true, !(u_input.a.x < firstLeadingBit(arg_0.x)), (i32(-1i) * -u_input.b.x) < u_input.b.x, select(any(vec3<bool>(true, true, true)), true, func_2(vec3<i32>(-25238i, 1i, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), arg_0)))));
    global0 = -1804f;
    let var_1 = firstLeadingBit(select(arg_0, var_0.c.yy, any(!select(var_0.e.xyw, vec3<bool>(var_0.d, true, false), var_0.e.yxz))));
    var var_2 = vec2<bool>(-3365f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 25u)])) + 1997f), !(-100964i <= _wgslsmith_clamp_i32(firstTrailingBit(var_0.a), var_0.a, u_input.b.x)));
    var var_3 = Struct_3(any(var_0.e.wz), Struct_2(Struct_1(var_0.a, vec2<i32>(u_input.b.x, 16184i) | vec2<i32>(u_input.b.x, u_input.b.x), var_0.c >> (~u_input.d % vec3<u32>(32u)), !var_2.x, var_0.e), Struct_1(reverseBits(firstLeadingBit(-1i)), vec2<i32>(var_0.a, var_0.b.x) << (max(var_1, vec2<u32>(var_0.c.x, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1798u, var_0.c.x, var_0.c.x), countOneBits(u_input.d)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, var_0.d, true), vec4<bool>(var_2.x, false, true, var_2.x))), vec4<bool>(false, any(vec2<bool>(var_2.x, false)), false, true)), abs(vec4<u32>(u_input.a.x & u_input.d.x, var_0.c.x, 4294967295u, min(var_1.x, var_0.c.x)))), Struct_2(var_0, Struct_1(_wgslsmith_dot_vec2_i32(-var_0.b, u_input.b), min(u_input.b, vec2<i32>(u_input.b.x, var_0.b.x)), u_input.d, true, vec4<bool>(false, var_2.x & false, false, true)), u_input.a), var_0, var_0);
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 25>();
    let var_0 = !all(vec4<bool>(true, true, true, true));
    var var_1 = Struct_3(var_0, func_1(~(vec2<u32>(1u, 32226u) << (countOneBits(u_input.d.yy) % vec2<u32>(32u)))), func_1(u_input.c.yx >> (vec2<u32>(select(u_input.c.x, u_input.a.x, var_0), 63095u) % vec2<u32>(32u))), Struct_1(min(u_input.b.x, -12260i), vec2<i32>(-1i, u_input.b.x), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(23810u, 1u, 0u, u_input.c.x)), min(u_input.a.x, 0u)), reverseBits(u_input.a.x | 0u), 1u), ~u_input.c.x > (~u_input.c.x << (u_input.a.x % 32u)), vec4<bool>(true, var_0, func_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.d.x), u_input.c.xy)).a.d, true)), func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 987u), ~u_input.a.zw), max(vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(u_input.c.x, 0u)) & (vec2<u32>(2238u, u_input.a.x) >> (vec2<u32>(95663u, 1u) % vec2<u32>(32u))))).b);
    global0 = 731f;
    let var_2 = firstLeadingBit(vec4<i32>(1i, ~(-57278i), -abs(2147483647i), 22082i)) >> (_wgslsmith_clamp_vec4_u32(firstLeadingBit(var_1.b.c), _wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.b.a.c.x, ~u_input.d.x, u_input.c.x, ~29564u), firstTrailingBit(~var_1.b.c)), var_1.c.c) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.d.c.x), u_input.a.yw, -u_input.b, countOneBits(var_1.c.b.b.x) << (_wgslsmith_add_u32(select(46242u, u_input.d.x & 4294967295u, all(vec3<bool>(var_0, var_0, true))), 0u) % 32u));
}

