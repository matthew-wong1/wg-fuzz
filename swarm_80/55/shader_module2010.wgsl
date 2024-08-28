struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

var<private> global1: array<bool, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x))), vec2<i32>(_wgslsmith_mult_i32(15634i, ~(i32(-1i) * -1i)), 22091i), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(72777u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(20266u, 1u), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x)), u_input.c.x, true));
    var var_1 = ~(~firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c, u_input.c.x), 12u)]));
    global1 = array<bool, 18>();
    let var_2 = !global1[_wgslsmith_index_u32(u_input.c.x, 18u)];
    var var_3 = var_2 & !(_wgslsmith_mult_u32(~var_1.x, ~1u) < ~(~1u));
    return 4294967295u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 18>();
    global0 = array<vec4<u32>, 12>();
    global1 = array<bool, 18>();
    let var_0 = reverseBits(arg_1.x);
    global1 = array<bool, 18>();
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -250f))), vec2<i32>(u_input.a.x | firstLeadingBit(-u_input.b.x), _wgslsmith_sub_i32(-2147483647i, ~(u_input.a.x & u_input.b.x))), _wgslsmith_div_u32(~countOneBits(~59602u), ~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~u_input.c.x, 12u)], countOneBits(vec4<u32>(4294967295u, 0u, 0u, 0u)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(125f, arg_1.a))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1139f)))) + arg_0.x)));
    let var_1 = 53075i;
    global0 = array<vec4<u32>, 12>();
    var_0 = _wgslsmith_f_op_f32(step(-127f, -1264f));
    var var_2 = Struct_2(arg_0.zz, u_input.a.x | abs(u_input.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~(u_input.b.zz ^ arg_1.b), ~u_input.a), abs(-(~vec2<i32>(arg_1.b.x, -1i)))), global0[_wgslsmith_index_u32(0u, 12u)]);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    global0 = array<vec4<u32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), arg_0.a), arg_2.x)));
    global0 = array<vec4<u32>, 12>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(711f * -223f)) * arg_1.a)), min(vec2<i32>(arg_1.b.x, arg_0.b.x), u_input.b.zx), abs(arg_1.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, arg_3.a.x, -716f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a)), arg_1.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, arg_0.a, 1123f) + vec3<f32>(-832f, -371f, 264f)) - vec3<f32>(1502f, arg_3.a.x, -307f))))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(arg_3.d.wyw & arg_3.d.ywy, arg_3.d.xwx << (vec3<u32>(4294967295u, arg_0.c, 14608u) % vec3<u32>(32u))), 1u));
    let var_1 = abs(~firstTrailingBit(arg_3.d.yyy));
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(29774i, -(i32(-1i) * -38335i), u_input.a.x >> (1u % 32u)), u_input.b.zxx);
    global0 = array<vec4<u32>, 12>();
    var var_3 = vec3<bool>(!(global1[_wgslsmith_index_u32(var_0.c, 18u)] || true), _wgslsmith_div_f32(108f, -449f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-536f, var_0.a)))), any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(16880u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], false), vec3<bool>(global1[_wgslsmith_index_u32(68504u, 18u)], false, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], true, global1[_wgslsmith_index_u32(var_0.c, 18u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], false), global1[_wgslsmith_index_u32(arg_0.c, 18u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(85117u, 18u)])), select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_0.c, 18u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.c, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]), false), !(!global1[_wgslsmith_index_u32(0u, 18u)]))));
    return Struct_2(arg_3.a, -1i, max(arg_1.b, vec2<i32>(38540i, ~1i)), _wgslsmith_add_vec4_u32(arg_3.d >> (vec4<u32>(26611u, 13825u, var_0.c, arg_1.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(8037u, 12u)], ~vec4<u32>(1u, arg_0.c, 4294967295u, u_input.c.x))) << (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.c, firstLeadingBit(4294967295u)), 12u)] % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, -253f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))))), -1i, u_input.b.yy, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 0u), 12u)]);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * -2124f), _wgslsmith_f_op_f32(1331f + -976f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(var_0.a.x))), select(true, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(var_0.d.x, 18u)]) & true))), _wgslsmith_add_i32(-1i, u_input.a.x), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.b.ww, _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(-1i, -1i), vec2<i32>(var_0.b, 8497i))), var_0.c), var_0.c), vec4<u32>(~u_input.c.x, (var_0.d.x >> (var_0.d.x % 32u)) ^ ~select(4294967295u, var_0.d.x, global1[_wgslsmith_index_u32(0u, 18u)]), firstLeadingBit(u_input.c.x), ~35859u >> (_wgslsmith_mult_u32(1u, func_1(var_0.a, var_0.b)) % 32u)));
    global0 = array<vec4<u32>, 12>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(919f, _wgslsmith_div_f32(var_0.a.x, -1000f), var_0.a.x > var_0.a.x)))) - 1077f)));
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(-1682f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(291f, 428f, false)) + -866f)), vec2<i32>(_wgslsmith_sub_i32(-2147483647i >> (var_0.d.x % 32u), _wgslsmith_div_i32(var_0.c.x, -1i)), -1i), var_0.d.x), func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_1) + vec3<f32>(-1010f, var_0.a.x, 1283f))), ~var_0.d.zy), Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), vec2<i32>(-u_input.a.x, func_3(vec4<f32>(var_0.a.x, var_0.a.x, 1157f, 750f), Struct_1(-663f, vec2<i32>(46557i, 1i), u_input.c.x))), 1u), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], true), global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 18u)], true)), Struct_2(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(-1680f, 171f)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -var_0.c.x), var_0.c, vec4<u32>(var_0.d.x >> (107909u % 32u), _wgslsmith_add_u32(var_0.d.x, 0u), _wgslsmith_mod_u32(993u, 11115u), 0u))), reverseBits(u_input.b.zy), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + var_0.a) * vec2<f32>(var_1, func_2(vec3<f32>(-1000f, -618f, 789f), var_0.d.yy).a)), ~2147483647i, firstTrailingBit(~u_input.a) ^ u_input.a, ~vec4<u32>(~var_0.d.x, 66604u, firstLeadingBit(4294967295u), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(Struct_1(-1010f, u_input.a, 0u), func_2(vec3<f32>(var_1, var_0.a.x, 396f), var_2.d.zw), countOneBits(u_input.a), var_2).a.x, func_4(func_2(vec3<f32>(-377f, -180f, var_0.a.x), u_input.c.xy), func_4(Struct_1(1132f, var_2.c, u_input.c.x), Struct_1(var_0.a.x, var_2.c, u_input.c.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], true), var_2), !vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.d.x, 18u)]), var_2).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(759f + 747f)), func_5(Struct_1(888f, u_input.b.xy, var_2.d.x), Struct_1(var_2.a.x, var_0.c, var_2.d.x), -vec2<i32>(u_input.a.x, 40431i), Struct_2(var_0.a, -9424i, vec2<i32>(17096i, u_input.b.x), var_0.d)).a.x)), ~(min(4294967295u, 0u) | max(1u, var_2.d.x)));
}

