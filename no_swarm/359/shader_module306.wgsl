struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = Struct_3(_wgslsmith_sub_i32(14089i, ~(-min(-2147483647i, var_0.a))), ~arg_2.a.b, !(!select(vec2<bool>(arg_0.c.x, true), vec2<bool>(var_0.c.x, arg_0.c.x), var_0.c)));
    let var_2 = arg_2.a.a.wzy;
    let var_3 = Struct_4(vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), var_2.x ^ -1i), reverseBits(select(u_input.a.x, var_1.a, true))), var_0.c.x, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_f32(-arg_1))), vec2<u32>(0u, u_input.b), !vec4<bool>(var_0.c.x, any(vec2<bool>(var_0.c.x, var_1.c.x)), false, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(abs(672f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1456f)), _wgslsmith_f_op_f32(arg_1 * -1018f), _wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(1244f, 466f, 268f)))))), ~select((vec3<u32>(4294967295u, 39534u, arg_2.a.b) ^ vec3<u32>(1u, 1u, 11873u)) << (vec3<u32>(arg_0.b, 0u, var_0.b) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, 1u, var_1.b), vec3<u32>(u_input.b, 8743u, u_input.b)), !any(vec3<bool>(true, true, false))));
    let var_4 = arg_2.a.b;
    return ~vec2<i32>(27161i & ~(~arg_0.a), -1i);
}

fn func_2() -> u32 {
    global0 = array<Struct_5, 8>();
    let var_0 = vec2<i32>(~(i32(-1i) * -u_input.a.x), ~((i32(-1i) * -1i) << (~u_input.b % 32u))) ^ func_3(Struct_3(firstLeadingBit(~u_input.a.x), u_input.b, vec2<bool>(true, true)), -1098f, global0[_wgslsmith_index_u32(~u_input.b, 8u)]);
    global0 = array<Struct_5, 8>();
    var var_1 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(var_0.x, var_0.x), abs(u_input.a.x >> (46415u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 23118i), vec2<i32>(-38214i, 25623i)), _wgslsmith_sub_i32(-2949i, 0i)), vec4<i32>(abs(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(11258i, 2147483647i, var_0.x), vec3<i32>(41317i, u_input.a.x, -1i)) >> (4294967295u % 32u), min(u_input.a.x & 0i, countOneBits(-49614i)), ~(~(-15127i)))), ~4294967295u);
    return 1u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> bool {
    var var_0 = false;
    global0 = array<Struct_5, 8>();
    var var_1 = func_2();
    return -max(min(4631i, arg_3.x) ^ arg_3.x, -u_input.a.x) > -33858i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = 4294967295u;
    var var_2 = !(!all(vec3<bool>(false, true, func_1(476f, vec3<u32>(21806u, 10455u, 4294u), vec3<f32>(625f, 1252f, -1079f), vec4<i32>(u_input.a.x, 46712i, u_input.a.x, 5503i)))));
    var_0 = true;
    let var_3 = -2147483647i;
    var var_4 = u_input.b;
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1346f);
    let x = u_input.a;
    s_output = StorageBuffer(~75004u, reverseBits(reverseBits(vec2<u32>(abs(var_1), ~48005u))), firstTrailingBit(_wgslsmith_add_vec2_i32(firstTrailingBit(-vec2<i32>(var_3, -5403i)), ~vec2<i32>(u_input.a.x, var_3))), u_input.a.x, _wgslsmith_mod_i32(var_3, countOneBits(2147483647i)));
}

