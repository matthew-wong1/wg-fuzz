struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)));
    var var_1 = Struct_2(Struct_1(u_input.a.x), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~(-u_input.a.xy), ~vec2<i32>(-17008i, u_input.a.x) & ~vec2<i32>(1i, u_input.a.x)), u_input.a.zz), u_input.b, Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, -1i, 2147483647i), select(vec4<i32>(-1i, -29414i, -1i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), global1.x) | vec4<i32>(u_input.a.x, -79469i, -3971i, -21199i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1000f, -1031f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), var_0.x, _wgslsmith_f_op_f32(1832f * var_0.x), 1053f))));
    var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(select(-11035i | var_1.b.x, 1i, true), var_1.b.x)), vec2<i32>(min(-var_1.a.a, select(-51734i, -7159i, false) | _wgslsmith_add_i32(u_input.a.x, var_1.b.x)), u_input.a.x), ~52865u, Struct_1(abs(reverseBits(-33892i))), _wgslsmith_f_op_vec4_f32(var_1.e - var_1.e));
    global1 = select(!vec3<bool>(all(!vec2<bool>(global1.x, true)), global1.x, false), select(!select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(false, true, true), select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true))), select(vec3<bool>(true, global1.x || true, true), !(!vec3<bool>(false, true, global1.x)), all(!vec4<bool>(global1.x, global1.x, false, false))), ~u_input.b != _wgslsmith_div_u32(max(u_input.b, var_1.c), u_input.b)), select(vec3<bool>(true, true, select(true, global1.x, true)), !select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, false, false), true), !global1.x));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(859f, -834f), var_1.e.wz)) + _wgslsmith_f_op_vec2_f32(select(var_1.e.xz, var_1.e.ww, vec2<bool>(true, true)))), vec2<f32>(-916f, _wgslsmith_div_f32(-111f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, var_1.e.x) + vec2<f32>(_wgslsmith_f_op_f32(406f + var_1.e.x), _wgslsmith_f_op_f32(var_1.e.x - -573f))))));
    return abs(-2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.c.x), 12663u, ~_wgslsmith_add_u32(min(arg_1.c, u_input.c.x), arg_1.c)), arg_1.c, _wgslsmith_add_u32(u_input.b, firstTrailingBit(select(arg_1.c, firstTrailingBit(u_input.c.x), select(true, global1.x, true)))));
    global1 = select(vec3<bool>(global1.x, true, all(vec4<bool>(global1.x, true, select(global1.x, false, true), global1.x))), !(!(!(!vec3<bool>(global1.x, true, false)))), select(vec3<bool>(!(arg_1.e.x < arg_1.e.x), true || global1.x, true), !(!select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true))), select(vec3<bool>(true, all(vec3<bool>(global1.x, true, false)), true), !(!vec3<bool>(false, global1.x, false)), select(vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, true), global1.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(arg_1.e));
    let var_2 = Struct_3(global1.x);
    var var_3 = select(!(!vec4<bool>(true, u_input.c.x != arg_1.c, !var_2.a, var_2.a)), vec4<bool>(!(true || !global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f) > var_1.x, true, !select(all(vec3<bool>(false, global1.x, var_2.a)), select(global1.x, false, global1.x), global1.x)), select(!(!select(vec4<bool>(var_2.a, false, false, false), vec4<bool>(global1.x, global1.x, global1.x, var_2.a), false)), select(!select(vec4<bool>(false, global1.x, false, false), vec4<bool>(true, true, false, global1.x), vec4<bool>(var_2.a, true, var_2.a, false)), vec4<bool>(var_0.x > 23323u, all(global1.xy), var_2.a, false), global1.x), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, false, false, true)), !vec4<bool>(false, true, false, global1.x), any(vec3<bool>(false, global1.x, global1.x)))));
    return var_3.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_4) -> vec2<f32> {
    global0 = any(vec4<bool>(global1.x, global1.x, any(vec3<bool>(!global1.x, all(vec4<bool>(false, true, false, global1.x)), global1.x)), func_4(Struct_1(func_3()), Struct_2(Struct_1(u_input.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), arg_0), 1u, Struct_1(-48628i), _wgslsmith_f_op_vec4_f32(vec4<f32>(489f, -1422f, -816f, 1000f) + vec4<f32>(arg_1.a.x, arg_2.a.x, 462f, 2481f))))));
    global0 = global1.x;
    var var_0 = 41832i;
    let var_1 = Struct_1((~(-1i) << ((u_input.c.x << (1u % 32u)) % 32u)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yw, vec2<u32>(u_input.b, u_input.c.x)), ~vec2<u32>(u_input.b, u_input.b), vec2<u32>(39572u, 37340u)), ~reverseBits(vec2<u32>(4294967295u, u_input.c.x))) % 32u));
    let var_2 = ~u_input.c.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-790f, arg_2.a.x), arg_2.a, false)))))));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-289f, 1571f), vec2<f32>(417f, -1332f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, -725f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(-39262i, u_input.a.x), Struct_4(vec2<f32>(-809f, -1872f)), Struct_4(vec2<f32>(-872f, 1106f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -366f)))))));
    var var_1 = all(select(vec2<bool>(!all(vec3<bool>(false, global1.x, global1.x)), !global1.x == global1.x), !global1.yy, vec2<bool>(select(false, all(vec3<bool>(false, false, true)), global1.x | false), true)));
    var var_2 = any(!select(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), false), vec3<bool>(global1.x, global1.x, all(vec3<bool>(true, global1.x, true))), true));
    global1 = vec3<bool>(!all(!vec4<bool>(global1.x, false, true, false)), true, u_input.a.x != firstTrailingBit(~abs(u_input.a.x)));
    var_0 = vec2<f32>(-666f, 1f);
    return reverseBits(-_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-54128i, -1544i)), u_input.a.zy, u_input.a.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = true;
    var var_0 = Struct_2(Struct_1(~(u_input.a.x | u_input.a.x)), func_1(), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.b, 1u), countOneBits(vec3<u32>(272u, u_input.c.x, 19655u))), Struct_1(func_3()), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(ceil(-772f)))))));
    var var_1 = -1642f;
    var var_2 = ~(~(~0u));
    var_2 = 51713u;
    global1 = vec3<bool>(true, global1.x, select(global1.x, (true & func_4(var_0.d, Struct_2(var_0.d, var_0.b, u_input.c.x, Struct_1(-6364i), vec4<f32>(-598f, var_0.e.x, -478f, 495f)))) & (any(global1.zz) || true), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -67830i, var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_f32(2471f + -2337f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(777f, 668f, global1.x)) * var_0.e.x)))));
}

