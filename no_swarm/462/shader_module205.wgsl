struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u, arg_0.a.x)), 59012u);
    var var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, 1u >= arg_0.a.x), false));
    var var_1 = any(vec3<bool>(true, true, true));
    let var_2 = -(min(u_input.c.x, 13761i) ^ u_input.b.x);
    var var_3 = any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true))), true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    return arg_0.a.x;
}

fn func_2() -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(Struct_3(~vec4<u32>(1u, 9706u, 38948u, 1u))) | ~countOneBits(select(0u, 7484u, true)), min(abs(~abs(1u)), 4294967295u), ~1u), 15u)];
    let var_1 = _wgslsmith_f_op_f32(floor(-289f));
    global0 = ~4294967295u;
    let var_2 = vec4<bool>(false, all(var_0.a.c.xx) != false, var_0.c, !(!var_0.a.b));
    let var_3 = true;
    return var_0.b.x << (1u % 32u);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -440f, arg_3), vec4<f32>(arg_0, -2004f, 1000f, arg_0)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1594f, -1545f, -545f, arg_3)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1328f, -545f, arg_3, -611f))), vec4<f32>(_wgslsmith_f_op_f32(716f + arg_3), -813f, -465f, arg_0)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-arg_0), 998f, _wgslsmith_f_op_f32(step(-122f, arg_3))));
    let var_1 = _wgslsmith_mult_vec4_i32(-arg_2.b, vec4<i32>(77987i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.b.yy, vec2<i32>(arg_2.b.x, 35975i)), vec2<i32>(-40907i, u_input.c.x)) >> (arg_2.a.d % 32u), func_2(), _wgslsmith_mod_i32(~30847i, 1i)));
    let var_2 = arg_2.a;
    global0 = ~(~arg_2.d | arg_2.a.d);
    let var_3 = -abs(firstLeadingBit(vec4<i32>(23399i, 37759i, 0i, 22808i))) >> ((vec4<u32>(var_2.a.x, ~0u, var_2.d, 33425u) | vec4<u32>(countOneBits(arg_2.a.d), 4294967295u, _wgslsmith_mult_u32(arg_2.d, ~0u), _wgslsmith_div_u32(arg_2.d, arg_2.d) & 0u)) % vec4<u32>(32u));
    return ~2601u;
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    global1 = array<Struct_2, 15>();
    let var_0 = arg_0.c;
    var var_1 = ~_wgslsmith_div_vec2_u32(arg_0.a.a ^ ~arg_0.a.a, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.d, 4294967295u), arg_0.d), ~3756u));
    return !vec4<bool>(select(all(vec4<bool>(true, var_0, true, false)), any(arg_0.a.c), var_0 || var_0), false, false, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~countOneBits(0u);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f * 740f)) - _wgslsmith_f_op_f32(-738f + _wgslsmith_f_op_f32(f32(-1f) * -1484f))), -2063f));
    var var_1 = !(any(func_4(global1[_wgslsmith_index_u32(func_1(195f, u_input.c.x, global1[_wgslsmith_index_u32(1u, 15u)], -753f), 15u)])) || (func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 15u)]).x & (true | any(vec3<bool>(false, false, true)))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(1u, ~28003u, reverseBits(4294967295u)) | _wgslsmith_add_u32(14982u, abs(_wgslsmith_mod_u32(1694u, 77244u))), ~92458u), 15u)];
    let var_3 = countOneBits(~var_2.a.a);
    var_2 = Struct_2(var_2.a, var_2.b, true, var_2.d);
    var var_4 = vec4<i32>(-var_2.b.x ^ ~(1i << (var_2.a.a.x % 32u)), 0i, _wgslsmith_sub_i32(func_2(), _wgslsmith_div_i32(~var_2.b.x, 2147483647i)), -44250i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_0.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1033f, var_0.x))) * vec2<f32>(var_0.x, 2506f)) + vec2<f32>(var_0.x, var_0.x)), var_2.a.e)), ~vec4<u32>(~func_3(Struct_3(vec4<u32>(0u, 0u, 19629u, 19825u))), reverseBits(var_3.x & 4294967295u), 4294967295u, abs(4294967295u)), firstLeadingBit(var_4.xw));
}

