struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(73654i, -62881i, 28734i), vec3<i32>(i32(-2147483648), 1i, 19110i), vec3<i32>(0i, 2147483647i, -46907i), vec3<i32>(40519i, -823i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(6189i, -1i, -15298i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(23545i, 19321i, -50265i), vec3<i32>(-6396i, -3234i, -12440i), vec3<i32>(28264i, 11095i, -1i), vec3<i32>(444i, 2147483647i, -24127i), vec3<i32>(i32(-2147483648), 2147483647i, 47623i), vec3<i32>(19577i, 31520i, 2147483647i), vec3<i32>(-9461i, i32(-2147483648), -5072i), vec3<i32>(4561i, 83713i, 6304i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)) & u_input.a, firstLeadingBit(u_input.a >> (u_input.a % vec2<u32>(32u))))), 15u)];
    global1 = vec4<bool>(global1.x, global1.x, (arg_0.a | _wgslsmith_div_u32(58588u & u_input.c, max(u_input.c, u_input.c))) <= 4294967295u, global1.x);
    let var_1 = Struct_1(~countOneBits(4200u) & min(_wgslsmith_mult_u32(u_input.c, 1u), u_input.d), (u_input.c & abs(u_input.c)) <= ~u_input.a.x, arg_0.c);
    var var_2 = var_1;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))) * -1608f), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.c.x)), _wgslsmith_f_op_f32(-arg_1))), var_1.c.x)))));
}

fn func_2() -> bool {
    var var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(47439u, true, vec2<f32>(_wgslsmith_f_op_f32(step(-414f, -1035f)), 124f)), -151f)));
    var var_2 = 1u < u_input.d;
    global1 = select(!select(!(!vec4<bool>(true, true, false, global1.x)), select(select(vec4<bool>(false, global1.x, false, false), vec4<bool>(true, false, true, global1.x), global1.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, true, true, false)), vec4<bool>(any(global1.wy), false && global1.x, global1.x, true)), !vec4<bool>(global1.x, global1.x, global1.x, !(u_input.b.x >= 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1264f))) != 719f);
    var var_3 = vec2<i32>(u_input.b.x, 12841i);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a, u_input.a.x), 15u)];
    global0 = array<vec3<i32>, 15>();
    global0 = array<vec3<i32>, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1127f, arg_2.c.x, arg_1.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(-300f, arg_1.c.x, -178f), vec3<f32>(arg_1.c.x, 676f, -1233f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, arg_1.c.x, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.c.x, -2193f, -649f))) * vec3<f32>(arg_0.c.x, arg_1.c.x, arg_0.c.x)), global1.x == all(vec2<bool>(arg_1.b, arg_0.b)))))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = -abs(-_wgslsmith_add_i32(1i, 23580i));
    global0 = array<vec3<i32>, 15>();
    var var_2 = 1u;
    var_0 = countOneBits(~abs(_wgslsmith_clamp_vec3_i32(func_1(Struct_1(u_input.c, true, vec2<f32>(1048f, -1047f)), Struct_1(38374u, global1.x, vec2<f32>(-128f, 447f)), Struct_1(u_input.c, global1.x, vec2<f32>(1375f, -1037f)), vec4<bool>(global1.x, global1.x, false, false)), vec3<i32>(var_0.x, 0i, u_input.e.x), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(106638u, 15u)], u_input.b))));
    let var_3 = Struct_1(firstLeadingBit(0u), all(select(select(vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false), global1.wz), select(global1.xw, !global1.ww, true), global1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 270f)), 1397f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(803f, -277f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1133f, -284f) - vec2<f32>(1000f, 576f)), !global1.xz))), !global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, var_0.x, var_0.x, var_0.x) ^ select(vec4<i32>(u_input.e.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-2147483647i, 24761i, 2147483647i, var_0.x), vec4<bool>(var_3.b, true, true, global1.x)), -vec4<i32>(1i, u_input.b.x, 1i, u_input.e.x) >> (vec4<u32>(var_3.a, 0u, 1u, 1u) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, global0[_wgslsmith_index_u32(var_3.a, 15u)]), u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 1i, var_0.x, u_input.b.x))))), _wgslsmith_f_op_f32(-101f * _wgslsmith_f_op_f32(func_3(var_3, var_3.c.x))));
}

