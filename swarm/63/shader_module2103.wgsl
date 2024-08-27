struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 32>;

var<private> global3: Struct_1;

var<private> global4: vec4<i32> = vec4<i32>(-15792i, 1i, i32(-2147483648), 0i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !select((firstTrailingBit(4294967295u) << (1u % 32u)) >= ~u_input.c, true, !(countOneBits(arg_0.c) != global4.x));
    var var_1 = global4.wwy;
    global4 = -(~select(reverseBits(vec4<i32>(1i, 48701i, 20045i, u_input.b.x)), vec4<i32>(-2147483647i, -8619i, u_input.d, global1.c), vec4<bool>(var_0, false, var_0, false))) >> (vec4<u32>(0u, ~u_input.c, ~(~6020u), ~(~u_input.c) >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], select(0u, 4294967295u, false)) % 32u)) % vec4<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(max(global3.b.x, global1.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(global3.b))))) + global3.b), 1i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), var_2.a))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)), -766f, _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(global3.b.x + arg_0.a), var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -763f)), global3.b), -2147483647i);
    return Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(-335f, global3.b.x)), _wgslsmith_f_op_f32(abs(-330f)), _wgslsmith_f_op_f32(max(var_2.a, -340f))) * _wgslsmith_f_op_vec4_f32(global3.b + vec4<f32>(-1000f, 1111f, global1.b.x, 335f)))), -1i);
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.x, global4.x, global4.x, global3.c), vec4<i32>(-1i, 18611i, global1.c, 1i))), ~abs(select(vec4<i32>(global3.c, -2147483647i, 1246i, 18910i), vec4<i32>(global1.c, 2147483647i, -1i, global3.c), vec4<bool>(false, true, false, true)))) | (vec4<i32>(-1i) * -abs(vec4<i32>(u_input.d, global4.x, 0i, global4.x)));
    global2 = array<u32, 32>();
    let var_1 = var_0.x;
    global0 = vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + -371f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))))));
    global1 = func_2(Struct_1(946f, global3.b, u_input.b.x));
    return _wgslsmith_dot_vec3_i32(var_0.yzw, firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 8271i, -2147483647i) ^ ~var_0.wzy, var_0.xww)));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global4 = vec4<i32>(18255i, u_input.b.x, u_input.d, ~(~arg_0.c));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-810f, _wgslsmith_f_op_f32(round(global3.a))) * -560f);
    let var_1 = arg_0;
    return Struct_1(-750f, vec4<f32>(-319f, -241f, _wgslsmith_f_op_f32(f32(-1f) * -602f), global3.a), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(831f, global1.b.x, -1000f, global3.b.x) - vec4<f32>(global1.a, -1390f, global3.a, -508f)) * _wgslsmith_f_op_vec4_f32(global3.b * vec4<f32>(-1634f, -154f, global3.a, global3.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(min(690f, 295f)), _wgslsmith_f_op_f32(select(global3.a, 854f, false)), _wgslsmith_f_op_f32(abs(global1.b.x)), global1.b.x)), _wgslsmith_mod_i32(~_wgslsmith_div_i32(-94811i, u_input.b.x), _wgslsmith_sub_i32(~global3.c, func_1(vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.c, 32u)], u_input.c))))));
    global4 = ~vec4<i32>(global1.c, 9085i, var_0.c, _wgslsmith_add_i32(select(u_input.b.x << (global2[_wgslsmith_index_u32(u_input.c, 32u)] % 32u), _wgslsmith_sub_i32(global3.c, 12642i), true), global3.c));
    var var_1 = !vec3<bool>(true, true, reverseBits(global1.c) > ~(~(-1i)));
    var var_2 = u_input.c ^ u_input.a.x;
    var var_3 = func_2(func_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a + 766f))), var_0.b, -36134i)));
    let var_4 = func_3(func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-127f)) - -432f), vec4<f32>(_wgslsmith_f_op_f32(-278f + -914f), -539f, -208f, _wgslsmith_f_op_f32(select(-609f, var_3.a, var_1.x))), 20733i)));
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global3.a, global1.b.x, _wgslsmith_f_op_f32(1128f + -270f), var_4.a), ~(~4294967295u), -_wgslsmith_mult_i32(~(-2147483647i), 0i) >> ((u_input.c | select(abs(u_input.c), ~1u, all(vec4<bool>(var_1.x, false, true, var_1.x)))) % 32u), var_3.a, ~firstLeadingBit(firstTrailingBit(reverseBits(vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 32u)], 23494u)))));
}

