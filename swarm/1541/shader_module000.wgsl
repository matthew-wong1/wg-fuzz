struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_1(abs(~firstTrailingBit(u_input.b.x)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = vec2<i32>(-33400i << (arg_0.x % 32u), u_input.c);
    var_0 = Struct_1(0u, var_0.b);
    var_0 = Struct_1(32042u, var_0.b);
    var_0 = Struct_1((u_input.b.x >> (u_input.b.x % 32u)) | u_input.b.x, vec3<bool>(any(select(vec4<bool>(false, false, var_0.b.x, false), select(vec4<bool>(var_0.b.x, false, false, true), vec4<bool>(false, var_0.b.x, false, true), vec4<bool>(true, var_0.b.x, false, var_0.b.x)), all(vec4<bool>(var_0.b.x, var_0.b.x, true, true)))), var_0.b.x | (-var_1.x != u_input.c), true));
    return var_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_3(arg_0.b.b, Struct_1(4294967295u, select(select(vec3<bool>(arg_2.c.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(arg_0.b.b.x, false, true)), vec3<bool>(select(arg_2.b.b.x, arg_1.b.x, false), arg_2.c.x, true), !arg_0.a.x)));
    var var_1 = -2147483647i;
    var var_2 = Struct_1(38178u, var_0.b.b);
    let var_3 = Struct_3(select(select(select(func_3(u_input.b.yy, var_2.a), select(vec3<bool>(false, arg_0.b.b.x, true), vec3<bool>(arg_2.c.x, false, true), vec3<bool>(var_2.b.x, arg_0.b.b.x, arg_1.b.x)), vec3<bool>(var_2.b.x, var_0.b.b.x, var_2.b.x)), vec3<bool>(!arg_2.b.b.x, arg_2.b.b.x, var_0.a.x | false), -1000f <= _wgslsmith_f_op_f32(select(-262f, 411f, false))), select(vec3<bool>(arg_1.b.x, var_0.a.x, !arg_1.b.x), !arg_0.a, arg_0.a.x), select(select(!vec3<bool>(true, var_0.a.x, true), vec3<bool>(true, var_0.b.b.x, true), true), arg_0.b.b, true)), var_0.b);
    var var_4 = arg_2;
    return max(u_input.b.x >> (arg_1.a % 32u), 58791u);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<f32>(674f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2305f));
    return func_4(Struct_3(func_3(min(vec2<u32>(u_input.b.x, 0u), vec2<u32>(arg_2.a, arg_2.a)), _wgslsmith_mult_u32(_wgslsmith_add_u32(86268u, u_input.b.x), _wgslsmith_clamp_u32(arg_1.x, 4294967295u, 4294967295u))), Struct_1(_wgslsmith_sub_u32(~6546u, 0u), arg_2.b)), Struct_1(~arg_2.a, !func_3(~arg_1.xw, reverseBits(arg_1.x))), Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 25799u, 4294967295u, arg_0.a.a) & countOneBits(vec4<u32>(arg_0.a.a, 12690u, u_input.b.x, 0u)), ~_wgslsmith_div_vec4_u32(u_input.b, arg_1)), arg_2, vec4<bool>(false, arg_0.b || !arg_0.a.b.x, true, arg_2.b.x)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(Struct_1(~arg_2.a, arg_3.b.b), arg_3.b.b.x);
    var_0 = Struct_4(Struct_1(func_2(Struct_4(Struct_1(76301u, arg_3.b.b), true), ~(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, arg_3.b.a) ^ vec4<u32>(arg_3.b.a, 4294967295u, 4294967295u, 10802u)), arg_3.b), !(!vec3<bool>(arg_3.a.x, var_0.a.b.x, false))), func_3(abs(countOneBits(vec2<u32>(0u, 4294967295u) & u_input.b.wx)), func_4(Struct_3(vec3<bool>(true, var_0.a.b.x, false), var_0.a), var_0.a, Struct_2(85616u, arg_2, vec4<bool>(true, true, true, true)))).x);
    var var_1 = arg_3;
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(-70251i, arg_0))), arg_0, u_input.a), firstLeadingBit(reverseBits(~(~vec4<i32>(arg_0, u_input.a, -2147483647i, 3950i)))));
    var_1 = arg_3;
    return Struct_3(!var_1.b.b, arg_2);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(-521f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(830f, 243f)))), 1000f)), !(arg_0.x && arg_1)));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(abs(-1399f));
    let var_3 = true;
    var_2 = -137f;
    return func_1(u_input.c, true, func_1(u_input.c, arg_1, func_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 5765i), u_input.c & u_input.a), !(var_0 >= 1000f), arg_2.b, arg_2).b, Struct_3(select(!arg_2.a, arg_2.a, arg_1), arg_2.b)).b, Struct_3(select(vec3<bool>(any(arg_0.yzy), !var_3, true), !arg_0.www, _wgslsmith_div_f32(-1110f, 1000f) >= _wgslsmith_f_op_f32(select(-1626f, var_0, true))), Struct_1(abs(u_input.b.x) & 0u, !(!vec3<bool>(var_3, var_3, true))))).b.b.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 820f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1092f), true)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-869f - -121f), _wgslsmith_f_op_f32(step(1796f, -328f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1078f, 117f) - _wgslsmith_f_op_f32(f32(-1f) * -187f))))));
    var var_1 = select(!vec2<bool>((i32(-1i) * -6871i) > min(-52022i, u_input.c), true), !(!func_5(vec4<bool>(true, false, false, false), false, func_1(-1i, true, Struct_1(104997u, vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, true), Struct_1(u_input.b.x, vec3<bool>(true, true, true)))))), func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(88804u <= u_input.b.x, true, true), func_1(-u_input.a, func_1(u_input.c, false, Struct_1(18707u, vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, true), Struct_1(0u, vec3<bool>(true, false, true)))).b.b.x, func_1(10877i, true, Struct_1(u_input.b.x, vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, false), Struct_1(u_input.b.x, vec3<bool>(true, false, false)))).b, Struct_3(vec3<bool>(false, true, false), Struct_1(62307u, vec3<bool>(true, true, true)))).b)).x);
    var var_2 = func_5(select(!(!select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x))), !(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, false))), !vec4<bool>(true, all(vec2<bool>(var_1.x, false)), true, var_1.x)), var_1.x, Struct_3(vec3<bool>(all(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(false, var_1.x, false, var_1.x), true)), var_1.x, !(var_1.x & var_1.x)), func_1(-29164i, true, Struct_1(~u_input.b.x, vec3<bool>(false, var_1.x, var_1.x)), func_1(u_input.c, true, func_1(u_input.a, true, Struct_1(23796u, vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, var_1.x, true), Struct_1(49478u, vec3<bool>(false, var_1.x, true)))).b, func_1(u_input.c, true, Struct_1(4294967295u, vec3<bool>(true, var_1.x, var_1.x)), Struct_3(vec3<bool>(false, false, var_1.x), Struct_1(u_input.b.x, vec3<bool>(var_1.x, false, false)))))).b));
    var_0 = -1567f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1075f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1256f + 1637f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1468f)))), ~u_input.b.zz, _wgslsmith_dot_vec3_i32(min(vec3<i32>(_wgslsmith_mod_i32(0i, -2147483647i), ~1i, u_input.a), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.c, 1i), vec3<i32>(u_input.c, u_input.a, 2147483647i) | vec3<i32>(u_input.a, 1873i, u_input.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(43202i, 2147483647i, 0i, u_input.c), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.c))), ~u_input.c, 1i)), ~abs(-2147483647i));
}

