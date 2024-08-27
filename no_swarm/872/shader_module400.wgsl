struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 13> = array<u32, 13>(14258u, 4294967295u, 27141u, 26656u, 24415u, 1u, 0u, 25677u, 40283u, 39714u, 10188u, 48595u, 42698u);

var<private> global2: array<vec4<i32>, 11>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(4294967295u, 4294967295u), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x >> (7u % 32u), ~arg_0.b.x), 0u, 1u), global3.c, ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0.d.x, arg_0.d.x), arg_0.d) | max(global3.d, vec3<i32>(global3.d.x, arg_0.c, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.e, _wgslsmith_f_op_f32(floor(-953f)))))), arg_0);
    var var_1 = Struct_4(arg_0, arg_0.c, Struct_3(Struct_1(~global1[_wgslsmith_index_u32(772u, 13u)] & _wgslsmith_mod_u32(1u, 26808u), firstTrailingBit(arg_0.b), 7409i, _wgslsmith_add_vec3_i32(var_0.b.d, select(vec3<i32>(-21784i, 0i, 2147483647i), vec3<i32>(-22073i, 11701i, global3.d.x), true)), _wgslsmith_f_op_f32(global3.e * _wgslsmith_f_op_f32(min(arg_0.e, 321f)))), Struct_1(arg_0.a, u_input.a, global3.c, vec3<i32>(global3.d.x, var_0.b.d.x, 0i) & vec3<i32>(arg_0.d.x, -2147483647i, -1i), -992f), _wgslsmith_f_op_f32(ceil(-109f)), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(step(-228f, -241f)), all(vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))));
    var var_2 = Struct_3(arg_0, arg_0, 143f, !var_1.c.d);
    return -var_0.a.c;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = global3.d.x;
    let var_1 = (false && any(vec2<bool>(true, true))) | all(!vec2<bool>(true, any(vec2<bool>(true, false))));
    var var_2 = Struct_3(Struct_1(0u, _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global3.a, 17540u, 33953u), u_input.a), ~(global3.b ^ global3.b)), -1i, -min(-global3.d, select(global3.d, vec3<i32>(global3.d.x, global3.d.x, global3.d.x), var_1)), _wgslsmith_f_op_f32(-global3.e)), Struct_1(_wgslsmith_sub_u32(global3.a, 53626u), u_input.a, func_3(Struct_1(global3.a, global3.b, global3.c | global3.d.x, -vec3<i32>(global3.c, global3.d.x, global3.d.x), _wgslsmith_f_op_f32(-global3.e))), -vec3<i32>(global3.c, -global3.d.x, 49124i), global3.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)) - -1350f))), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_1, var_1), var_1), !vec3<bool>(true, var_1, var_1), !var_1)));
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.e, 318f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.e), var_2.c)))), var_2.b.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(global3.b.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_3 + vec2<f32>(arg_0.x, 602f)))) - arg_3) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * arg_0), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-333f, var_0.x)))));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 13u)] << (firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(33799u, arg_2, 1u), vec3<u32>(arg_1.x, global1[_wgslsmith_index_u32(1u, 13u)], arg_1.x)))) % 32u);
    let var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.e))), _wgslsmith_f_op_vec2_f32(func_2(countOneBits(global1[_wgslsmith_index_u32(0u, 13u)]))).x)) > -1533f, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f - global3.e)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 475f)), false, any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true))))), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1f, -1654f, var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, 380f, var_0.x, 631f)))))));
    return Struct_4(Struct_1((u_input.a.x & 1u) ^ (abs(2372u) ^ global3.a), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, global3.b), global3.b), ~min(-global3.c, global3.d.x << (97709u % 32u)), global3.d, _wgslsmith_f_op_f32(arg_3.x + arg_0.x)), 17698i, Struct_3(Struct_1(min(1u, 44534u) << (~global3.b.x % 32u), abs(~global3.b), ~reverseBits(global3.c), global3.d, var_3.x), Struct_1(0u, vec3<u32>(var_1, global3.a, 1u), -2147483647i, vec3<i32>(abs(-16683i), reverseBits(global3.c), global3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(946f * -148f) * var_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e - 757f)), _wgslsmith_f_op_f32(f32(-1f) * -716f)), var_2.wwy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1266f)))), _wgslsmith_f_op_f32(-global3.e))), all(select(select(var_2.yyx, vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, true, false)), vec3<bool>(var_2.x, false, var_2.x), select(vec3<bool>(var_2.x, true, true), var_2.zww, var_2.x))) != (any(vec2<bool>(true, var_2.x)) | var_2.x));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(89448u, 11u)], global2[_wgslsmith_index_u32(29334u, 11u)]), vec4<i32>(arg_2.b, global3.c, -2147483647i, 0i) ^ global2[_wgslsmith_index_u32(global3.a, 11u)]), 18214i >> ((global1[_wgslsmith_index_u32(27483u, 13u)] ^ global1[_wgslsmith_index_u32(arg_2.c.a.b.x, 13u)]) % 32u)) | global3.c, arg_2.b);
    let var_1 = ~_wgslsmith_div_vec3_i32(abs(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.d.x, -2147483647i, arg_2.a.d.x), arg_2.a.d))), global3.d);
    global2 = array<vec4<i32>, 11>();
    global1 = array<u32, 13>();
    global2 = array<vec4<i32>, 11>();
    return Struct_3(arg_2.c.a, Struct_1(abs(u_input.a.x), max(~arg_2.c.b.b, ~vec3<u32>(13489u, 1u, 91397u)), var_1.x, vec3<i32>(_wgslsmith_sub_i32(var_1.x, global3.c) & func_1(vec2<f32>(global3.e, -1106f), vec2<u32>(global1[_wgslsmith_index_u32(arg_0, 13u)], 3432u), 43888u, vec2<f32>(arg_2.d, global3.e)).a.d.x, var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.b), max(var_1.zz, arg_2.c.b.d.zy))), -997f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)))), vec3<bool>((reverseBits(u_input.a.x) == ~69435u) | arg_2.c.d.x, !arg_2.e || false, select(func_1(vec2<f32>(global3.e, global3.e), arg_2.a.b.zy, arg_3.x, vec2<f32>(global3.e, global3.e)).c.d.x, arg_2.e | arg_2.e, all(vec4<bool>(arg_2.e, false, true, false))) || false));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(353f)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-global3.e), 1f), vec2<u32>(_wgslsmith_add_u32(65534u, global1[_wgslsmith_index_u32(1u, 13u)]), reverseBits(8491u)), ~(~20245u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.e, -1330f) + vec2<f32>(-1000f, 1434f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(864f, -835f))))).d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_4(global3.b.x, vec2<u32>(arg_0.a.b.x, 4294967295u), Struct_4(Struct_1(u_input.a.x, vec3<u32>(37097u, global3.b.x, u_input.a.x), -16455i, vec3<i32>(-1141i, 1i, arg_0.a.c), 1793f), global3.c, arg_0, arg_0.c, true), arg_0.b.b.zx).a.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e, arg_0.a.e, -400f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.e, -1654f, global3.e) - vec3<f32>(arg_0.b.e, global3.e, 599f)), arg_0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e, 350f, 456f) - vec3<f32>(-1591f, 114f, arg_0.c)) - vec3<f32>(global3.e, -718f, global3.e))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2627f, global3.e, -1219f), vec3<f32>(global3.e, global3.e, -710f)))))), !arg_0.d.x));
    let var_1 = -vec4<i32>(~(-2147483647i), -1i, ~1i, ~0i);
    var var_2 = u_input.a.xz;
    var var_3 = Struct_2(func_1(vec2<f32>(-746f, arg_0.b.e), vec2<u32>(var_2.x, 42008u), ~14638u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.e, 319f), var_0.yz, arg_0.d.x))))).a, func_4(0u >> (u_input.a.x % 32u), ~select(_wgslsmith_mod_vec2_u32(arg_0.a.b.zz, u_input.a.xx), vec2<u32>(65612u, 0u), arg_0.d.xx), Struct_4(Struct_1(1u, abs(global3.b), _wgslsmith_sub_i32(-2147483647i, -3293i), global3.d, global3.e), global3.d.x | (arg_0.b.d.x << (0u % 32u)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, var_0.x) - var_0.xy), ~vec2<u32>(35090u, global3.b.x), 24806u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1158f, global3.e))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c))), true), abs(abs(_wgslsmith_add_vec2_u32(u_input.a.yy, u_input.a.zy)))).a);
    let var_4 = func_4(_wgslsmith_dot_vec3_u32(~arg_0.a.b, _wgslsmith_mod_vec3_u32(func_4(arg_0.a.b.x, vec2<u32>(48167u, u_input.a.x), func_1(vec2<f32>(-1000f, 469f), vec2<u32>(u_input.a.x, 73972u), 47894u, vec2<f32>(var_3.b.e, -417f)), vec2<u32>(u_input.a.x, 1u)).a.b, vec3<u32>(firstLeadingBit(var_3.b.b.x), 1u, ~global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(var_3.a.b.x, 0u) ^ u_input.a.zz, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(12864u, 13u)]))), func_1(var_0.zy, select(~global3.b.yy << (u_input.a.xz % vec2<u32>(32u)), ~vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], u_input.a.x) | vec2<u32>(var_3.a.b.x, arg_0.b.b.x), !(global3.d.x < 1i)), func_4(~1u, vec2<u32>(reverseBits(var_2.x), var_3.a.b.x), Struct_4(Struct_1(85927u, vec3<u32>(59888u, global3.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.a, 13u)], 13u)]), -1i, vec3<i32>(var_1.x, var_1.x, var_1.x), var_0.x), -15661i, arg_0, _wgslsmith_f_op_f32(ceil(2574f)), false), vec2<u32>(arg_0.b.a, global3.a)).a.b.x, var_0.zy), u_input.a.xz).a.a;
    return func_4(0u, select(~(~vec2<u32>(4294967295u, var_4) << (vec2<u32>(60448u, 89417u) % vec2<u32>(32u))), min(~(arg_0.a.b.zz & arg_0.a.b.zz), firstTrailingBit(u_input.a.yx)), true), Struct_4(Struct_1(_wgslsmith_mod_u32(~1u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)] >> (0u % 32u)), vec3<u32>(~var_2.x, firstLeadingBit(1u), 1739u), var_3.a.d.x, ~var_1.wzy, -1819f), var_1.x, arg_0, _wgslsmith_f_op_f32(-var_0.x), all(!arg_0.d)), vec2<u32>(35300u, ~select(~89525u, ~37829u, func_1(vec2<f32>(global3.e, -450f), vec2<u32>(u_input.a.x, var_2.x), global3.b.x, var_0.yy).c.d.x))).b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_1.e;
    var var_2 = abs(min(~(max(arg_1.c.b.d, arg_0.d) << (~arg_1.a.b % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(~var_0.d, global3.d | vec3<i32>(12522i, 2147483647i, 60012i))));
    global0 = ~func_4(global3.a, ~vec2<u32>(u_input.a.x, 4294967295u) >> (select(~u_input.a.zz, arg_1.c.a.b.yy, arg_1.c.d.yy) % vec2<u32>(32u)), arg_1, arg_0.b.xx).b.c;
    let var_3 = ~_wgslsmith_mult_vec3_u32(~(func_5(Struct_3(Struct_1(4294967295u, global3.b, var_2.x, vec3<i32>(var_2.x, arg_1.b, -31080i), 1000f), arg_1.c.a, 757f, arg_1.c.d)).b | _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, u_input.a.x, var_0.a), vec3<u32>(892u, 29173u, var_0.b.x))), ~(~arg_0.b));
    return Struct_1(reverseBits(arg_0.b.x & abs(_wgslsmith_div_u32(var_3.x, 18376u))), vec3<u32>(~arg_1.a.a, func_5(arg_1.c).a, 0u), var_2.x, vec3<i32>(_wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(global3.d, var_0.d), abs(36076i)), -1i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -996f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(36064u, global3.a, 4294967295u, 71168u), vec4<u32>(4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63597u, 13u)], 13u)], u_input.a.x)), 13u)] << (_wgslsmith_add_u32(_wgslsmith_add_u32(0u, u_input.a.x), ~global3.b.x) % 32u), ~global3.b, ~global3.c, global3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.e - -1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_4(func_5(func_4(_wgslsmith_dot_vec3_u32(global3.b, vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u)), u_input.a.xx >> (u_input.a.yx % vec2<u32>(32u)), func_1(vec2<f32>(global3.e, global3.e), vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), 0u, vec2<f32>(-208f, 1000f)), global3.b.yy)), func_5(Struct_3(func_1(vec2<f32>(global3.e, -364f), global3.b.xx, 65458u, vec2<f32>(global3.e, 1300f)).c.a, Struct_1(8308u, vec3<u32>(4294967295u, 31235u, 1u), global3.c, global3.d, global3.e), global3.e, vec3<bool>(false, true, true))).d.x, Struct_3(Struct_1(16982u, global3.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.c, 2147483647i, global3.d.x), vec3<i32>(0i, global3.d.x, 65913i)), vec3<i32>(global3.c, global3.d.x, global3.c) | global3.d, 1285f), func_4(_wgslsmith_mod_u32(u_input.a.x, global3.b.x), ~global3.b.zz, func_1(vec2<f32>(global3.e, 1121f), vec2<u32>(global3.a, 1u), 29495u, vec2<f32>(1939f, global3.e)), vec2<u32>(4294967295u, global3.a)).a, _wgslsmith_f_op_f32(f32(-1f) * -324f), vec3<bool>(true, true, true)), 803f, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.e - 726f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e * -942f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1428f), -1210f, true)))));
    global0 = -18370i;
    global3 = var_0;
    let var_2 = ~global1[_wgslsmith_index_u32(global3.b.x, 13u)];
    let var_3 = func_5(Struct_3(func_6(Struct_1(0u, vec3<u32>(global3.a, 4294967295u, 1425u), global3.c, _wgslsmith_mult_vec3_i32(vec3<i32>(-49610i, -1i, 61430i), global3.d), func_1(vec2<f32>(var_1, 954f), vec2<u32>(global3.b.x, 16574u), global3.b.x, vec2<f32>(-1409f, 515f)).c.a.e), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, -1056f)), global3.b.xz, var_0.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e, var_0.e), vec2<f32>(594f, 1000f), vec2<bool>(true, false))))), Struct_1(u_input.a.x, vec3<u32>(~global3.a, u_input.a.x, _wgslsmith_sub_u32(4294967295u, 9363u)), -(~var_0.d.x), var_0.d << (var_0.b % vec3<u32>(32u)), -980f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e - var_0.e)))), func_1(vec2<f32>(_wgslsmith_f_op_f32(global3.e * 1194f), _wgslsmith_f_op_f32(f32(-1f) * -749f)), u_input.a.xy, 1u >> (1u % 32u), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(0u)).x, 572f)).c.d)).b.xx;
    global3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.e, -1413f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(113f, 1459f) + vec2<f32>(1762f, global3.e))), global3.b.xy, firstLeadingBit(abs(59163u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(0u)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e, 719f), vec2<f32>(1666f, global3.e), false)))).a.d.yz, -global3.d.yy), -699f, _wgslsmith_add_vec4_u32((~vec4<u32>(var_3.x, 1u, 1u, u_input.a.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 51177u), vec4<u32>(11420u, global3.a, u_input.a.x, var_2))) | countOneBits(vec4<u32>(u_input.a.x, 65603u, 47631u, var_0.b.x)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(36391u, 35370u, 44041u, u_input.a.x), vec4<u32>(0u, var_0.b.x, global1[_wgslsmith_index_u32(var_0.b.x, 13u)], u_input.a.x))) | abs(~vec4<u32>(50774u, var_3.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 0u))), ~(vec2<u32>(func_6(var_0, Struct_4(var_0, global3.c, Struct_3(Struct_1(65351u, var_0.b, var_0.c, vec3<i32>(59465i, global3.c, -46094i), 527f), var_0, global3.e, vec3<bool>(true, false, true)), -994f, false)).b.x, u_input.a.x << (26195u % 32u)) ^ ~reverseBits(vec2<u32>(0u, var_3.x))));
}

