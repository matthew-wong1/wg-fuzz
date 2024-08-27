struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 2>;

var<private> global2: f32;

var<private> global3: array<Struct_3, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    var var_0 = 1i;
    var var_1 = ~(~4294967295u << ((_wgslsmith_mult_u32(u_input.b, firstTrailingBit(1u)) & u_input.b) % 32u));
    let var_2 = Struct_2(any(vec4<bool>(true, true, true, true)) && select(countOneBits(u_input.a) > reverseBits(2147483647i), all(vec4<bool>(true, false, true, true)) && true, true), ~abs(u_input.b));
    global1 = array<vec2<i32>, 2>();
    var var_3 = var_2.a | (false | !(!(true == var_2.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f * -996f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-108f))))))) - _wgslsmith_f_op_f32(307f + -209f));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> bool {
    global1 = array<vec2<i32>, 2>();
    global2 = _wgslsmith_f_op_f32(trunc(-1103f));
    var var_0 = Struct_4(~(~35450u));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2.d)))), _wgslsmith_f_op_f32(-932f - 758f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_2.d)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 140f));
    return false;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: u32) -> vec4<bool> {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))) == 399f, all(vec2<bool>(all(vec2<bool>(false, false)), false))), select(vec2<bool>(false, select(true, true, false) | any(vec2<bool>(false, true))), vec2<bool>(true, true), true));
    let var_1 = !var_0.x;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = vec3<i32>((firstTrailingBit(countOneBits(arg_1.x)) ^ max(1i, 1i)) << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.x >> (21484u % 32u), 108467u, arg_3), arg_0.x) % 32u), arg_1.x, abs(~u_input.a));
    var var_3 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x));
    return select(!vec4<bool>(var_0.x, var_1, var_0.x, true), select(!select(!vec4<bool>(var_0.x, true, true, var_1), !vec4<bool>(false, var_0.x, false, var_1), false), select(vec4<bool>(any(vec2<bool>(var_1, true)), var_1, true, false), !(!vec4<bool>(true, false, var_0.x, var_0.x)), -5192i < _wgslsmith_clamp_i32(2147483647i, arg_1.x, -10549i)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, all(vec3<bool>(var_1, true, false)), var_1, all(vec2<bool>(true, var_1))), vec4<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)), arg_2.x >= 1176f, true && var_0.x))), var_1);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(abs(1380f));
    var var_0 = abs(~firstLeadingBit(~vec2<i32>(-1i, u_input.a))) << (abs(vec2<u32>(4294967295u, arg_1)) % vec2<u32>(32u));
    let var_1 = arg_3.zz;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1511f)), 1000f));
    var var_2 = vec4<bool>(arg_2.a, select(arg_3.x, arg_3.x && func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_1, u_input.b, 0u), vec4<u32>(arg_2.b, 69317u, arg_2.b, 1u)), vec2<i32>(-2147483647i, -8104i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1113f, -1305f, 954f, 216f) + vec4<f32>(1000f, 842f, 1502f, -799f)), firstLeadingBit(0u)).x, arg_3.x), all(vec2<bool>(arg_3.x, true)) & all(vec4<bool>(true, true, true, !arg_3.x)), !func_3(~firstLeadingBit(vec4<u32>(21303u, u_input.b, arg_1, arg_1)), countOneBits(firstTrailingBit(vec2<i32>(-2668i, 17922i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(915f, -668f, 860f, 1163f))), _wgslsmith_mod_u32(~u_input.b, 1u << (arg_1 % 32u))).x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 2>();
    global2 = _wgslsmith_f_op_f32(func_4(u_input.a, 3648u, Struct_2(((u_input.b < u_input.b) != func_1(vec3<i32>(u_input.a, 1i, -2147483647i), false, Struct_1(vec2<u32>(u_input.b, 74995u), -2009i, vec4<bool>(true, false, true, false), 793f, vec2<bool>(true, false)))) | true, u_input.b), !select(func_3(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), -global1[_wgslsmith_index_u32(80645u, 2u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(1091f, 241f, -1412f, 1811f) * vec4<f32>(216f, 1988f, -1877f, 2178f)), u_input.b), vec4<bool>(true, true, true, true), false)));
    let var_0 = ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 1i), ~vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_sub_i32(firstTrailingBit(u_input.a), _wgslsmith_div_i32(-1i, 2147483647i))), _wgslsmith_mult_i32(u_input.a >> (u_input.b % 32u), reverseBits(u_input.a)), u_input.a, u_input.a);
    let var_1 = u_input.b;
    var var_2 = select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true))), abs(var_0.x) != 19111i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, var_1, u_input.b)), vec3<u32>(4294967295u, 28730u & var_1, u_input.b)), select(~(abs(vec3<u32>(1u, var_1, 12602u)) & (vec3<u32>(63064u, var_1, var_1) << (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)))), ~vec3<u32>(abs(45083u), var_1, var_1), !func_1(vec3<i32>(var_0.x, u_input.a, -52312i), true, Struct_1(vec2<u32>(var_1, 25593u), 1i, vec4<bool>(false, false, true, var_2.x), -1010f, vec2<bool>(var_2.x, var_2.x)))));
}

