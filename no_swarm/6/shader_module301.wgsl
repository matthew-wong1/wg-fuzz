struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = !(!arg_0.x) && all(!arg_0.xy);
    let var_1 = arg_0.x;
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(sign(-432f));
    return vec2<i32>(-1i) * -u_input.a.xy;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(arg_2.a, -25896i, arg_3.a.b.c), arg_3.b, Struct_1(vec3<bool>(any(vec2<bool>(arg_3.a.a.a.x, arg_3.a.c.a.x)), ~arg_3.c.x <= arg_1, arg_2.a.x), -1i, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_3.c.x, 41750u), 5u)]));
    global0 = array<vec2<f32>, 5>();
    var var_1 = Struct_1(vec3<bool>(true, true, true), arg_2.b, arg_3.a.b.c);
    let var_2 = _wgslsmith_add_vec4_u32(~arg_3.c, arg_3.c);
    var_1 = var_0.b;
    return _wgslsmith_mod_vec3_i32(max(select(abs(u_input.c) >> (~vec3<u32>(arg_1, 1464u, u_input.e) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-9819i, 24982i, -9975i)) & u_input.d, var_1.a), u_input.c), firstLeadingBit(abs(countOneBits(vec3<i32>(2147483647i, var_1.b, -1915i)))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> vec3<i32> {
    return func_4(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0, _wgslsmith_mod_i32(u_input.a.x, arg_0)), func_3(vec3<bool>(arg_1.x || false, true, arg_1.x))), u_input.e, Struct_1(!vec3<bool>(true, !arg_1.x, true), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f + 912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1942f))))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, arg_1.x, true), u_input.d.x, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.e, 5u)])), Struct_1(!vec3<bool>(arg_1.x, arg_1.x, false), u_input.d.x, global0[_wgslsmith_index_u32(u_input.e, 5u)]), Struct_1(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x), min(u_input.c.x, arg_0), vec2<f32>(2254f, 586f))), Struct_1(select(!vec3<bool>(false, true, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(true, arg_1.x, false)), 1i, global0[_wgslsmith_index_u32(select(38287u, u_input.e, false) & _wgslsmith_dot_vec3_u32(vec3<u32>(11915u, u_input.e, u_input.e), vec3<u32>(u_input.e, u_input.e, 16288u)), 5u)]), ~(~abs(vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.e)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.e, 5u)];
    let var_1 = arg_0.x;
    var var_2 = vec2<bool>(false, arg_2.a.x);
    var var_3 = arg_2;
    var var_4 = select(!vec4<bool>(false, !(u_input.e < u_input.e), false, true), vec4<bool>((1f < _wgslsmith_div_f32(arg_1.x, var_0.x)) | (true == any(vec2<bool>(arg_2.a.x, true))), !(u_input.e <= abs(31829u)), true, true), true != !(!(arg_2.b > arg_2.b)));
    return Struct_2(Struct_1(vec3<bool>(false, u_input.e <= _wgslsmith_mult_u32(2859u, u_input.e), !any(vec4<bool>(arg_2.a.x, var_2.x, true, arg_2.a.x))), -arg_2.b & var_1, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(ceil(-238f)))), Struct_1(var_4.wxx, arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.wy), _wgslsmith_f_op_vec2_f32(-var_3.c), all(vec4<bool>(var_4.x, false, false, var_4.x)))))), arg_2);
}

fn func_1(arg_0: bool) -> vec4<i32> {
    var var_0 = select(vec2<bool>(arg_0, u_input.e < ~(~u_input.e)), select(vec2<bool>(true, arg_0), vec2<bool>(true, !all(vec2<bool>(arg_0, false))), select(!(!vec2<bool>(true, arg_0)), vec2<bool>(true, true), any(!vec2<bool>(arg_0, arg_0)))), !vec2<bool>(true, arg_0));
    var var_1 = u_input.c.x;
    var var_2 = vec2<bool>(true, any(!vec4<bool>(var_0.x, true, all(vec3<bool>(var_0.x, arg_0, true)), true)));
    var var_3 = ~(-u_input.c);
    var var_4 = func_5(func_2(-(~var_3.x), select(vec2<bool>(any(vec4<bool>(true, false, false, true)), arg_0), !select(vec2<bool>(arg_0, true), vec2<bool>(var_0.x, var_2.x), var_2.x), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -271f, 296f, -1832f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, 939f, -176f, -207f)))))), Struct_1(vec3<bool>(all(!vec2<bool>(true, var_0.x)), true, true), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d.x, var_3.x), u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(u_input.e, 5u)])) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1196f, 1146f) - vec2<f32>(-783f, 794f)) * vec2<f32>(-712f, -276f)))));
    return _wgslsmith_sub_vec4_i32(~select(vec4<i32>(0i, firstLeadingBit(-2147483647i), select(35277i, var_3.x, false), 14886i), vec4<i32>(func_3(var_4.c.a).x, i32(-1i) * -4858i, u_input.b, u_input.c.x | var_3.x), var_0.x), max(vec4<i32>(select(func_3(var_4.c.a).x, u_input.b, false && var_4.a.a.x), abs(min(var_3.x, var_4.c.b)), func_4(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(11499i, var_4.b.b)), u_input.e, func_5(u_input.a.ywx, vec4<f32>(392f, 2891f, var_4.c.c.x, -294f), var_4.c).a, Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 2147483647i, vec2<f32>(var_4.a.c.x, -1042f)), Struct_1(vec3<bool>(false, false, var_2.x), 27208i, vec2<f32>(var_4.a.c.x, var_4.b.c.x)), Struct_1(var_4.b.a, 24075i, vec2<f32>(453f, var_4.c.c.x))), Struct_1(vec3<bool>(var_4.c.a.x, arg_0, true), 34246i, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<u32>(u_input.e, 4294967295u, 20207u, 13578u))).x, -40842i), vec4<i32>(36240i, -u_input.a.x, func_3(!var_4.c.a).x, ~2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(func_1(true) ^ max(select(-vec4<i32>(-12062i, u_input.b, 1i, 2147483647i), vec4<i32>(-2147483647i, 25395i, -1i, u_input.a.x), vec4<bool>(true, true, true, true)), -(vec4<i32>(u_input.d.x, u_input.d.x, -1i, -15782i) >> (vec4<u32>(u_input.e, 51835u, u_input.e, 20635u) % vec4<u32>(32u)))), firstLeadingBit(min(vec4<i32>(~u_input.b, -u_input.c.x, -1i, firstTrailingBit(10050i)), vec4<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(-3711i, u_input.c.x)), u_input.d.x | u_input.a.x, func_4(vec2<i32>(1i, u_input.d.x), 8925u, Struct_1(vec3<bool>(true, false, true), u_input.d.x, vec2<f32>(-2576f, -1266f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), u_input.b, vec2<f32>(230f, -214f)), Struct_1(vec3<bool>(false, false, false), u_input.c.x, vec2<f32>(-392f, -140f)), Struct_1(vec3<bool>(false, true, true), u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 5u)])), Struct_1(vec3<bool>(false, true, false), 53246i, vec2<f32>(-384f, -1280f)), vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.e))).x))));
    var_0 = ~u_input.a;
    let var_1 = true;
    var var_2 = Struct_4(Struct_3(Struct_2(Struct_1(!vec3<bool>(false, var_1, false), reverseBits(u_input.a.x), _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(4294967295u, 5u)]))), Struct_1(func_5(vec3<i32>(u_input.c.x, u_input.a.x, u_input.b), vec4<f32>(1081f, -2660f, 184f, 1465f), Struct_1(vec3<bool>(false, var_1, true), var_0.x, global0[_wgslsmith_index_u32(27638u, 5u)])).b.a, i32(-1i) * -23226i, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(46803u, 5u)] + global0[_wgslsmith_index_u32(u_input.e, 5u)])), func_5(var_0.yzy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, -1451f, -1510f, -463f)), func_5(vec3<i32>(var_0.x, 37331i, var_0.x), vec4<f32>(-614f, 696f, 397f, -611f), Struct_1(vec3<bool>(false, var_1, var_1), -40328i, vec2<f32>(-602f, -535f))).c).a), func_5(vec3<i32>(_wgslsmith_div_i32(9404i, var_0.x), firstLeadingBit(var_0.x), ~u_input.d.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-583f, 213f, 2610f, 761f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, -386f, -835f, 529f)))), Struct_1(vec3<bool>(var_1, var_1, var_1), u_input.c.x << (68898u % 32u), vec2<f32>(1901f, -720f))).c, vec4<u32>(1u, u_input.e, 1u, _wgslsmith_mod_u32(~u_input.e, 29100u))), _wgslsmith_mult_vec3_i32(min(u_input.c, vec3<i32>(-1i, u_input.a.x, var_0.x ^ u_input.b)), u_input.d), !(!(!(!vec3<bool>(var_1, var_1, false)))));
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(u_input.e, ~(~(~var_2.a.c.x))), var_2.a.c.x, u_input.e);
    var_2 = Struct_4(Struct_3(func_5(var_0.xyy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1170f, 966f, var_2.a.b.c.x, var_2.a.a.a.c.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(251f, -1166f, var_2.a.b.c.x, -1138f)))), Struct_1(vec3<bool>(false, true, false), ~var_0.x, _wgslsmith_div_vec2_f32(var_2.a.b.c, var_2.a.a.c.c))), func_5(countOneBits(-var_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(1720f, var_2.a.b.c.x, var_2.a.b.c.x, var_2.a.b.c.x) * vec4<f32>(var_2.a.a.a.c.x, 478f, -672f, var_2.a.b.c.x)), Struct_1(vec3<bool>(var_1, false, var_2.a.a.a.a.x), ~(-1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b.c.x, -592f)))).a, select(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 12394u, var_2.a.c.x, 23637u), var_2.a.c), abs(var_2.a.c)), var_2.a.c, vec4<bool>(var_2.c.x, var_3.x >= 0u, -493f < var_2.a.b.c.x, !var_2.c.x))), vec3<i32>(u_input.d.x, -1i, reverseBits(0i)), !(!var_2.a.a.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1044f))), 765f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a.a.c.x - 753f)), _wgslsmith_f_op_f32(exp2(var_2.a.a.a.c.x)), var_2.a.a.c.c.x)), _wgslsmith_div_vec2_i32(-var_2.b.xx, -(_wgslsmith_sub_vec2_i32(var_0.zz, vec2<i32>(1i, var_2.a.a.b.b)) >> ((vec2<u32>(var_2.a.c.x, u_input.e) ^ var_3.yx) % vec2<u32>(32u)))));
}

