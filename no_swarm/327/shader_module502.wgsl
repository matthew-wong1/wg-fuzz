struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -10183i;

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 4294967295u);

var<private> global2: Struct_1 = Struct_1(23020i);

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(376f)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(floor(arg_1.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x))), arg_1.b, _wgslsmith_f_op_f32(-1000f + -667f));
    let var_1 = arg_1;
    let var_2 = select(select(false, true, true) && false, false, true);
    let var_3 = var_1.e;
    let var_4 = ~(12620u | global1.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -951f)), arg_1.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    global3 = ~u_input.d;
    global3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 12011i, global2.a), u_input.d), ~global2.a, u_input.d.x, _wgslsmith_mult_i32(-1i, -46542i)), vec4<i32>(_wgslsmith_mod_i32(-1i, -8699i), global3.x << (1u % 32u), abs(-2147483647i), countOneBits(global2.a))), -35594i, -1i);
    global0 = -(~global3.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1155f - _wgslsmith_f_op_f32(func_3(~global1.yx, Struct_2(vec3<f32>(176f, -848f, 151f), 1265f, global1.zx, Struct_1(16083i), arg_0), Struct_1(global2.a), arg_0))))));
    let var_1 = ~u_input.b.x;
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b.yyz;
    let var_1 = _wgslsmith_f_op_f32(step(-634f, 1000f));
    let var_2 = ~reverseBits(~(~(~global1.zx)));
    let var_3 = !(!vec3<bool>(!all(vec4<bool>(true, false, true, true)), (-38992i << (global1.x % 32u)) < _wgslsmith_clamp_i32(-5651i, u_input.d.x, global3.x), func_2(Struct_1(-25104i), 1u > var_2.x)));
    global1 = firstLeadingBit(~vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(1u), global1.x), ~(~0u), var_0.x));
    return Struct_1(u_input.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -2336f)), -1141f), arg_2, global1.xz, arg_0, Struct_1(global2.a)));
    var var_1 = firstLeadingBit(1u);
    global0 = select(reverseBits(_wgslsmith_div_i32(_wgslsmith_add_i32(18116i, -2147483647i), ~(-42351i))), _wgslsmith_mult_i32(abs(global3.x), ~global2.a), any(vec3<bool>(false, false, false)) & false) >> (global1.x % 32u);
    var var_2 = 4294967295u;
    let var_3 = firstLeadingBit(-_wgslsmith_add_i32(3199i, ~_wgslsmith_mod_i32(-1i, 37116i)));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(280f, arg_2, var_0.a.a.x), _wgslsmith_f_op_vec3_f32(step(var_0.a.a, vec3<f32>(657f, arg_2, arg_2)))), var_0.a.a, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), vec2<u32>(countOneBits(var_0.a.c.x), ~u_input.c.x), Struct_1(countOneBits(abs(u_input.a.x))), func_1()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(20842u, 1u, u_input.b.x));
    var var_1 = func_4(func_1(), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(7629u, global1.x))), 4294967295u) & _wgslsmith_div_u32(max(u_input.b.x, 1u), 18082u), _wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -768f), true)))));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(global3.x, 12022i), 2147483647i, _wgslsmith_div_i32(global3.x, 37279i), global3.x);
    let var_3 = func_4(Struct_1(abs(var_1.a.e.a)), ~_wgslsmith_mult_u32(var_1.a.c.x, var_1.a.c.x) >> (var_0.x % 32u), var_1.a.b);
    let var_4 = !vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.c.x, 4294967295u, var_1.a.c.x), min(u_input.b.zyy, vec3<u32>(47141u, global1.x, global1.x))) > var_1.a.c.x, var_3.a.a.x <= _wgslsmith_f_op_f32(min(770f, var_1.a.b)));
    let var_5 = _wgslsmith_f_op_f32(ceil(var_1.a.a.x));
    let var_6 = !vec4<bool>(var_4.x, var_3.a.b != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a.x)), true, var_2.x >= var_3.a.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-2147483647i) >> (var_1.a.c.x % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1163f, _wgslsmith_f_op_f32(var_5 - var_3.a.b), var_3.a.b, var_1.a.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, var_1.a.a.x, var_1.a.b, -563f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-470f, var_1.a.b, -839f, var_3.a.b), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.b, 1437f, 1299f, var_1.a.a.x), vec4<f32>(-519f, var_5, -321f, -427f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, var_5, var_5, var_3.a.a.x))), !var_4.x))), vec4<u32>(~0u, countOneBits(select(1u, var_0.x, false)), 1u, _wgslsmith_mod_u32(~11283u, var_1.a.c.x)) >> (~u_input.c % vec4<u32>(32u)), -1091f);
}

