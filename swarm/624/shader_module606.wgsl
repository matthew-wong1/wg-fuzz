struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29>;

var<private> global1: Struct_4;

var<private> global2: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(-426f));
    var var_1 = global2.a;
    var var_2 = select(vec3<bool>(true, reverseBits(arg_1) != 7874u, false), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, (select(false, false, true) & true) && true), any(vec3<bool>(true, true, true)));
    var var_3 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, ~119353i, ~30501i, -16585i), vec4<i32>(u_input.d, -2147483647i, u_input.d, -1i), var_2.x), max(firstLeadingBit(vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.c, 2147483647i)), ~u_input.d, u_input.d)), abs(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 1i, 36043i, -48451i)), firstTrailingBit(vec4<i32>(-2147483647i, 42612i, 2147483647i, -2147483647i))))));
    var var_4 = vec4<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.c, 1i, u_input.d), -vec4<i32>(-11529i, -12802i, u_input.c, -1i)), u_input.d, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 47985i, u_input.c) | vec3<i32>(u_input.d, 46254i, 21773i), -vec3<i32>(u_input.c, 2147483647i, u_input.c)), abs(firstTrailingBit(vec3<i32>(-2147483647i, 50982i, 1i))), -(~vec3<i32>(0i, 16963i, -21993i))), vec3<i32>(u_input.c | firstTrailingBit(1i), 0i, u_input.c)), min(36941i, 29970i));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1327f, 572f) + -215f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec2<bool> {
    global0 = array<Struct_5, 29>();
    global2 = Struct_5(Struct_4(~global2.a.c.x, global1.b, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b << (u_input.b % vec4<u32>(32u)), select(vec4<u32>(30493u, 4294967295u, 6465u, 93639u), vec4<u32>(global1.c.x, 0u, u_input.b.x, 0u), vec4<bool>(true, false, true, false))), 50577u, global1.c.x)), 5742u);
    let var_0 = true;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-281f, _wgslsmith_f_op_f32(arg_1.x + arg_0))))), _wgslsmith_f_op_vec2_f32(func_3(Struct_5(Struct_4(1u, global2.a.b, ~u_input.b.wxw), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(global1.c.x, global1.c.x))), 120380u, Struct_3(_wgslsmith_f_op_f32(-global2.a.b.a)))));
    global1 = global2.a;
    return !(!select(select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), var_0), vec2<bool>(true, true), !var_0), vec2<bool>(var_0, any(vec4<bool>(var_0, var_0, true, true))), var_0 | false));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_2 {
    global2 = Struct_5(arg_2.a, global1.a);
    return Struct_2(vec2<bool>(arg_1.a.x | all(vec2<bool>(false, arg_0.x)), all(arg_0) | any(!arg_0)), arg_1, select(~(vec3<i32>(-68823i, 24798i, u_input.c) << (abs(arg_2.a.c) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-18408i, -27841i, -5526i), -vec3<i32>(-43108i, -1771i, 47903i)), !(!arg_0)), vec2<bool>(any(vec2<bool>(true, arg_0.x && false)), !arg_0.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = func_4(vec3<bool>(true, true, true), Struct_1(select(func_2(_wgslsmith_f_op_f32(682f * arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global1.b.a, 1800f))), func_2(759f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-117f, arg_0.x, global2.a.b.a) + vec3<f32>(548f, global1.b.a, -1147f))), func_2(_wgslsmith_div_f32(arg_0.x, 659f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.a, 588f, 1122f) - vec3<f32>(1418f, global2.a.b.a, 850f))))), global0[_wgslsmith_index_u32(global2.b, 29u)], !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(false, true, true))));
    var_0 = func_4(select(vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), arg_1.yy) >= ~(-31909i), false, !var_0.b.a.x & true), vec3<bool>(any(vec2<bool>(true, var_0.d.x)), ~arg_1.x > 2147483647i, select(false, true, var_0.a.x)), false), Struct_1(select(var_0.a, func_2(arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -502f, -2177f))), !var_0.d.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, u_input.a.x), global1.c), 49151u), 29u)], !(!vec3<bool>(true, var_0.a.x, arg_1.x < 33754i)));
    global2 = global0[_wgslsmith_index_u32(global2.b, 29u)];
    let var_1 = Struct_5(Struct_4(~global1.c.x, Struct_3(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(1030f, global2.a.b.a))))), ~(~vec3<u32>(global1.c.x, u_input.b.x, 40351u) << (global1.c % vec3<u32>(32u)))), 0u);
    var_0 = Struct_2(select(var_0.d, var_0.a, var_0.a), func_4(vec3<bool>(var_0.b.a.x, select(!var_0.b.a.x, true, var_0.b.a.x), any(select(vec3<bool>(var_0.d.x, true, true), vec3<bool>(var_0.b.a.x, false, true), var_0.b.a.x))), var_0.b, Struct_5(Struct_4(_wgslsmith_div_u32(global2.a.c.x, 0u), global1.b, firstLeadingBit(u_input.b.xwy)), ~_wgslsmith_sub_u32(global1.c.x, var_1.a.a)), vec3<bool>(!(!var_0.b.a.x), var_0.d.x, all(!var_0.a))).b, func_4(!select(select(vec3<bool>(true, var_0.a.x, true), vec3<bool>(true, true, var_0.a.x), vec3<bool>(true, var_0.a.x, false)), !vec3<bool>(var_0.a.x, var_0.b.a.x, var_0.d.x), true), var_0.b, var_1, !select(select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(var_0.d.x, var_0.d.x, false), vec3<bool>(var_0.a.x, false, var_0.d.x)), select(vec3<bool>(true, var_0.d.x, false), vec3<bool>(true, var_0.a.x, var_0.b.a.x), var_0.a.x), true)).c, vec2<bool>(true, var_0.d.x));
    return 41813u | ~(~(~global2.b));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, global1.c.x), abs(42693u));
    global1 = Struct_4(arg_1, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.a))), _wgslsmith_sub_vec3_u32(select(vec3<u32>(~arg_1, _wgslsmith_add_u32(19944u, global2.b), ~24678u), ~u_input.b.yzy, true), max(min(abs(global2.a.c), global2.a.c), ~vec3<u32>(arg_0.c.x, 20354u, global2.a.c.x) | ~global2.a.c)));
    global2 = global0[_wgslsmith_index_u32(arg_1, 29u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(744f, _wgslsmith_f_op_f32(step(-332f, -1106f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, 359f))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.b.a)), _wgslsmith_f_op_f32(-global2.a.b.a)))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(abs(u_input.a.x), 29u)], 1u, global1.b)).x)));
    return !(!vec4<bool>(!any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(all(func_5(global2.a, func_1(vec2<f32>(-492f, global1.b.a), vec3<i32>(u_input.d, u_input.c, -1i)))), !(-1236f >= _wgslsmith_f_op_f32(floor(global2.a.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_i32(~(~vec3<i32>(-1i, 1i, u_input.c)), ~(vec3<i32>(14602i, u_input.d, -2147483647i) >> (global1.c % vec3<u32>(32u)))));
}

