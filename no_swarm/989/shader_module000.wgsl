struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_3,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32 = 43517u;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_u32(~u_input.c.zyw, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b.x) << (u_input.b % vec3<u32>(32u)), ~vec3<u32>(43275u, 1u, u_input.c.x))), !all(global2[_wgslsmith_index_u32(16289u, 27u)]) & true), 4294967295u);
    var_0 = Struct_5(var_0.a, max(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.a.b, 1u, 0u, u_input.b.x)), var_0.b));
    global1 = 1u;
    let var_1 = (firstTrailingBit(vec3<u32>(var_0.a.b, 2975u, 87798u) & vec3<u32>(4294967295u, 37809u, 4294967295u)) >> (u_input.b % vec3<u32>(32u))) >> (countOneBits(abs(_wgslsmith_add_vec3_u32(u_input.c.wwy, ~u_input.c.yyz))) % vec3<u32>(32u));
    let var_2 = select(!(!var_0.a.a.xwy), vec3<bool>(true, all(!vec2<bool>(var_0.a.a.x, true)), var_0.a.c), var_0.a.a.xyy);
    return var_0.a.b;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    global0 = 1u;
    var var_0 = global3[_wgslsmith_index_u32(21783u | arg_0.b, 6u)];
    global0 = 74205u;
    var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, arg_0.b)), 6u)];
    let var_1 = u_input.b;
    return var_0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_3(any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(49067u, 11878u), 28340u), max(countOneBits(101962u), 54820u)), 27u)]), func_4(Struct_2(vec4<bool>(true, true, true, true), func_3(), true)), -(~abs(countOneBits(vec4<i32>(0i, arg_0.x, u_input.d, -2147483647i)))));
    var var_1 = ~_wgslsmith_mult_i32(u_input.d, ~_wgslsmith_mult_i32(firstLeadingBit(var_0.c.x), -arg_0.x));
    global1 = 63147u;
    var var_2 = -354f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(309f)) + _wgslsmith_f_op_f32(abs(-1608f))), 2190f)));
    var var_3 = !vec2<bool>(var_0.a, false & all(vec3<bool>(false, var_0.b.x, var_0.b.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(432f, -137f, 306f, -199f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1495f, -2039f, -1831f, 2322f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, -1111f, -1198f, -1204f)))))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    global1 = _wgslsmith_sub_u32(4294967295u, 0u);
    let var_0 = Struct_1(countOneBits(~select(u_input.a, u_input.c.x, true)) < u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-14102i, 0i), vec2<i32>(arg_0, 0i)) >> (~vec2<u32>(4235u, 54692u) % vec2<u32>(32u)), max(u_input.b, u_input.b & u_input.c.wwz))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-559f, arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)))))), -(u_input.d | -38055i), 4455u, ~u_input.c.x);
    global1 = 1u;
    global2 = array<vec2<bool>, 27>();
    var var_1 = 939f;
    return Struct_2(select(vec4<bool>(false, 1135f == _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)), var_0.a, !var_0.a), vec4<bool>(var_0.a, var_0.a, all(!vec3<bool>(var_0.a, var_0.a, var_0.a)), var_0.a), select(vec4<bool>(all(vec4<bool>(var_0.a, var_0.a, false, var_0.a)), true, true, func_4(Struct_2(vec4<bool>(false, var_0.a, var_0.a, false), 40160u, var_0.a)).x), !select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a)), true)), 4294967295u, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global3 = array<Struct_3, 6>();
    var var_1 = Struct_4(~u_input.b.zy, func_1(1i, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-210f, -2335f)))), _wgslsmith_f_op_f32(-3246f * _wgslsmith_f_op_f32(abs(-984f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-402f - -205f), 1408f, any(vec4<bool>(true, false, false, true))))), u_input.d), global3[_wgslsmith_index_u32(u_input.a, 6u)], func_1(-abs(u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -408f, -1222f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1488f, -981f, -684f) - vec3<f32>(-281f, 1000f, 2312f)), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, -1144f, -906f)))), -u_input.d).b, _wgslsmith_div_u32(func_3(), 0u));
    let var_2 = -abs(min(-44222i, 16986i));
    let var_3 = abs(_wgslsmith_clamp_vec2_i32(~var_1.c.c.ww, var_1.c.c.yy, var_1.c.c.zz)) << (var_1.a % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(1u, 1u), ~(~vec2<u32>(u_input.c.x, 84760u)), !vec2<bool>(56560u > var_1.d, func_4(Struct_2(vec4<bool>(var_1.c.b.x, var_1.b.a.x, var_1.b.a.x, true), 55039u, var_1.c.a)).x)), -217f, ~(firstLeadingBit(u_input.c.zxy) | ~u_input.b));
}

