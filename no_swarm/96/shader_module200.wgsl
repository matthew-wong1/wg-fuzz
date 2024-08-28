struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i)), false, false));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-9282i, 2147483647i, i32(-2147483648)));

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(-1i, 59428i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 23562i, 0i)), Struct_1(vec3<i32>(-5481i, -26519i, 21478i)), Struct_1(vec3<i32>(-43029i, 2147483647i, -39698i)), Struct_1(vec3<i32>(1i, 11230i, i32(-2147483648))), Struct_1(vec3<i32>(27009i, -19439i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 39417i)), Struct_1(vec3<i32>(-46633i, 0i, -18620i)), Struct_1(vec3<i32>(1i, -2802i, -1i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 46972i)));

var<private> global3: array<i32, 1> = array<i32, 1>(1876i);

var<private> global4: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(arg_0, 10u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-854f * arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-975f)))))));
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(arg_3.xz, vec2<bool>(global0.a.c, false), arg_3.yx)) & !(arg_1.x < _wgslsmith_f_op_f32(trunc(-156f))));
    global2 = array<Struct_1, 10>();
    var var_1 = vec4<bool>(arg_0.c, !(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(round(arg_1.x))) == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, -671f), _wgslsmith_f_op_f32(arg_1.x * 1452f)))), false, any(select(vec2<bool>(arg_0.c, !var_0.x), var_0, global0.a.b)));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, 1620f), _wgslsmith_f_op_f32(941f + arg_1.x)))))));
}

fn func_2() -> i32 {
    global0 = Struct_3(global0.a);
    global0 = Struct_3(global0.a);
    var var_0 = vec4<bool>(true, any(select(select(vec2<bool>(global0.a.c, false), select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(true, global0.a.b), vec2<bool>(global0.a.c, true)), vec2<bool>(false, true)), select(vec2<bool>(global0.a.b, global0.a.b), select(vec2<bool>(global0.a.b, true), vec2<bool>(global0.a.c, global0.a.b), vec2<bool>(global0.a.c, global0.a.c)), !vec2<bool>(global0.a.c, true)), false)), any(vec2<bool>(false, false)), false);
    global3 = array<i32, 1>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.a, vec4<f32>(-943f, 286f, _wgslsmith_div_f32(407f, -617f), _wgslsmith_f_op_f32(f32(-1f) * -837f)), Struct_2(Struct_1(global0.a.a.a), false, 0i != global3[_wgslsmith_index_u32(0u, 1u)]), select(select(vec3<bool>(global0.a.b, var_0.x, global0.a.b), vec3<bool>(var_0.x, false, global0.a.c), var_0.zzx), select(vec3<bool>(true, false, true), vec3<bool>(false, var_0.x, true), var_0.zxy), all(vec4<bool>(var_0.x, var_0.x, false, global0.a.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -481f)));
    return firstTrailingBit(_wgslsmith_add_i32(0i, ~countOneBits(-2147483647i))) << (_wgslsmith_add_u32(1u, 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 1>();
    var var_0 = func_1(~34180u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)) + 153f));
    var var_1 = -_wgslsmith_sub_i32((-15128i & _wgslsmith_div_i32(global3[_wgslsmith_index_u32(14849u, 1u)], global1.a.x)) | 8976i, countOneBits(func_2()));
    var var_2 = _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(select(global0.a.a.a.x, u_input.a.x, global0.a.c), countOneBits(global3[_wgslsmith_index_u32(11678u, 1u)]), var_0.a.x) >> (~560u % 32u)), u_input.a.x & 0i);
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 78733u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 51032u, 14581u), vec4<u32>(9805u, 1u, 54303u, 4294967295u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(-382f, u_input.a.x, vec4<u32>(_wgslsmith_mult_u32(~0u, 1u), 4410u, ~_wgslsmith_mult_u32(firstTrailingBit(1u), ~4294967295u), min(~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, 1u), 29419u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1394f, -1000f)) * 1000f) * 829f), _wgslsmith_f_op_f32(-835f * _wgslsmith_f_op_f32(floor(-211f))), -1000f, 1f));
}

