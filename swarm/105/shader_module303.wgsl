struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = abs(23528u);
    let var_1 = 68864u;
    var var_2 = vec2<bool>(true, ~4294967295u <= arg_0.x);
    var var_3 = max(max(_wgslsmith_add_i32(abs(0i), _wgslsmith_add_i32(-2147483647i, global0.c.x)), ~(-global0.c.x >> (u_input.b % 32u))), -firstLeadingBit(abs(1i)));
    var_0 = 0u;
    return arg_2.xy;
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    global0 = Struct_2(88437u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(global0.b, vec2<f32>(433f, global0.b.x))))) + vec2<f32>(_wgslsmith_f_op_f32(select(-435f, global0.b.x, true)), _wgslsmith_f_op_f32(-393f * -162f)))), _wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global0.c.x, arg_0.x), firstTrailingBit(arg_0), vec3<i32>(global0.c.x, 33152i, 2147483647i)), ~vec3<i32>(global0.c.x, arg_0.x, arg_0.x) >> (vec3<u32>(1u, u_input.b, ~1u) % vec3<u32>(32u))));
    var var_0 = _wgslsmith_mod_i32(-reverseBits(_wgslsmith_mod_i32(2147483647i, global0.c.x)), min(16823i, _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(global0.c.x, global0.c.x)))) != (arg_0.x ^ global0.c.x);
    var_0 = any(select(vec3<bool>(!select(false, false, false), true, !any(vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(global0.b.x < 932f, true, true)), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true))));
    var_0 = any(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true));
    var_0 = true;
    return max(countOneBits(select(-_wgslsmith_mult_vec3_i32(global0.c, global0.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.x, global0.c.x, -10229i), global0.c, global0.c) << (u_input.a.wyx % vec3<u32>(32u)), true)), ~(-vec3<i32>(arg_0.x, i32(-1i) * -31104i, firstLeadingBit(11229i))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> vec4<f32> {
    var var_0 = firstLeadingBit(abs(reverseBits(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(31848u, 0u, 1u)))) ^ ~(vec3<u32>(u_input.b, 0u, u_input.d) & abs(vec3<u32>(0u, 17175u, 20401u))));
    global0 = Struct_2(var_0.x | ~_wgslsmith_div_u32(global0.a << (4294967295u % 32u), 4294967295u), global0.b, -vec3<i32>(reverseBits(countOneBits(global0.c.x)), global0.c.x, firstLeadingBit(_wgslsmith_add_i32(-1i, 32288i))));
    var_0 = u_input.c;
    var var_1 = arg_0;
    var_0 = u_input.a.zyw;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x + -709f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1350f, 1178f))), 1f));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x);
    var var_1 = select(!vec2<bool>(false, arg_0 != _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.a.x, u_input.b, global0.a), u_input.a)), vec2<bool>(false, global0.b.x > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(284f, var_0.x))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, select(true, false, true)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), func_2(~vec2<u32>(u_input.c.x, u_input.d) >> (u_input.c.zz % vec2<u32>(32u)), true, vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(var_1.x || !any(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), false)), ~(func_3(vec3<i32>(-1i, global0.c.x, global0.c.x)) << (countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 0u, arg_0), u_input.a.zxy)) % vec3<u32>(32u))), 350f));
    let var_3 = select(firstTrailingBit(select(vec4<i32>(global0.c.x, ~global0.c.x, _wgslsmith_sub_i32(-1i, 11635i), 17515i), vec4<i32>(func_3(vec3<i32>(-13103i, -12615i, 2147483647i)).x, abs(-2147483647i), ~global0.c.x, i32(-1i) * -1i), !select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), true))), firstTrailingBit(abs((vec4<i32>(global0.c.x, -2147483647i, 1i, 1i) & vec4<i32>(-19224i, 41407i, -38903i, -2147483647i)) << (select(u_input.a, u_input.a, vec4<bool>(false, var_1.x, true, true)) % vec4<u32>(32u)))), var_1.x);
    let var_4 = vec2<f32>(-164f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_4(true, global0.c, var_0.x)).x, _wgslsmith_f_op_f32(-var_0.x), true)));
    return Struct_2(~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-733f * global0.b.x))) - global0.b.x), _wgslsmith_f_op_f32(trunc(var_4.x))), vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 22724i, global0.c.x, var_3.x), vec4<i32>(0i, -29606i, var_3.x, 16651i))), -1i), 1i, countOneBits(countOneBits(i32(-1i) * -28321i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0.a;
    global0 = Struct_2(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.wz), ~u_input.c.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.b))))), ~global0.c);
    global0 = func_1(6083u);
    let var_1 = vec3<i32>(0i, -11870i, global0.c.x);
    var var_2 = _wgslsmith_add_i32(-global0.c.x, ~1i);
    var var_3 = vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, var_1.x), i32(-1i) * -2147483647i, _wgslsmith_add_i32(1i, 15489i)), -func_3(-vec3<i32>(var_1.x, global0.c.x, -63202i)).x) >> (_wgslsmith_sub_vec2_u32(u_input.c.yz, ~select(u_input.a.zw, u_input.a.yx, vec2<bool>(true, true)) & u_input.a.ww) % vec2<u32>(32u));
    global0 = Struct_2(~(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19791u, var_0, 4294967295u), vec4<u32>(var_0, 4294967295u, var_0, global0.a)))), _wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_1, firstLeadingBit(func_3(vec3<i32>(var_1.x, 2147483647i, 57590i)))), vec3<i32>(var_3.x, ~reverseBits(global0.c.x), _wgslsmith_sub_i32(select(2147483647i, global0.c.x, false), ~var_3.x))));
    var_2 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, u_input.a, u_input.a.wz);
}

