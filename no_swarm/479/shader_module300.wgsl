struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: u32;

var<private> global2: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    global1 = u_input.c;
    let var_0 = u_input.a.xz;
    return u_input.c != ~u_input.c;
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<u32>, 26>();
    global1 = _wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_mult_u32(u_input.c, u_input.b.x) | ~u_input.b.x, u_input.b.x, u_input.c)));
    let var_0 = _wgslsmith_sub_i32(~(-(~17254i)), min(_wgslsmith_sub_i32(~(13403i >> (u_input.b.x % 32u)), max(u_input.a.x << (0u % 32u), min(u_input.a.x, 56591i))), -u_input.a.x));
    var var_1 = Struct_3(Struct_1(vec2<bool>(!func_3(), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1095f, 689f), _wgslsmith_f_op_f32(f32(-1f) * -1255f))))));
    return Struct_3(Struct_1(var_1.a.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec3<i32>) -> i32 {
    global2 = false;
    let var_0 = vec2<i32>(u_input.a.x, -1i);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1196f - _wgslsmith_f_op_f32(floor(arg_0.c.x))), 355f);
    global1 = 16511u;
    let var_2 = vec2<u32>(u_input.b.x, ~1u);
    return _wgslsmith_sub_i32(arg_2.x, -1i | u_input.a.x);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>) -> vec4<f32> {
    global1 = 0u;
    let var_0 = Struct_5(vec3<f32>(_wgslsmith_div_f32(-348f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1070f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f - 2842f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(682f)) - _wgslsmith_f_op_f32(f32(-1f) * -322f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-923f, var_0.a.x)))))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.xy)))), _wgslsmith_f_op_vec2_f32(var_0.a.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_1.a.x), vec2<f32>(603f, var_1.a.x)))))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-772f, var_0.a.x, -289f, -539f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_0.a.x, var_1.a.x, -560f), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_1.a.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1780f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_0.a.x) - var_1.a.x), var_1.a.x, 270f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1362f, 292f, -674f, var_0.a.x), vec4<f32>(var_1.a.x, 205f, -1000f, var_0.a.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(579f, var_0.a.x, var_0.a.x, -967f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 690f, 121f))))))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), any(vec2<bool>(true, false))), vec4<bool>(true, true, func_3(), false), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, true))));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(~(-21442i), select(u_input.a.yz, vec2<i32>(u_input.a.x, func_4(Struct_2(global0[_wgslsmith_index_u32(18515u, 26u)], Struct_1(vec2<bool>(false, true)), vec2<f32>(-593f, -1288f), vec2<bool>(true, true)), func_2(), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), u_input.a)), _wgslsmith_mod_i32(1i, 1i) < u_input.a.x)));
    global0 = array<vec2<u32>, 26>();
    global2 = abs(_wgslsmith_div_i32(2147483647i, func_4(Struct_2(global0[_wgslsmith_index_u32(72302u, 26u)], Struct_1(vec2<bool>(false, false)), var_0.xx, vec2<bool>(false, true)), Struct_3(Struct_1(vec2<bool>(true, false))), vec4<i32>(-1i, -77332i, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.c, 1u, 27243u, u_input.b.x) % vec4<u32>(32u)), abs(u_input.a)))) >= u_input.a.x;
    var var_1 = Struct_3(Struct_1(vec2<bool>(true, true)));
    var var_2 = var_0;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec4_f32(func_5(u_input.a.x, u_input.a.xy)).x));
}

fn func_6(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.x, 1186f), _wgslsmith_f_op_f32(min(arg_0.a.x, 164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(500f, -1357f, true))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))), _wgslsmith_f_op_f32(-arg_0.a.x))));
    global1 = 0u;
    let var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(_wgslsmith_clamp_i32(18090i, u_input.a.x, -2147483647i), ~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -1i))), ~_wgslsmith_clamp_vec3_i32(select(min(u_input.a, vec3<i32>(u_input.a.x, 1i, u_input.a.x)), vec3<i32>(u_input.a.x, -1i, u_input.a.x), true), -u_input.a, u_input.a));
    global0 = array<vec2<u32>, 26>();
    global1 = ~(~1u);
    return ~max(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 76635u), ~min(~u_input.b.x, 0u << (u_input.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    global0 = array<vec2<u32>, 26>();
    global1 = func_6(func_1());
    var var_0 = Struct_1(func_2().a.a);
    let var_1 = func_1();
    global0 = array<vec2<u32>, 26>();
    let var_2 = Struct_3(Struct_1(var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, u_input.a.x), 1u);
}

