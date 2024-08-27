struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<f32> {
    global0 = array<bool, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1277f, -385f) - _wgslsmith_f_op_f32(-599f - 203f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f * 895f))), -2402f));
    let var_1 = global0[_wgslsmith_index_u32(22952u, 18u)];
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = array<bool, 18>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -288f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-812f * 655f))))) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))) + 1f) + -754f), _wgslsmith_f_op_f32(-var_0.x));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> i32 {
    let var_0 = countOneBits(0i & (_wgslsmith_div_i32(max(14981i, u_input.b), max(arg_1, arg_1)) & (arg_1 << (1u % 32u))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f - -1664f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1830f, 852f)) + 678f), -1779f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-370f * 941f)))) - _wgslsmith_f_op_vec4_f32(func_3())), vec3<u32>(~u_input.a, 31215u, 0u ^ arg_0.e), vec2<bool>(!(!any(arg_0.a.b)), all(vec3<bool>(true, all(vec4<bool>(arg_3.c.x, false, true, global0[_wgslsmith_index_u32(arg_3.e, 18u)])), true))), -_wgslsmith_add_i32(10576i, arg_1));
    let var_2 = !select(arg_0.c, !select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_3.e, 18u)], var_1.c.x, var_1.c.x), arg_3.a.b.zxz, vec3<bool>(arg_0.a.b.x, true, arg_2)), vec3<bool>(var_1.c.x, true, arg_0.b), select(arg_3.a.b.wxz, arg_0.a.b.wxw, true)), true & global0[_wgslsmith_index_u32(abs(arg_0.e), 18u)]);
    var var_3 = firstLeadingBit(arg_0.d) & ~_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(0i), min(arg_3.a.a, 2147483647i)), firstTrailingBit(vec2<i32>(var_0, u_input.b)));
    global0 = array<bool, 18>();
    return 0i;
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 18>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, func_2(Struct_3(Struct_1(u_input.b, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 18u)])), global0[_wgslsmith_index_u32(19819u, 18u)], vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec2<i32>(-1210i, u_input.b), 43696u), 42309i, false, Struct_3(Struct_1(u_input.b, vec4<bool>(global0[_wgslsmith_index_u32(32294u, 18u)], false, global0[_wgslsmith_index_u32(10043u, 18u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], false)), global0[_wgslsmith_index_u32(u_input.a, 18u)], vec3<bool>(global0[_wgslsmith_index_u32(0u, 18u)], false, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<i32>(u_input.b, 2147483647i), 3271u)), 26994i, firstTrailingBit(-17016i)), countOneBits(vec4<i32>(1i, u_input.b << (3883u % 32u), -1i, max(1i, u_input.b)))), func_2(Struct_3(Struct_1(-42891i, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(53678u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(26243u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)])), global0[_wgslsmith_index_u32(18560u, 18u)], vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]))), vec2<i32>(min(-1i, u_input.b), ~u_input.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 0u))), -u_input.b, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 24583u, 17143u), 18u)] & !(!global0[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_3(Struct_1(_wgslsmith_sub_i32(-1i, -80745i), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], false, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 18u)]), false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])), any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(56229u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], true), false)), !(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true, false)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, 0i))), ~4294967295u)), reverseBits(-15554i));
    let var_1 = Struct_3(Struct_1(-23845i, vec4<bool>(_wgslsmith_f_op_f32(trunc(-152f)) < _wgslsmith_f_op_f32(trunc(-1000f)), global0[_wgslsmith_index_u32(u_input.a, 18u)] && false, true, true & global0[_wgslsmith_index_u32(u_input.a >> (45736u % 32u), 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], all(vec3<bool>(global0[_wgslsmith_index_u32(17137u, 18u)], true, global0[_wgslsmith_index_u32(1u, 18u)])))), all(!vec3<bool>(false, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], false, global0[_wgslsmith_index_u32(4124u, 18u)])), global0[_wgslsmith_index_u32(4294967295u, 18u)])), vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(83990u, u_input.a)) | u_input.a, 18u)], u_input.b != 0i, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(34978u, 0u)), ~vec2<u32>(21978u, 52665u)), 18u)]), vec2<i32>(1i, -1i), _wgslsmith_mod_u32(8788u, ~1u));
    let var_2 = Struct_2(!vec3<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false)), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 18u)]), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-160f, -197f, 1000f), vec3<f32>(-1000f, 1000f, -251f), vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.e, 18u)], false))), vec3<f32>(700f, -520f, 1000f), var_1.a.b.zwx)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(383f, -934f, 367f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(464f, 561f, 238f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2648f, 305f, 173f) - vec3<f32>(475f, -417f, 305f))))), Struct_1(-34328i, vec4<bool>(select(any(vec2<bool>(false, true)), !global0[_wgslsmith_index_u32(0u, 18u)], true), !any(vec3<bool>(global0[_wgslsmith_index_u32(18481u, 18u)], global0[_wgslsmith_index_u32(47408u, 18u)], true)), true, !(global0[_wgslsmith_index_u32(2964u, 18u)] && var_1.b)), var_1.a.b.ww), Struct_1(u_input.b, !var_1.a.b, var_1.a.c));
    global0 = array<bool, 18>();
    return StorageBuffer(var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -32921i;
    let x = u_input.a;
    s_output = func_1();
}

