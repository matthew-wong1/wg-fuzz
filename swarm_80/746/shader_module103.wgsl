struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-44077i, 2147483647i, i32(-2147483648), -25460i), vec4<i32>(1689i, i32(-2147483648), -1i, 2147483647i));

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global2: vec2<f32> = vec2<f32>(1265f, 2571f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec2<i32> {
    global1 = array<vec3<bool>, 15>();
    var var_0 = (~u_input.b.x > u_input.b.x) && (_wgslsmith_f_op_f32(-global2.x) > 837f);
    var var_1 = countOneBits(vec4<i32>(abs(~(~1i)), ~(-_wgslsmith_add_i32(u_input.a.x, u_input.b.x)), 46810i, ~(i32(-1i) * -15503i)));
    let var_2 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), true));
    var_1 = _wgslsmith_add_vec4_i32(max(vec4<i32>(-23667i, u_input.b.x, 0i, var_1.x), ~global0[_wgslsmith_index_u32(reverseBits(4294967295u), 2u)]) >> (((select(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 0u), vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x), var_2) | vec4<u32>(8515u, u_input.d.x, u_input.d.x, 4294967295u)) | vec4<u32>(_wgslsmith_mult_u32(1u, u_input.d.x), ~u_input.d.x, 59015u, 49570u)) % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(9579u, 2u)]);
    return -vec2<i32>(_wgslsmith_mod_i32(~var_1.x, -31179i & u_input.b.x), i32(-1i) * -var_1.x) | u_input.a.zz;
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = 2931f;
    let var_1 = 1u;
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(var_1, u_input.d.x, u_input.d.x), vec3<u32>(54536u, 0u, 1u), vec3<bool>(false, true, false))), vec3<u32>(var_1 | 0u, ~u_input.d.x, u_input.d.x)), reverseBits(u_input.d.x)), 2u)], global0[_wgslsmith_index_u32(5426u, 2u)], vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 36966i, -10294i), firstLeadingBit(vec3<i32>(27328i, 1i, 2147483647i))), -(i32(-1i) * -2147483647i)), 1i, -21792i));
    var var_3 = var_2;
    var var_4 = var_2;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -472f), vec2<f32>(global2.x, global2.x)) - vec2<f32>(global2.x, global2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-341f, global2.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1461f, 1058f), vec2<f32>(global2.x, global2.x), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2.x) - vec2<f32>(global2.x, global2.x))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<i32> {
    global1 = array<vec3<bool>, 15>();
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, global2.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1487f, -149f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(614f, global2.x)))))));
    global1 = array<vec3<bool>, 15>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.zy)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.c, ~u_input.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -208f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -260f) + vec2<f32>(1000f, 1225f)) * vec2<f32>(global2.x, global2.x))))));
    let var_0 = u_input.d.x;
    return ~((select(-global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.d.x, 2u)], arg_0.x) ^ min(global0[_wgslsmith_index_u32(0u, 2u)], ~vec4<i32>(u_input.c, arg_1.x, 1i, 30626i))) | vec4<i32>(u_input.c, arg_1.x, arg_1.x, -2147483647i));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(395f + arg_0)))));
    let var_0 = -1i;
    let var_1 = Struct_1(min(vec4<i32>(-14533i, ~1i, _wgslsmith_mult_i32(~arg_3.a.x, select(0i, var_0, false)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, var_0), 46581i)), -select(vec4<i32>(u_input.b.x, 1i, -45277i, u_input.c), vec4<i32>(u_input.a.x, -46300i, 2147483647i, u_input.a.x) << (vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 40653u) % vec4<u32>(32u)), true)), arg_1, vec4<i32>(u_input.c, 1i & func_1().x, var_0, select(u_input.b.x, 1i, select(select(true, true, true), arg_1.x >= arg_2.a.x, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global2.x, -640f, arg_0) + vec4<f32>(135f, global2.x, arg_0, 610f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-139f, 550f, -1096f, global2.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, arg_0, global2.x, global2.x)))))));
    var var_3 = arg_3;
    return ~(-(~var_0) ^ _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(var_3.c.x | 0i, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, -36935i), _wgslsmith_mod_vec2_i32(func_1(), _wgslsmith_add_vec2_i32(u_input.b.zx & vec2<i32>(u_input.b.x, -1i), ~vec2<i32>(u_input.a.x, 2147483647i)))), _wgslsmith_sub_i32(firstLeadingBit(0i), firstLeadingBit(-min(-17035i, 0i))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.d.x, 26546u), 2u)], vec4<i32>(_wgslsmith_mult_i32(u_input.c, 1i), u_input.b.x, func_1().x, ~var_0.x) | reverseBits(vec4<i32>(1i, ~u_input.c, u_input.b.x << (u_input.d.x % 32u), -779i)), global0[_wgslsmith_index_u32(~firstTrailingBit(max(0u, _wgslsmith_div_u32(30557u, 14435u))), 2u)]);
    var var_2 = min(vec4<i32>(-1i) * -(min(vec4<i32>(u_input.c, var_1.c.x, 15860i, -1i), vec4<i32>(u_input.c, var_0.x, var_0.x, 53391i)) << (~vec4<u32>(19716u, 25747u, u_input.d.x, 1u) % vec4<u32>(32u))), vec4<i32>(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global2.x, 859f, false)))), ~global0[_wgslsmith_index_u32(u_input.d.x, 2u)], Struct_1(~global0[_wgslsmith_index_u32(1u, 2u)], func_2(vec4<bool>(true, true, false, false), var_1.c.yyy), var_1.c), Struct_1(~global0[_wgslsmith_index_u32(u_input.d.x, 2u)], _wgslsmith_sub_vec4_i32(var_1.c, var_1.b), abs(var_1.c))), firstTrailingBit(abs(-38633i)), var_1.a.x, -_wgslsmith_dot_vec3_i32(u_input.b, abs(u_input.b))));
    var var_3 = ~34457u;
    var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, -1447f, abs(~reverseBits(vec4<u32>(29283u, 37147u, u_input.d.x, 71232u))) >> (vec4<u32>(u_input.d.x, u_input.d.x, firstLeadingBit(reverseBits(u_input.d.x)), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))))), 1u);
}

