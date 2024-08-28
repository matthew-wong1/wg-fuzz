struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<i32, 2> = array<i32, 2>(20023i, -35835i);

var<private> global2: vec2<i32> = vec2<i32>(0i, 2147483647i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_4(vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(round(-405f))))), arg_2.d.x, 16394u, -(-min(u_input.d.x, -1i) >> (abs(1u) % 32u)), arg_2);
    let var_1 = arg_2.b;
    global0 = array<u32, 30>();
    global1 = array<i32, 2>();
    var var_2 = ~1u < ~firstTrailingBit(~select(4294967295u, 80536u, var_0.b));
    return arg_2.b.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-1577f * -442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(f32(-1f) * -1691f))))), false, u_input.a, 731i, Struct_1(global0[_wgslsmith_index_u32(~42062u, 30u)] & reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(u_input.b, 30u)]), 30u)], 30u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(-1f), !select(vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a, 30u)] != u_input.a)));
    let var_1 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.b.x, _wgslsmith_f_op_f32(-var_0.e.b.x), 686f, _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(1843f), vec3<i32>(global2.x, 0i, -2147483647i), global0[_wgslsmith_index_u32(u_input.a, 30u)], var_0.e), vec3<i32>(-4558i, 2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40616u, 30u)], 30u)], 2u)]), Struct_1(18896u, vec4<f32>(var_0.a.x, -776f, 746f, var_0.a.x), var_0.a.x, var_0.e.d), var_0.e.b.wy))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.x, var_0.e.b.x, 1614f, var_0.a.x)), true)))), 978f, !vec2<bool>(var_0.e.d.x, !any(vec4<bool>(var_0.e.d.x, true, var_0.e.d.x, true))));
    let var_2 = Struct_2(vec3<bool>(all(var_0.e.d), true, !var_0.e.d.x || false), var_0.c, var_1.b.yx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2209f, -128f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(450f), vec3<i32>(var_0.d, 16002i, global1[_wgslsmith_index_u32(var_0.e.a, 2u)]), u_input.a, Struct_1(global0[_wgslsmith_index_u32(10968u, 30u)], vec4<f32>(var_1.c, 1499f, 393f, 483f), -1039f, var_1.d)), vec3<i32>(2147483647i, u_input.e, var_0.d), Struct_1(0u, var_0.e.b, 345f, vec2<bool>(var_0.b, true)), vec2<f32>(var_1.b.x, 1304f))))), var_0.a.x)), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.e.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e.c, 1000f, -730f, var_1.c))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 394f, -696f, 895f))))), var_0.e.c, select(select(select(var_0.e.d, var_1.d, vec2<bool>(false, true)), var_0.e.d, true), select(var_1.d, var_0.e.d, select(var_1.d.x, var_1.d.x, false)), true & var_0.b)));
    return 1i << (var_2.b % 32u);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    global2 = vec2<i32>(u_input.d.x, ~global2.x);
    global1 = array<i32, 2>();
    let var_0 = select(func_2() >> (_wgslsmith_dot_vec3_u32(arg_3.xzw, arg_3.zyx) % 32u), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, -39333i, u_input.d.x), vec3<i32>(countOneBits(-26413i), -2147483647i, min(2147483647i, global2.x))), all(vec3<bool>(true, true, true)));
    let var_1 = Struct_5(Struct_3(-1064f), abs(vec3<i32>(1i, var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(36524i, global2.x, global2.x, -21906i), vec4<i32>(global1[_wgslsmith_index_u32(27440u, 2u)], 2147483647i, var_0, 2147483647i))) << (~arg_3.yzy % vec3<u32>(32u))), 16562u, Struct_1(~_wgslsmith_dot_vec2_u32(arg_0 ^ vec2<u32>(arg_0.x, 35456u), vec2<u32>(0u, 9918u) << (arg_0 % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 1702f) - _wgslsmith_f_op_f32(select(arg_1, arg_1, false))), -163f, -578f, 543f), arg_1, select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(select(false, true, true), any(vec2<bool>(false, true))), !any(vec3<bool>(true, true, false)))));
    global1 = array<i32, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2090f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(842f))) - -553f))));
    var var_1 = vec2<i32>(-1i) * -countOneBits(vec2<i32>(-2147483647i, 39299i) >> (vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 30u)]) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_clamp_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, global2.x, -1i, u_input.d.x), select(vec4<i32>(-45889i, var_1.x, 5901i, 43804i), vec4<i32>(-20638i, 2147483647i, global1[_wgslsmith_index_u32(2494u, 2u)], u_input.d.x), true), firstTrailingBit(vec4<i32>(var_1.x, -60645i, -1i, u_input.d.x)))), vec4<i32>(_wgslsmith_div_i32(~48153i, reverseBits(1i)), ~(-_wgslsmith_div_i32(u_input.c, global2.x)), u_input.d.x, (-global1[_wgslsmith_index_u32(u_input.b, 2u)] & 1i) & -23361i), vec4<i32>(0i, -_wgslsmith_sub_i32(~(-12933i), abs(-2147483647i)), -2147483647i, i32(-1i) * -64163i));
    let var_3 = -1i;
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], u_input.a), 1000f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] >> (4294967295u % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 3632u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(0u, 30u)], u_input.b, global0[_wgslsmith_index_u32(14855u, 30u)], u_input.a), vec4<u32>(1u, 0u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)])))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-650f)), -1570f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-430f)) - _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(-1096f), vec3<i32>(var_1.x, var_2.x, 2119i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], Struct_1(4294967295u, vec4<f32>(-1054f, -1444f, 267f, 668f), -105f, vec2<bool>(true, false))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global2.x, u_input.d.x), var_2.zyy), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37672u, 30u)], 30u)], 30u)], vec4<f32>(524f, 1000f, -261f, -754f), 1083f, vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(1237f, -1834f), vec2<f32>(-162f, 724f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(700f)))))), abs(1i), min(~(vec3<u32>(0u, 24093u, global0[_wgslsmith_index_u32(u_input.b, 30u)]) & max(vec3<u32>(66172u, 36187u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 1u, 5176u))), ~(~firstLeadingBit(vec3<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(1u, 30u)])))), -1961f);
}

