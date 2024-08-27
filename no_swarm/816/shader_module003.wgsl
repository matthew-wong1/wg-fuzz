struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-590f, -357f));

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_1, 4>;

var<private> global4: array<vec2<i32>, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-266f + -225f);
    let var_1 = global1.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, global1.a.x) + vec3<f32>(global1.a.x, global1.a.x, 771f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2224f, global1.a.x, -1214f) - vec3<f32>(global1.a.x, -947f, -469f))))));
    var var_3 = ~vec4<i32>(-140i, u_input.d, u_input.d, _wgslsmith_clamp_i32(u_input.c.x, -1i, u_input.d));
    global4 = array<vec2<i32>, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), 384f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), 1408f)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    global2 = ~(u_input.b | _wgslsmith_div_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, u_input.b)), firstTrailingBit(u_input.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(37914u, 36464u, 61982u, u_input.b), min(vec4<u32>(u_input.a, 6826u, 11791u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.b, 0u)))));
    let var_0 = global3[_wgslsmith_index_u32(abs(u_input.b) & u_input.a, 4u)];
    let var_1 = Struct_2(Struct_1(vec2<f32>(-137f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-812f)))))), false);
    global2 = abs(_wgslsmith_mod_u32(u_input.b & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 14703u), vec4<u32>(0u, 71337u, 4294967295u, 34232u)), 92644u) & (_wgslsmith_mod_u32(u_input.a & u_input.a, 26428u) & 1u));
    global3 = array<Struct_1, 4>();
    return (0u & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(20928u, 1u), vec2<u32>(u_input.b, 74385u), arg_1.xx)), ~8186u ^ u_input.b)) >> (0u % 32u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = -abs(reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(4294967295u, 1u, arg_1.a), ~34704u), 4u)]));
    var var_1 = true;
    var var_2 = -vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(i32(-1i) * -10344i, u_input.d), 1i) & _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, var_0.x, _wgslsmith_div_i32(var_0.x, u_input.d)), max(abs(vec3<i32>(34583i, -1i, 1i) ^ vec3<i32>(30243i, 0i, u_input.c.x)), abs(vec3<i32>(u_input.d, var_0.x, u_input.c.x))));
    global4 = array<vec2<i32>, 4>();
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1214u, 4294967295u)), vec3<u32>(u_input.a, 16435u, 0u)), func_3(Struct_2(Struct_1(vec2<f32>(1848f, global1.a.x)), arg_1.a), vec3<bool>(arg_1.a, false, true), arg_1.a), u_input.b), vec4<u32>(firstTrailingBit(arg_0.x), ~max(44755u, u_input.a), 4294967295u, ~u_input.b)) & 34327u, 4u)];
    return arg_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> Struct_1 {
    global2 = ~(~(59048u << (arg_2 % 32u)));
    var var_0 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, arg_2), vec2<u32>(u_input.b, arg_1)))), max(vec2<u32>(func_3(global0[_wgslsmith_index_u32(arg_2, 31u)], vec3<bool>(arg_0.a, true, arg_0.a), arg_0.a), 22137u & u_input.b) & min(vec2<u32>(u_input.a, 1u), ~vec2<u32>(arg_1, 72485u)), ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), max(0u, 18283u))), vec2<u32>(arg_1, ~abs(~u_input.a)));
    let var_1 = _wgslsmith_add_vec3_i32(~(~((vec3<i32>(-1i, 2147483647i, u_input.c.x) & vec3<i32>(u_input.d, 36139i, u_input.c.x)) & max(vec3<i32>(u_input.c.x, 0i, -14174i), vec3<i32>(u_input.d, u_input.d, u_input.d)))), -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 0i, -46128i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.d, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.d))), -2147483647i, 14342i));
    global4 = array<vec2<i32>, 4>();
    var var_2 = countOneBits(~vec3<u32>(1u, (arg_1 & 4294967295u) << (54022u % 32u), 27940u));
    return global3[_wgslsmith_index_u32(4294967295u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1362f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f) - _wgslsmith_f_op_f32(-585f + global1.a.x)), _wgslsmith_f_op_f32(func_1()))));
    var var_1 = var_0.a;
    var_0 = func_4(Struct_3(true), u_input.a, ~func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) | select(vec2<u32>(u_input.a, 1u), vec2<u32>(25609u, 9472u), vec2<bool>(true, false)), Struct_3(true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.a.x) * _wgslsmith_f_op_vec2_f32(-global1.a)) * var_0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(555f, var_1.x), -1327f)))));
    var var_3 = -countOneBits(firstLeadingBit(select(countOneBits(vec3<i32>(u_input.d, u_input.d, u_input.d)), ~vec3<i32>(u_input.c.x, u_input.c.x, -29424i), true)));
    global3 = array<Struct_1, 4>();
    let var_4 = vec2<bool>(any(vec4<bool>(false, false, all(vec4<bool>(false, true, true, true)), true)), any(vec2<bool>(_wgslsmith_f_op_f32(global1.a.x + -1311f) > _wgslsmith_f_op_f32(min(global1.a.x, var_0.a.x)), all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(57677u, 12076u));
}

