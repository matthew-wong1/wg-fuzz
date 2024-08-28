struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_3 {
    global0 = Struct_2(global0.a, Struct_1(~vec2<u32>(_wgslsmith_sub_u32(1u, u_input.c.x), 84477u), 108388u, -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.c, global0.b.c, global0.a.c), vec3<i32>(-1i, -78320i, u_input.b), vec3<i32>(1i, 19357i, 1i)), vec3<i32>(u_input.a, 48046i, 32934i))));
    global0 = Struct_2(global0.a, Struct_1(u_input.c, u_input.d, 0i));
    global0 = Struct_2(global0.b, global0.a);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(865f)))), -1058f)));
    let var_1 = select(false, true, any(vec4<bool>(true, true, true, true)));
    return Struct_3(vec2<bool>(!(_wgslsmith_f_op_f32(var_0.x * var_0.x) > var_0.x), var_1), !vec4<bool>(true, true, any(vec2<bool>(var_1, var_1)), var_1), vec4<i32>(33690i, ~global0.a.c, global0.b.c, ~(-24331i)), !(!vec4<bool>(var_0.x >= var_0.x, !var_1, !var_1, false || var_1)));
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    global0 = Struct_2(global0.a, global0.b);
    global0 = Struct_2(global0.a, global0.a);
    global0 = Struct_2(Struct_1(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, 1u), ~vec2<u32>(global0.b.b, 26718u)), u_input.c.x, ~(-36071i & arg_0.c.x)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~65117u), _wgslsmith_mod_vec2_u32(global0.b.a, global0.b.a)), firstLeadingBit(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(u_input.c.x, global0.a.b), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(37001u, 40713u)))), -2147483647i));
    var var_0 = ~(~(-_wgslsmith_mult_i32(24328i << (u_input.d % 32u), _wgslsmith_sub_i32(global0.b.c, 0i))));
    var_0 = global0.b.c;
    return global0.b;
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = u_input.c.x;
    global0 = Struct_2(global0.a, func_3(func_2()));
    global0 = arg_0;
    return _wgslsmith_clamp_vec4_i32(~countOneBits(-vec4<i32>(global0.b.c, u_input.a, global0.a.c, -32150i)) << (vec4<u32>(1u & (var_0 | 1u), var_0, _wgslsmith_mod_u32(46948u << (u_input.d % 32u), 40633u), arg_0.b.a.x >> (0u % 32u)) % vec4<u32>(32u)), vec4<i32>(~_wgslsmith_clamp_i32(global0.b.c, 1i, global0.a.c << (0u % 32u)), -u_input.b, _wgslsmith_add_i32(global0.b.c, func_2().c.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(~(-3688i), -1i), i32(-1i) * -global0.b.c)), abs(vec4<i32>(-arg_0.a.c ^ _wgslsmith_mult_i32(u_input.a, global0.a.c), arg_0.b.c, abs(i32(-1i) * -27965i), _wgslsmith_mod_i32(-1i, ~global0.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(~(~16149i)), _wgslsmith_dot_vec4_i32(max(func_1(Struct_2(Struct_1(u_input.c, 4294967295u, u_input.a), Struct_1(vec2<u32>(global0.a.a.x, 1u), global0.b.a.x, 2147483647i))), vec4<i32>(-28905i, 2147483647i, -21007i, 0i) ^ vec4<i32>(-2147483647i, u_input.b, global0.a.c, u_input.b)), abs(-vec4<i32>(-1i, u_input.b, 39540i, -2147483647i)))), -(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(20528i, global0.a.c), vec2<i32>(u_input.a, global0.a.c), vec2<i32>(-1i, -17960i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(-313f, 1326f)), _wgslsmith_div_f32(362f, 883f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-530f, 2101f), vec2<f32>(498f, -2067f), vec2<bool>(true, true))))))));
    global0 = Struct_2(func_3(func_2()), global0.a);
    let var_2 = Struct_2(func_3(Struct_3(vec2<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, true))), select(vec4<bool>(false, false, true, true), func_2().b, select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), select(vec4<i32>(var_0.x, 1i, u_input.a, -6446i), vec4<i32>(u_input.a, global0.a.c, var_0.x, -2147483647i), vec4<bool>(true, true, false, true)) ^ abs(vec4<i32>(2147483647i, 2147483647i, 1i, global0.b.c)), vec4<bool>(true, true, true, true))), Struct_1(u_input.c, _wgslsmith_sub_u32(u_input.d, 0u), u_input.a));
    let var_3 = !(!(!vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true)));
    global0 = var_2;
    let var_4 = func_2().c.yyy;
    var var_5 = vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 58951u, ~reverseBits(~u_input.d)), 7306u, global0.b.a.x & ~(~1u), u_input.c.x);
    var_5 = ~(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 1u, u_input.c.x, 0u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, var_5.x, global0.a.b), vec4<u32>(u_input.c.x, 5066u, 69323u, global0.a.a.x)), ~vec4<u32>(0u, global0.b.b, global0.b.a.x, 42954u), max(vec4<u32>(1u, u_input.c.x, var_2.b.b, var_2.b.a.x), vec4<u32>(4294967295u, 1u, 81906u, global0.a.b))), vec4<u32>(~0u, firstTrailingBit(1u), 8559u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c.zww, var_0.x, -826f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, -505f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2804f) - vec2<f32>(var_1.x, var_1.x)), !var_3.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1310f, 1265f), vec2<f32>(var_1.x, -822f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), -586f), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))))));
}

