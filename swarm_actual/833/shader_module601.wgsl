struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = arg_1.b.yy;
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var_0 = 0i;
    return arg_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_1.a.a), !arg_0.b, 1036f);
    var_0 = global0[_wgslsmith_index_u32(abs(max(4294967295u, _wgslsmith_div_u32(u_input.b.x, global1.x))), 30u)];
    let var_1 = Struct_1(firstTrailingBit(4294967295u));
    let var_2 = ~(~(~vec3<i32>(-1i, u_input.c & u_input.c, _wgslsmith_sub_i32(-2147483647i, u_input.a))));
    let var_3 = !((_wgslsmith_div_i32(-1596i, reverseBits(u_input.c)) < -24584i) & (var_0.a.a >= ~_wgslsmith_div_u32(1u, 1u)));
    return func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(min(arg_0.c, 554f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(820f, 792f), vec2<f32>(arg_1.c, -475f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, 215f)), vec2<f32>(-1255f, -217f)))), global0[_wgslsmith_index_u32(select(~arg_1.a.a, reverseBits(select(~0u, arg_0.a.a | arg_0.a.a, all(arg_0.b))), true || all(vec4<bool>(false, var_3, true, var_0.b.x))), 30u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -1979f));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-978f)))) * var_0)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 402f, 441f), vec3<f32>(-2767f, arg_2.x, var_0))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 474f) + vec3<f32>(var_0, 881f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, var_0, 457f) * vec3<f32>(271f, var_0, -738f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_2.x, var_0)))));
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1025f, arg_1.c))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-824f)), arg_2)), Struct_2(Struct_1(78725u), vec3<bool>(arg_1.b.x, true, all(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))), arg_2)).a << (~_wgslsmith_dot_vec3_u32(select(vec3<u32>(61069u, 53984u, 4294967295u), abs(u_input.b.zwz), arg_1.b.x), u_input.b.xyx) % 32u), 30u)];
    var var_1 = global0[_wgslsmith_index_u32(var_0.a.a, 30u)];
    global0 = array<Struct_2, 30>();
    var_1 = Struct_2(arg_1.a, vec3<bool>(select(true, u_input.c >= u_input.c, any(vec3<bool>(arg_1.b.x, var_1.b.x, arg_1.b.x))) & (_wgslsmith_f_op_f32(floor(var_0.c)) <= _wgslsmith_f_op_f32(max(arg_2, var_0.c))), false, any(!(!var_0.b.xx))), _wgslsmith_f_op_f32(step(-1301f, var_1.c)));
    var var_2 = u_input.b.x;
    return Struct_1(countOneBits(var_1.a.a));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = !(_wgslsmith_mod_u32(~8551u >> (u_input.d.x % 32u), arg_0.a << (~arg_1.a % 32u)) != arg_1.a);
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-774f + 631f))))), -247f);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, 749f)) * _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-632f, _wgslsmith_div_f32(var_1.x, var_1.x), var_0 && var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(802f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(var_1.x + var_1.x)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(906f, 132f, var_0)))), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1736f), -1000f)));
    let var_3 = Struct_2(func_3(Struct_2(Struct_1(firstTrailingBit(32756u)), vec3<bool>(var_0, 0u != global1.x, var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-596f * var_2.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a, arg_1.a, global1.x), ~_wgslsmith_mod_vec3_u32(u_input.d, u_input.b.wyz)), 30u)], _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(44710i, firstLeadingBit(u_input.a), 2147483647i)), var_1.x), vec3<bool>(false, false && select(any(vec3<bool>(var_0, var_0, var_0)), true, true), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -560f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_2.x)))), var_0)) - 2324f));
    return select(var_3.b, !select(var_3.b, var_3.b, !vec3<bool>(var_0, var_0, var_3.b.x)), any(select(!vec2<bool>(var_3.b.x, true), vec2<bool>(all(vec4<bool>(false, true, true, true)), var_0), vec2<bool>(var_0, any(vec4<bool>(true, false, var_3.b.x, var_3.b.x))))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global1 = _wgslsmith_clamp_vec2_u32(u_input.d.zz & _wgslsmith_mult_vec2_u32(arg_0.zx, vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(u_input.d.x, 63u, u_input.b.x))), abs(vec2<u32>(67757u, u_input.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.x), ~u_input.d.xy));
    var var_0 = ~arg_0;
    global1 = _wgslsmith_div_vec2_u32(arg_0.xz, arg_0.yy);
    let var_1 = func_6(Struct_1(0u), func_5(global1.x, Struct_2(func_4(func_2(vec2<f32>(-495f, -626f), Struct_2(Struct_1(1u), vec3<bool>(true, false, true), 277f)), func_3(Struct_2(Struct_1(1u), vec3<bool>(true, false, false), 1228f), global0[_wgslsmith_index_u32(arg_0.x, 30u)], u_input.e, 728f), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 181f), vec2<f32>(1542f, -1587f))), vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -712f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(170f, -962f) * _wgslsmith_f_op_f32(floor(-1129f)))))));
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 740f)) + 2967f), -180f), Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, -161f)), Struct_2(Struct_1(0u), var_1, -463f)).a), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, -1413f, var_1.x)), -151f)))));
    return func_5(_wgslsmith_dot_vec2_u32(countOneBits(arg_0.xx), var_0.xx), Struct_2(var_2, vec3<bool>(!all(var_1.yy), !func_6(Struct_1(4294967295u), Struct_1(4049u)).x, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(846f, -2168f)), _wgslsmith_f_op_f32(floor(-372f)), var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-924f, -2514f)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(~4294967295u, func_1(vec3<u32>(~_wgslsmith_mod_u32(u_input.d.x, 19792u), 0u, u_input.d.x)));
    let var_0 = select(~vec2<u32>(4294967295u >> ((44457u ^ u_input.b.x) % 32u), global1.x), reverseBits(vec2<u32>(~global1.x, ~global1.x) ^ vec2<u32>(~0u, ~1222u)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    global1 = u_input.d.zx;
    global0 = array<Struct_2, 30>();
    let var_1 = func_4(Struct_1(15636u << ((_wgslsmith_sub_u32(var_0.x, var_0.x) ^ global1.x) % 32u)), func_4(func_3(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(abs(~u_input.d.x), 30u)], _wgslsmith_dot_vec3_i32(vec3<i32>(42560i, -12124i, 1i) ^ vec3<i32>(u_input.e, u_input.e, 2147483647i), vec3<i32>(1i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-105f + _wgslsmith_f_op_f32(-422f + -520f))), Struct_1(~_wgslsmith_add_u32(global1.x, global1.x)), vec2<f32>(-906f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(546f, -1571f))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -977f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1912f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1640f) * _wgslsmith_div_f32(-609f, -941f)) * -428f)));
    var var_2 = all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, true)))) || true;
    global1 = select(vec2<u32>(var_1.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 162357u, 9290u, var_1.a), u_input.b)), u_input.d.yz, u_input.c > ~_wgslsmith_mult_i32(-2147483647i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f + -1657f)), 162f)), reverseBits(80752u), ~(var_1.a | 4294967295u), var_0.x);
}

