struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.a)))), 1f)), global0.a, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1083f, -1810f, global0.a), vec3<f32>(-223f, 106f, 2779f)), vec3<f32>(-1747f, 379f, 843f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1040f, 1000f, -145f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1327f, var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a, -1320f, true)), var_0.x), _wgslsmith_f_op_f32(var_0.x + -207f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1191f, var_0.x, global0.a), vec3<f32>(-834f, global0.a, -288f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1193f, 481f, -673f) + vec3<f32>(503f, global0.a, -243f))))), vec3<bool>(false, true, false))));
    let var_1 = Struct_1(global0.a, _wgslsmith_mult_u32(4294967295u, abs(max(max(u_input.b.x, 4294967295u), 0u ^ arg_0.x))), vec4<u32>(select(arg_0.x, global0.c.x, false) >> (abs(arg_0.x) % 32u), 4294967295u, ~4294967295u, _wgslsmith_sub_u32(42145u, arg_0.x)) >> (vec4<u32>(_wgslsmith_sub_u32(~1u, ~27034u), 4294967295u, arg_0.x, ~_wgslsmith_add_u32(7688u, global0.b)) % vec4<u32>(32u)), firstTrailingBit(global0.d));
    var var_2 = -(~reverseBits(~vec4<i32>(6404i, 0i, -2147483647i, global0.d.x)) ^ vec4<i32>(var_1.d.x, ~_wgslsmith_add_i32(global0.d.x, 2147483647i), _wgslsmith_add_i32(u_input.d, -31006i) | _wgslsmith_dot_vec3_i32(global0.d, var_1.d), -_wgslsmith_dot_vec3_i32(var_1.d, var_1.d)));
    global0 = var_1;
    return _wgslsmith_div_vec3_i32(min(~global0.d, select(vec3<i32>(-var_2.x, min(2147483647i, 0i), _wgslsmith_dot_vec3_i32(global0.d, var_1.d)), var_1.d, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)))), abs(var_2.xzx));
}

fn func_2() -> vec2<u32> {
    var var_0 = -_wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.d), _wgslsmith_dot_vec2_i32(-global0.d.xz, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.d.x, global0.d.x), vec2<i32>(u_input.d, global0.d.x), global0.d.yx)), u_input.d), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global0.d, global0.d) ^ vec3<i32>(57674i, -5377i, 13669i), -abs(vec3<i32>(-1i, -2147483647i, global0.d.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) + _wgslsmith_f_op_f32(global0.a + global0.a))))), u_input.c, global0.c, abs(func_3(vec3<u32>(_wgslsmith_clamp_u32(global0.c.x, 4294967295u, 0u), global0.c.x ^ u_input.a.x, ~global0.c.x))));
    global0 = Struct_1(var_1.a, firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(global0.c), global0.c), ~max(vec4<u32>(0u, 17711u, var_1.c.x, var_1.c.x), global0.c))), abs(var_1.c), vec3<i32>(var_1.d.x, -5565i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x & 2147483647i, ~var_0.x), ~abs(var_0.zx))));
    let var_2 = Struct_1(var_1.a, 42400u, global0.c, vec3<i32>(-abs(max(var_1.d.x, -51790i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, global0.d.x, 2147483647i), vec4<i32>(u_input.d, var_1.d.x, u_input.d, u_input.d))), vec4<i32>(-1i) * -vec4<i32>(-11315i, var_0.x, u_input.d, global0.d.x)), -2147483647i));
    var_0 = ~(~max(var_1.d, vec3<i32>(-2147483647i, 1i, ~1i)));
    return vec2<u32>(var_2.c.x, ~_wgslsmith_clamp_u32(reverseBits(var_2.b), ~31660u, ~19862u) ^ select(~15466u, u_input.b.x, true & (global0.d.x <= global0.d.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(global0.b, _wgslsmith_mult_u32(~abs(arg_0.x & 4294967295u), u_input.a.x), 14281u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(func_2(), firstTrailingBit(vec2<u32>(36896u, arg_1.c.x))), vec2<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(arg_1.c, global0.c))), ~reverseBits(~global0.b)));
    var var_1 = ~(~(~(reverseBits(global0.c.wyx) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_1.c.x, 1u), var_0.wxy))));
    var var_2 = arg_1.d;
    var_2 = _wgslsmith_div_vec3_i32(~global0.d, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(var_2.x, var_2.x)), -1i) >> (arg_0.x % 32u), 2147483647i, ~global0.d.x));
    global0 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)), _wgslsmith_f_op_f32(-global0.a))), min(~(_wgslsmith_sub_u32(u_input.a.x, var_0.x) >> (_wgslsmith_dot_vec2_u32(var_1.zx, u_input.a.zx) % 32u)), u_input.a.x), global0.c, ~(~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.d.x, 1i, arg_1.d.x), arg_1.d, global0.d), _wgslsmith_mult_vec3_i32(global0.d, vec3<i32>(-31188i, 2147483647i, -16041i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(-arg_1.d.zx, vec2<i32>(-(~arg_0.x), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_1.d.x, 73850i, global0.d.x, u_input.d)))), _wgslsmith_mult_i32(-9080i, min(global0.d.x, u_input.d)), arg_1.d.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<i32>(global0.d.x, abs(-1i), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, global0.d.x), global0.d.yy), firstTrailingBit(u_input.d)), global0.d.x), func_1(u_input.a, Struct_1(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_dot_vec2_u32(max(u_input.a.zx, global0.c.yw), global0.c.ww), global0.c, vec3<i32>(1i, 1i >> (global0.b % 32u), _wgslsmith_div_i32(-16113i, -22106i)))));
    var var_1 = !all(vec4<bool>(true, false, !(var_0.a < var_0.a), !all(vec4<bool>(false, true, false, false))));
    var var_2 = func_4(vec4<i32>(-3153i, var_0.d.x, global0.d.x, global0.d.x), Struct_1(_wgslsmith_f_op_f32(global0.a + global0.a), 0u, ~var_0.c, global0.d));
    var var_3 = vec4<i32>(1449i | _wgslsmith_dot_vec2_i32(global0.d.xz, var_0.d.zy | var_2.d.xy), -1i, firstLeadingBit(_wgslsmith_div_i32(global0.d.x, -(i32(-1i) * -23020i))), -48472i);
    global0 = var_0;
    var var_4 = ~_wgslsmith_dot_vec3_u32(countOneBits(abs(global0.c.xxw)) & (~var_2.c.wwx & var_2.c.wyw), vec3<u32>(global0.c.x, ~min(4294967295u, 1u), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1314f * -938f)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b, 28129u, var_2.c.x), var_0.c.xyw, vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(func_2().x, 4294967295u, u_input.c) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), -2784f));
}

