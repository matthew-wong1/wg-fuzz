struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, true, false, false, false, false, true, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, -reverseBits(0i), u_input.c.x), -_wgslsmith_add_vec3_i32(-vec3<i32>(1i, u_input.c.x, 0i), ~vec3<i32>(u_input.c.x, -448i, 1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-421f))), !(1u >= u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, arg_0.a))));
    var var_2 = -var_0.x;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(993f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(46762u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, true), -25457i))) * arg_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) + _wgslsmith_div_f32(792f, -1301f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(-1174f, !vec3<bool>(global0[_wgslsmith_index_u32(9143u, 11u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(431u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(arg_0, 11u)], global0[_wgslsmith_index_u32(19493u, 11u)]), 32401i & arg_1))))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1217f)) * _wgslsmith_f_op_f32(abs(-498f))), 222f))), u_input.c.yz);
    var var_1 = _wgslsmith_f_op_f32(exp2(1f));
    var_0 = Struct_3(722f, reverseBits(-(vec2<i32>(16891i, -1374i) >> (_wgslsmith_clamp_vec2_u32(u_input.b.xz, u_input.a.xy, u_input.a.xz) % vec2<u32>(32u)))));
    var var_2 = ~u_input.b.yz;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(47696u, u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f * var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), -316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-1750f, vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_2.x, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], false, true), var_0.b.x))))), min(u_input.c.x, u_input.c.x))) * _wgslsmith_f_op_f32(sign(-1000f)));
    return false | !((_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) & 4181u) <= 34026u);
}

fn func_1() -> i32 {
    let var_0 = true;
    let var_1 = ~44623u;
    var var_2 = select(select(select(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(false, true), false), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 11u)]), var_0 & true), vec2<bool>(var_1 == var_1, func_2()), select(!vec2<bool>(global0[_wgslsmith_index_u32(var_1, 11u)], var_0), vec2<bool>(true, true), vec2<bool>(var_0, true))), vec2<bool>(true, any(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(25051u, 11u)], false), vec4<bool>(var_0, true, false, false), var_0))), any(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true, var_0), vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true, var_0)))), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(11292u, var_1, u_input.d, var_1)), 11u)], false)), ~_wgslsmith_div_u32(32807u, 30281u) == u_input.d));
    var var_3 = u_input.b | u_input.b;
    var_3 = u_input.b ^ vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~8708u, u_input.b.x, ~u_input.d), _wgslsmith_mult_u32(1u & var_1, _wgslsmith_clamp_u32(4294967295u, 14003u, var_3.x))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(43965u, var_1), reverseBits(var_3.wz)), var_3.x, abs(max(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_3.x, var_1, 34686u)), _wgslsmith_sub_u32(13284u, var_3.x))));
    return firstTrailingBit(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.b % vec4<u32>(32u)), vec4<i32>(-24268i, 1i, 1i, u_input.c.x) << (u_input.b % vec4<u32>(32u))))) ^ (-(~u_input.c.x) << (var_3.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 11u)], true, all(vec4<bool>(true && global0[_wgslsmith_index_u32(1u, 11u)], false & global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))))));
    var var_1 = vec4<u32>(4294967295u, _wgslsmith_div_u32(abs(u_input.d), u_input.b.x), _wgslsmith_mod_u32(51926u, _wgslsmith_mult_u32(1u, 1u)), 1u);
    var_0 = global0[_wgslsmith_index_u32(1u, 11u)];
    let var_2 = u_input.c.yy;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f * 413f)), -735f)), _wgslsmith_f_op_f32(f32(-1f) * -1616f), _wgslsmith_f_op_f32(-2021f + -1454f));
    var var_4 = vec4<i32>(-reverseBits(abs(var_2.x)) | ~(func_1() ^ _wgslsmith_mod_i32(var_2.x, u_input.c.x)), ~1436i, -max(var_2.x, _wgslsmith_dot_vec3_i32(u_input.c.xwx & u_input.c.wyw, -u_input.c.zzy)), _wgslsmith_dot_vec2_i32(~var_2, _wgslsmith_div_vec2_i32(-u_input.c.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, -36534i), vec2<i32>(var_2.x, 15597i)))) & var_2.x);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 2651f))), var_3.x)), !vec3<bool>(select(false, global0[_wgslsmith_index_u32(76244u, 11u)], true) && func_2(), global0[_wgslsmith_index_u32(42739u, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_1.yx, ~var_1.ww), 11u)]), select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true, global0[_wgslsmith_index_u32(64927u, 11u)], true), all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_1.x, 11u)]))), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 11u)], true, true, global0[_wgslsmith_index_u32(61057u, 11u)])), false, true, !global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), var_3.x > _wgslsmith_div_f32(-638f, -460f)), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(3305u, 11u)], global0[_wgslsmith_index_u32(var_1.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(~29214u, 11u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_1.x, 11u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, true, global0[_wgslsmith_index_u32(64071u, 11u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.wyx, vec3<u32>(var_1.x, var_1.x, 4294967295u)), 11u)]), vec4<bool>(false, true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 11u)], global0[_wgslsmith_index_u32(89982u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)])), any(vec3<bool>(false, global0[_wgslsmith_index_u32(26502u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))))), 27303i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-225f, _wgslsmith_f_op_f32(927f * var_3.x)), ~(~countOneBits(_wgslsmith_mod_vec3_u32(var_1.wzw, vec3<u32>(u_input.b.x, 2995u, 69674u)))), -11852i);
}

