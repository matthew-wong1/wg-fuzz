struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 26>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(31915i, -u_input.a.x, ~arg_1.x, arg_0.b.a.x)), -vec4<i32>(arg_0.b.b.c.x, 46428i, 8352i, 83422i) | firstLeadingBit(arg_0.b.a)), Struct_1(true, vec3<bool>(true, any(!vec2<bool>(arg_0.b.b.a, arg_0.b.b.b.x)), true), vec2<i32>(24188i, 3812i), 801f));
    return !vec4<bool>(true, all(!vec4<bool>(true, false, arg_0.b.b.a, false)), !(!any(var_0.b.b.zz)), arg_0.b.b.b.x);
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = abs(select(vec3<u32>(1035u, abs(~8757u), _wgslsmith_div_u32(19437u, u_input.b.x)), _wgslsmith_sub_vec3_u32(select(u_input.c.wwy, u_input.b.xzx, vec3<bool>(true, true, true)), vec3<u32>(u_input.c.x, arg_1, 6743u) & u_input.b.yxy), vec3<bool>(false, any(func_3(Struct_4(vec3<u32>(arg_1, arg_1, 2953u), Struct_2(vec4<i32>(25905i, -8614i, 0i, arg_0), Struct_1(true, vec3<bool>(true, false, true), vec2<i32>(0i, u_input.a.x), -1451f))), vec3<i32>(arg_0, u_input.a.x, u_input.a.x), vec2<u32>(29546u, 41761u), -1363f)), true)));
    global1 = array<vec2<bool>, 26>();
    let var_1 = arg_0;
    global0 = false | select(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, arg_1 <= 0u, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(ceil(626f));
    return Struct_3(Struct_2(-_wgslsmith_sub_vec4_i32(vec4<i32>(-10948i, u_input.a.x, u_input.a.x, arg_0) ^ vec4<i32>(u_input.a.x, var_1, u_input.a.x, -5823i), vec4<i32>(u_input.a.x, u_input.a.x, var_1, var_1)), Struct_1(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), func_3(Struct_4(u_input.c.xzy, Struct_2(vec4<i32>(arg_0, -2147483647i, 20844i, 2424i), Struct_1(false, vec3<bool>(true, true, false), u_input.a, var_2))), firstTrailingBit(vec3<i32>(1i, 9432i, var_1)), var_0.zz, _wgslsmith_div_f32(-1616f, -244f)).xwx, ~(u_input.a & u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 * -770f), _wgslsmith_f_op_f32(var_2 - -395f))))), !vec4<bool>((var_1 ^ 2147483647i) > 1i, true, false, true), Struct_1(false, select(!func_3(Struct_4(var_0, Struct_2(vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), Struct_1(false, vec3<bool>(true, false, false), u_input.a, 1050f))), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), var_0.xy, var_2).yzz, vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_3(Struct_4(vec3<u32>(859u, 4294967295u, 4511u), Struct_2(vec4<i32>(u_input.a.x, -62i, 1i, u_input.a.x), Struct_1(false, vec3<bool>(false, true, true), u_input.a, var_2))), vec3<i32>(u_input.a.x, 8773i, 17981i), vec2<u32>(arg_1, u_input.b.x), var_2).xzw)), select(~vec2<i32>(-35302i, 13818i), _wgslsmith_sub_vec2_i32(vec2<i32>(7568i, 1i), vec2<i32>(u_input.a.x, -1162i)), false) >> (var_0.xx % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2)))), Struct_2(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, var_1, var_1, u_input.a.x), -vec4<i32>(arg_0, var_1, -10533i, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(var_2 + var_2) >= _wgslsmith_f_op_f32(-var_2), !func_3(Struct_4(var_0, Struct_2(vec4<i32>(-4997i, var_1, u_input.a.x, arg_0), Struct_1(true, vec3<bool>(false, true, false), u_input.a, -1110f))), vec3<i32>(3556i, 38623i, u_input.a.x), var_0.yy, var_2).yxx, u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-255f, -1399f)), 241f, true)))), !(!select(select(false, false, false), any(vec2<bool>(true, true)), true)));
}

fn func_1() -> bool {
    global1 = array<vec2<bool>, 26>();
    global1 = array<vec2<bool>, 26>();
    let var_0 = Struct_2(select(abs(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, -11564i, -2147483647i, -53407i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(40399i, u_input.a.x, 26560i, u_input.a.x)), vec4<i32>(-21623i, u_input.a.x, 0i, 0i))), vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, true)))), Struct_1(u_input.b.x == _wgslsmith_div_u32(u_input.e, 4294967295u), vec3<bool>(true, true, true), vec2<i32>(-1i >> (u_input.d % 32u), -(u_input.a.x >> (u_input.c.x % 32u))), _wgslsmith_f_op_f32(sign(142f))));
    let var_1 = func_2(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(u_input.a.x, var_0.a.x))), firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(40319i, var_0.a.x))))), 1u);
    var var_2 = Struct_1(false, !var_0.b.b, var_1.d.a.zz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.d.b.d, 961f)), _wgslsmith_f_op_f32(floor(var_0.b.d))))));
    return !any(func_3(Struct_4(min(vec3<u32>(u_input.c.x, u_input.c.x, 2528u), u_input.c.zxy), func_2(var_2.c.x, 0u).a), vec3<i32>(-1i) * -var_1.d.a.wxz, u_input.b.wy, _wgslsmith_f_op_f32(f32(-1f) * -290f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 26>();
    global0 = any(select(vec2<bool>(all(vec3<bool>(true, true, false)), !func_1()), select(vec2<bool>(true, func_2(-54280i, u_input.c.x).b.x), func_2(35057i, ~0u).b.zy, true), true));
    var var_0 = func_2(countOneBits(u_input.a.x), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 4294967295u), min(_wgslsmith_div_vec3_u32(u_input.c.zww, vec3<u32>(4294967295u, u_input.d, 1u)), u_input.b.zyx)))).d.b;
    let var_1 = _wgslsmith_div_f32(601f, _wgslsmith_div_f32(var_0.d, -1762f));
    let var_2 = countOneBits(~firstLeadingBit(select(vec4<i32>(1i, u_input.a.x, -16428i, var_0.c.x), vec4<i32>(36242i, var_0.c.x, -20894i, u_input.a.x), vec4<bool>(true, var_0.b.x, true, true)))) ^ _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, var_0.c.x, 2147483647i, var_0.c.x)) << (vec4<u32>(~u_input.c.x, u_input.b.x, ~u_input.b.x, ~1u) % vec4<u32>(32u)), -(-vec4<i32>(1i, -6838i, var_0.c.x, var_0.c.x) & (vec4<i32>(2147483647i, var_0.c.x, 2147483647i, -6813i) << (u_input.c % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.x, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(1161f + -2254f)))));
}

