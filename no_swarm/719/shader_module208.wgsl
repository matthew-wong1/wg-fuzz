struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, true, false, false, true, true, false, true, true, false, true, false, false);

var<private> global1: u32;

var<private> global2: array<vec2<u32>, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(u_input.a, u_input.a & u_input.a), vec2<i32>(1i, abs(i32(-1i) * -32929i)), vec2<f32>(1f, 1f), vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), min(4990i, u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -299f)), _wgslsmith_f_op_f32(ceil(941f)))))), Struct_1(-37576i, reverseBits(~vec2<i32>(u_input.a, 25521i) | select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), arg_0.xw)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1296f)), -1734f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1230f, -839f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-828f, 1812f)))))), firstTrailingBit(vec2<i32>(u_input.a, 32262i) | vec2<i32>(u_input.a, u_input.a)) & vec2<i32>(u_input.a & u_input.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1419f, -950f, false))))), Struct_1(2147483647i, _wgslsmith_clamp_vec2_i32(firstTrailingBit(~vec2<i32>(2147483647i, u_input.a)), countOneBits(vec2<i32>(u_input.a, -45922i)), min(vec2<i32>(0i, 5293i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, 2147483647i)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1716f, 2753f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-119f, 326f) - vec2<f32>(806f, 1155f))))), vec2<i32>(9897i, ~u_input.a), _wgslsmith_f_op_f32(ceil(430f))), !arg_0.x, Struct_1(0i, -(~vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-532f, 456f)))))), select(-select(vec2<i32>(u_input.a, 0i), vec2<i32>(-2147483647i, -6213i), true), -vec2<i32>(u_input.a, u_input.a) & _wgslsmith_mult_vec2_i32(vec2<i32>(25670i, 1i), vec2<i32>(u_input.a, u_input.a)), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-223f))))));
    global1 = ~4294967295u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.e))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(122f - _wgslsmith_f_op_f32(f32(-1f) * -1182f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1913f * var_0.a.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e.c.x - 581f))))), var_0.c.c.x);
    var var_2 = var_0;
    let var_3 = var_1.x;
    return vec2<i32>(_wgslsmith_clamp_i32(var_0.a.b.x, _wgslsmith_clamp_i32(max(var_2.c.a << (4294967295u % 32u), -24496i & var_0.b.d.x), ~reverseBits(-1i), (u_input.a | 1i) | -1i), -_wgslsmith_clamp_i32(u_input.a & -2318i, 2147483647i, -var_2.b.a)), abs(-32356i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> f32 {
    global2 = array<vec2<u32>, 25>();
    var var_0 = Struct_1(14364i, func_3(!arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-837f, -1325f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f - -998f) - 1011f), _wgslsmith_f_op_f32(-336f * -942f)), vec2<bool>(true | any(vec4<bool>(arg_1.x, false, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)])), true))), arg_2.yy, 888f);
    global2 = array<vec2<u32>, 25>();
    let var_1 = abs(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.d.x, _wgslsmith_add_i32(u_input.a, -1i), min(arg_2.x, -18536i)), -_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, -36768i, 37679i), vec4<i32>(13608i, 16348i, arg_2.x, 1i))), countOneBits(reverseBits(abs(var_0.b.x)))));
    var var_2 = firstLeadingBit(select(vec2<i32>(-5361i, -(~1i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_1, u_input.a), ~var_0.b) >> (_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(~127837u, 25u)], global2[_wgslsmith_index_u32(select(41395u, 4294967295u, true), 25u)]) % vec2<u32>(32u)), any(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(8944u, 15u)]))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e)))) - _wgslsmith_f_op_f32(-2176f - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.c.x)))) * var_0.e);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-650f, 786f)) * _wgslsmith_f_op_f32(sign(1147f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-2554f - -834f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1313f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec4<bool>(global0[_wgslsmith_index_u32(29420u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(45016u, 15u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(46271u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<i32>(-30497i, -1i, u_input.a))), _wgslsmith_f_op_f32(step(1161f, 932f)), 2147483647i > u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(9378u, 15u)])), _wgslsmith_f_op_f32(ceil(757f))))))));
    var var_1 = vec2<u32>(0u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16342u, 32282u), vec3<u32>(1u, 1u, 1u)), countOneBits(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(22205u, 4294967295u), global2[_wgslsmith_index_u32(22392u, 25u)]) % 32u))) | global2[_wgslsmith_index_u32(1u, 25u)];
    global1 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 13246u, 0u, 42496u), select(vec4<u32>(4294967295u, 4294967295u, var_1.x, 0u), vec4<u32>(var_1.x, 80012u, 0u, 22127u), false), vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u)), vec4<u32>(16343u ^ var_1.x, 0u ^ var_1.x, _wgslsmith_clamp_u32(var_1.x, var_1.x, 4294967295u), var_1.x | var_1.x))) ^ 25619u;
    global1 = var_1.x;
    let var_2 = vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(30884i, u_input.a, -36514i), -vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, var_1.x, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(11956u, 1u, 0u), vec3<u32>(var_1.x, var_1.x, var_1.x))) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, 2147483647i)));
    return firstLeadingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    global1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-546f)) + -1000f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -336f), 132f, u_input.a >= u_input.a))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))));
    global2 = array<vec2<u32>, 25>();
    let var_0 = reverseBits(1u);
    var var_1 = Struct_2(Struct_1(7387i, _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(32962i, 40422i), vec2<i32>(u_input.a, u_input.a)), -reverseBits(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a) >> (global2[_wgslsmith_index_u32(1u, 25u)] % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(998f, -1621f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1387f, -214f) * vec2<f32>(-1146f, -920f)), vec2<f32>(341f, -1041f))), ~(-(~vec2<i32>(u_input.a, 13380i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -884f)))), Struct_1(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a, -20718i, u_input.a, -1i)), firstLeadingBit(abs(vec4<i32>(-3114i, u_input.a, -1i, u_input.a)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -3611i), vec2<i32>(-40229i, -73664i), vec2<i32>(u_input.a, 17197i)) >> (vec2<u32>(firstTrailingBit(var_0), _wgslsmith_sub_u32(var_0, var_0)) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2413f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-1425f)))), abs(vec2<i32>(u_input.a, 25123i) << (vec2<u32>(var_0, 1u) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(945f, _wgslsmith_f_op_f32(f32(-1f) * -2345f), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(726f)), -153f))), Struct_1(max(~(~0i), firstLeadingBit(67912i)), vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, 56044i)) ^ vec2<i32>(1i, min(-2147483647i, -4536i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-722f, -433f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, 702f))))), select(min(~vec2<i32>(u_input.a, 27634i), vec2<i32>(u_input.a, 16681i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, -2147483647i))), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(54534u, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)])), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(35739u, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)]))), _wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(-797f * _wgslsmith_f_op_f32(min(1658f, -865f))))), global0[_wgslsmith_index_u32(~(~(~(var_0 << (4294967295u % 32u)))), 15u)], Struct_1(_wgslsmith_div_i32(8041i, ~(u_input.a & -2147483647i)), max(-select(vec2<i32>(295i, -14260i), vec2<i32>(u_input.a, u_input.a), true), ~(~vec2<i32>(u_input.a, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(736f)), _wgslsmith_f_op_f32(338f + -1067f))), -113f), firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i)) << (global2[_wgslsmith_index_u32(var_0, 25u)] % vec2<u32>(32u)), 440f));
    var var_2 = Struct_2(var_1.b, Struct_1(_wgslsmith_add_i32(reverseBits(-u_input.a), -2147483647i), min(~var_1.c.b, firstLeadingBit(vec2<i32>(var_1.a.b.x, -36130i))) << (global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(3543u, var_0)), 25u)] % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.e.c)), var_1.b.c))), -var_1.c.d, 789f), Struct_1(-41884i, max(var_1.e.b, vec2<i32>(~u_input.a, -var_1.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b.c, var_1.a.c, vec2<bool>(true, global0[_wgslsmith_index_u32(53725u, 15u)])))) - var_1.a.c), min(_wgslsmith_clamp_vec2_i32(~var_1.e.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_1.e.b.x), vec2<i32>(var_1.a.a, -2147483647i), vec2<i32>(var_1.c.b.x, var_1.e.a)), vec2<i32>(-1i, 6222i)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2407i, var_1.c.a), vec2<i32>(u_input.a, var_1.e.a), var_1.c.d), vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.e, _wgslsmith_div_f32(var_1.a.c.x, var_1.b.c.x)))), all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 15u)], false, var_1.d, !var_1.d)) || !global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(83377u, var_0)), 15u)], Struct_1(0i, _wgslsmith_mult_vec2_i32(var_1.e.b, ~vec2<i32>(var_1.b.a, 7528i)), _wgslsmith_f_op_vec2_f32(-var_1.b.c), func_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.d, var_1.d, true, var_1.d), vec4<bool>(var_1.d, global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(50192u, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)]), true), vec4<bool>(var_1.d, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.c.x, _wgslsmith_f_op_f32(var_1.e.c.x + var_1.e.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_1.b.c.x, var_2.c.c.x, var_1.d)), 543f, vec2<f32>(var_2.b.e, -312f), ~(~vec3<u32>(1u, var_0, var_0)) << (~vec3<u32>(1u, 1u, firstLeadingBit(94630u)) % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_0, var_0) | ~var_0), func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.b.c)))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.c.x, var_1.c.c.x) + vec2<f32>(-276f, var_1.b.e)) - vec2<f32>(-1338f, var_1.b.e)))));
}

