struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    global0 = array<bool, 2>();
    var var_0 = -select(vec4<i32>(27973i, abs(~arg_0.c.x), ~arg_0.c.x, countOneBits(arg_0.c.x)), ~arg_0.c, global0[_wgslsmith_index_u32(1u, 2u)]);
    var_0 = ~(-vec4<i32>(-(-13958i | arg_0.c.x), _wgslsmith_clamp_i32(arg_0.c.x, _wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(u_input.b, -27968i, var_0.x, u_input.d)), 1i), var_0.x, min(_wgslsmith_mod_i32(u_input.d, u_input.b), _wgslsmith_dot_vec2_i32(var_0.wz, vec2<i32>(arg_0.c.x, 2147483647i)))));
    let var_1 = Struct_2(select(vec2<bool>(global0[_wgslsmith_index_u32(34084u, 2u)] && false, global0[_wgslsmith_index_u32(~(0u ^ u_input.e.x), 2u)]), !select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], global0[_wgslsmith_index_u32(arg_1, 2u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], true, true))), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], global0[_wgslsmith_index_u32(arg_0.b.x, 2u)] | false, true, global0[_wgslsmith_index_u32(53650u, 2u)]))));
    var var_2 = Struct_1(vec2<f32>(721f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -391f))))), ~(vec2<u32>(~33080u, _wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(65041u, 4294967295u))) << (min(vec2<u32>(arg_1, u_input.e.x) << (u_input.e % vec2<u32>(32u)), arg_0.b) % vec2<u32>(32u))), ~arg_0.c);
    return ~(-arg_0.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_1 {
    global0 = array<bool, 2>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(vec2<bool>(arg_1, arg_1));
    global0 = array<bool, 2>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1247f * arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-747f)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(24744u, u_input.e.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), u_input.e), ~var_0)), min(u_input.c.yz, ~u_input.a.yy >> (u_input.e % vec2<u32>(32u))), u_input.c.xz), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(683f, arg_3) * vec2<f32>(825f, 2111f)), vec2<u32>(u_input.e.x, 0u), -vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.b)), ~var_0) ^ vec4<i32>(min(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -12151i), vec2<i32>(0i, -57583i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-4122i, u_input.b, 2147483647i), vec3<i32>(0i, u_input.b, u_input.b)) ^ min(u_input.b, u_input.d), -36412i, ~u_input.b ^ reverseBits(-15309i)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(!(!vec2<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 2u)], true)), all(vec3<bool>(true, false, true)))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-701f, -902f) * vec2<f32>(2732f, -1281f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2677f, -1000f), vec2<f32>(1310f, -2631f))))), vec2<f32>(_wgslsmith_f_op_f32(1f + -558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1205f + 413f)))), firstTrailingBit(~vec2<u32>(u_input.a.x, u_input.c.x)), vec4<i32>(2147483647i, 8978i, u_input.b, u_input.b));
    var_1 = func_2(select(select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(34680u, 2u)], var_0.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, true)), !select(vec4<bool>(false, var_0.a.x, true, arg_0.a.x), vec4<bool>(true, false, false, var_0.a.x), true), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], arg_0.a.x, var_0.a.x, true)), select(select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(var_1.b.x, 2u)]), !vec4<bool>(true, arg_0.a.x, false, false), !var_0.a.x), select(vec4<bool>(false, true, arg_0.a.x, true), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], arg_0.a.x, true, false), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false)), global0[_wgslsmith_index_u32(~0u, 2u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(7921u, 2u)], true, global0[_wgslsmith_index_u32(41951u, 2u)], true), !vec4<bool>(true, false, arg_0.a.x, false), true), select(!vec4<bool>(false, var_0.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 2u)], arg_0.a.x), vec4<bool>(true, false, true, var_0.a.x), select(vec4<bool>(arg_0.a.x, var_0.a.x, false, true), vec4<bool>(true, arg_0.a.x, true, var_0.a.x), false)), vec4<bool>(true, var_0.a.x & arg_0.a.x, all(arg_0.a), var_0.a.x))), var_0.a.x, global0[_wgslsmith_index_u32(min(~_wgslsmith_add_u32(4294967295u, 0u & var_1.b.x), var_1.b.x), 2u)], _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_div_f32(var_1.a.x, 1024f)));
    var var_2 = _wgslsmith_mult_u32(1u, 1u);
    global0 = array<bool, 2>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, -862f)))), var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(true, false))))))), _wgslsmith_f_op_f32(-473f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) - _wgslsmith_f_op_f32(-1f))), true));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2564f, _wgslsmith_f_op_f32(f32(-1f) * -1649f))))));
    var var_1 = _wgslsmith_add_vec3_i32(~vec3<i32>(-min(46491i, u_input.d), ~_wgslsmith_add_i32(0i, 0i), ~select(27540i, u_input.b, false)), ~abs(-(~vec3<i32>(u_input.d, u_input.d, 43442i))));
    var var_2 = Struct_2(select(vec2<bool>(!select(global0[_wgslsmith_index_u32(u_input.e.x, 2u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), func_2(vec4<bool>(true, true, true, false), false, false, -352f).c.x == -2147483647i), select(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, true)), false), vec2<bool>(all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), !global0[_wgslsmith_index_u32(256u, 2u)]), global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, ~u_input.e.x), 2u)]));
    let var_3 = vec3<bool>(global0[_wgslsmith_index_u32(33710u, 2u)] | false, !var_2.a.x, any(!vec3<bool>(true, !global0[_wgslsmith_index_u32(0u, 2u)], !var_2.a.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(var_2.a.x, var_3.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * -1307f)))), -790f, _wgslsmith_f_op_f32(818f + _wgslsmith_f_op_f32(f32(-1f) * -812f)))));
    let var_5 = select(select(select(-vec4<i32>(1i, 6028i, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 30411i, -38426i), vec4<i32>(-1941i, u_input.b, var_1.x, 0i)), vec4<bool>(select(false, var_2.a.x, var_3.x), u_input.b >= -38597i, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false)), _wgslsmith_mod_vec4_i32(func_3(func_2(vec4<bool>(var_2.a.x, var_2.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false), var_2.a.x, var_2.a.x, var_4.x), u_input.e.x << (4294967295u % 32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, 2147483647i, u_input.b), -vec4<i32>(u_input.b, -42018i, u_input.b, var_1.x))), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)])), vec4<bool>(false, all(vec2<bool>(false, global0[_wgslsmith_index_u32(23556u, 2u)])), true, var_3.x), var_2.a.x)), min(vec4<i32>(var_1.x, i32(-1i) * -var_1.x, select(firstTrailingBit(u_input.b), ~(-1i), true), ~_wgslsmith_add_i32(var_1.x, u_input.b)), -reverseBits(max(vec4<i32>(u_input.b, -49721i, 0i, u_input.d), vec4<i32>(-2147483647i, 10304i, -2147483647i, u_input.d)))), vec4<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 29920u, u_input.e.x), u_input.a.yzz) < 46634u, any(vec3<bool>(any(vec3<bool>(var_2.a.x, true, global0[_wgslsmith_index_u32(4294967295u, 2u)])), true, global0[_wgslsmith_index_u32(~u_input.a.x, 2u)])), 6377u != (1u << (u_input.c.x % 32u)), !var_3.x));
    var var_6 = Struct_2(select(var_3.zz, vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.e.x & u_input.c.x, firstTrailingBit(u_input.e.x)), 2u)], u_input.c.x <= countOneBits(1u)), all(select(vec4<bool>(var_3.x, true, var_3.x, var_2.a.x), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(7596u, 2u)], global0[_wgslsmith_index_u32(51075u, 2u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 2u)], var_2.a.x)))));
    var var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(abs(-827f)), 1873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.e.x), ~(~_wgslsmith_sub_u32(u_input.c.x, u_input.e.x)));
}

