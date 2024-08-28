struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false));

var<private> global1: array<i32, 8> = array<i32, 8>(64471i, -24052i, -1i, -48195i, 55820i, -22128i, 27206i, 0i);

var<private> global2: array<u32, 23> = array<u32, 23>(1695u, 48330u, 4294967295u, 0u, 82877u, 57297u, 4294967295u, 2868u, 77119u, 4294967295u, 42322u, 30961u, 4294967295u, 18286u, 15779u, 0u, 4294967295u, 0u, 1035u, 35495u, 1u, 49503u, 65242u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2289f, -254f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(139f, 972f), vec2<f32>(-670f, 1014f), vec2<bool>(true, false))), arg_1.a.a & true))))), vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 48717u, global2[_wgslsmith_index_u32(1u, 23u)]), vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7872u, 23u)], 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23496u, 23u)], 23u)], 23u)])) << (54589u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 43473u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39674u, 23u)], 23u)], 23u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(15747u, 23u)], 78640u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 0u), vec4<u32>(68979u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 4294967295u, 4294967295u)))), vec2<f32>(_wgslsmith_f_op_f32(abs(-715f)), -430f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1137f, var_0.c.x)), _wgslsmith_div_vec2_f32(var_0.c, var_0.c)))))), vec2<u32>(28653u, ~global2[_wgslsmith_index_u32(firstLeadingBit(26099u), 23u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)) - _wgslsmith_f_op_vec2_f32(abs(var_0.c)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c.x, -1070f, 1000f))))) + vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.c.x), 1f, _wgslsmith_f_op_f32(max(780f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-584f, var_1.c.x))))));
    var var_3 = firstTrailingBit(4294967295u);
    var var_4 = global0[_wgslsmith_index_u32(~72115u & select(4294967295u, global2[_wgslsmith_index_u32(reverseBits(~var_0.b.x), 23u)], !arg_1.a.a), 29u)];
    return vec3<u32>((var_0.b.x >> (1u % 32u)) >> (49160u % 32u), var_0.b.x, select(39265u, firstLeadingBit(global2[_wgslsmith_index_u32(18749u, 23u)]) | (firstTrailingBit(0u) & var_1.b.x), !any(vec3<bool>(arg_1.a.a, arg_0, false)) & !arg_0));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(arg_0.zz, max(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.yz, vec2<u32>(arg_1, 4294967295u)), ~vec2<u32>(arg_2.b.x, arg_0.x)), _wgslsmith_clamp_vec2_u32(arg_0.xy, arg_0.yy, arg_0.zz) & _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 20633u), vec2<u32>(arg_2.b.x, 4294967295u), arg_0.xz)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_1) ^ arg_0.xz, ~vec2<u32>(6078u, global2[_wgslsmith_index_u32(arg_0.x, 23u)]))), vec2<u32>(0u, _wgslsmith_mult_u32(6118u, _wgslsmith_mod_u32(77928u | arg_0.x, 1u))));
    let var_1 = arg_2.b.x;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32((-2147483647i ^ global1[_wgslsmith_index_u32(4294967295u, 8u)]) ^ global1[_wgslsmith_index_u32(43619u, 8u)], -abs(global1[_wgslsmith_index_u32(var_0.x, 8u)])), u_input.b >> (~reverseBits(0u) % 32u), global1[_wgslsmith_index_u32(var_0.x ^ min(arg_2.b.x, 0u >> (0u % 32u)), 8u)]), vec3<i32>(~u_input.a, firstLeadingBit(-1i), u_input.b));
    global0 = array<Struct_2, 29>();
    var var_3 = _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-abs(global1[_wgslsmith_index_u32(29234u, 8u)]), -_wgslsmith_dot_vec3_i32(vec3<i32>(-33745i, global1[_wgslsmith_index_u32(arg_1, 8u)], 7405i), var_2))), vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -6029i, u_input.a));
    return vec4<u32>(~49026u, ~var_0.x, 4294967295u, 29953u);
}

fn func_2() -> vec2<u32> {
    var var_0 = ~func_4(~(~vec3<u32>(29803u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13190u, 23u)], 23u)], 23u)])) << (~func_3(true, Struct_3(Struct_2(true)), global1[_wgslsmith_index_u32(38380u, 8u)]) % vec3<u32>(32u)), max(~func_3(false, Struct_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], 29u)]), u_input.b).x, ~min(global2[_wgslsmith_index_u32(19003u, 23u)], 10181u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1628f, 318f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1085f, -1000f))), select(vec2<u32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 23u)]), true) ^ firstLeadingBit(vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(598f, -883f), vec2<f32>(342f, 686f)) - vec2<f32>(176f, 979f))));
    global2 = array<u32, 23>();
    global1 = array<i32, 8>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 29u)];
    var_0 = firstLeadingBit(vec4<u32>(var_0.x, 32348u, 4294967295u, ~4372u));
    return _wgslsmith_add_vec2_u32(~abs(var_0.zx), vec2<u32>(~abs(var_0.x) | 55576u, 28475u));
}

fn func_5(arg_0: vec2<u32>) -> u32 {
    global2 = array<u32, 23>();
    var var_0 = Struct_3(Struct_2(false));
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(~(~6178u << (arg_0.x % 32u)), 43747u)), 29u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1486f, 460f))), _wgslsmith_f_op_f32(floor(-715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1715f - -1627f)), _wgslsmith_f_op_f32(-900f + _wgslsmith_div_f32(-362f, -335f)))) - vec4<f32>(-1767f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1354f - -364f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(select(-950f, 1641f, var_1.a))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1270f))))))));
    return ~func_4(~(~(~vec3<u32>(0u, 636u, 4294967295u))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~4294967295u), ~arg_0.x), 23u)], Struct_1(_wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(var_2.zy - vec2<f32>(var_2.x, var_2.x))), arg_0, var_2.yx)).x;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))), vec2<f32>(529f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-690f + 2292f), _wgslsmith_f_op_f32(-251f * -1321f)))))), _wgslsmith_div_vec2_u32(~func_3(all(arg_2.yy), Struct_3(global0[_wgslsmith_index_u32(arg_0.x, 29u)]), global1[_wgslsmith_index_u32(~4294967295u, 8u)]).zy, max(vec2<u32>(global2[_wgslsmith_index_u32(54014u, 23u)], global2[_wgslsmith_index_u32(979u, 23u)]) >> (arg_0.zy % vec2<u32>(32u)), firstTrailingBit(arg_0.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1248f, 1497f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, 660f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2161f * -870f))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), -1000f), -955f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, 1568f, 1000f) - vec3<f32>(-698f, var_0.c.x, -1000f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, -702f, var_0.c.x)), vec3<f32>(-566f, 1000f, 1530f)))))));
    let var_2 = global0[_wgslsmith_index_u32(func_4(_wgslsmith_mult_vec3_u32(~(~(vec3<u32>(27152u, var_0.b.x, 0u) | vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(4533u, 23u)], var_0.b.x))), ~func_3(true, Struct_3(Struct_2(arg_2.x)), -7202i)), ~arg_0.x, Struct_1(var_1.xy, _wgslsmith_div_vec2_u32(func_3(!arg_2.x, Struct_3(Struct_2(false)), abs(global1[_wgslsmith_index_u32(28168u, 8u)])).xx, ~var_0.b), var_1.xy)).x, 29u)];
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(arg_1, 29u)]);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_0.c, var_1.xy))) - var_1.zx) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(step(var_0.c.x, var_1.x))))), min(~_wgslsmith_div_vec2_u32(vec2<u32>(20586u, arg_1), arg_0.yz), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, var_0.b.x), vec2<u32>(42761u, var_0.b.x)))), vec2<f32>(121f, 2524f));
    return vec4<u32>(18427u, global2[_wgslsmith_index_u32(arg_1, 23u)], abs(~(~34032u)), abs(firstTrailingBit(select(_wgslsmith_mod_u32(1u, var_0.b.x), ~global2[_wgslsmith_index_u32(var_4.b.x, 23u)], var_3.a.a | true))));
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 23>();
    let var_0 = func_6(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(52078u, 10284u, 4294967295u), ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 64271u, global2[_wgslsmith_index_u32(35013u, 23u)])), global2[_wgslsmith_index_u32(13060u, 23u)], ~select(_wgslsmith_sub_u32(62959u, 1u), 5711u, any(vec4<bool>(false, true, false, true)))), _wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(func_5(func_2()), 23u)], global2[_wgslsmith_index_u32(~(0u ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45369u, 23u)], 23u)], 23u)]), 23u)]), vec3<bool>(true, true, true));
    global1 = array<i32, 8>();
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    return Struct_1(vec2<f32>(958f, _wgslsmith_f_op_f32(sign(-973f))), var_0.ww, _wgslsmith_f_op_vec2_f32(vec2<f32>(384f, -351f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(665f))), -874f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_0.c))))))), ~var_0.b, _wgslsmith_div_vec2_f32(var_0.c, var_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(abs(-821f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.c), var_0.c)))), false));
    global1 = array<i32, 8>();
    let var_3 = Struct_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(min(-u_input.b, select(-43160i, u_input.a, var_3.a)), u_input.b), vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.a)), var_1.b.x, var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(var_1.c.x))) - 1760f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -1057f)), var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2446f - var_0.c.x), _wgslsmith_f_op_f32(var_0.a.x * 449f))) + var_1.a.x)), -1i);
}

