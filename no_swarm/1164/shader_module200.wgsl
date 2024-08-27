struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -76879i;

var<private> global1: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false));

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1025f, 1000f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1126f, -300f)))))), 1i);
    let var_1 = false;
    var var_2 = vec4<i32>(max(max(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 1i, var_0.b, u_input.c), vec4<i32>(u_input.a.x, 23007i, 1i, var_0.b)), u_input.d.x), i32(-1i) * -u_input.c), -_wgslsmith_add_i32(1i, -u_input.c)), (i32(-1i) * -1i) << (_wgslsmith_add_u32(1u, 1u) % 32u), ~countOneBits(i32(-1i) * -12057i), var_0.b);
    var_2 = vec4<i32>(var_0.b, u_input.a.x, var_2.x | _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.b, -1i), 1i), var_2.x) & vec4<i32>(0i, -2147483647i, u_input.c, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), var_2.yw), var_2.x), u_input.b >> (_wgslsmith_add_u32(17101u, 32314u) % 32u)));
    var var_3 = Struct_3(~(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-32046i, 10510i), _wgslsmith_mod_i32(55177i, 2147483647i))), select(~vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_div_vec4_u32(~vec4<u32>(20482u, 4294967295u, 40188u, 26971u), vec4<u32>(1u, 1u, 1u, 1u)), (_wgslsmith_f_op_f32(-var_0.a.x) != _wgslsmith_f_op_f32(exp2(var_0.a.x))) & all(vec3<bool>(var_1, true, false))), ~(~(~vec3<u32>(64363u, 1u, 1u))) | select(~abs(vec3<u32>(89511u, 33201u, 22276u)), ~(~vec3<u32>(1u, 4294967295u, 60390u)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -954f), -1256f)) + var_0.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = ~(~abs(vec2<u32>(arg_0, arg_0)) | vec2<u32>(~arg_0 | ~0u, arg_0));
    global1 = array<vec4<bool>, 8>();
    let var_1 = vec2<i32>(u_input.a.x, -23470i);
    let var_2 = Struct_2(vec2<f32>(-593f, _wgslsmith_f_op_f32(func_3())), -1i);
    var var_3 = all(vec2<bool>(true, -288f >= _wgslsmith_f_op_f32(1967f + var_2.a.x))) || !(!(true || all(vec3<bool>(false, false, true))));
    return vec3<u32>(_wgslsmith_div_u32(arg_0, ~(~_wgslsmith_dot_vec2_u32(var_0, var_0))), (1u ^ arg_0) & 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(abs(var_0.x)), min(arg_0, var_0.x)), ~var_0));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> vec4<i32> {
    var var_0 = Struct_4(Struct_3(firstTrailingBit(-arg_1.x), firstLeadingBit(vec4<u32>(func_2(0u).x, ~4294967295u, _wgslsmith_div_u32(0u, 4294967295u), 1u)), abs(~vec3<u32>(4294967295u, 64792u, 32446u)), 416f), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-992f + 1069f), -969f, all(global1[_wgslsmith_index_u32(95292u, 8u)]))), _wgslsmith_f_op_f32(f32(-1f) * -681f)), arg_0));
    global2 = ~(max(arg_2, -22926i) ^ -1i);
    global0 = 2147483647i;
    global0 = var_0.b.b;
    let var_1 = vec2<bool>(!any(vec2<bool>(true, true)), false);
    return countOneBits(abs(~(-vec4<i32>(71122i, -16585i, 1i, -49404i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3.c.x;
    return Struct_3(1901i, reverseBits(vec4<u32>(4294967295u >> (1u % 32u), 1u, 1u >> (1u % 32u), ~0u)), ~vec3<u32>(21569u, ~1u, abs(4294967295u)) ^ vec3<u32>(~(~0u), _wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(31998u, 57680u)), countOneBits(_wgslsmith_clamp_u32(0u, 28233u, 78409u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1226f)) + arg_3.c.x), -331f));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = 21469u;
    let var_1 = func_5(func_4(18492i, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-17260i, u_input.c, -1i), vec3<i32>(0i, -1i, -1i), vec3<i32>(u_input.a.x, 1i, -45254i)) << ((func_2(0u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 27761u), vec3<u32>(55174u, 17574u, 4294967295u), vec3<u32>(4294967295u, 72951u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_i32(countOneBits(u_input.c) >> (10031u % 32u), -(~2147483647i))), -_wgslsmith_sub_i32(firstLeadingBit(6133i), ~u_input.a.x) >> (942u % 32u), global1[_wgslsmith_index_u32(countOneBits(4294967295u), 8u)], Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~1u, 0u), 8u)], _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-1i, 1i)), u_input.d | vec2<i32>(u_input.a.x, 10430i)), select(~u_input.a.xx, u_input.a.xz | vec2<i32>(-32856i, 0i), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), arg_0)));
    global1 = array<vec4<bool>, 8>();
    let var_2 = 0i;
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_1.b, var_1.b), 8u)], firstTrailingBit(~reverseBits(vec2<i32>(1i, var_1.a))) | u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, -1708f, -410f, arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1460f, 850f, arg_0, -1270f), vec4<f32>(var_1.d, -1291f, -348f, -1018f))) - vec4<f32>(105f, arg_0, 479f, 749f)))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_3.c.wz * vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_3.c.wz, var_3.c.yz, !var_3.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.c.ww, var_3.c.ww))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = countOneBits(u_input.d);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(-612f + -721f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -475f), -1759f)))))), 2147483647i);
    var var_3 = ~firstTrailingBit(~(~countOneBits(vec4<u32>(0u, 0u, 39208u, 7829u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(~1i, -1i, _wgslsmith_sub_i32(var_2.b, 0i))), -abs(countOneBits(abs(vec4<i32>(u_input.d.x, 0i, -1i, 1i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 586f, 726f, 908f))) - vec4<f32>(_wgslsmith_f_op_f32(-1123f * var_2.a.x), var_2.a.x, -428f, _wgslsmith_f_op_f32(sign(-2563f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-620f, var_2.a.x, var_2.a.x, var_2.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -265f, var_2.a.x, -171f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a.x, var_2.a.x, -1385f, var_2.a.x))))), (true | all(global1[_wgslsmith_index_u32(var_3.x, 8u)])) & all(vec4<bool>(true, false, false, true)))), countOneBits(~(0u >> (func_5(vec4<i32>(12508i, var_0, 0i, 0i), -1i, vec4<bool>(false, false, true, true), Struct_1(global1[_wgslsmith_index_u32(var_3.x, 8u)], vec2<i32>(5811i, 1i), vec4<f32>(344f, var_2.a.x, var_2.a.x, 174f))).b.x % 32u))));
}

