struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, arg_2) + vec2<f32>(arg_0.b.a, -299f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1252f, arg_2)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b.a, -1610f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, arg_0.b.a) * vec2<f32>(146f, arg_2)), true)), vec2<bool>(!arg_0.b.d, true))))), vec2<f32>(arg_0.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a), arg_0.b.a))));
    var var_1 = arg_0.b.d;
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-211f, 484f) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a - 513f))))));
    var var_2 = 95412u;
    let var_3 = _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(min(-832f, _wgslsmith_f_op_f32(max(arg_2, var_0.x)))))));
    return global0.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> u32 {
    global0 = vec3<u32>(func_3(Struct_3(~_wgslsmith_dot_vec2_u32(arg_1.zx, vec2<u32>(arg_1.x, 0u)), Struct_2(_wgslsmith_f_op_f32(618f - -160f), vec2<i32>(u_input.a, 0i), arg_1 << (arg_1 % vec3<u32>(32u)), 40584u <= arg_1.x)), 0i, _wgslsmith_f_op_f32(f32(-1f) * -138f)), firstLeadingBit(~1u), _wgslsmith_dot_vec2_u32(min(reverseBits(~arg_1.yx), global0.zx), abs(vec2<u32>(countOneBits(global0.x), global0.x))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(798f, -2029f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(340f - -362f), -763f), 937f, arg_0.x))));
    var var_1 = _wgslsmith_div_vec3_u32(~(~arg_1), ~vec3<u32>(~(~4294967295u), 20054u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 35609u, global0.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(56317u, 0u, 13927u, global0.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))));
    global0 = arg_1;
    var_1 = arg_1;
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    global0 = vec3<u32>(18758u, 0u, ~global0.x);
    let var_0 = 2147483647i;
    var var_1 = arg_2;
    global0 = _wgslsmith_mult_vec3_u32(~arg_1.c, vec3<u32>(max(38571u, func_2(vec4<bool>(true, false, arg_1.d, false), vec3<u32>(4294967295u, arg_1.c.x, 0u))), reverseBits(~46238u), ~arg_2.a >> (var_1.a % 32u)) << (~firstLeadingBit(vec3<u32>(var_1.a, 4294967295u, 1u)) % vec3<u32>(32u)));
    var_1 = Struct_4(arg_1.c.x);
    return firstTrailingBit(firstLeadingBit(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~(~4294967295u), select(global0.x, (global0.x & 1u) ^ func_1(Struct_1(1000f), Struct_2(2807f, vec2<i32>(u_input.a, -43330i), vec3<u32>(global0.x, 0u, global0.x), true), Struct_4(global0.x)), true), ~(~(~19503u)));
    global0 = select(countOneBits(abs(abs(_wgslsmith_mult_vec3_u32(var_0, var_0)))), reverseBits(max(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 5923u, 1u), reverseBits(var_0)), vec3<u32>(~4294967295u, firstTrailingBit(4294967295u), ~global0.x))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(false, true, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), false), abs(32157i) >= _wgslsmith_clamp_i32(-1i, u_input.a, u_input.a)));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(174f)))), _wgslsmith_f_op_f32(round(-977f))), _wgslsmith_f_op_f32(max(818f, _wgslsmith_f_op_f32(select(-2389f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -267f)))), false)))), -1116f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - 2672f), -298f, _wgslsmith_f_op_f32(abs(652f))), _wgslsmith_div_vec3_f32(vec3<f32>(509f, 731f, var_1.x), _wgslsmith_f_op_vec3_f32(exp2(var_1))))) - var_1));
    var var_3 = Struct_2(var_2.x, -((-vec2<i32>(u_input.a, u_input.a) >> (_wgslsmith_div_vec2_u32(var_0.xz, vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_div_i32(u_input.a, 0i), -35760i)), vec3<u32>(var_0.x, ~var_0.x, abs(func_3(Struct_3(var_0.x, Struct_2(var_1.x, vec2<i32>(36876i, u_input.a), vec3<u32>(4294967295u, 4294967295u, var_0.x), true)), u_input.a << (global0.x % 32u), _wgslsmith_f_op_f32(-2018f * 1611f)))), !any(vec2<bool>(true, true)));
    var_3 = Struct_2(var_1.x, _wgslsmith_add_vec2_i32(var_3.b, reverseBits(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_3.b.x, -48613i)))), ~var_3.c ^ var_3.c, !all(select(vec3<bool>(false, var_3.d, var_3.d), vec3<bool>(var_3.d, true, var_3.d), vec3<bool>(var_3.d, var_3.d, false))) & select(var_3.d, true, true));
    let var_4 = abs(var_3.b.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(908f + 727f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(542f)))) + var_1));
    var var_6 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(~16634i, 0i, select(2147483647i, var_3.b.x, true)), vec3<i32>(var_4, abs(var_4), _wgslsmith_mod_i32(u_input.a, 11487i)), vec3<bool>(false, var_3.d, all(vec4<bool>(var_3.d, true, var_3.d, var_3.d)))), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -8487i, 0i) & vec3<i32>(u_input.a, var_4, u_input.a), select(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, var_3.b.x), vec3<bool>(false, var_3.d, true))) >> (~(~var_0) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(~firstLeadingBit(0u), ~(~0u), _wgslsmith_mult_u32(1u, func_3(Struct_3(global0.x, Struct_2(653f, var_6.xy, vec3<u32>(var_3.c.x, var_0.x, var_0.x), false)), 55782i, -264f))), ~(vec3<u32>(0u, var_3.c.x, 0u) << ((vec3<u32>(var_3.c.x, 38236u, var_3.c.x) | vec3<u32>(global0.x, global0.x, var_3.c.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(562f)), var_5.x, var_3.a, -1525f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_5.x, 1022f, var_2.x) + vec4<f32>(738f, var_2.x, -727f, var_5.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, -169f, var_5.x, var_1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_5.x, 422f, var_5.x, var_1.x), vec4<f32>(var_5.x, -1779f, var_3.a, var_1.x)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, _wgslsmith_f_op_f32(584f - 1040f), _wgslsmith_div_f32(var_3.a, -214f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -896f, var_2.x)), var_1))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_1, _wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(var_5.x, var_2.x, -189f)), true))))), _wgslsmith_mod_i32(var_3.b.x, 1i));
}

