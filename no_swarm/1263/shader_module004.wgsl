struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = firstTrailingBit(abs(_wgslsmith_div_vec4_i32(-u_input.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), countOneBits(vec4<i32>(92380i, arg_0.c.x, -1i, arg_2)), vec4<i32>(arg_1.b.c, 31804i, -13711i, arg_0.b.c)))));
    let var_2 = arg_1.b.a.x;
    return firstLeadingBit(~(~0u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec3<f32> {
    var var_0 = func_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_div_f32(-1497f, arg_1.b))), _wgslsmith_f_op_f32(2181f * _wgslsmith_f_op_f32(min(arg_1.b, arg_1.b))), arg_1.b), Struct_1(vec4<u32>(arg_1.a.x, 18796u & arg_1.a.x, 4294967295u, ~54036u), -409f, arg_1.c), _wgslsmith_add_vec2_i32(u_input.b.zx, reverseBits(vec2<i32>(-1i, -28153i))) << (firstLeadingBit(vec2<u32>(0u, u_input.a) | u_input.c.zz) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-808f - arg_1.b), _wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_div_f32(arg_1.b, arg_1.b))), arg_1, arg_2), _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>((arg_1.c | 2147483647i) & -20079i, ~0i & select(u_input.b.x, -51988i, true))));
    var_0 = arg_1.a.x;
    var var_1 = Struct_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(91390u, ~u_input.d, select(u_input.e, 0u, arg_0.a)), abs(arg_1.a.yxx)));
    let var_2 = (_wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(arg_1.c, -4246i)), u_input.b.x) ^ arg_2.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -5634i, -107359i), vec3<i32>(28917i & arg_3, -2147483647i, 2147483647i ^ arg_1.c) | u_input.b.zxx);
    var_1 = Struct_4(~var_1.a);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-439f, _wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_div_f32(-1231f, 741f)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = abs(vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(~(~u_input.d), ~4294967295u), u_input.a, 27084u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) * -339f)));
    var var_2 = 621f;
    var var_3 = -41809i;
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(true), Struct_1(~(u_input.c >> (var_0 % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, var_1)) + -230f), max(-1i, _wgslsmith_clamp_i32(u_input.b.x, 1i, u_input.b.x))), u_input.b.xx, u_input.b.x)), Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1109f))), countOneBits(min(u_input.b.x, ~0i))), -vec2<i32>(u_input.b.x, u_input.b.x));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_4.a), Struct_1(vec4<u32>(~var_0.x << ((arg_0 ^ u_input.c.x) % 32u), u_input.e, var_4.b.a.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.b) + -1029f), var_4.c.x), ~(~(-select(u_input.b.xw, vec2<i32>(u_input.b.x, -22957i), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -617f), 675f, !(!((4294967295u | u_input.c.x) >= ~22209u))));
    let var_2 = func_1(0u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 - -1918f), _wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(443f, var_1))))));
    var var_3 = true;
    var var_4 = Struct_1(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(~(~var_2.b.a.x), var_2.b.a.x, _wgslsmith_mult_u32(~var_2.b.a.x, var_2.b.a.x)), 0u, ~(reverseBits(var_2.b.a.x) & _wgslsmith_dot_vec2_u32(var_2.b.a.yz, vec2<u32>(var_2.b.a.x, u_input.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(10817i | var_2.b.c, var_2.b.c, -52457i, _wgslsmith_mod_i32(1i, 6621i))), -vec4<i32>(u_input.b.x, var_2.b.c, -40457i, max(0i, u_input.b.x))));
    var var_5 = 420f;
    var var_6 = select(select(vec4<bool>(!(398f == var_2.b.b), false, false, (50978u | var_4.a.x) == 4294967295u), select(vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true), vec4<bool>(var_2.b.b != var_4.b, true, true, select(true, true, true)), 4294967295u <= (108324u << (u_input.d % 32u))), vec4<bool>(true, abs(var_2.c.x) != u_input.b.x, true, false)), vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), all(vec3<bool>(true, true, false)), false), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true)) || (select(true, true, true) || !any(vec4<bool>(false, false, true, false))));
    let var_7 = vec2<i32>(-select(u_input.b.x, -1i, false), select(firstLeadingBit(2147483647i), ~(~(-29780i)), select(any(select(vec3<bool>(true, var_6.x, var_6.x), vec3<bool>(var_6.x, var_6.x, false), var_6.x)), !var_6.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.b), 183f)))), abs(~vec2<i32>(-34343i, _wgslsmith_mod_i32(u_input.b.x, var_2.b.c))), _wgslsmith_mult_vec4_i32(-(~(vec4<i32>(-31980i, 1i, var_4.c, 1i) << (vec4<u32>(var_4.a.x, var_2.b.a.x, var_2.b.a.x, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(var_4.c | u_input.b.x, -48299i), -1i, var_0, var_2.c.x)));
}

