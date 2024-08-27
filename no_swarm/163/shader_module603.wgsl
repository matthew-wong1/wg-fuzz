struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, arg_0, -17080i), ~(vec4<i32>(arg_1.a.b.x, -1i, -1i, 2147483647i) | vec4<i32>(arg_0, 16540i, u_input.a.x, arg_1.b.b.x))), u_input.a.x ^ ~arg_0), arg_0, abs(-arg_1.c.b.x));
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var var_1 = 1u;
    return _wgslsmith_f_op_f32(-1156f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(trunc(arg_1.c.a)))))));
}

fn func_2() -> u32 {
    let var_0 = 4294967295u << ((firstTrailingBit(abs(1u)) << (~_wgslsmith_add_u32(~106894u, firstTrailingBit(52663u)) % 32u)) % 32u);
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(0i, Struct_2(Struct_1(-249f, vec2<i32>(30427i, u_input.a.x), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 8u)], global0[_wgslsmith_index_u32(var_0, 8u)])), Struct_1(293f, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true)), Struct_1(-2167f, vec2<i32>(-1072i, -18119i), vec2<bool>(false, false))))), -_wgslsmith_sub_vec2_i32(vec2<i32>(-19902i, -2147483647i), vec2<i32>(0i, 0i)), !(!vec2<bool>(global0[_wgslsmith_index_u32(var_0, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))), Struct_1(_wgslsmith_f_op_f32(-601f + _wgslsmith_f_op_f32(f32(-1f) * -480f)), vec2<i32>(13109i, u_input.a.x), vec2<bool>(false & global0[_wgslsmith_index_u32(var_0, 8u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)], false)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -322f))), u_input.a.zx, select(vec2<bool>(global0[_wgslsmith_index_u32(16277u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(32022u, 8u)]), false))));
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    return ~(~1u << (select(_wgslsmith_clamp_u32(abs(21000u), ~19240u, 4294967295u), var_0, !(var_1.a.c.a != -1901f)) % 32u));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec2<u32>(countOneBits(func_2() ^ countOneBits(1u)), 29538u << (max(1u, func_2()) % 32u));
    let var_1 = select(countOneBits(u_input.a.yy), u_input.a.zx, false) >> (var_0 % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -488f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1215f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2010f, 865f)), _wgslsmith_f_op_f32(select(-501f, _wgslsmith_f_op_f32(-188f + 772f), u_input.a.x != u_input.a.x))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1618f)) - _wgslsmith_div_f32(-1898f, 522f)))), _wgslsmith_f_op_f32(f32(-1f) * -867f)));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(161f, var_2.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1163f) * vec2<f32>(var_2.x, var_2.x))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))))));
    let var_3 = 2089u;
    return vec2<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_mult_u32(0u, min(var_3 >> (var_0.x % 32u), var_0.x))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), min(vec3<i32>(1i, i32(-1i) * -28006i, -21720i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, 23580i), ~u_input.a.x, abs(u_input.a.x)), -_wgslsmith_mult_i32(2147483647i, u_input.a.x), firstLeadingBit(u_input.a.x) >> (func_1().x % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -(~u_input.a.zz), select(vec2<bool>(false, false), select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), false), true)), Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-32394i, 1i)), firstLeadingBit(u_input.a.zz)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), global0[_wgslsmith_index_u32(19615u, 8u)]), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(4015u, 8u)], false), true), vec2<bool>(true, false))), Struct_1(1170f, u_input.a.zz, vec2<bool>(select(true, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(58775u, 8u)]), any(vec2<bool>(false, true))))));
    var var_1 = vec4<bool>(true, any(vec4<bool>(select(var_0.c.a.c.x, var_0.c.a.c.x || false, any(vec4<bool>(var_0.c.b.c.x, true, global0[_wgslsmith_index_u32(var_0.a.x, 8u)], false))), !var_0.c.b.c.x, any(vec4<bool>(global0[_wgslsmith_index_u32(27103u, 8u)], true, global0[_wgslsmith_index_u32(var_0.a.x, 8u)], var_0.c.c.c.x)), select(var_0.c.c.c.x & false, true, any(vec4<bool>(false, var_0.c.b.c.x, global0[_wgslsmith_index_u32(var_0.a.x, 8u)], var_0.c.a.c.x))))), !select(any(vec3<bool>(true, false, var_0.c.a.c.x)), var_0.c.c.c.x, var_0.c.b.c.x) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.b.a)) + _wgslsmith_f_op_f32(-1010f - var_0.c.a.a)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(899f, -1000f))), true);
    var var_2 = var_0.b.x;
    var_2 = 16205i;
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(-var_0.c.a.a) == _wgslsmith_f_op_f32(min(-305f, 1679f)), !(any(vec2<bool>(var_0.c.c.c.x, var_0.c.a.c.x)) & false), false, any(var_1.xy) && (_wgslsmith_f_op_f32(step(-756f, _wgslsmith_f_op_f32(round(-932f)))) >= _wgslsmith_f_op_f32(max(var_0.c.c.a, _wgslsmith_f_op_f32(abs(3460f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1403f, var_0.c.c.a))) - vec2<f32>(-672f, _wgslsmith_f_op_f32(select(var_0.c.b.a, 326f, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1416f, 344f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2144f, var_0.c.b.a)))), !var_0.c.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(728f, _wgslsmith_f_op_f32(779f + -716f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.a) * _wgslsmith_f_op_f32(var_0.c.b.a + 322f)))));
}

