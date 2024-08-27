struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec2<bool>, 15>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(929f + _wgslsmith_f_op_f32(step(-468f, 461f))))) - -1328f), _wgslsmith_f_op_f32(round(-1173f))));
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    let var_1 = u_input.a.x;
    return ~u_input.d.x & (0u & (u_input.c.x ^ firstLeadingBit(~63369u)));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(-1i, u_input.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-771f, 356f, 1124f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-385f, -1000f, -968f) + vec3<f32>(593f, -417f, -599f)))))));
    var var_2 = Struct_1((abs(firstLeadingBit(vec3<i32>(u_input.b, -31082i, -1707i))) & (-vec3<i32>(31940i, -6026i, 0i) & vec3<i32>(-12729i, u_input.b, -2147483647i))) >> (~vec3<u32>(1u, min(u_input.c.x, 9007u), 0u) % vec3<u32>(32u)));
    var_0 = -55869i;
    var var_3 = ~(~vec4<u32>(_wgslsmith_add_u32(0u, 73844u), 44736u, countOneBits(~36073u), ~func_3(Struct_1(var_2.a))));
    return !select(vec4<bool>(true, true, true, !(u_input.d.x > var_3.x)), vec4<bool>(true, true, true, true), any(select(select(global0[_wgslsmith_index_u32(44940u, 15u)], global0[_wgslsmith_index_u32(895u, 15u)], false), select(vec2<bool>(false, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 15u)]), all(global0[_wgslsmith_index_u32(var_3.x, 15u)]))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    var var_0 = arg_3;
    let var_1 = !(!((arg_3.a.x >> (~arg_2 % 32u)) > arg_3.a.x));
    global0 = array<vec2<bool>, 15>();
    return func_2().zxy;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = any(func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(2547u, 10307u, u_input.c.x, 0u) ^ ~vec4<u32>(u_input.c.x, u_input.d.x, 39766u, 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(15631u, 4275u, u_input.a.x, 4294967295u), vec4<u32>(arg_0, arg_0, 4294967295u, 1u))), func_2(), ~func_3(Struct_1(vec3<i32>(-47580i, 0i, u_input.b))), Struct_1(select(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(1i, u_input.b, 22180i), all(vec2<bool>(false, true))))));
    global0 = array<vec2<bool>, 15>();
    var var_1 = Struct_1(select(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, u_input.b, 0i), _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-16075i, u_input.b, u_input.b)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)) << (((vec3<u32>(arg_0, arg_0, u_input.c.x) ^ vec3<u32>(arg_0, 0u, arg_0)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 25591u, u_input.a.x), vec3<u32>(18472u, u_input.d.x, u_input.a.x))) % vec3<u32>(32u)), var_0));
    let var_2 = vec2<i32>(countOneBits(var_1.a.x), u_input.b);
    global0 = array<vec2<bool>, 15>();
    return Struct_1(vec3<i32>(var_1.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, var_1.a.x & u_input.b), u_input.b), -28582i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-47330i, 23324i), 13250i), 2147483647i, -3585i));
    let var_1 = Struct_1(-(_wgslsmith_add_vec3_i32(var_0.a, -vec3<i32>(var_0.a.x, var_0.a.x, u_input.b)) | vec3<i32>(1i, var_0.a.x, -14470i)));
    var_0 = func_1(firstLeadingBit(36043u));
    var var_2 = var_1.a.xx;
    var_0 = var_1;
    var_0 = func_1(u_input.d.x >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-652f, -299f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1061f)) * _wgslsmith_f_op_f32(573f * 1763f)))), _wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(562f - 826f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-760f)) - 216f)))), vec2<f32>(-558f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f * -1932f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(823f)) * _wgslsmith_f_op_f32(122f - 383f)))), 766f);
}

