struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11>;

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> f32 {
    global0 = array<Struct_5, 11>();
    var var_0 = ~abs(u_input.a);
    let var_1 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.a, arg_1.a), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(11000u, 0u), vec2<u32>(0u, arg_1.a))));
    global1 = array<Struct_1, 23>();
    global0 = array<Struct_5, 11>();
    return -1260f;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(22962u, 11u)];
    let var_1 = arg_3;
    return vec4<bool>(!(!all(vec4<bool>(arg_3.x, arg_3.x, true, false)) | true), arg_3.x, any(vec4<bool>(false, true && (arg_3.x || false), all(vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)), all(vec4<bool>(arg_3.x, true, var_1.x, true)))), !(all(!vec3<bool>(true, var_1.x, var_1.x)) | !all(vec4<bool>(var_1.x, false, true, arg_3.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * arg_2.c)) == _wgslsmith_f_op_f32(func_2(false, global0[_wgslsmith_index_u32(1u, 11u)])), any(func_3(global0[_wgslsmith_index_u32(1u, 11u)], 1u, arg_2.b.zzx, vec2<bool>(true, true))), true, false), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), !any(func_3(global0[_wgslsmith_index_u32(abs(arg_1), 11u)], arg_2.a.x, vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<bool>(true, true)).xwy));
    global0 = array<Struct_5, 11>();
    var var_1 = Struct_2(arg_2.b.x, Struct_1(firstTrailingBit(_wgslsmith_mod_i32(~arg_2.b.x, _wgslsmith_add_i32(55703i, -1i))), vec2<u32>(~6016u, 15833u), reverseBits(arg_2.a.x), vec3<bool>(var_0.x, !any(vec2<bool>(false, var_0.x)), arg_1 > arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, arg_2.c, -1387f, arg_0.x) + vec4<f32>(arg_0.x, arg_2.c, arg_0.x, arg_2.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, arg_0.x, arg_2.c)))))));
    let var_2 = vec3<u32>(4294967295u, var_1.b.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_2.a.x, var_1.b.b.x), arg_1));
    global1 = array<Struct_1, 23>();
    return firstTrailingBit(vec4<i32>(-1i, countOneBits(reverseBits(var_1.b.a)), -15187i, 1i));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = array<Struct_5, 11>();
    let var_0 = Struct_1(max(arg_0.b.x, arg_0.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_0.a.x, arg_0.a.x) | ~reverseBits(vec2<u32>(arg_0.a.x, 40616u)), ~abs(arg_0.a.wz)), 1u, select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), select(vec3<bool>(all(vec4<bool>(true, false, true, true)), arg_0.a.x >= 0u, true), vec3<bool>(arg_0.c >= -229f, true, any(vec2<bool>(false, false))), false), true), vec4<f32>(_wgslsmith_f_op_f32(1067f + _wgslsmith_f_op_f32(494f * _wgslsmith_f_op_f32(floor(arg_0.c)))), _wgslsmith_f_op_f32(1843f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(arg_0.c + 488f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + arg_0.c) - arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2543f - arg_0.c))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e.zy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c * 322f), _wgslsmith_f_op_f32(-arg_0.c)))));
    var var_2 = var_0;
    var var_3 = (vec3<i32>(-1i) * -vec3<i32>(-19805i, reverseBits(var_2.a), 9357i)) << (_wgslsmith_add_vec3_u32(~(~(arg_0.a.xyy & vec3<u32>(25955u, var_0.b.x, 3611u))), vec3<u32>(~_wgslsmith_clamp_u32(var_0.c, 5117u, 1u), var_0.c, 45135u)) % vec3<u32>(32u));
    return ~var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    global0 = array<Struct_5, 11>();
    let var_0 = vec2<u32>(reverseBits(0u), func_4(Struct_3(abs(vec4<u32>(24137u, 4294967295u, 1u, 71043u)), min(func_1(vec2<f32>(-229f, -1006f), 7907u, Struct_3(vec4<u32>(0u, 0u, 81955u, 1u), vec4<i32>(u_input.a, -48136i, u_input.a, -20478i), 461f)), select(vec4<i32>(2147483647i, 29193i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, 63920i), false)), _wgslsmith_f_op_f32(f32(-1f) * -686f))));
    global0 = array<Struct_5, 11>();
    var var_1 = select(!vec4<bool>(true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)), !any(vec4<bool>(true, true, true, false))), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), !vec4<bool>(any(vec2<bool>(false, true)), true, true, func_3(Struct_5(4294967295u), var_0.x, vec3<i32>(u_input.a, u_input.a, -2147483647i), vec2<bool>(true, false)).x), true | (~var_0.x < 1u)), true);
    let var_2 = _wgslsmith_sub_i32(u_input.a, abs(0i & ~(~u_input.a)));
    global1 = array<Struct_1, 23>();
    var var_3 = Struct_3(select(abs(vec4<u32>(~0u, min(var_0.x, 1u), var_0.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(~var_0.x, ~var_0.x, countOneBits(2308u), 17469u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), ~vec4<u32>(3989u, 47387u, 0u, var_0.x))), all(!vec4<bool>(var_1.x, false, false, var_1.x))), abs(-abs(vec4<i32>(2147483647i, u_input.a, 19941i, 2147483647i))), _wgslsmith_div_f32(-198f, -248f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<i32>(var_3.b.x & u_input.a, abs(0i), 14056i << (var_3.a.x % 32u))), _wgslsmith_add_vec2_i32(var_3.b.zw, vec2<i32>(~1i, ~var_3.b.x)), _wgslsmith_mult_vec2_u32(abs(_wgslsmith_add_vec2_u32(var_3.a.xw ^ vec2<u32>(var_0.x, 43236u), reverseBits(var_0))), vec2<u32>(_wgslsmith_clamp_u32(abs(0u), func_4(Struct_3(var_3.a, vec4<i32>(var_3.b.x, u_input.a, -40355i, var_2), var_3.c)), ~13329u), ~(~30878u))), var_3.a.x);
}

