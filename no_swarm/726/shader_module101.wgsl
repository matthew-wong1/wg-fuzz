struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_3(countOneBits(vec2<i32>(-(~72279i), ~_wgslsmith_sub_i32(24762i, 64543i))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(0u, 1u), u_input.a << (~62738u % 32u)), 26u)], -249f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-574f, 989f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(202f, global0[_wgslsmith_index_u32(13017u, 26u)]))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(1u, 26u)], 790f))))))), Struct_1(_wgslsmith_f_op_f32(561f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9556u, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), 26u)])), 856f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], 1817f) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(855u, 26u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-315f, global0[_wgslsmith_index_u32(u_input.a, 26u)])), true)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]))))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(268f, 773f), -351f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -330f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1192f, 568f, -1000f, -1363f)), vec4<f32>(1199f, global0[_wgslsmith_index_u32(1u, 26u)], 2185f, -535f)))));
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.c.x)));
    global0 = array<f32, 26>();
    return vec2<u32>(1u, u_input.b & u_input.b) & ~firstTrailingBit(~(~vec2<u32>(u_input.b, 56052u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3.c.x + -741f), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b, 26u)])), _wgslsmith_f_op_f32(select(arg_1, 1494f, true)), 236f) - vec4<f32>(_wgslsmith_f_op_f32(min(-438f, -166f)), 1174f, arg_1, _wgslsmith_f_op_f32(step(2626f, -293f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_3.b, 26u)] * -1000f), arg_3.c.x, -828f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b, arg_0, 63549u), vec3<u32>(arg_3.b, arg_3.b, arg_0)), 26u)])))));
    var_0 = Struct_2(var_0.a);
    global0 = array<f32, 26>();
    var var_1 = var_0.a;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)))))));
    return vec4<u32>(func_1().x, ~max(_wgslsmith_mod_u32(1u, 0u ^ arg_3.b), firstLeadingBit(arg_0)), 1u, _wgslsmith_add_u32(min(arg_3.b, 1u), arg_0 >> (arg_3.b % 32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = func_3(max(39608u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(u_input.b, ~u_input.b))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 26u)] - global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 26u)]), -(~(-2147483647i)), Struct_4(true, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, global0[_wgslsmith_index_u32(u_input.a, 26u)], 523f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])), false)) + vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b, 26u)], 1723f)), global0[_wgslsmith_index_u32(abs(u_input.b), 26u)], -729f))));
    var var_1 = vec2<bool>(true, true);
    let var_2 = -firstLeadingBit(_wgslsmith_add_i32(~(-7000i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(8703u, var_0.x, var_0.x, 0u), vec4<u32>(15096u, var_0.x, 62428u, u_input.a)) % 32u), -(i32(-1i) * -11542i)));
    var_0 = firstTrailingBit(countOneBits(vec4<u32>(18971u | u_input.b, var_0.x, 4294967295u, 1u & u_input.a) >> (vec4<u32>(4294967295u, var_0.x | 4294967295u, u_input.b, abs(0u)) % vec4<u32>(32u))));
    var var_3 = Struct_3(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, var_2) & max(vec2<i32>(var_2, -2147483647i), vec2<i32>(2147483647i, var_2)), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, 9276i), vec2<i32>(-45241i, var_2)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 26u)] + _wgslsmith_f_op_f32(step(-168f, 145f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1678f, global0[_wgslsmith_index_u32(var_0.x, 26u)]))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 1u), 26u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(3458u, 26u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(69884u, 26u)], 525f) * vec2<f32>(global0[_wgslsmith_index_u32(45000u, 26u)], 1522f)))))), Struct_1(-535f, global0[_wgslsmith_index_u32(40007u, 26u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23747u, 26u)] - global0[_wgslsmith_index_u32(4294967295u, 26u)]) + _wgslsmith_f_op_f32(sign(832f))), -379f)), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(550f, global0[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_f_op_f32(212f - global0[_wgslsmith_index_u32(var_0.x, 26u)]), global0[_wgslsmith_index_u32(var_0.x, 26u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 26u)], 226f))))));
    return var_3.d;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<f32, 26>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-771f, 1136f) - global0[_wgslsmith_index_u32(firstLeadingBit(1u), 26u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 26u)], 437f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(110665u, 26u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 26u)], -142f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x))));
    global0 = array<f32, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1036f, -593f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, -1579f, global0[_wgslsmith_index_u32(arg_0, 26u)]) - var_0.a.xxy), true)))));
    var var_2 = func_2();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(36097u, 26u)] + var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), var_1.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.a, 28659u), select(~(u_input.b & u_input.a), reverseBits(u_input.a), false)) & ~vec2<u32>(u_input.b, ~4294967295u);
    var_0 = func_1();
    var var_1 = func_4(~_wgslsmith_mod_u32(u_input.a, 1u), func_2());
    let var_2 = firstTrailingBit(_wgslsmith_mod_i32(-1i, ~(-23483i)));
    var var_3 = -_wgslsmith_mod_vec3_i32(-(~(vec3<i32>(var_2, -29176i, 2147483647i) & vec3<i32>(21032i, -2147483647i, -1i))), abs(_wgslsmith_div_vec3_i32(abs(vec3<i32>(var_2, 39418i, var_2)), _wgslsmith_add_vec3_i32(vec3<i32>(-29096i, var_2, 56690i), vec3<i32>(-1i, var_2, var_2)))));
    var_3 = ~vec3<i32>(var_2, 2147483647i, var_3.x);
    let var_4 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(~firstTrailingBit(~u_input.b)), 26u)] + global0[_wgslsmith_index_u32(var_0.x, 26u)]);
    var_1 = func_4(u_input.b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2, var_3.x, -19629i), firstTrailingBit(vec3<i32>(var_2, var_2, var_2)) >> (max(vec3<u32>(var_0.x, u_input.b, var_0.x), vec3<u32>(u_input.a, var_0.x, var_0.x)) % vec3<u32>(32u))), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-11337i, 2147483647i, var_3.x, 2147483647i), vec4<i32>(var_3.x, 0i, 2147483647i, -1i)) ^ 1i), var_2), vec3<u32>(var_0.x, u_input.a, _wgslsmith_add_u32(~12102u, var_0.x)));
}

