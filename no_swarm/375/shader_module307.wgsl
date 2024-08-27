struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + 921f)))))), _wgslsmith_f_op_f32(f32(-1f) * -389f), 2854f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1090f, global0.x), global0.x)), global0.x, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1454f)), all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)))))));
    return var_0.wz;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(1715f, 643f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<i32>(-20361i, 36731i, global2.a.x), vec3<u32>(4294967295u, 4294967295u, global2.b.x)), _wgslsmith_add_u32(global1.b.x, 67914u))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -361f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(613f, 1405f)))))))));
    global1 = Struct_1(global2.a, ~select(_wgslsmith_clamp_vec3_u32(global1.b, ~u_input.a, ~vec3<u32>(57312u, global2.b.x, 32922u)), ~(~vec3<u32>(global2.b.x, 9313u, global1.b.x)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
    global2 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(21465i, global1.a.x), global2.a.x, ~global2.a.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, global1.a.x), vec4<i32>(-1i, -63163i, -1i, global1.a.x))) >> (max((vec3<u32>(global2.b.x, global2.b.x, 72918u) << (u_input.a % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u)), u_input.a & ~vec3<u32>(35540u, 36050u, 53016u)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.a, global1.b), firstLeadingBit(u_input.a)));
    let var_0 = Struct_1(vec3<i32>(~(~(-45342i)), global2.a.x, global1.a.x), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 63246u << (u_input.a.x % 32u)), select(firstLeadingBit(u_input.a.x), 4294967295u, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37558u, 15587u, 10554u) << ((vec4<u32>(u_input.a.x, global2.b.x, 10483u, global2.b.x) << (vec4<u32>(u_input.a.x, global1.b.x, global1.b.x, 20472u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(max(global1.b.x, 31290u), _wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_mod_u32(global1.b.x, 27250u), u_input.a.x)), 0u));
    var var_1 = !select(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, true))), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), !(0i <= global2.a.x), _wgslsmith_mult_i32(global2.a.x, global2.a.x) > reverseBits(2147483647i)), true);
    return Struct_1(global2.a, ~vec3<u32>(_wgslsmith_sub_u32(var_0.b.x, firstTrailingBit(global1.b.x)), global1.b.x, reverseBits(61850u) >> (reverseBits(global2.b.x) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    let var_0 = func_2();
    global2 = func_2();
    var var_1 = func_2().b.x;
    let var_2 = vec3<f32>(1379f, global0.x, _wgslsmith_f_op_f32(round(-669f)));
    global1 = func_2();
    return _wgslsmith_f_op_f32(sign(var_2.x));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = vec2<f32>(global0.x, global0.x);
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f - 214f)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, global0.x)))), _wgslsmith_f_op_f32(ceil(-966f)))))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec3<i32> {
    var var_0 = -2147483647i;
    var var_1 = Struct_1(~(-max(vec3<i32>(1i, 47541i, global2.a.x) ^ global1.a, global2.a)), func_2().b);
    let var_2 = 0i;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(1520f, global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f), -925f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), vec2<bool>(_wgslsmith_mult_u32(global2.b.x, u_input.a.x) == firstLeadingBit(arg_0.b.x), true & any(vec2<bool>(false, false))))), 2658f);
    var var_3 = global2.b.x;
    return -vec3<i32>(func_1(select(-vec2<i32>(1i, global2.a.x), vec2<i32>(global2.a.x, global1.a.x), true)).a.x, var_2, -9045i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_mult_vec3_i32(func_5(func_1(vec2<i32>(global1.a.x, global1.a.x)), Struct_1(func_2().a, vec3<u32>(u_input.a.x, 4294967295u, global1.b.x)), ~(~12643u), 11441u), vec3<i32>(abs(61865i), 32201i, _wgslsmith_clamp_i32(-36282i, global2.a.x, -2147483647i) << (~u_input.a.x % 32u))), u_input.a);
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(-global2.a, global2.a & global2.a), ~func_1(abs(global1.a.xz ^ vec2<i32>(44801i, -1i))).b);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(var_0, firstTrailingBit(countOneBits(54970u)))).x, global0.x, 872f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global2.b.x, abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x)), _wgslsmith_sub_u32(func_1(vec2<i32>(-11928i, var_0.a.x)).b.x, _wgslsmith_clamp_u32(select(46960u, var_0.b.x, true), global2.b.x, ~1u))), _wgslsmith_f_op_f32(-global0.x), ~global2.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, var_1.x)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yy * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1799f, 118f), vec2<f32>(1505f, 1000f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-743f, 1016f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))));
}

