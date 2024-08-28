struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = 0u;
    var var_0 = !all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = u_input.c;
    return countOneBits(_wgslsmith_add_u32(~(~0u), _wgslsmith_dot_vec3_u32(~u_input.a.wxy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) ^ u_input.a.x);
}

fn func_2() -> Struct_3 {
    global0 = ~u_input.a.x ^ _wgslsmith_mult_u32(abs(reverseBits(~u_input.a.x)), _wgslsmith_clamp_u32(~16939u, 21854u, u_input.a.x));
    global0 = u_input.a.x;
    global0 = 1u;
    var var_0 = Struct_1(min(func_3(~u_input.c), u_input.a.x), _wgslsmith_div_f32(-1678f, _wgslsmith_f_op_f32(trunc(1f))), vec2<bool>(all(vec4<bool>(false, false, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_1 = Struct_2(vec3<bool>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, 10823i, u_input.b.x), firstLeadingBit(u_input.b.zzy)) > _wgslsmith_div_i32(13340i >> (u_input.a.x % 32u), u_input.c >> (var_0.a % 32u)), !var_0.c.x, any(vec2<bool>(true, true))), ~_wgslsmith_div_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(1u, 29888u, var_0.a, u_input.a.x)) & vec4<u32>(76838u, 16165u, u_input.a.x, 24053u)), Struct_1(func_3(~_wgslsmith_mult_i32(u_input.c, u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)))) + -1079f), vec2<bool>(var_0.c.x, var_0.c.x)), 0u, reverseBits(u_input.b.xwx >> (~(~u_input.a.yzx) % vec3<u32>(32u))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.b - 199f)))))), vec4<bool>(false, any(vec3<bool>(!var_0.c.x, select(var_1.c.c.x, var_0.c.x, var_1.a.x), !var_0.c.x)), var_0.c.x, !var_0.c.x), u_input.a.x, Struct_1(func_3(i32(-1i) * -54807i) | 49804u, var_0.b, var_1.a.yx), var_0.c.x || !var_1.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    var var_0 = !select(select(arg_1.b.wxx, vec3<bool>(false || arg_3.a, arg_1.c >= 4294967295u, !arg_2.a), _wgslsmith_div_f32(arg_1.a, arg_1.a) >= arg_1.a), vec3<bool>(!arg_3.a, (-79336i << (1u % 32u)) < (88811i << (u_input.a.x % 32u)), false), arg_1.e);
    var var_1 = Struct_4(!(!(_wgslsmith_f_op_f32(arg_1.d.b + 936f) < _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -784f));
    var var_3 = vec4<bool>(arg_3.a, true, _wgslsmith_f_op_f32(-var_2) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(-arg_1.a)), -1953f), ~(~firstTrailingBit(arg_1.c)) != arg_1.c);
    global0 = ~(~(~79827u));
    return all(vec2<bool>(false, true));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1719f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(909f - -573f), -1548f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1889f * _wgslsmith_f_op_f32(469f + -129f))))));
    let var_1 = Struct_4(true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - 2132f)));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(select(u_input.b.zx, vec2<i32>(1573i, u_input.b.x), vec2<bool>(false, var_1.a)), _wgslsmith_add_vec2_i32(vec2<i32>(-24303i, 11005i), u_input.b.ww)), u_input.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(min(40368i, u_input.b.x), countOneBits(u_input.b.x)), u_input.b.x), -u_input.c));
    var var_4 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-750f))) - _wgslsmith_f_op_f32(f32(-1f) * -672f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f))) || (_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.a.x, 1u)), ~u_input.a.x) < ~max(firstTrailingBit(1u), u_input.a.x));
    return select(vec2<bool>(var_1.a, any(select(vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(var_1.a, true, true, true), false)) && (true && var_1.a)), select(vec2<bool>(1i < (var_3 >> (u_input.a.x % 32u)), true), vec2<bool>(true, func_4(~u_input.a.xyw, func_2(), Struct_4(var_1.a), Struct_4(var_1.a))), false), vec2<bool>(select(func_2().b.x, true, all(!vec2<bool>(var_1.a, var_1.a))), all(!vec4<bool>(var_1.a, var_1.a, true, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 679f;
    global0 = 0u >> (~(~u_input.a.x) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-876f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(149f, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -2115f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -538f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(999f, var_0)), func_1()))))));
    let var_2 = vec3<bool>(true, true, any(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))));
    global0 = ~countOneBits(50135u);
    let var_3 = Struct_4(any(var_2.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-842f + _wgslsmith_f_op_f32(var_0 * var_0)))), -_wgslsmith_clamp_i32(-u_input.c, u_input.b.x | -4674i, u_input.c), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-325f, var_0, -460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))))));
}

