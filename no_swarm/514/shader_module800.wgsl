struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<i32>;

var<private> global2: f32 = 882f;

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = Struct_5(Struct_3(Struct_2(2728f, vec4<bool>(true, false, true, !arg_2.a.c.b.x), _wgslsmith_add_u32(arg_0, 57960u & arg_0)), 16602u, arg_2.a.a), vec3<i32>(_wgslsmith_mult_i32(abs(global0.x), arg_2.b.x), 1i, _wgslsmith_dot_vec3_i32(-arg_2.b, vec3<i32>(26165i, 1i, global1.x >> (10050u % 32u)))));
    global3 = true;
    global3 = all(!select(!(!var_0.a.a.b), select(select(vec4<bool>(false, arg_2.a.c.b.x, var_0.a.a.b.x, arg_2.a.c.b.x), var_0.a.c.b, arg_2.a.a.b), !var_0.a.a.b, all(arg_2.a.c.b.xz)), arg_2.a.c.b));
    var var_1 = ~(~(~vec3<u32>(abs(0u), var_0.a.b, u_input.a.x)));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1371f - _wgslsmith_f_op_f32(var_0.a.c.a + -1000f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-824f)), _wgslsmith_f_op_f32(arg_2.a.c.a - var_0.a.c.a)))), 492f, arg_2.a.c.b.x))));
    return vec4<bool>(all(select(select(select(arg_2.a.c.b.zww, arg_2.a.c.b.yxy, var_0.a.a.b.x), !arg_2.a.a.b.zyy, var_0.a.c.b.zwz), !var_0.a.a.b.yxz, false)), false, any(!select(!arg_2.a.c.b, !vec4<bool>(var_0.a.a.b.x, true, var_0.a.a.b.x, arg_2.a.c.b.x), vec4<bool>(var_0.a.a.b.x, arg_2.a.c.b.x, true, true))), any(!vec4<bool>(true, any(vec2<bool>(var_0.a.c.b.x, arg_2.a.c.b.x)), true | var_0.a.a.b.x, !arg_2.a.a.b.x)));
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_5(Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -677f))), select(vec4<bool>(true, true, true, true), func_3(0u, arg_0.yy, Struct_5(Struct_3(Struct_2(-127f, vec4<bool>(false, false, true, true), arg_0.x), 1u, Struct_2(1000f, vec4<bool>(false, false, true, false), 37757u)), vec3<i32>(global0.x, global0.x, -15601i))), false), _wgslsmith_add_u32(~15490u, arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(u_input.a), vec2<u32>(0u, 1u) >> (vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(71432u, u_input.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 28979u)))), Struct_2(-270f, func_3(~1u, vec2<u32>(u_input.a.x, 2154u), Struct_5(Struct_3(Struct_2(-1160f, vec4<bool>(false, true, true, false), 0u), u_input.a.x, Struct_2(472f, vec4<bool>(true, true, false, true), 45242u)), vec3<i32>(-55939i, global1.x, 14255i))), _wgslsmith_dot_vec3_u32(arg_0, _wgslsmith_clamp_vec3_u32(vec3<u32>(119186u, 4294967295u, 0u), arg_0, vec3<u32>(53942u, u_input.a.x, 4294967295u))))), vec3<i32>(-abs(33275i & global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -38367i >> (u_input.a.x % 32u), global0.x, global1.x), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-32326i, global1.x, global0.x, global0.x)), vec4<i32>(global1.x, -1i, global1.x, global1.x) ^ vec4<i32>(global1.x, -1i, global1.x, global0.x))), select(-max(global1.x, global1.x), -1i, false)));
    global1 = vec3<i32>(global1.x, _wgslsmith_mod_i32(~countOneBits(_wgslsmith_mod_i32(global1.x, global1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(~0i, ~(-14092i), var_0.b.x, firstTrailingBit(2147483647i)), ~(~vec4<i32>(global0.x, var_0.b.x, 1i, var_0.b.x)))), firstTrailingBit(_wgslsmith_add_i32(~(~global0.x), 0i)));
    global1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(min(-vec3<i32>(var_0.b.x, 20845i, global0.x) >> (arg_0 % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, 6468i), vec3<i32>(2147483647i, -11187i, global0.x))))), var_0.b, _wgslsmith_sub_vec3_i32(~select(-var_0.b, var_0.b, func_3(u_input.a.x, arg_0.yy, var_0).xwz), ~(~vec3<i32>(global0.x, -1i, var_0.b.x) ^ (var_0.b ^ var_0.b))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -876f), select(!func_3(~0u, u_input.a & vec2<u32>(u_input.a.x, 4294967295u), var_0), select(!var_0.a.c.b, func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(42724u, 23906u), vec2<u32>(95542u, u_input.a.x)), u_input.a, var_0), true), true), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~1590u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-673f, _wgslsmith_f_op_f32(-var_0.a.a.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.a.c.a, var_1.a, true))))))));
    return select(_wgslsmith_div_vec2_i32(abs(vec2<i32>(~global0.x, global0.x | var_0.b.x)), vec2<i32>(26331i, -2147483647i)), vec2<i32>(~var_0.b.x, -global1.x ^ abs(var_0.b.x << (19554u % 32u))), !func_3(arg_0.x, abs(arg_0.zz) | _wgslsmith_sub_vec2_u32(vec2<u32>(40478u, 1u), arg_0.xy), Struct_5(var_0.a, -var_0.b)).yz);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = global0.x << (abs(u_input.a.x) % 32u);
    let var_2 = true;
    var var_3 = var_2;
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-global1.zy, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 24405i, var_1, global1.x), vec4<i32>(-28431i, 30762i, 0i, -2147483647i))), global1.xz)), func_2(vec3<u32>(5000u & u_input.a.x, 0u, 1u)) << ((abs(~u_input.a) ^ _wgslsmith_add_vec2_u32(u_input.a, u_input.a & u_input.a)) % vec2<u32>(32u)));
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(func_2(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(48300u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))).x, _wgslsmith_sub_i32(-1i, select(42893i, func_2(vec3<u32>(2271u, 11315u, 1u)).x, var_2))), -(-1i | var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-2299f, vec4<bool>(!select(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false)), true), true, true, all(vec4<bool>(true, true, true, true)) & true), u_input.a.x);
    global1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(-26916i), -global0.x, -global1.x, 22376i), ~_wgslsmith_add_vec4_i32(vec4<i32>(20883i, 8602i, 2147483647i, -55707i), vec4<i32>(global0.x, global1.x, global0.x, -2147483647i)), abs(vec4<i32>(0i, global1.x, global0.x, global1.x))), (~vec4<i32>(global0.x, 34379i, global1.x, global0.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 22573u, 0u)) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_mult_i32(44027i, -2101i), i32(-1i) * -42667i, -331i, 33185i)), ~(-(~12986i)), func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(var_0.a - var_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))), 1794f)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-474f, var_0.a)))))), var_0.b, 56753u);
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.b.x != any(var_0.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_0.a, 435f), var_0.a, -1696f, _wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1104f, var_0.a, var_0.a, 822f)))))));
    var var_2 = !var_0.b.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 120581u, 16809u, u_input.a.x), vec4<u32>(var_0.c, 12500u, 35506u, 0u)), 52629u, 1u)), vec4<u32>(119737u, u_input.a.x, u_input.a.x << (2307u % 32u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c, 64781u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, var_0.c, 1u), vec3<u32>(0u, u_input.a.x, 30014u))), max(1u, ~1u))), ~func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.xzw, vec3<f32>(var_1.x, var_1.x, 1557f)))), ~select(max(~vec2<u32>(var_0.c, 10545u), vec2<u32>(42220u, 1u)), vec2<u32>(var_0.c | 0u, reverseBits(56974u)), vec2<bool>(true, all(vec4<bool>(false, false, false, true)))), 31244i);
}

