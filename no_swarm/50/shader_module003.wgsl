struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: array<f32, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1124f + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~34083u, 2u)]))) * _wgslsmith_f_op_f32(-1012f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 2u)] - global0[_wgslsmith_index_u32(4294967295u & arg_1, 2u)]))), global0[_wgslsmith_index_u32(1u, 2u)]);
    let var_1 = Struct_4(arg_1);
    let var_2 = reverseBits(1u);
    var var_3 = Struct_1(u_input.c);
    global0 = array<f32, 2>();
    return 62456i;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(-1i, reverseBits(func_3(vec3<i32>(u_input.c, 33236i, -2147483647i), u_input.b.x)))), u_input.c);
    global0 = array<f32, 2>();
    var var_1 = vec4<u32>(max(21447u, firstLeadingBit(u_input.b.x)), ~(~(countOneBits(u_input.d.x) >> (u_input.d.x % 32u))), _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), u_input.d.xyz), reverseBits(u_input.b), all(vec3<bool>(true, false, true))) << (countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 40701u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.d.yxy), select(vec3<u32>(u_input.b.x, u_input.b.x, 27993u), vec3<u32>(30455u, 4294967295u, 0u), vec3<bool>(false, false, false))), _wgslsmith_mod_vec3_u32(~vec3<u32>(2444u, 4294967295u, 33967u), u_input.b))), ~(~u_input.d.x));
    var_0 = Struct_2(var_0.a, (_wgslsmith_mult_i32(~(-9701i), var_0.a.a) << (4294967295u % 32u)) << (select(u_input.d.x, u_input.d.x, (2147483647i <= var_0.b) == true) % 32u));
    let var_2 = true;
    return !vec2<bool>((var_2 | false) || select(-2262f <= arg_1, any(vec3<bool>(true, var_2, false)), !var_2), ~abs(u_input.b.x) < select(countOneBits(52551u), ~0u, !var_2));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_0 = false;
    var_0 = false;
    var var_1 = Struct_1(7871i >> (u_input.b.x % 32u));
    return Struct_2(Struct_1(abs(-1i) << (~u_input.d.x % 32u)), 37109i);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-147f, global0[_wgslsmith_index_u32(4294967295u, 2u)]))))), global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), !select(func_2(global0[_wgslsmith_index_u32(1u, 2u)], 1030f), vec2<bool>(true, true), true));
    let var_1 = var_0;
    global0 = array<f32, 2>();
    let var_2 = Struct_1(-2147483647i);
    global0 = array<f32, 2>();
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_5) -> Struct_4 {
    let var_0 = arg_3.a;
    let var_1 = _wgslsmith_add_u32(u_input.b.x, ~(~arg_1));
    return Struct_4(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let var_0 = max(vec3<i32>(u_input.c, 35940i, 8735i), vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.c, i32(-1i) * -1i), -1i, -u_input.a.x)) >> (select(firstLeadingBit(~(~u_input.b)), u_input.d.zzy, false) % vec3<u32>(32u));
    var var_1 = func_5(func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x ^ ~u_input.d.x, u_input.b.x), abs(u_input.d.xw ^ u_input.d.wy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2038f, 208f, global0[_wgslsmith_index_u32(25737u, 2u)], global0[_wgslsmith_index_u32(65828u, 2u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(1176u, 2u)], 277f, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 857f, -1196f, -2277f), true))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(33169u, 2u)], -805f, 1081f, global0[_wgslsmith_index_u32(19517u, 2u)]))))), Struct_5(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_1.a, 2u)], global0[_wgslsmith_index_u32(35966u, 2u)], global0[_wgslsmith_index_u32(25309u, 2u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.a, 2u)], global0[_wgslsmith_index_u32(u_input.d.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

