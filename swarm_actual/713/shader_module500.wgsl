struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, true, true, false, false, true, true, false, false, true);

var<private> global1: u32 = 27577u;

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<i32> {
    global0 = array<bool, 11>();
    global3 = array<vec2<bool>, 29>();
    var var_0 = max(1i, u_input.a.x);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(arg_0.e.b.x ^ -2147483647i), u_input.a.x, 1i, max(1i, u_input.a.x >> (arg_0.a % 32u))) & select(vec4<i32>(-1i) * -arg_0.e.b, max(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(-45040i, arg_0.e.b.x, -2147483647i, u_input.a.x)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 11u)], arg_0.d, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), global0[_wgslsmith_index_u32(1u, 11u)]))), firstLeadingBit((vec4<i32>(arg_0.e.b.x, arg_0.e.b.x, u_input.a.x, 18947i) ^ arg_0.e.b) | min(~arg_0.e.b, vec4<i32>(u_input.a.x, -1i, 2147483647i, 0i))));
    global0 = array<bool, 11>();
    return vec3<i32>(min(_wgslsmith_mod_i32(arg_0.e.b.x, _wgslsmith_mod_i32(0i, arg_0.e.b.x)), abs(-53778i) | u_input.a.x) & (arg_0.e.b.x ^ _wgslsmith_sub_i32(35676i, arg_0.e.b.x)), -(select(arg_0.e.b.x | -4985i, _wgslsmith_sub_i32(u_input.a.x, 0i), true) ^ u_input.a.x), abs(1i));
}

fn func_2() -> vec4<f32> {
    let var_0 = vec3<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], true)), global0[_wgslsmith_index_u32(~1u, 11u)], any(!vec3<bool>(true, u_input.a.x < u_input.a.x, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])))));
    var var_1 = ~(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x), reverseBits(abs(vec3<i32>(1i, u_input.a.x, -46531i)))) & func_3(Struct_2(firstTrailingBit(u_input.b.x), 16101u & u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1284f, 1606f)), global0[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(var_0.zx, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(298f, 646f, 1000f), vec3<f32>(-1000f, 309f, 801f), var_0.x)))));
    let var_2 = -_wgslsmith_add_vec2_i32(-var_1.xz, u_input.a | reverseBits(var_1.yy));
    let var_3 = select(!vec4<bool>(!any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false)), (var_0.x | true) == all(var_0), !all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 11u)], false, var_0.x)), global0[_wgslsmith_index_u32(5933u, 11u)]), !select(vec4<bool>(true, all(var_0), false, false), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 11u)], true, global0[_wgslsmith_index_u32(59477u, 11u)], true), vec4<bool>(false, true, false, false), true), true), vec4<bool>(var_0.x, true & any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], false)), !select(global0[_wgslsmith_index_u32(u_input.b.x, 11u)] & true, true, global0[_wgslsmith_index_u32(1u, 11u)]), any(select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, false), var_0), select(var_0, var_0, vec3<bool>(global0[_wgslsmith_index_u32(18769u, 11u)], true, true))))));
    var var_4 = var_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-601f, 1061f, 651f, -621f) * vec4<f32>(1354f, -153f, 1322f, 3286f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-210f, 431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f - 114f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-539f + 1774f), _wgslsmith_f_op_f32(741f + -2372f))), -571f)));
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(!vec2<bool>(all(vec2<bool>(false, false)), !global0[_wgslsmith_index_u32(u_input.d >> (15874u % 32u), 11u)]), _wgslsmith_sub_vec4_i32(-abs(select(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -31838i, u_input.a.x, -57297i), vec4<bool>(false, true, true, true))), vec4<i32>(8529i, _wgslsmith_dot_vec4_i32(vec4<i32>(20110i, u_input.a.x, -1i, -1i) & vec4<i32>(-2812i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 18566i), vec4<i32>(-25121i, u_input.a.x, 10973i, u_input.a.x)), max(u_input.a.x, 0i)), u_input.a.x ^ -u_input.a.x)));
    let var_1 = any(select(select(vec2<bool>(true, 0u == u_input.b.x), !(!vec2<bool>(var_0.a.x, true)), any(select(global3[_wgslsmith_index_u32(1u, 29u)], var_0.a, vec2<bool>(false, false)))), select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, firstLeadingBit(0u)), 29u)], global3[_wgslsmith_index_u32(29623u, 29u)], select(vec2<bool>(true, true), vec2<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), any(vec3<bool>(var_0.a.x, true, false)))), false));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1922f + 1210f), -465f)), _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f), -624f))));
    var var_3 = select(select(!vec4<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(66362u, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)], true)), true, var_1, false), vec4<bool>(!any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 11u)], false, var_1)), var_0.a.x, true, (u_input.a.x & 0i) >= (15159i >> (u_input.e % 32u))), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], any(vec4<bool>(false, true, var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 11u)])), all(vec3<bool>(false, var_1, true)))), !select(vec4<bool>(true, all(vec2<bool>(var_0.a.x, global0[_wgslsmith_index_u32(79098u, 11u)])), var_0.a.x | false, any(global3[_wgslsmith_index_u32(u_input.b.x, 29u)])), !select(vec4<bool>(true, true, var_0.a.x, false), vec4<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], false), false), vec4<bool>(var_1, select(false, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), true, false)), select(select(vec4<bool>(-2147483647i <= var_0.b.x, var_1, var_1 | true, var_1), !vec4<bool>(var_0.a.x, var_0.a.x, var_1, global0[_wgslsmith_index_u32(u_input.e, 11u)]), any(vec4<bool>(false, false, true, var_1))), select(vec4<bool>(!var_1, var_0.a.x && true, false || global0[_wgslsmith_index_u32(u_input.c.x, 11u)], false), vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(u_input.e, 11u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e), 11u)]), any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], var_0.a.x, true))), select(vec4<bool>(select(true, true, true), true, true, u_input.e >= 1u), vec4<bool>(var_1, true, true, false || var_1), vec4<bool>(var_0.a.x, any(global3[_wgslsmith_index_u32(4294967295u, 29u)]), !var_1, var_1))));
    var var_4 = abs(reverseBits(u_input.d));
    return vec4<bool>(any(vec3<bool>(true && (var_2.x > 402f), all(var_3.wzw), global0[_wgslsmith_index_u32(u_input.c.x, 11u)])), false, true && !var_3.x, any(!vec3<bool>(all(var_3.yx), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~82211u, u_input.c.x), 11u)] | (all(func_1()) || false);
    var var_1 = -1347f;
    global3 = array<vec2<bool>, 29>();
    var var_2 = u_input.b.x;
    var_1 = 127f;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-726f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_div_f32(-2036f, -672f))), _wgslsmith_f_op_f32(max(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x + 469f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(636f)))), 797f), u_input.a.x, vec4<u32>(~_wgslsmith_div_u32(u_input.c.x, 15372u), 0u, u_input.c.x, u_input.d), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-1143f, _wgslsmith_f_op_f32(240f - -530f), u_input.a.x > var_3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(1561f - -703f), u_input.e != u_input.d))))), vec2<i32>(var_3.x & ~1i, var_3.x) << (~min(vec2<u32>(u_input.d, 1u), _wgslsmith_div_vec2_u32(u_input.c.yx, vec2<u32>(u_input.d, 0u))) % vec2<u32>(32u)));
}

