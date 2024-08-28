struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: u32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1513f), Struct_4(reverseBits(_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(12610u, 121411u), vec2<u32>(u_input.d, 21749u)), 11544u))), firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 108956u), firstLeadingBit(vec2<u32>(u_input.d, 4294967295u)))), !select(vec3<bool>(false, true, false), vec3<bool>(false, all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true)), ~(select(~vec2<u32>(32479u, global0.a), vec2<u32>(u_input.d, global0.a), select(vec2<bool>(false, false), vec2<bool>(false, false), false)) | ~vec2<u32>(global0.a, 4294967295u)));
    var var_1 = select(select(select(vec4<bool>(true, true, select(var_0.d.x, var_0.d.x, false), true), vec4<bool>(var_0.d.x && var_0.d.x, true, all(vec4<bool>(true, false, true, false)), var_0.d.x), any(vec2<bool>(true, var_0.d.x))), select(!select(vec4<bool>(false, true, var_0.d.x, true), vec4<bool>(true, true, true, false), var_0.d.x), select(select(vec4<bool>(var_0.d.x, true, var_0.d.x, true), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), var_0.d.x), !vec4<bool>(var_0.d.x, true, false, var_0.d.x), true), !var_0.d.x), !select(select(vec4<bool>(var_0.d.x, true, true, false), vec4<bool>(true, false, var_0.d.x, true), false), !vec4<bool>(true, var_0.d.x, true, true), var_0.a < -142f)), !vec4<bool>(any(!var_0.d), false, var_0.d.x, var_0.d.x), !(!(!vec4<bool>(false, var_0.d.x, true, true))));
    let var_2 = global3[_wgslsmith_index_u32(var_0.b.a, 29u)];
    var_1 = select(vec4<bool>(true, var_1.x, false, !var_1.x), vec4<bool>(var_1.x, any(vec3<bool>(true, any(vec4<bool>(var_1.x, var_0.d.x, true, false)), all(vec4<bool>(false, false, var_1.x, var_0.d.x)))), all(var_1.wx) & var_1.x, any(vec4<bool>(var_0.d.x, false, false, var_1.x)) && (true || all(var_0.d))), var_2.a.x >= ~2147483647i);
    let var_3 = _wgslsmith_mult_i32(2147483647i, var_2.a.x);
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> Struct_5 {
    let var_0 = select(vec4<bool>(any(vec4<bool>(true, arg_0, true, arg_0)), true, func_3(), !select(true, true, any(arg_1.d.yy))), select(!(!vec4<bool>(arg_0, false, arg_1.d.x, arg_1.d.x)), select(vec4<bool>(false, arg_0, arg_0 || arg_0, any(arg_1.d.yz)), vec4<bool>(arg_0, select(true, true, false), any(vec2<bool>(false, true)), true), true), vec4<bool>(false, !(arg_1.d.x | arg_0), true, arg_1.d.x)), arg_1.d.x);
    global1 = Struct_1(u_input.c);
    var var_1 = min(-9194i, firstLeadingBit(u_input.c.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1117f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(-540f, arg_1.a)))), -516f, _wgslsmith_f_op_f32(trunc(1423f)));
    global0 = Struct_4(~(~(~0u)));
    return arg_1;
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    global1 = Struct_1(vec3<i32>(-1i) * -abs(vec3<i32>(u_input.c.x, -49276i, u_input.c.x)));
    let var_0 = reverseBits(~(vec4<u32>(74838u ^ global0.a, u_input.b, arg_0.c, u_input.b) >> (min(~vec4<u32>(21785u, 52687u, 6173u, arg_0.e.x), firstLeadingBit(vec4<u32>(arg_0.c, u_input.d, global0.a, 4294967295u))) % vec4<u32>(32u))));
    let var_1 = ~vec2<u32>(arg_0.b.a, ~(~var_0.x));
    global1 = Struct_1(abs(vec3<i32>(1i, 2147483647i, -_wgslsmith_add_i32(28255i, -30652i))));
    var var_2 = 4460u;
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.d, 9u)];
    global1 = global3[_wgslsmith_index_u32(1u, 29u)];
    var var_1 = _wgslsmith_f_op_f32(642f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-521f + -1994f), _wgslsmith_div_f32(var_0.a.x, 1294f))))));
    var var_2 = true;
    let var_3 = func_4(func_2(true, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), Struct_4(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.a, 6768u) ^ vec4<u32>(global0.a, 4294967295u, u_input.d, u_input.e), vec4<u32>(4294967295u, u_input.b, 35300u, 70368u)), vec3<bool>(true, true, true), ~vec2<u32>(global0.a, 27120u)), -var_0.b));
    return _wgslsmith_mult_u32(1u, select(1u, func_4(Struct_5(_wgslsmith_f_op_f32(abs(-722f)), var_3.b, 1317u | u_input.e, !vec3<bool>(var_3.d.x, false, true), vec2<u32>(var_3.e.x, 4294967295u) | vec2<u32>(var_3.b.a, 4294967295u))).b.a, var_3.d.x));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_4 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 29>();
    var var_0 = func_5(Struct_4(_wgslsmith_div_u32(~func_1(), _wgslsmith_sub_u32(u_input.d, u_input.e) << ((4807u | u_input.b) % 32u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(773f, -466f, -678f, -1000f) * vec4<f32>(-239f, -399f, 1028f, -225f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1017f, -1235f, 1028f, 747f), vec4<f32>(801f, 322f, -1513f, -138f), vec4<bool>(false, true, true, true))))))), Struct_3(global1.a));
    global0 = func_2(true, func_4(Struct_5(-1067f, Struct_4(var_0.a), ~_wgslsmith_add_u32(var_0.a, u_input.e), vec3<bool>(all(vec3<bool>(false, true, true)), true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 8589u) << (vec2<u32>(global0.a, global0.a) % vec2<u32>(32u)), vec2<u32>(global0.a, 4294967295u)))), -abs(~1i)).b;
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1478f, -559f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -129f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(164f, 849f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(844f, -263f), vec2<f32>(-2125f, 1194f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-735f, 1301f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -420f), vec2<f32>(1382f, 1494f), vec2<bool>(true, false)))))))));
    var_1 = func_2(false, func_4(func_4(Struct_5(var_2.x, Struct_4(0u), var_0.a & u_input.d, vec3<bool>(true, true, true), vec2<u32>(0u, var_0.a) << (vec2<u32>(u_input.e, 1u) % vec2<u32>(32u))))), ~global1.a.x).b.a;
    global1 = global3[_wgslsmith_index_u32(global0.a, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c), -(~vec3<i32>(66964i ^ u_input.c.x, global1.a.x >> (0u % 32u), -1i)), vec2<u32>(global0.a, 21989u), var_0.a);
}

