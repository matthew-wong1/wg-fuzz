struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: i32 = -1i;

var<private> global2: vec4<i32> = vec4<i32>(-1i, -12929i, 13776i, 2147483647i);

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<i32> {
    var var_0 = 6539u;
    global2 = _wgslsmith_div_vec4_i32(u_input.b, u_input.b);
    let var_1 = global3.b;
    let var_2 = Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1572f, 369f)), var_1.b.xwy, global3.e == global3.e))))), 1i >> (min(1u, ~u_input.c.x) % 32u), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1228f + 471f), _wgslsmith_f_op_f32(arg_0 * -2015f)));
    let var_3 = Struct_4(1129f, vec2<bool>(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), firstTrailingBit(1i) == u_input.b.x), select(all(vec2<bool>(true, any(vec2<bool>(true, true)))), false, all(vec2<bool>(true, true))), global3.b.a.d.x);
    return ~(-vec4<i32>(var_1.a.c, global2.x, _wgslsmith_dot_vec2_i32(-global2.xw, vec2<i32>(-1i, global2.x)), -13428i));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global2 = _wgslsmith_mod_vec4_i32(-u_input.b, (~firstLeadingBit(vec4<i32>(-51420i, 2147483647i, arg_0.a.a, 4102i)) << (vec4<u32>(_wgslsmith_clamp_u32(11331u, global3.e, global3.e), 4294967295u, ~0u, ~4294967295u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(u_input.b, -abs(u_input.b)));
    let var_0 = _wgslsmith_div_i32(~(-1i), u_input.b.x);
    global1 = global3.c.a;
    global1 = ~arg_0.a.c;
    let var_1 = global3.d.d.x;
    return _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b | func_3(_wgslsmith_f_op_f32(sign(-717f)), -u_input.b.x), min(u_input.b, firstTrailingBit(-u_input.b))), countOneBits(u_input.b));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> u32 {
    let var_0 = !(!arg_2.a.x);
    let var_1 = _wgslsmith_add_u32(24396u, firstLeadingBit(1u) ^ (abs(~u_input.c.x) & 0u));
    global1 = -firstTrailingBit(-25550i);
    global0 = array<Struct_2, 23>();
    global2 = -(-(~u_input.b ^ _wgslsmith_mult_vec4_i32(u_input.b, u_input.b)) & select(func_2(global0[_wgslsmith_index_u32(0u, 23u)]) << (max(u_input.a, u_input.a) % vec4<u32>(32u)), u_input.b, var_0));
    return u_input.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_2) -> vec2<f32> {
    global1 = countOneBits(1i);
    var var_0 = Struct_4(arg_2.b.x, !vec2<bool>(arg_1.a.x, global3.e > arg_0.x), all(vec2<bool>(true, arg_1.a.x & arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(select(-1046f, arg_2.a.d.x, all(vec4<bool>(arg_1.a.x, true, false, true)))))));
    let var_1 = countOneBits(firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.a.yyw, reverseBits(vec3<u32>(68890u, arg_0.x, 27009u)))) >> (select((u_input.a.xxy ^ vec3<u32>(arg_0.x, arg_0.x, global3.e)) << (~vec3<u32>(u_input.a.x, 0u, arg_0.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, global3.e, 1u), vec3<u32>(4294967295u, arg_0.x, 51888u)) & (u_input.a.xyy << (u_input.a.zyx % vec3<u32>(32u))), arg_1.a.x) % vec3<u32>(32u)));
    global3 = Struct_3(399f, Struct_2(arg_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b), arg_2.b)), arg_2.a, Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(global3.b.b.ywx))))), firstLeadingBit(global2.x >> (4294967295u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.d.d.x)) * _wgslsmith_f_op_f32(max(354f, arg_1.c))))), 40124u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.b.yy))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.a.d.zy))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-1288f)), var_0.a)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.yy))))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(208f * 460f), _wgslsmith_f_op_f32(round(global3.d.b.x))));
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    var_0 = _wgslsmith_div_vec2_f32(global3.b.b.xx, _wgslsmith_f_op_vec2_f32(func_4(vec2<u32>(~func_1(Struct_4(-292f, vec2<bool>(false, true), false, -806f), u_input.b.x, Struct_5(vec3<bool>(true, true, true), global3.b.b, 721f), true), ~20140u), Struct_5(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), vec4<f32>(-617f, -1078f, global3.a, _wgslsmith_f_op_f32(var_0.x - -652f)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), Struct_2(Struct_1(u_input.b.x, vec3<f32>(636f, -1000f, var_0.x), global2.x, vec3<f32>(var_0.x, var_0.x, 1996f)), _wgslsmith_f_op_vec4_f32(-global3.b.b)))));
    global1 = _wgslsmith_add_i32(-((-31937i << (~u_input.a.x % 32u)) | global3.c.a), _wgslsmith_dot_vec3_i32(-global2.xzw, global2.wxx));
    var var_1 = all(!vec3<bool>(true, true, any(vec3<bool>(false, false, true)))) | false;
    var var_2 = ~(~_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zy, -global2.yw), -vec2<i32>(-15907i, global3.d.c)));
    var var_3 = Struct_1(global3.d.c | ~countOneBits(1i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)))))), ~(-1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(global3.d.d, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, global3.c.b.x, var_0.x))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-global3.c.d.x), var_0.x)))));
    let var_4 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-494f))), -12972i).x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.yy, _wgslsmith_mult_u32(u_input.a.x, 91888u), var_2.x);
}

