struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    var var_0 = !vec4<bool>(u_input.b.x >= ~_wgslsmith_add_u32(u_input.a.x, 24707u), !any(select(vec4<bool>(arg_2, arg_0.b, arg_2, arg_0.b), vec4<bool>(arg_0.b, true, false, false), arg_0.b)), global1.b, u_input.b.x <= _wgslsmith_sub_u32(abs(u_input.b.x), 4294967295u));
    var var_1 = arg_0;
    global2 = !(arg_0.c.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-681f, _wgslsmith_f_op_f32(-var_1.c.x))))));
    var_0 = vec4<bool>(true, true, true, true);
    var var_2 = Struct_1(-3990i >> (u_input.b.x % 32u), !(arg_0.b & false), _wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_div_vec3_i32(arg_0.d, arg_0.d));
    return _wgslsmith_f_op_f32(ceil(-566f));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(1i, true, _wgslsmith_f_op_vec2_f32(-global1.c), ~global1.d), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -671f, global1.c.x, 598f) - vec4<f32>(-1226f, global1.c.x, global1.c.x, global1.c.x)))), global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.x))) - _wgslsmith_f_op_f32(-765f - _wgslsmith_f_op_f32(global1.c.x - 109f))))) + global1.c.x);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1229f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, global1.c.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.x - global1.c.x), -405f, true)))) + -939f);
    var var_1 = select(select(vec3<bool>(all(vec4<bool>(global1.b, true, true, global1.b)), !global1.b | global1.b, true | (u_input.a.x < u_input.b.x)), vec3<bool>(global1.b, firstTrailingBit(-63526i) >= ~23111i, any(vec4<bool>(true, true, global1.b, true))), vec3<bool>(global1.b, !(global1.b & true), true)), vec3<bool>(all(!vec3<bool>(global1.b, true, true)), !(!(true | global1.b)), true), vec3<bool>(all(select(!vec3<bool>(global1.b, global1.b, true), !vec3<bool>(global1.b, false, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c.x, 653f, global1.b)) * -1318f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), global1.b));
    var var_2 = arg_1.yx << (u_input.b % vec2<u32>(32u));
    return u_input.c;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global0 = array<vec2<bool>, 27>();
    return vec3<i32>(_wgslsmith_div_i32(global1.a, max(~func_2(global1.d.xz, vec3<i32>(u_input.c, 0i, 1i), 2147483647i), u_input.c)), u_input.c, u_input.c);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(~u_input.d, u_input.b.x)), ~u_input.a.yz);
    let var_2 = arg_3;
    global0 = array<vec2<bool>, 27>();
    let var_3 = !select(select(vec3<bool>(all(vec3<bool>(arg_3.b, arg_1.b, arg_2.b)), !arg_3.b, arg_1.b), vec3<bool>(arg_3.b | var_2.b, !global1.b, false), select(true, true, false)), vec3<bool>(true, arg_3.b != true, true), true);
    return Struct_1(var_0.d.x, any(select(var_3, !(!vec3<bool>(global1.b, arg_2.b, var_2.b)), select(var_3, select(var_3, var_3, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-global1.c), func_1(_wgslsmith_f_op_f32(round(arg_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = -(vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, global1.d.x, global1.d.x, u_input.c)));
    var var_2 = func_4(-9489i, Struct_1(2147483647i << ((~44220u ^ _wgslsmith_div_u32(var_0, u_input.d)) % 32u), any(!(!vec3<bool>(true, global1.b, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global1.c.x) * global1.c)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(510f, global1.c.x), global1.c)))), func_1(global1.c.x)), Struct_1(1i, !global1.b, global1.c, _wgslsmith_mult_vec3_i32(var_1.wyy, (global1.d ^ var_1.wxw) ^ vec3<i32>(global1.a, 11747i, -2147483647i))), Struct_1(2147483647i, -1000f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -868f))), _wgslsmith_f_op_vec2_f32(abs(global1.c)), abs(-var_1.www << (~vec3<u32>(var_0, var_0, 10801u) % vec3<u32>(32u)))));
    global0 = array<vec2<bool>, 27>();
    let var_3 = ~u_input.a.zx;
    var var_4 = func_4(var_1.x, Struct_1(-u_input.c, global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c + _wgslsmith_div_vec2_f32(vec2<f32>(1891f, -183f), vec2<f32>(global1.c.x, -1225f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, -539f))), vec3<i32>(-global1.d.x, select(var_2.d.x, global1.d.x, false) << (reverseBits(var_3.x) % 32u), ~(~(-29962i)))), Struct_1(7550i, global1.b, _wgslsmith_f_op_vec2_f32(global1.c - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c), func_4(var_2.a, Struct_1(-26524i, var_2.b, global1.c, var_1.zzy), Struct_1(26584i, global1.b, var_2.c, global1.d), Struct_1(-1i, false, var_2.c, var_2.d)).c)), countOneBits(-max(var_1.wyw, var_2.d))), Struct_1(i32(-1i) * -39500i, false, global1.c, vec3<i32>(-50563i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.x, 1i, var_2.a), var_1.ywz), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(19805u), u_input.a, reverseBits(var_3.x));
}

