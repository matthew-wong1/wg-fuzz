struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 9>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    let var_0 = arg_0.e;
    return _wgslsmith_div_u32(global0.x | countOneBits(~global0.x), firstTrailingBit(_wgslsmith_div_u32(~(~global0.x), ~(~0u))));
}

fn func_2(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = true;
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, ~countOneBits(arg_0.x) & ~4294967295u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~21225u, arg_0.x), 51175u) << (1u % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, global0.x), global0.x), u_input.a.x), ~global0.x >> (1u % 32u)), arg_0.x);
    var var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(func_3(Struct_1(vec2<f32>(1546f, 750f), 2147483647i, -174f, vec4<bool>(false, var_0, false, var_0), vec2<bool>(var_0, var_0)), select(vec4<bool>(false, true, var_0, true), vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, false, var_0, var_0)), ~arg_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 42664u, 65001u), vec4<u32>(28652u, 9945u, 1u, u_input.b.x)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.b.x, 10864u, global0.x))), ~global0.x), _wgslsmith_add_vec3_u32(arg_0, _wgslsmith_sub_vec3_u32(var_1.xxy << (vec3<u32>(13297u, 0u, 1275u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 29443u, 95631u, u_input.b.x), vec4<u32>(54827u, arg_0.x, u_input.a.x, 4294967295u)), 4294967295u, global0.x ^ var_1.x))));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(1180f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-613f, -491f) - 767f))), ~(i32(-1i) * -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-471f)) + _wgslsmith_div_f32(-1070f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(select(157f, -927f, true)), all(vec4<bool>(false, false, true, true)))))), select(select(select(select(vec4<bool>(var_0, false, true, true), vec4<bool>(var_0, var_0, true, false), var_0), !vec4<bool>(var_0, var_0, var_0, true), any(vec4<bool>(var_0, true, false, var_0))), vec4<bool>(var_0, any(vec3<bool>(var_0, var_0, var_0)), true, true), ~arg_0.x <= 4294967295u), select(!select(vec4<bool>(true, var_0, false, false), vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, false, var_0)), select(select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(var_0, var_0, true, var_0), true), !select(true, true, var_0)), select(vec4<bool>(true, !var_0, all(vec3<bool>(false, var_0, false)), 130473u > var_2.x), select(!vec4<bool>(false, var_0, var_0, true), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, false, false, var_0), vec4<bool>(var_0, var_0, var_0, false)), select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(true, var_0, false, var_0), var_0)), all(!vec3<bool>(var_0, true, true)))), vec2<bool>(!var_0, var_0));
    global1 = var_3.d.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.c)), -1138f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x)))), vec3<f32>(193f, 2105f, var_3.c))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 148f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f - arg_0.a.x)), 476f)), -53318i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c)))), !arg_0.d, vec2<bool>(arg_0.e.x, false));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, arg_0.c, -320f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(79229u, u_input.a.x, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.a.x) + vec3<f32>(-726f, var_0.c, var_0.c)), all(var_0.d))))));
    global1 = true;
    var var_2 = ~vec2<u32>(func_3(arg_0, var_0.d, max(1u, global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(global0.x, u_input.a.x)), max(global0.zz, vec2<u32>(3761u, u_input.b.x) | u_input.b.yy)));
    let var_3 = select(select(!vec2<bool>(false, !arg_0.e.x), select(vec2<bool>(true, var_1.x < var_0.c), var_0.e, var_0.e), var_0.d.x), select(vec2<bool>(_wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(-arg_0.c), var_0.e.x), vec2<bool>(arg_0.e.x, true), select(vec2<bool>(arg_0.e.x, arg_0.b <= var_0.b), vec2<bool>(!var_0.e.x, false), select(vec2<bool>(arg_0.d.x, false), select(arg_0.e, arg_0.e, arg_0.d.xz), select(vec2<bool>(arg_0.e.x, true), vec2<bool>(false, false), arg_0.d.zw)))), 30921i != (var_0.b | -_wgslsmith_mod_i32(58804i, 2147483647i)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = u_input.b;
    var var_0 = countOneBits(-select(12726i, 41371i, true));
    global0 = ~u_input.b;
    global2 = array<vec3<i32>, 9>();
    let var_1 = !any(select(vec3<bool>(arg_2, arg_1.e.x, true), func_1(arg_3).d.wwy, !arg_3.d.x & func_1(Struct_1(vec2<f32>(arg_3.c, arg_0.a.x), arg_1.b, arg_3.c, arg_0.d, vec2<bool>(arg_2, true))).e.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !(!(global0.x <= 4294967295u) || false));
    var_0 = select(vec2<bool>(true & func_4(Struct_1(vec2<f32>(378f, -2048f), 0i, 1111f, vec4<bool>(true, var_0.x, false, true), vec2<bool>(false, false)), func_1(Struct_1(vec2<f32>(382f, -976f), -17615i, -3120f, vec4<bool>(var_0.x, true, false, var_0.x), vec2<bool>(false, false))), true, Struct_1(vec2<f32>(-684f, 322f), 1327i, -1475f, vec4<bool>(false, true, var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x))), (any(vec3<bool>(true, true, true)) | all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))) == true), vec2<bool>(var_0.x, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, global0.x, 0u)))).x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(202f, 389f)))), var_0.x);
    global2 = array<vec3<i32>, 9>();
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-471f, 1230f)), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 24804i, -1i), vec3<i32>(1i, 2147483647i, -14864i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f + -468f))), !select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, false, true, var_0.x), true)), vec2<bool>(var_0.x, all(vec2<bool>(var_0.x, var_0.x)))));
    let var_2 = 1i;
    let var_3 = ~(~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), u_input.b))));
    let var_4 = vec2<i32>(-1i) * -(-countOneBits(vec2<i32>(var_2, -1701i)) >> (~(~global0.yy) % vec2<u32>(32u)));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(41930u, 9u)], reverseBits(-vec3<i32>(1i, var_4.x, -2147483647i))), firstLeadingBit(51742i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * var_1.a.x)), -1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_5.c))), var_5.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, var_5.a.x, var_5.c, 305f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(156f, 1683f, var_1.a.x, 2125f), vec4<f32>(-432f, -1187f, 451f, -985f), var_1.e.x))))), !select(!vec4<bool>(var_1.d.x, false, false, false), !var_5.d, func_4(Struct_1(vec2<f32>(-2150f, -878f), var_4.x, var_1.c, vec4<bool>(var_5.d.x, var_0.x, true, var_5.d.x), var_1.d.yy), var_1, var_1.e.x, Struct_1(var_1.a, 45517i, var_1.c, var_1.d, var_1.d.xz))))), ~(~(~global0.xz)));
}

