struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<Struct_2, 10>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -948f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f * -112f) - -1013f), 1362f)));
    global1 = array<Struct_2, 10>();
    let var_1 = -u_input.c;
    var var_2 = vec3<i32>(u_input.c.x, -(~11272i), -u_input.c.x) >> (_wgslsmith_div_vec3_u32(max(vec3<u32>(0u, ~1u, u_input.a >> (1u % 32u)), countOneBits(vec3<u32>(1u, u_input.b, u_input.b))), vec3<u32>(~select(39042u, 1u, arg_0), ~firstTrailingBit(1u), ~(~u_input.a))) % vec3<u32>(32u));
    global1 = array<Struct_2, 10>();
    return abs(vec4<u32>(u_input.a, 0u, u_input.a, 1u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<Struct_3, 2>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(784f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1053f, 158f, true)) + _wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1181f * -1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2158f, 390f))));
    var var_1 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), select(vec4<i32>(0i, 13119i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x), vec4<bool>(false, true, false, true))), vec4<i32>(_wgslsmith_mult_i32(3837i, 0i), -u_input.c.x, -u_input.c.x, 9901i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 5359u, ~0u), func_3(true) << ((vec4<u32>(u_input.a, u_input.b, 6672u, 1u) | vec4<u32>(4294967295u, u_input.a, 1u, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_4((((26507u ^ u_input.b) >> (_wgslsmith_mod_u32(71742u, u_input.b) % 32u)) & ~_wgslsmith_mult_u32(28331u, u_input.a)) | u_input.b);
    var var_3 = _wgslsmith_f_op_f32(trunc(1143f));
    return Struct_1(vec2<bool>(~1i < (~u_input.c.x ^ -var_1.a.x), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), firstLeadingBit(~(~firstTrailingBit(vec4<u32>(arg_0, u_input.b, 0u, arg_0)))), var_1.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_2.a.x;
    global1 = array<Struct_2, 10>();
    let var_2 = any(vec4<bool>(true, arg_1.a.x, false, all(vec3<bool>(false, true, false)) || !arg_1.a.x));
    var var_3 = func_2(~0u);
    return arg_0 >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + -836f))))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = select(!vec2<bool>(func_4(-396f, func_2(0u), global1[_wgslsmith_index_u32(countOneBits(arg_1.x), 10u)]), false), !arg_2, func_2(min(~(~u_input.b), u_input.a)).a);
    var_0 = vec2<bool>(arg_1.x == u_input.a, true);
    var var_1 = Struct_4(u_input.b);
    var var_2 = var_0.x;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    return abs(arg_3.b.wx) >> (_wgslsmith_mod_vec2_u32(arg_1.xy, countOneBits(_wgslsmith_clamp_vec2_u32(~arg_3.b.yw, _wgslsmith_mult_vec2_u32(arg_1.wx, vec2<u32>(arg_1.x, arg_1.x)), ~arg_3.b.yy))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 10>();
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    let var_1 = _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~1u), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(20063u, u_input.b))), ~select(_wgslsmith_div_vec2_u32(vec2<u32>(55346u, 1u), vec2<u32>(u_input.b, 1u)), func_1(true, vec4<u32>(u_input.a, 1409u, 1u, u_input.b), vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec4<u32>(41000u, u_input.a, u_input.a, u_input.b), u_input.c.x)), any(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(-vec2<i32>(abs(0i), 2147483647i), vec2<i32>(var_0.a.x >> ((var_1.x | u_input.a) % 32u), -u_input.c.x)));
}

