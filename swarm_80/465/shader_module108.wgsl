struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: bool;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 9>;

var<private> global4: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    global0 = max(15511i, u_input.a);
    var var_0 = !arg_1.b.x;
    let var_1 = !all(select(select(!vec2<bool>(arg_1.b.x, arg_1.b.x), select(vec2<bool>(false, arg_1.b.x), vec2<bool>(true, true), arg_1.b.x), !vec2<bool>(true, arg_1.b.x)), vec2<bool>(arg_1.b.x, all(arg_1.b)), !arg_1.b.ww));
    global4 = ~(~countOneBits(select(10855u, 1u, var_1) & ~1u));
    var_0 = true;
    return vec2<bool>(select(var_1, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.a, arg_1.a, true)))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(560f, arg_1.a, arg_1.b.x)), arg_1.a, arg_1.b.x))), var_1);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a)) - _wgslsmith_f_op_f32(ceil(arg_2.x))) + -1192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1141f + arg_1.c.a))))));
    global3 = array<Struct_2, 9>();
    var var_1 = arg_1.a;
    global2 = vec3<i32>(6507i, abs(-(u_input.a | global2.x)) ^ 0i, _wgslsmith_mult_i32(abs(global2.x), u_input.a));
    let var_2 = vec4<bool>(arg_0.x, arg_1.a, true, !arg_0.x);
    return abs(abs(~(vec4<u32>(arg_1.b.x, arg_1.b.x, 21680u, arg_1.b.x) | arg_1.b)));
}

fn func_2() -> u32 {
    var var_0 = Struct_3(true & any(vec3<bool>(false, true, any(vec2<bool>(false, true)))), vec4<u32>(1u, 1u, 1u, 1u) ^ func_4(!func_3(global3[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(-560f, vec4<bool>(true, true, true, true))), Struct_3(true, firstTrailingBit(vec4<u32>(852u, 55396u, 0u, 0u)), Struct_2(780f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(507f, 1105f, 199f, 1089f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-285f, -484f, 919f, 1573f) * vec4<f32>(183f, 1149f, 925f, 1000f)), vec4<bool>(true, true, true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1522f + _wgslsmith_f_op_f32(floor(var_0.c.a))), var_0.c.a, var_0.c.a, _wgslsmith_f_op_f32(min(var_0.c.a, _wgslsmith_f_op_f32(var_0.c.a + var_0.c.a))))));
    var var_2 = ~var_0.b;
    var var_3 = var_2.x;
    global0 = -2147483647i;
    return _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), _wgslsmith_mult_vec2_u32(var_2.wy, var_0.b.zx))), 0u);
}

fn func_1() -> f32 {
    var var_0 = abs(~(~(~firstTrailingBit(vec3<u32>(70378u, 9549u, 1u)))));
    global2 = _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, ~(~(-1i)), global2.x), -vec3<i32>(global2.x, _wgslsmith_mult_i32(min(16021i, global2.x), u_input.a << (0u % 32u)), ~(-10413i)));
    let var_1 = global3[_wgslsmith_index_u32(func_2(), 9u)];
    var var_2 = _wgslsmith_div_vec3_i32(~min(~(~vec3<i32>(u_input.a, -46716i, 0i)), -vec3<i32>(1i, -41337i, -7851i)), max(~(vec3<i32>(global2.x, global2.x, 40095i) ^ select(vec3<i32>(-2147483647i, 0i, u_input.a), vec3<i32>(global2.x, global2.x, 0i), vec3<bool>(true, false, false))), vec3<i32>(_wgslsmith_div_i32(u_input.a, 46352i) << (~0u % 32u), _wgslsmith_mult_i32(~global2.x, countOneBits(2147483647i)), ~select(2147483647i, 13546i, true))));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(_wgslsmith_sub_u32(select(4294967295u, var_0.x, false), 36091u), select(_wgslsmith_mult_u32(48612u, 55435u), firstTrailingBit(var_0.x), true)), reverseBits(var_0.x), var_0.x), vec3<u32>(reverseBits(~(~var_0.x)), var_0.x, ~(~min(78292u, 0u))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, 4294967295u, 44244u)), var_0.x, ~1u) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u)), ~(~(~vec3<u32>(var_0.x, var_0.x, 4294967295u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1054f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1376f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), 1411f, any(vec3<bool>(true, false, false))))), 1315f)));
    var var_1 = 25317i;
    let var_2 = -1094f;
    let var_3 = max(~(~_wgslsmith_div_u32(4294967295u, ~9145u)), 4294967295u);
    var var_4 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), false), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), (any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) & (false != select(false, true, false))) & any(vec2<bool>(global2.x > -2147483647i, true)));
    let var_5 = Struct_3(false, vec4<u32>(1u, var_3, _wgslsmith_mult_u32(4294967295u, ~var_3) << (~4294967295u % 32u), var_3), Struct_2(var_2));
    global3 = array<Struct_2, 9>();
    var var_6 = var_5.c;
    var var_7 = Struct_1(807f, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_5.a, false), !vec4<bool>(false, false, true, var_5.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.xx, vec3<i32>(20439i, abs(-(2147483647i | u_input.a)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.x), vec2<i32>(global2.x, u_input.a)), ~(-34340i))), -1720f, _wgslsmith_mod_u32(4294967295u, ~var_3), abs(global2.x));
}

