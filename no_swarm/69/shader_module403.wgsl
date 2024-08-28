struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 6>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = -618f;
    global2 = array<vec2<u32>, 6>();
    let var_1 = 0u;
    let var_2 = select(select(vec2<bool>(false, !all(vec4<bool>(false, global0.a.x, arg_0, global0.b))), global0.a.zy, any(!vec2<bool>(global0.a.x, false)) & false), !select(global0.a.zz, select(select(global0.a.zx, vec2<bool>(arg_0, arg_0), true), vec2<bool>(true, true), vec2<bool>(global0.b, true)), global0.a.xx), vec2<bool>(u_input.b != firstTrailingBit(_wgslsmith_add_i32(2147483647i, u_input.a.x)), true));
    global0 = Struct_1(vec3<bool>(any(select(vec4<bool>(var_2.x, false, arg_0, var_2.x), select(vec4<bool>(true, global0.b, global0.b, global0.b), vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, global0.a.x)), !global0.b)), true, !(!global0.a.x)), !(!global0.b), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(353f * _wgslsmith_f_op_f32(global0.c.x * global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1211f - 806f) + _wgslsmith_f_op_f32(min(global0.c.x, -367f))))), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.x))))));
    return !(!(true && var_2.x));
}

fn func_2() -> Struct_1 {
    var var_0 = any(vec2<bool>(false, func_3(all(!global0.a.xy))));
    let var_1 = !(global0.b | true);
    let var_2 = !(!global0.a.x || global0.b);
    global2 = array<vec2<u32>, 6>();
    let var_3 = Struct_1(global0.a, abs(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), -49956i)) < abs(~24240i), global0.c);
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = u_input.a.x;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = global0.c.x;
    let var_1 = arg_0;
    global1 = firstLeadingBit(i32(-1i) * -1i);
    global2 = array<vec2<u32>, 6>();
    global1 = arg_2.x;
    return func_4(arg_0.c.x, func_2(), arg_0);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(global0.c.x));
    global1 = u_input.a.x;
    let var_1 = Struct_1(arg_2.a, _wgslsmith_dot_vec2_i32(-firstLeadingBit(u_input.a.wy), ~(-vec2<i32>(u_input.a.x, u_input.a.x))) > _wgslsmith_clamp_i32(u_input.a.x & u_input.a.x, ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), i32(-1i) * -48645i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-830f, arg_0.x, -659f), vec3<f32>(arg_2.c.x, arg_0.x, 330f)) - vec3<f32>(-2168f, 1137f, -813f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.zxy)))));
    global1 = u_input.a.x;
    let var_2 = select(abs(vec4<u32>(countOneBits(1u), _wgslsmith_div_u32(_wgslsmith_add_u32(22904u, 39496u), 1u), ~29084u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), !select(select(vec4<bool>(global0.a.x, arg_2.a.x, global0.a.x, arg_2.a.x), !vec4<bool>(var_1.b, global0.b, arg_2.a.x, arg_1.b), select(vec4<bool>(true, global0.b, arg_1.a.x, true), vec4<bool>(arg_2.a.x, arg_1.a.x, arg_2.b, true), arg_1.b)), !select(vec4<bool>(true, arg_2.b, false, arg_1.b), vec4<bool>(arg_2.a.x, false, false, var_1.b), arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 12543u, 88466u), vec4<u32>(0u, 31860u, 0u, 1u)) == _wgslsmith_mult_u32(0u, 0u)));
    return !(reverseBits(_wgslsmith_dot_vec2_u32(var_2.wz, vec2<u32>(var_2.x, 0u) | global2[_wgslsmith_index_u32(1u, 6u)])) < ~_wgslsmith_dot_vec4_u32(~var_2, firstTrailingBit(var_2)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(vec3<bool>(false, func_3(!global0.a.x), arg_2.b), !(_wgslsmith_add_u32(arg_3, firstLeadingBit(arg_3)) > arg_3), arg_1.c);
    let var_0 = func_4(-907f, func_2(), arg_1);
    let var_1 = false;
    global2 = array<vec2<u32>, 6>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + 331f);
    return Struct_1(vec3<bool>(false, true, true), func_2().c.x < -409f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-978f, global0.c.x, -282f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(select(true, true, !func_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x))), func_1(Struct_1(vec3<bool>(false, false, global0.a.x), global0.a.x, vec3<f32>(global0.c.x, 1034f, -944f)), true, u_input.a), func_1(Struct_1(global0.a, true, vec3<f32>(-527f, -466f, global0.c.x)), false, u_input.a))), Struct_1(!global0.a, func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))), func_2(), Struct_1(global0.a, true & global0.b, func_4(global0.c.x, Struct_1(global0.a, false, vec3<f32>(global0.c.x, global0.c.x, 914f)), Struct_1(global0.a, global0.b, global0.c)).c)).a.x, vec3<f32>(_wgslsmith_f_op_f32(floor(func_4(2526f, Struct_1(vec3<bool>(global0.a.x, true, true), global0.a.x, global0.c), Struct_1(global0.a, global0.b, vec3<f32>(global0.c.x, 1162f, global0.c.x))).c.x)), _wgslsmith_f_op_f32(abs(global0.c.x)), -494f)), Struct_1(vec3<bool>(global0.a.x, !any(global0.a.yz), true), all(global0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 472f, global0.c.x) * _wgslsmith_f_op_vec3_f32(exp2(global0.c)))))), firstLeadingBit(~min(12521u, select(4294967295u, 0u, global0.a.x))));
    let var_0 = u_input.a.x;
    global1 = 15783i;
    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(901f + 1536f), global0.c.x), Struct_1(!vec3<bool>(global0.a.x, false, global0.a.x), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1032f, global0.c.x, -633f)), global0.c, vec3<bool>(global0.b, false, global0.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(868f, global0.c.x, global0.c.x), global0.c)))), Struct_1(global0.a, false, global0.c));
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(-19145i), reverseBits(_wgslsmith_mult_i32(var_0, u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(32099i, 54968i, var_0), vec3<i32>(-2147483647i, u_input.b, var_0)), _wgslsmith_add_vec3_i32(u_input.a.yzx, u_input.a.zzx)), var_0)), u_input.a.xzy);
    let var_2 = _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(f32(-1f) * -178f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(~7354u)), ~32330u, ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~max(vec2<u32>(1u, 0u), vec2<u32>(110072u, 50536u))), ~0u >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(3042u, 4294967295u, 92367u), vec3<u32>(9400u, 1u, 28521u)), max(vec3<u32>(1u, 109683u, 4294967295u), vec3<u32>(66756u, 0u, 0u))), 38920u) % 32u));
}

