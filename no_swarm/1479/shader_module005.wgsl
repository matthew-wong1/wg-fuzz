struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: f32) -> Struct_2 {
    return Struct_2(Struct_1(vec4<i32>(~(-u_input.a.x), firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 17925i)), _wgslsmith_div_i32(2147483647i, select(u_input.a.x, u_input.a.x, true)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.a.x, -3506i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 36106i))), firstLeadingBit(33320u)), vec2<u32>(1u, 1u) >> (abs(~firstTrailingBit(vec2<u32>(0u, 29581u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(firstTrailingBit(~vec4<i32>(-2147483647i, arg_2, -2147483647i, arg_2)), ~1u), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f), -290f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(309f, 1000f, 2109f) + vec3<f32>(-1000f, 430f, -130f)))), _wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-400f, -102f) + _wgslsmith_f_op_f32(f32(-1f) * -595f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) + 168f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(819f - -707f) + _wgslsmith_f_op_f32(floor(1772f))))));
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(step(-136f, var_0.c));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2702f, var_0.c))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-456f)), 986f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_3.x, var_0.c, var_2)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_1, 2u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, 472f, 781f, -1743f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_0.c, var_2, var_3.x) + global0[_wgslsmith_index_u32(77557u, 2u)]))), global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1044f, 1377f, var_0.c), vec3<f32>(var_0.c, 361f, var_2))), -1557f).a.b >> ((4294967295u >> (arg_1 % 32u)) % 32u), 2u)]));
    return var_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1010f, 1035f, -2152f, arg_1.c) + global0[_wgslsmith_index_u32(arg_1.a.b, 2u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-899f, arg_1.c, arg_1.c, arg_1.c), global0[_wgslsmith_index_u32(4294967295u, 2u)], true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, 644f, 1784f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-497f, arg_1.c, -412f, arg_1.c))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -768f, 217f, arg_1.c))))))));
    var var_1 = ~arg_1.b.a.a.wwy;
    global0 = array<vec4<f32>, 2>();
    let var_2 = max(~vec2<u32>(0u, min(74456u, arg_0.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23999u), arg_0.zx) % 32u)), vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), _wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_mult_u32(arg_0.x, 4294967295u)) ^ 30837u));
    var_0 = global0[_wgslsmith_index_u32(~(~(~var_2.x)), 2u)];
    return Struct_4(Struct_3(Struct_1(arg_1.b.a.a, firstLeadingBit(1u)), Struct_2(func_2(_wgslsmith_f_op_f32(abs(arg_1.c)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1290f, var_0.x, var_0.x), vec3<f32>(arg_1.c, 1000f, 1403f))), _wgslsmith_f_op_f32(919f - arg_1.c)).a, _wgslsmith_mult_vec2_u32(arg_1.b.b, arg_0.xz)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-332f + -202f), _wgslsmith_f_op_f32(select(var_0.x, -177f, arg_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 609f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_4) -> vec4<i32> {
    global0 = array<vec4<f32>, 2>();
    global0 = array<vec4<f32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -758f);
    let var_1 = ~(~countOneBits(1u));
    let var_2 = arg_2.a;
    return -vec4<i32>(_wgslsmith_mod_i32(var_2.a.a.x, ~0i), countOneBits(-4682i), abs(1i), countOneBits(arg_2.a.b.a.a.x & _wgslsmith_clamp_i32(arg_2.a.b.a.a.x, -1i, arg_2.a.b.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 2>();
    var var_0 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)), true, false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, !all(vec2<bool>(true, true)))));
    let var_1 = -2147483647i;
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(-29735i, countOneBits(var_1), var_1, -u_input.a.x), func_4(!select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), countOneBits(vec2<u32>(1u, 1u)), func_3(vec4<u32>(1u, 1u, 1u, 1u), func_1(vec3<i32>(-37267i, 1i, 2147483647i), 0u, var_1), var_0.xwx, u_input.a))), func_3(~abs(vec4<u32>(19064u, 4294967295u, 67369u, 4294967295u)), func_1(-vec3<i32>(var_1, 0i, var_1), 4294967295u, u_input.a.x << (51504u % 32u)), vec3<bool>(var_0.x, any(var_0.xw), var_0.x && true), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), 0i)).a.b.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(13889u, 4294967295u), _wgslsmith_mod_u32(4294967295u, 49333u)), ~vec2<u32>(14936u, 4294967295u) << (func_2(475f, vec3<f32>(-575f, -1214f, 302f), -906f).b % vec2<u32>(32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(30113i, 0i, -77306i, -1i), var_2.a, vec4<bool>(var_0.x, true, false, false)) >> (firstLeadingBit(~vec4<u32>(var_2.b, var_2.b, 29875u, var_2.b)) % vec4<u32>(32u)), min(var_2.a, _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a.x, var_2.a.x), vec4<i32>(2147483647i, var_1, -2147483647i, -2147483647i) << (vec4<u32>(7372u, 4963u, 1494u, 1u) % vec4<u32>(32u))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-887f)) + _wgslsmith_f_op_f32(926f + -1000f)), -163f, !var_0.x)), 411f, 1866f), vec2<f32>(1347f, 1216f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 656f, -871f)));
}

