struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 21>;

var<private> global2: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_2(arg_0.a, select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), true, all(vec2<bool>(true, true))), arg_0, vec2<bool>(true || all(vec2<bool>(true, false)), !(!(u_input.a.x >= u_input.a.x))));
    let var_1 = 54893u;
    global2 = var_0.b.x;
    return _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, var_0.a))));
}

fn func_2() -> bool {
    var var_0 = !select(vec2<bool>(false, true), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), true);
    let var_1 = Struct_1(1029f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1313f)), _wgslsmith_f_op_f32(1199f * 658f))) - _wgslsmith_f_op_f32(1000f * -1192f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(600f)), _wgslsmith_f_op_f32(-1199f * 677f))) + _wgslsmith_f_op_f32(-919f * 275f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1237f))), _wgslsmith_div_f32(-1457f, _wgslsmith_f_op_f32(min(-783f, -447f)))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), 21u)], vec3<i32>(u_input.e, -32771i, -1218i) | vec3<i32>(u_input.e, -22028i, u_input.e))), var_0.x))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(abs(0i), 10135i)), _wgslsmith_f_op_f32(f32(-1f) * -159f));
    var var_2 = all(!vec4<bool>(var_0.x & var_0.x, true, false, true)) || var_0.x;
    var var_3 = u_input.d >> (80720u % 32u);
    global1 = array<Struct_1, 21>();
    return var_0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_1 = -firstTrailingBit(u_input.e);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x))) == var_0.a;
    var var_2 = Struct_2(var_0.a, !vec2<bool>(any(vec4<bool>(false, true, true, false)), true & any(vec2<bool>(true, true))), func_2(), global1[_wgslsmith_index_u32(37651u, 21u)], select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), true));
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * var_2.a), var_2.e, select(false, true, true), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, var_2.a)))), _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, 511f, var_2.a, var_2.a))), countOneBits(_wgslsmith_sub_vec2_i32(var_0.c, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-641f, var_2.a))) * 1000f)), select(select(var_2.b, var_2.e, vec2<bool>(true, true)), vec2<bool>(true, var_2.e.x), false));
    return Struct_2(var_0.d, !var_2.b, all(!vec4<bool>(var_2.c, false, var_2.b.x, all(vec3<bool>(var_2.b.x, var_2.c, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(554f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), ~vec2<i32>(~var_2.d.c.x, _wgslsmith_clamp_i32(-20602i, 13333i, var_2.d.c.x)), _wgslsmith_f_op_f32(-190f + -1981f)), vec2<bool>(true, (all(vec4<bool>(false, false, false, false)) && true) & !func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i != u_input.d;
    let var_0 = func_1(vec3<u32>(~u_input.a.x & (countOneBits(u_input.b.x) >> (~54201u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 0u, 1u), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.b.x, u_input.b.x)), vec4<u32>(4994u, u_input.a.x, 4294967295u, u_input.c.x))), ~722u), u_input.d, max(1u, u_input.b.x));
    var var_1 = 0u;
    global2 = func_1(vec3<u32>(32933u, 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 96124u), ~u_input.c), ~abs(23609u))), u_input.d, firstTrailingBit(reverseBits(u_input.b.x ^ (9911u & u_input.c.x)))).b.x;
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x ^ 53329u, _wgslsmith_div_u32(0u, 6422u)), ~(~u_input.b.x), u_input.b.x, 14371u) << (reverseBits(select(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.c.x, u_input.b.x) << (vec4<u32>(u_input.a.x, 4274u, u_input.c.x, u_input.b.x) % vec4<u32>(32u)), var_0.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -726f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-274f, 1220f))), vec2<f32>(-227f, 565f))), var_0.d.b.xx)), countOneBits(vec4<u32>(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.a.xx)), select(~u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, u_input.b.x), var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.c.x, u_input.a.x), vec4<u32>(u_input.b.x, 6008u, u_input.b.x, 60007u)), firstTrailingBit(abs(18663u)))), var_0.d.a);
}

