struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_0.x, 1274f);
    let var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 23u)];
    return global2[_wgslsmith_index_u32(85003u, 23u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> u32 {
    global1 = array<vec2<bool>, 23>();
    let var_0 = Struct_1(arg_0.b.a, vec4<i32>(arg_0.c.x, u_input.a.x, firstLeadingBit(min(-26461i, arg_1.c.x >> (u_input.c.x % 32u))), _wgslsmith_sub_i32(0i, u_input.a.x)), -vec4<i32>(2147483647i, firstLeadingBit(1i), 35429i, -(~40036i)), _wgslsmith_dot_vec4_u32(~((vec4<u32>(15673u, arg_0.b.d, 1u, 23628u) | u_input.b) & ~vec4<u32>(41225u, u_input.d.x, 50691u, 39022u)), firstTrailingBit(~vec4<u32>(arg_1.b.d, arg_1.b.d, 4294967295u, 45194u))));
    var var_1 = reverseBits(~(~68048u));
    var var_2 = func_2(vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), arg_0.a));
    global2 = array<Struct_1, 23>();
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = !(!global0[_wgslsmith_index_u32(((u_input.d.x & 68052u) & _wgslsmith_mult_u32(1u, 26167u)) << (arg_1 % 32u), 14u)]);
    global0 = array<vec2<bool>, 14>();
    var_0 = global1[_wgslsmith_index_u32(max(arg_1, _wgslsmith_div_u32(func_3(Struct_2(_wgslsmith_f_op_f32(arg_2 * arg_2), func_2(vec4<f32>(2125f, arg_2, -281f, arg_2)), vec4<i32>(2867i, u_input.a.x, u_input.a.x, 2147483647i), arg_0.a | var_0.x), Struct_2(_wgslsmith_f_op_f32(-arg_2), func_2(vec4<f32>(arg_2, -289f, arg_2, -351f)), arg_0.c, all(vec4<bool>(var_0.x, true, arg_0.a, var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2244f + arg_2), -1000f, arg_0.a)), true), 0u)), 23u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(207f, arg_2) * vec2<f32>(arg_2, 915f)) - vec2<f32>(arg_2, 668f)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(557f, -1000f)), vec2<f32>(arg_2, -596f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), 1092f) + vec2<f32>(1f, _wgslsmith_f_op_f32(arg_2 * 464f)))));
    global0 = array<vec2<bool>, 14>();
    return global2[_wgslsmith_index_u32(~(reverseBits(38532u) >> (firstLeadingBit(arg_0.d) % 32u)), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 14>();
    let var_0 = 739f;
    var var_1 = vec2<bool>(true, all(vec4<bool>(true, all(global0[_wgslsmith_index_u32(25787u, 14u)]) && true, any(vec4<bool>(true, true, true, true)), var_0 <= _wgslsmith_f_op_f32(var_0 - var_0))));
    var var_2 = !(!var_1.x);
    var var_3 = Struct_2(var_0, func_1(global2[_wgslsmith_index_u32(~6896u, 23u)], 0u, -582f), _wgslsmith_clamp_vec4_i32((-vec4<i32>(-17132i, u_input.a.x, -62480i, u_input.a.x) >> (~vec4<u32>(29957u, u_input.d.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) ^ -firstTrailingBit(vec4<i32>(-3026i, u_input.a.x, u_input.a.x, -1i)), vec4<i32>(abs(-2147483647i), _wgslsmith_mod_i32(-15173i, 14139i), _wgslsmith_mod_i32(u_input.a.x, 1i), ~u_input.a.x) >> (u_input.b % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(abs(-10472i), u_input.a.x, abs(22826i), ~2147483647i))), true);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-var_0), Struct_1(var_1.x, vec4<i32>(2147483647i, 1i, abs(max(u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(20033i, 0i), i32(-1i) * -2187i)), var_3.b.b, var_3.b.d), _wgslsmith_add_vec4_i32(reverseBits(-func_1(Struct_1(var_3.d, var_3.b.c, vec4<i32>(8387i, u_input.a.x, 0i, u_input.a.x), var_3.b.d), 9977u, 1094f).c), _wgslsmith_sub_vec4_i32(firstTrailingBit(var_3.c) & (var_3.c & var_3.c), vec4<i32>(u_input.a.x, ~(-49676i), var_3.c.x, ~u_input.a.x))), true);
    let var_5 = ~(~u_input.b);
    var var_6 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_div_f32(-598f, var_4.a))))), Struct_1(~u_input.d.x < (~u_input.d.x & u_input.c.x), var_4.c, vec4<i32>(~(-27121i), func_1(var_3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u), var_5), _wgslsmith_f_op_f32(min(var_3.a, 518f))).c.x, -23061i, -24120i), ~abs(4294967295u)), var_4.c, true);
    let var_7 = 1286u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, -382f)) - vec2<f32>(var_0, var_3.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1689f, var_4.a)), vec2<f32>(-1685f, -330f))))), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(var_4.b.b.x, u_input.a.x), func_2(vec4<f32>(var_3.a, 1681f, -658f, 305f)).c.xz), firstLeadingBit(var_4.b.d), -2147483647i);
}

