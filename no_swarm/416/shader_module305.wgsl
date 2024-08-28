struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(1u, 4294967295u, 1u));

var<private> global1: i32 = 33449i;

var<private> global2: array<i32, 22>;

var<private> global3: array<Struct_2, 6>;

var<private> global4: f32 = 1208f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    global3 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(-1f), -474f, -808f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-218f, -448f, -1075f, -1525f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, -957f, -578f, -147f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -410f, -598f, -2444f) * vec4<f32>(496f, -1014f, 339f, 136f)))))));
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    return -1i;
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_1(vec4<u32>(43644u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 30107u), u_input.a.xy) ^ 4294967295u, 0u, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_1, 4294967295u), 21415u)) | select(~abs(vec4<u32>(4294967295u, arg_1, 18637u, u_input.a.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 14164u, 0u, arg_1), vec4<u32>(0u, arg_1, arg_0.a.x, global0.a.x)), !(-1i <= u_input.b)), _wgslsmith_div_i32(abs(global2[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(23875u)), 22u)]), ~u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-417f)))))));
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -48370i, -u_input.b, firstLeadingBit(u_input.b)), vec4<i32>(-var_0.b, func_3(), ~7924i, -43270i)), -vec4<i32>(global2[_wgslsmith_index_u32(33690u, 22u)] >> (var_0.a.x % 32u), var_0.b, var_0.b, 1i)), vec4<i32>(i32(-1i) * -1i, u_input.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-5823i, u_input.b, var_0.b, u_input.b), vec4<i32>(global2[_wgslsmith_index_u32(var_0.a.x, 22u)], u_input.b, 0i, -62395i)), ~(~vec4<i32>(u_input.b, 2147483647i, global2[_wgslsmith_index_u32(arg_0.a.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]))), ~(var_0.b << ((98677u ^ u_input.a.x) % 32u))));
    global0 = Struct_4(abs(var_0.a.wwz));
    global4 = _wgslsmith_f_op_f32(ceil(var_0.c));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, 588f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, var_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1075f, var_0.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1246f, -121f))))) + vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -900f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(var_0.c - 491f)));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    global0 = arg_1;
    global3 = array<Struct_2, 6>();
    let var_0 = ~global2[_wgslsmith_index_u32(~(~select(2939u, arg_1.a.x, arg_1.a.x > 1u)), 22u)];
    global1 = _wgslsmith_mod_i32(-56190i, 27155i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a, 4294967295u, arg_1.a.x, 0u) >> (arg_2.b % vec4<u32>(32u)), ~arg_2.b << (~arg_2.b % vec4<u32>(32u))) % 32u));
    return _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -946f)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~global0.a.x, func_2(Struct_4(vec3<u32>(u_input.a.x, 24060u, u_input.a.x)), _wgslsmith_sub_u32(16778u, u_input.c)), Struct_3(_wgslsmith_div_u32(16371u, 29099u), vec4<u32>(global0.a.x, 39631u, global0.a.x, global0.a.x), any(vec3<bool>(arg_1.x, arg_2, arg_1.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-661f)) + arg_0)));
    global1 = abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(23972u, 22u)], -1i, global2[_wgslsmith_index_u32(global0.a.x, 22u)]), ~vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(68357u, 22u)], 2147483647i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 22u)], u_input.b, 12442i), vec3<i32>(-2147483647i, -23859i, global2[_wgslsmith_index_u32(u_input.a.x, 22u)]))), global2[_wgslsmith_index_u32(~(~max(46886u, 4534u)), 22u)]));
    global3 = array<Struct_2, 6>();
    global4 = 218f;
    global1 = max(firstLeadingBit(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b, u_input.b)) & (vec2<i32>(2147483647i, u_input.b) | vec2<i32>(-13756i, 9552i)), vec2<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.c, 22u)], -50043i), _wgslsmith_mult_i32(u_input.b, 51027i)))), -25986i);
    return !vec4<bool>(any(vec2<bool>(true, arg_0 < var_0)), false, any(select(!arg_1, select(vec3<bool>(true, arg_2, true), vec3<bool>(false, arg_2, false), arg_2), true)), select(any(vec3<bool>(arg_2, arg_1.x, false)), false, all(select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_1.x, true, true), arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(vec3<bool>(true, true, false)), true);
    var_0 = vec2<bool>(select(false, !any(!vec2<bool>(false, var_0.x)), true), (var_0.x || !(false != var_0.x)) || true);
    var var_1 = vec3<bool>(false, true == all(!func_1(-403f, vec3<bool>(true, true, true), true)), abs(-abs(u_input.b)) >= abs(u_input.b));
    global0 = func_2(Struct_4(global0.a), 1u);
    var var_2 = Struct_4(abs(global0.a));
    var var_3 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(_wgslsmith_mult_i32(-5073i, u_input.b << (var_2.a.x % 32u)), u_input.b, global2[_wgslsmith_index_u32(30874u, 22u)] >> (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u), global2[_wgslsmith_index_u32(0u, 22u)])), vec4<i32>(1i, 17071i, -30281i & u_input.b, global2[_wgslsmith_index_u32(global0.a.x, 22u)]));
    let var_4 = Struct_2(Struct_1(select(~vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.c), vec4<u32>(min(4294967295u, global0.a.x), ~1u, var_2.a.x, var_2.a.x), all(var_1.yx)), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - _wgslsmith_f_op_f32(275f + 524f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-447f)) * _wgslsmith_f_op_f32(443f + -489f)))), _wgslsmith_div_i32(abs(-(global2[_wgslsmith_index_u32(8940u, 22u)] | 1i)), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.a.c, var_4.a.c, var_4.a.c, var_4.a.c))))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1754f, var_4.a.c)), _wgslsmith_f_op_f32(round(793f)))), var_4.a.c, 1f, 574f)), var_3.xy, u_input.b);
}

