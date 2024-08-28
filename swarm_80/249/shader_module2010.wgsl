struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1267f, 726f), vec2<i32>(i32(-2147483648), 27699i), true, 20067u);

var<private> global2: array<u32, 12> = array<u32, 12>(12917u, 0u, 70134u, 0u, 1u, 0u, 26632u, 4294967295u, 23080u, 17987u, 0u, 79272u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = reverseBits((_wgslsmith_div_vec2_i32(vec2<i32>(-26585i, u_input.d.x), firstLeadingBit(vec2<i32>(arg_0.b.x, arg_0.b.x))) | arg_0.b) | -vec2<i32>(-6763i ^ arg_0.b.x, -1i));
    var var_2 = Struct_4(Struct_3(_wgslsmith_div_vec2_f32(global0.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 1122f) - vec2<f32>(arg_0.a.x, 1026f))), arg_0.d == ~abs(19643u), vec2<bool>(any(vec2<bool>(true, global1.c)), -2147483647i < (global1.b.x << (var_0.d % 32u))), select(arg_0.d, var_0.d, true) ^ firstTrailingBit(arg_1.d), min(_wgslsmith_mult_vec2_u32(var_0.e | vec2<u32>(52622u, global1.d), firstLeadingBit(arg_1.e)), vec2<u32>(72637u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 33767u), vec4<u32>(71415u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.d, 12u)], 12u)], global1.d, 19072u))))));
    var_0 = arg_1;
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.x, -653f))))), any(vec2<bool>(arg_1.b || arg_1.b, !var_0.b)), arg_3.xz, arg_0.d ^ _wgslsmith_dot_vec2_u32(abs(arg_1.e), vec2<u32>(0u, global1.d) ^ var_2.a.e), vec2<u32>(~1u, arg_0.d) << (select(select(vec2<u32>(global1.d, u_input.c), vec2<u32>(u_input.c, 0u), global1.c), arg_1.e, vec2<bool>(true, true)) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1192f))), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), 281f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-838f, _wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(-arg_1.a.x), 257f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(304f, global1.a.x, 1114f, -575f), vec4<f32>(556f, global1.a.x, -244f, global0.x))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 984f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x * arg_3.x), -663f, _wgslsmith_div_f32(global0.x, arg_3.x), -1000f) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(-844f, arg_3.x), u_input.d.yz, global1.c, 4294967295u), Struct_3(global1.a, arg_0, vec2<bool>(true, false), global2[_wgslsmith_index_u32(global1.d, 12u)], vec2<u32>(arg_1, 0u)), -u_input.a.x, !vec4<bool>(global1.c, global1.c, false, global1.c))))));
    let var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), ~(~vec2<u32>(arg_1, u_input.c))), ~reverseBits(~firstTrailingBit(vec2<u32>(global1.d, 1u))));
    var var_1 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(global1.a.x, arg_2), global1.b, false, u_input.c), Struct_3(arg_3, global1.c, vec2<bool>(global1.c, true), arg_1, vec2<u32>(u_input.c, global1.d)), i32(-1i) * -1i, select(vec4<bool>(global1.c, global1.c, true, false), vec4<bool>(true, false, true, arg_0), global1.c))).x))));
    var var_2 = all(vec4<bool>(!arg_0, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global0.x)) < _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, 426f))), global1.c));
    global2 = array<u32, 12>();
    return select(!vec4<bool>(any(select(vec3<bool>(global1.c, global1.c, false), vec3<bool>(true, global1.c, global1.c), global1.c)), false, false, false), select(vec4<bool>(global1.c, global1.c, all(select(vec3<bool>(true, true, true), vec3<bool>(global1.c, false, arg_0), vec3<bool>(true, false, global1.c))), true), !vec4<bool>(any(vec2<bool>(true, global1.c)), !arg_0, true, true), !select(select(vec4<bool>(false, arg_0, global1.c, global1.c), vec4<bool>(true, arg_0, arg_0, arg_0), global1.c), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), select(vec4<bool>(true, global1.c, all(select(vec4<bool>(arg_0, arg_0, true, global1.c), vec4<bool>(false, true, arg_0, global1.c), vec4<bool>(false, false, false, global1.c))), all(select(vec4<bool>(global1.c, true, arg_0, true), vec4<bool>(arg_0, global1.c, arg_0, global1.c), vec4<bool>(true, arg_0, false, global1.c)))), select(vec4<bool>(all(vec4<bool>(arg_0, global1.c, false, true)), true, false, true), !vec4<bool>(global1.c, arg_0, false, false), arg_0), !select(select(vec4<bool>(true, false, false, global1.c), vec4<bool>(arg_0, global1.c, true, arg_0), vec4<bool>(global1.c, true, arg_0, true)), select(vec4<bool>(arg_0, false, global1.c, arg_0), vec4<bool>(true, true, false, false), global1.c), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.a))), abs(vec2<i32>(-_wgslsmith_clamp_i32(25419i, arg_1, u_input.b), _wgslsmith_mult_i32(global1.b.x >> (arg_2.e.x % 32u), -24534i << (1u % 32u)))), ((arg_1 ^ -arg_1) != ~_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_1, 25106i, arg_1))) | true, 36589u);
    return !(!vec3<bool>(true, arg_0.x, arg_2.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    var var_0 = false;
    let var_1 = Struct_2(arg_0.a, func_4(func_2(all(vec4<bool>(arg_0.a.c, true, global1.c, arg_0.a.c)), abs(~arg_0.a.d), 864f, global0.xz), u_input.d.x, Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(global0.x, 325f), vec2<i32>(global1.b.x, arg_0.a.b.x), false, 13578u), Struct_3(global1.a, false, vec2<bool>(false, arg_0.a.c), 0u, vec2<u32>(1u, 4294967295u)), arg_0.a.b.x, vec4<bool>(true, global1.c, arg_0.a.c, false))).ww, _wgslsmith_f_op_vec2_f32(round(arg_0.a.a)))), (arg_0.a.d >= global1.d) & true, func_2(true, arg_0.a.d, _wgslsmith_f_op_f32(808f * arg_1), global0.zy).xz, global1.d, ~vec2<u32>(5185u, global1.d)), Struct_3(arg_0.a.a, !arg_0.b.x, vec2<bool>(1u != global2[_wgslsmith_index_u32(arg_0.a.d, 12u)], true), max(global1.d, arg_0.a.d), vec2<u32>(arg_0.a.d, u_input.c) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(Struct_1(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(min(global0.x, -1438f))), ~(~u_input.a), false, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 12u)] << (50918u % 32u), global1.d)), vec3<bool>(true, any(select(vec3<bool>(global1.c, true, true), vec3<bool>(true, false, false), false)), any(!vec4<bool>(global1.c, global1.c, true, true)))), global0.x);
    var_0 = func_1(func_1(func_1(Struct_2(func_1(Struct_2(var_0.a, var_0.b), -251f).a, !vec3<bool>(true, global1.c, var_0.b.x)), _wgslsmith_f_op_f32(max(3444f, _wgslsmith_div_f32(-499f, 687f)))), -1051f), var_0.a.a.x);
    global2 = array<u32, 12>();
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, _wgslsmith_add_vec3_i32(vec3<i32>(-26834i, global1.b.x, var_0.a.b.x) >> (~vec3<u32>(0u, 16565u, u_input.c) % vec3<u32>(32u)), -u_input.d ^ vec3<i32>(var_0.a.b.x, u_input.a.x, 33734i))), firstTrailingBit(vec3<i32>(func_1(Struct_2(Struct_1(var_0.a.a, vec2<i32>(global1.b.x, -10121i), var_0.a.c, var_0.a.d), vec3<bool>(true, true, global1.c)), _wgslsmith_f_op_f32(select(-545f, global1.a.x, var_0.b.x))).a.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), ~vec2<i32>(var_0.a.b.x, var_0.a.b.x)), ~(-2147483647i) >> (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(var_0.a.d, 12u)], 1u, 0u) % 32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 1494f, 1506f) * vec3<f32>(var_0.a.a.x, global0.x, 1436f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -2614f, -209f), global0.xwx))))));
    let var_3 = vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(u_input.c)), 12u)], var_0.a.d);
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1136f, _wgslsmith_div_f32(-550f, -386f), var_0.a.a.x, global1.a.x)));
    global1 = var_0.a;
    let var_4 = ~vec3<u32>(~global2[_wgslsmith_index_u32(~firstLeadingBit(1u), 12u)], ~(_wgslsmith_mult_u32(4294967295u, var_0.a.d) ^ global1.d), 7655u << (var_3.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(25737u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-782f, -689f, var_0.a.a.x, 1055f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.a.x, -974f, global1.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global1.a.x, global0.x, 258f), vec4<f32>(var_2.x, -1057f, 1295f, var_0.a.a.x), false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1221f, var_2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, global1.a.x, -371f, global0.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.a.a.x, var_2.x, var_0.a.a.x) + vec4<f32>(-582f, global0.x, global1.a.x, var_2.x)))))), countOneBits(u_input.a.x) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, var_1.x, var_1.x, global1.b.x), -vec4<i32>(-1i, 2147483647i, var_0.a.b.x, 0i)), global1.b.x, ~global1.b.x), _wgslsmith_div_vec3_i32(-vec3<i32>(abs(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, -27841i, -2147483647i, -1i), vec4<i32>(u_input.a.x, 37352i, global1.b.x, var_0.a.b.x)), -6616i), max(vec3<i32>(54188i, -var_0.a.b.x, 16353i), var_1)));
}

