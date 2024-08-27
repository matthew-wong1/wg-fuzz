struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = ~vec2<u32>(35712u, u_input.c.x);
    var var_1 = max(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -2147483647i, arg_1, arg_1) << (~vec4<u32>(41269u, var_0.x, 1u, 4294967295u) % vec4<u32>(32u)), min(-vec4<i32>(u_input.b.x, u_input.b.x, arg_0.x, -31705i), -vec4<i32>(22293i, -2147483647i, -35566i, u_input.b.x))), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 0i, -58815i, -1i), select(vec4<i32>(20060i, arg_1, -14859i, arg_0.x), vec4<i32>(-10468i, arg_0.x, u_input.b.x, -1i), false)) | abs(vec4<i32>(1i, arg_1, -47613i, 62275i)), ~(~vec4<i32>(-2147483647i, -1i, arg_1, arg_0.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(41249i, arg_1, 0i) & u_input.b, ~u_input.b), ~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, u_input.b.x, arg_1), vec3<i32>(5859i, -1i, 0i))), 1i, u_input.b.x, _wgslsmith_add_i32(19922i, -19086i)));
    let var_2 = arg_2.a;
    var_1 = ~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, arg_0.x, arg_1) >> (u_input.c % vec4<u32>(32u)), -vec4<i32>(arg_1, 38409i, var_1.x, -2147483647i))) | -_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 10272i, u_input.b.x, arg_1), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, arg_0.x, -1i, -41208i), vec4<i32>(-32281i, arg_1, 34080i, arg_0.x)));
    var var_3 = max(var_0.x, ~(~_wgslsmith_mod_u32(u_input.a.x, 41768u))) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, ~1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 41730u), vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 47647u))) % 32u);
    return select(var_2.a, vec3<bool>(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_mod_u32(u_input.a.x, var_0.x), 1u) <= (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, 32006u, 8024u, var_0.x)) >> (~12986u % 32u)), true, arg_2.b.a.x), arg_2.a.a);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = -1000f;
    let var_2 = arg_0.wyy;
    let var_3 = Struct_1(arg_0.yzz, 674f);
    var_0 = true;
    return Struct_1(func_3(_wgslsmith_clamp_vec2_i32(u_input.b.yx, _wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.b.xz), vec2<i32>(u_input.b.x, -2147483647i)), vec2<i32>(7307i, u_input.b.x)), select(_wgslsmith_mult_i32(-2147483647i << (0u % 32u), -u_input.b.x), ~_wgslsmith_div_i32(-56887i, 1i), !all(vec2<bool>(true, false))), Struct_2(Struct_1(select(var_2, var_3.a, false), _wgslsmith_f_op_f32(-var_3.b)), Struct_1(select(vec3<bool>(false, arg_0.x, var_2.x), vec3<bool>(false, false, arg_0.x), var_3.a), _wgslsmith_f_op_f32(floor(349f))), !arg_0.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, var_3.b)) * var_3.b)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, !arg_3.a.x, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b - arg_3.b), 356f)))), arg_3, func_2(vec4<bool>(arg_3.a.x, !arg_3.a.x, arg_3.a.x, true)).a.yx);
    var var_1 = -reverseBits(vec2<i32>(~2147483647i, -2147483647i) ^ u_input.b.zy);
    let var_2 = 660f;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.b, arg_3.b, arg_3.b)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, arg_3.b, arg_3.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-329f, 1736f, arg_3.b) - vec3<f32>(var_2, -1000f, 1221f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, arg_3.b, -456f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-497f)), 1721f, _wgslsmith_f_op_f32(f32(-1f) * -870f))));
    let var_4 = Struct_3(min(select(vec4<i32>(9065i, -u_input.b.x, ~52803i, -1i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), u_input.b), ~var_1.x, countOneBits(var_1.x), firstLeadingBit(var_1.x)), !vec4<bool>(true, false, var_0.c.x, arg_3.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(select(-2147483647i, -7887i, true), -4995i, -1i, u_input.b.x), min(abs(vec4<i32>(-54490i, u_input.b.x, arg_1, var_1.x)), -vec4<i32>(u_input.b.x, -2147483647i, arg_2, -789i)))), ~(-_wgslsmith_div_i32(~arg_2, reverseBits(arg_1))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1016f, 883f, -2050f, var_0.a.b), vec4<f32>(-1273f, var_2, var_3.x, var_2))))))))), ~(-(~vec4<i32>(u_input.b.x, -751i, 2147483647i, -2147483647i))) << (_wgslsmith_sub_vec4_u32(reverseBits(abs(vec4<u32>(4294967295u, u_input.c.x, 1u, arg_0.x))), abs(reverseBits(vec4<u32>(11875u, 40945u, u_input.a.x, 14601u)))) % vec4<u32>(32u)), Struct_2(func_2(select(!vec4<bool>(var_0.a.a.x, true, false, true), vec4<bool>(var_0.c.x, false, arg_3.a.x, true), select(vec4<bool>(arg_3.a.x, arg_3.a.x, false, var_0.b.a.x), vec4<bool>(true, false, arg_3.a.x, true), false))), func_2(vec4<bool>(true, all(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, true)), false, true)), vec2<bool>(arg_3.a.x, max(u_input.d.x, u_input.a.x) >= firstTrailingBit(arg_0.x))));
    return func_2(select(vec4<bool>(arg_0.x > u_input.d.x, false, func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, var_1.x), vec2<i32>(arg_1, var_4.b), vec2<i32>(arg_1, u_input.b.x)), u_input.b.x, Struct_2(var_4.e.a, arg_3, vec2<bool>(arg_3.a.x, var_0.b.a.x))).x, true), !(!vec4<bool>(false, true, var_4.e.c.x, var_0.b.a.x)), vec4<bool>(func_2(vec4<bool>(true, true, true, true)).b >= _wgslsmith_f_op_f32(trunc(580f)), var_4.e.c.x, all(!var_4.e.b.a.zx), 0i > -arg_1)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_2(func_4(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.c.x, ~u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.d.x))), arg_3 << (u_input.c.x % 32u), -2147483647i, func_2(!vec4<bool>(arg_2, var_0.e.a.a.x, var_0.e.a.a.x, var_0.e.b.a.x))), arg_1.e.a, var_0.e.b.a.yz);
    let var_2 = arg_0.x;
    var var_3 = arg_1.a.x;
    var_3 = abs(~1i);
    return func_4(~abs(~u_input.c.zyx), abs(u_input.b.x), ~countOneBits(firstLeadingBit(select(arg_3, var_0.d.x, var_0.e.a.a.x))), func_2(vec4<bool>(!(!var_0.e.c.x), true, false, var_1.b.a.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = true;
    var_0 = arg_1.a.a.x;
    var var_1 = vec4<f32>(arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1785f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * arg_1.a.b), _wgslsmith_div_f32(867f, arg_1.b.b))))), 712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1.b.b)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(ceil(816f))))));
    var var_2 = ~u_input.c.x;
    var_2 = select(38288u, 4294967295u, any(arg_1.a.a));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(1208f)), -953f, -781f, -451f))), Struct_2(Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -873f))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1447f, 403f, -1000f)))), Struct_3(vec4<i32>(u_input.b.x, 0i, -2147483647i, 0i), u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, 1058f, -788f, 1000f)), ~vec4<i32>(0i, -1i, u_input.b.x, 14992i), Struct_2(Struct_1(vec3<bool>(true, true, false), 1760f), Struct_1(vec3<bool>(true, false, false), 922f), vec2<bool>(false, true))), true, 12190i), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, 341f, -1628f)) * vec3<f32>(555f, 1000f, 2097f)), Struct_3(-vec4<i32>(19081i, u_input.b.x, u_input.b.x, u_input.b.x), ~(-24627i), _wgslsmith_f_op_vec4_f32(vec4<f32>(787f, -1246f, -1339f, 1471f) - vec4<f32>(-427f, -1177f, 1498f, 1641f)), select(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec3<bool>(false, false, false), -1000f), Struct_1(vec3<bool>(false, false, false), 1974f), vec2<bool>(true, false))), true, abs(max(u_input.b.x, 47907i))).a.xx));
    let var_1 = Struct_3(-_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.b.x, 16861i, 2147483647i, -2147483647i)), vec4<i32>(2147483647i, 1i, -11303i, -2147483647i), -vec4<i32>(101703i, -2147483647i, u_input.b.x, 0i)) | vec4<i32>(8498i, u_input.b.x, 39449i, _wgslsmith_sub_i32(reverseBits(-16729i), -609i >> (1u % 32u))), u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.b, -981f, var_0.a.b, -622f)))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b - var_0.b.b), -460f, _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1435f))))), _wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)) >> (vec4<u32>(abs(15600u), max(u_input.a.x, 1u), firstLeadingBit(u_input.a.x), 50717u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(24758i, 12931i, -1i, 7381i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 31419i, u_input.b.x))), countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), var_0);
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.x);
    var var_3 = ~vec3<u32>(~_wgslsmith_sub_u32(25425u, 0u), firstLeadingBit(~u_input.d.x), 45057u) ^ vec3<u32>(u_input.a.x, u_input.a.x, ~54285u);
    var var_4 = vec4<i32>(-1i) * -vec4<i32>(var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, u_input.b.x), vec2<i32>(var_1.a.x, var_1.b) | var_1.a.yy), firstTrailingBit(var_1.a.x | 2147483647i), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, abs(u_input.a), ~_wgslsmith_mod_vec2_i32(var_1.a.wz, vec2<i32>(u_input.b.x, u_input.b.x >> (var_3.x % 32u))), 67846u);
}

