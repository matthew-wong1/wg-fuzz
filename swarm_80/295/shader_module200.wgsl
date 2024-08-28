struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<f32>(1203f, _wgslsmith_f_op_f32(1628f * -1638f));
    var var_1 = arg_1.b;
    let var_2 = ~(~vec3<u32>(u_input.a.x & 0u, arg_1.a.x, 1826u));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -220f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-103f, -517f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -208f)) + vec2<f32>(-1402f, var_0.x)) * vec2<f32>(1f, 1f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)));
}

fn func_2() -> vec2<u32> {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_div_vec3_u32(u_input.a.xxz, u_input.a.yzy);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(711f, 483f))), _wgslsmith_f_op_f32(func_3(u_input.d.zxx, Struct_2(var_1 << (var_1 % vec3<u32>(32u)), Struct_1(var_0), Struct_1(var_0), u_input.b.x, Struct_1(var_0)))), _wgslsmith_add_u32(54999u, _wgslsmith_mult_u32(var_1.x, u_input.a.x)) != abs(var_1.x | var_1.x))) - -1499f);
    let var_2 = Struct_2(vec3<u32>(u_input.a.x ^ 4294967295u, _wgslsmith_mult_u32(~select(54520u, u_input.c, true), min(u_input.c ^ var_1.x, u_input.a.x)), _wgslsmith_div_u32(~1u, 78810u)), Struct_1(var_0), Struct_1(!(!(!var_0))), -43535i, Struct_1(select(select(var_0, select(var_0, var_0, true), true), vec3<bool>(var_0.x | var_0.x, var_0.x, true), vec3<bool>(true, true, true))));
    global0 = 1014f;
    return u_input.a.yz;
}

fn func_1() -> f32 {
    let var_0 = ~func_2() & (u_input.a.wy >> (min(vec2<u32>(~u_input.c, reverseBits(0u)), ~u_input.a.yw) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(-u_input.d.x, 21899i, u_input.b.x), Struct_2(_wgslsmith_mod_vec3_u32(u_input.a.zxy, vec3<u32>(1u, 0u, u_input.c)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), _wgslsmith_mod_i32(-1i, u_input.d.x), Struct_1(vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(217f * _wgslsmith_f_op_f32(ceil(196f))))))));
    let var_2 = Struct_1(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true));
    global0 = var_1.x;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -411f)));
    return var_1.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 1u)) << (1u % 32u), _wgslsmith_div_u32(countOneBits(select(1u, 1u, false)), u_input.a.x), 34695u), arg_1, arg_1, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.d, reverseBits(vec4<i32>(0i, u_input.d.x, u_input.b.x, u_input.d.x)))), ~u_input.b.x, -15743i), arg_1);
    var var_1 = Struct_3(select(!select(arg_2, select(arg_2, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2), any(vec4<bool>(arg_1.a.x, arg_1.a.x, var_0.b.a.x, arg_1.a.x))), !arg_2, var_0.e.a.x), Struct_2(var_0.a, Struct_1(vec3<bool>(false, all(vec3<bool>(arg_2.x, var_0.c.a.x, arg_2.x)), true)), var_0.b, 1i, Struct_1(vec3<bool>(true, var_0.e.a.x, false))), u_input.d.x, Struct_1(!vec3<bool>(all(var_0.c.a.xz), true, true)));
    let var_2 = Struct_3(vec4<bool>(all(!arg_1.a) || (countOneBits(var_0.d) <= -9899i), !all(vec2<bool>(false, arg_2.x)) || !select(var_0.e.a.x, false, var_1.d.a.x), !all(vec2<bool>(true, var_0.c.a.x)), arg_2.x | (_wgslsmith_f_op_f32(select(396f, arg_0.x, arg_2.x)) != _wgslsmith_f_op_f32(f32(-1f) * -727f))), Struct_2(reverseBits(u_input.a.yzy), Struct_1(select(arg_2.zxy, select(vec3<bool>(true, true, var_0.b.a.x), vec3<bool>(true, arg_2.x, false), arg_1.a.x), vec3<bool>(true, true, arg_1.a.x))), var_0.b, ~abs(_wgslsmith_clamp_i32(0i, 2147483647i, var_1.c)), Struct_1(select(!var_1.d.a, select(var_0.c.a, vec3<bool>(arg_2.x, arg_1.a.x, arg_1.a.x), false), vec3<bool>(var_1.d.a.x, true, false)))), 1i, arg_1);
    var_0 = Struct_2(~(~_wgslsmith_div_vec3_u32(var_2.b.a, ~vec3<u32>(var_1.b.a.x, var_1.b.a.x, 18659u))), var_1.b.b, Struct_1(!select(select(arg_2.xxy, vec3<bool>(arg_2.x, var_1.b.b.a.x, var_1.a.x), vec3<bool>(false, var_0.c.a.x, var_1.a.x)), !vec3<bool>(var_0.c.a.x, arg_1.a.x, true), any(arg_2.yx))), countOneBits(~u_input.b.x), var_2.d);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-u_input.b.yyy << (select(vec3<u32>(u_input.c, var_0.a.x, 23487u), vec3<u32>(4294967295u, var_2.b.a.x, var_2.b.a.x), vec3<bool>(var_2.d.a.x, arg_1.a.x, arg_1.a.x)) % vec3<u32>(32u)), Struct_2(~var_2.b.a, Struct_1(arg_2.zww), Struct_1(vec3<bool>(true, false, var_1.d.a.x)), abs(var_0.d), Struct_1(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 190f) * _wgslsmith_f_op_f32(sign(arg_3.x)))))));
    return select(arg_1.a, var_1.d.a, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1173f;
    var var_0 = true;
    let var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(581f)) - _wgslsmith_f_op_f32(f32(-1f) * -208f)))), _wgslsmith_f_op_f32(-212f + 292f)), Struct_1(vec3<bool>(true, !(1u != u_input.c), any(vec3<bool>(true, false, true)))), vec4<bool>(true, true, any(vec4<bool>(28739u != u_input.a.x, true, false, true)), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1400f)), _wgslsmith_f_op_f32(f32(-1f) * -1708f), -1076f, _wgslsmith_f_op_f32(sign(-341f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_2 = vec3<bool>(true, !((_wgslsmith_add_i32(u_input.d.x, u_input.d.x) <= _wgslsmith_dot_vec4_i32(vec4<i32>(31624i, -31785i, 6104i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.b.x, u_input.b.x, 16720i))) && !var_1.x), !any(var_1.yy));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1988f))), 304f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(reverseBits(83730u), u_input.a.x), 161i, ~(~u_input.a.x), -13340i);
}

