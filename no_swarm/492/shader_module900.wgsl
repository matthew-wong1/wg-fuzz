struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true));

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)));

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(select(!vec3<bool>(global1.a.x != true, any(vec2<bool>(global1.a.x, true)), global1.a.x || global1.a.x), !select(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), !vec3<bool>(global1.a.x, global1.a.x, true), !vec3<bool>(true, false, global1.a.x)), vec3<bool>(global1.a.x, true, all(global1.a.xz))));
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(42536u, ~arg_0.x), ~4294967295u, reverseBits(1u), 0u), countOneBits(firstTrailingBit(select(vec4<u32>(global4.x, 99695u, 4294967295u, 4294967295u), max(vec4<u32>(arg_0.x, 12698u, arg_0.x, 4294967295u), arg_0), !global1.a.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f * -1366f)), -644f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(step(global2.x, global2.x)))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1000f, global2.x, -851f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1174f, global2.x, -1279f, global2.x))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-986f)), _wgslsmith_f_op_f32(global2.x * global2.x), global2.x, global2.x)))));
    var var_4 = Struct_1(vec3<bool>(true, var_0.a.x, false));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) - _wgslsmith_f_op_f32(trunc(-841f))))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    let var_0 = 32809u;
    var var_1 = _wgslsmith_f_op_f32(func_3(~(~vec4<u32>(~50165u, global4.x, var_0 | 2470u, 36413u ^ global4.x))));
    global3 = array<Struct_1, 4>();
    var var_2 = Struct_1(vec3<bool>(any(global1.a.xz), select(global1.a.x && true, any(select(global1.a.xy, vec2<bool>(global1.a.x, true), global1.a.xz)), !select(false, false, false)), !(global1.a.x == true)));
    let var_3 = vec2<bool>((select(global4.x, global4.x >> (var_0 % 32u), var_2.a.x) >= 0u) && all(vec3<bool>(any(vec2<bool>(global1.a.x, global1.a.x)), !global1.a.x, !global1.a.x)), any(vec3<bool>(false, false, global1.a.x)));
    return var_2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), global2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(round(global2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-675f, global2.x) * vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, -871f)))))));
    global1 = Struct_1(!(!(!(!global1.a))));
    var var_0 = true;
    global1 = Struct_1(arg_0.a);
    global0 = array<Struct_1, 30>();
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = func_4(arg_1, Struct_1(vec3<bool>(1u < (global4.x & global4.x), func_2(-vec3<i32>(arg_0, 2147483647i, -33694i), u_input.a), ~global4.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(54447u, 63556u, 52836u), vec3<u32>(global4.x, global4.x, global4.x)))));
    global3 = array<Struct_1, 4>();
    let var_1 = -82541i;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(func_3(~(~vec4<u32>(global4.x, 0u, 42125u, global4.x) << (select(~vec4<u32>(global4.x, 4294967295u, 21071u, global4.x), vec4<u32>(0u, 4294967295u, global4.x, global4.x), !vec4<bool>(false, global1.a.x, var_2.a.x, var_2.a.x)) % vec4<u32>(32u)))));
    return _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(min(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_1, -7305i, var_1, 1i)), vec4<i32>(var_1, var_1, arg_0, -31083i) >> (vec4<u32>(global4.x, global4.x, global4.x, global4.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, 34115i, arg_0, u_input.a.x)), firstTrailingBit(vec4<i32>(-27227i, 21595i, u_input.a.x, -1i)))), -(~max(vec4<i32>(var_1, 2511i, 2147483647i, var_1), vec4<i32>(arg_0, 25578i, var_1, 0i)))), ~(vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, arg_0, 2147483647i)));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = 4294967295u << (~reverseBits(arg_2.x) % 32u);
    var_0 = 1u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * global2.x) * _wgslsmith_div_f32(arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1025f)), -954f);
    global2 = arg_1.zw;
    var var_2 = global3[_wgslsmith_index_u32(~global4.x, 4u)];
    return global3[_wgslsmith_index_u32(abs(global4.x >> (40519u % 32u)) >> (countOneBits(firstLeadingBit(abs(arg_2.x))) % 32u), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<u32>(10237u, 44902u);
    var var_0 = func_5((firstLeadingBit(1i) & -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(-1i, 1i, u_input.a.x))) & ((u_input.a.x ^ ~u_input.a.x) ^ -(~u_input.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(343f * -518f), global2.x, -334f, -1877f)))), vec2<u32>(global4.x, ~(~_wgslsmith_mult_u32(global4.x, 32369u))), select(~(~func_1(4719i, global3[_wgslsmith_index_u32(9082u, 4u)])), vec4<i32>(abs(-u_input.a.x), 12595i, -8955i, u_input.a.x), false));
    var var_1 = ~(~firstLeadingBit(~(vec2<u32>(48331u, 0u) >> (vec2<u32>(global4.x, global4.x) % vec2<u32>(32u)))));
    let var_2 = Struct_1(!func_4(func_5(u_input.a.x, vec4<f32>(global2.x, -772f, 559f, global2.x), vec2<u32>(global4.x, var_1.x), -vec4<i32>(-7704i, u_input.a.x, -1i, -1i)), global3[_wgslsmith_index_u32(1u, 4u)]).a);
    var var_3 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1236f, 842f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(239f, global2.x) - vec2<f32>(global2.x, -1479f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-367f, global2.x))))))), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, var_1.x, global4.x, var_1.x), vec4<u32>(0u, global4.x, 34464u, 4294967295u)))));
}

