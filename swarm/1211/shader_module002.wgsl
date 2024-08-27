struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f * _wgslsmith_f_op_f32(f32(-1f) * -107f)) - _wgslsmith_f_op_f32(-1437f - 362f));
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    let var_1 = vec2<i32>(~arg_0.x ^ ~1i, 1i);
    let var_2 = global1[_wgslsmith_index_u32(arg_1.x, 20u)];
    return vec2<bool>(false, all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false), all(vec2<bool>(false, true)))) || !all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 8>();
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(793f, -1513f)))))));
    var var_1 = _wgslsmith_mult_vec3_i32(u_input.a.zzz, countOneBits(-arg_0.zzx & firstTrailingBit(vec3<i32>(arg_0.x, u_input.a.x, -11186i))) & select(min(vec3<i32>(u_input.a.x, arg_0.x, u_input.a.x), arg_0.www | vec3<i32>(u_input.a.x, u_input.a.x, arg_0.x)), vec3<i32>(1i, 1i, -u_input.a.x), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true))));
    let var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(19977i, u_input.a.x, -28289i), vec3<i32>(u_input.a.x, 1i, -12804i)), ~vec3<i32>(var_1.x, -1i, -31570i)), ~_wgslsmith_sub_i32(arg_0.x, var_1.x)), vec3<i32>(var_1.x, 17403i, u_input.a.x));
    return 23725u;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = i32(-1i) * -77647i;
    var var_2 = select(vec3<bool>(_wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), u_input.a.x) != 32373i, arg_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f + var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)), !(_wgslsmith_f_op_f32(trunc(var_0.a.x)) >= _wgslsmith_f_op_f32(trunc(var_0.a.x)))), vec3<bool>((~arg_2.x << (~arg_2.x % 32u)) > 0u, true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, false)))), vec3<bool>(any(vec3<bool>(true, true, true)) != !select(false, false, false), true, true));
    let var_3 = min(u_input.a.x, 0i);
    var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1020f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -317f) - -114f)), max(44679u, _wgslsmith_mod_u32(firstTrailingBit(6704u), arg_2.x >> (arg_2.x % 32u))) > arg_2.x));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> StorageBuffer {
    global0 = array<Struct_1, 8>();
    let var_0 = select(all(vec4<bool>(true, true, true, true)), true, true == func_1(vec4<i32>(_wgslsmith_div_i32(arg_0, 1i), ~arg_0, -2147483647i, u_input.a.x), vec2<u32>(firstTrailingBit(4294967295u), 1u)).x);
    return StorageBuffer(u_input.a.x | 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global1 = array<Struct_1, 20>();
    let var_0 = !(!select(vec2<bool>(true, true), func_1(u_input.a, ~vec2<u32>(8365u, 0u)), vec2<bool>(u_input.a.x >= 2147483647i, true)));
    let x = u_input.a;
    s_output = func_4(u_input.a.x >> (0u % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(func_2(u_input.a), 8u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-1504f, 1351f, -214f) + vec3<f32>(-2157f, -2087f, -1142f)), vec4<u32>(1u, 39059u, 29190u, 3576u)))))), Struct_1(vec2<f32>(-472f, -341f)));
}

