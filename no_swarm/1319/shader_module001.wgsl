struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: u32;

var<private> global2: array<Struct_2, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_2, 19>();
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zx) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1969f, -2245f), vec2<f32>(arg_2.d, var_0.d))) * _wgslsmith_f_op_vec2_f32(-arg_3.yw)))))));
    global2 = array<Struct_2, 19>();
    return arg_2;
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    return func_1(true, global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.c.x), 19u)], Struct_1(vec4<u32>(~u_input.c.x, 1u, ~22241u, u_input.c.x) ^ _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)), func_1(arg_0.e, global2[_wgslsmith_index_u32(u_input.c.x, 19u)], Struct_1(vec4<u32>(38651u, 26664u, u_input.c.x, 4294967295u), -15892i, u_input.c.xy, -837f, -2147483647i), vec4<f32>(-1995f, -246f, -653f, 333f)).a), 27650i, u_input.c.zy, -724f, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(999i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(2147483647i, -2147483647i, 0i, arg_0.c.x)), _wgslsmith_sub_i32(firstTrailingBit(u_input.b), firstTrailingBit(arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, 140f, 1019f, 2567f) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1342f, -495f, -578f, 1000f), vec4<f32>(-405f, -132f, -1367f, -629f))))))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = func_3(global2[_wgslsmith_index_u32(4771u, 19u)]);
    global2 = array<Struct_2, 19>();
    global1 = _wgslsmith_mod_u32(var_0.c.x, arg_0.c.x);
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.c.x, 39331u, 37564u, var_0.a.x)) << (~78770u % 32u), _wgslsmith_clamp_u32(u_input.c.x | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.c.x, u_input.c.x, var_0.c.x), var_0.a), ~80575u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 37522u, u_input.c.x) >> (countOneBits(vec3<u32>(1u, 7201u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c.x, 0u), vec3<u32>(4294967295u, 1u, u_input.c.x)) & u_input.c));
    global0 = u_input.b;
    return vec4<u32>(29982u, ~_wgslsmith_sub_u32(~abs(arg_0.c.x), 1u), 36122u, 8309u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -565f);
    global2 = array<Struct_2, 19>();
    var var_1 = Struct_1(countOneBits(~func_2(func_1(false, global2[_wgslsmith_index_u32(12284u, 19u)], Struct_1(vec4<u32>(u_input.c.x, 0u, 10u, 4294967295u), u_input.b, vec2<u32>(4294967295u, u_input.c.x), var_0, 0i), vec4<f32>(var_0, -991f, var_0, var_0)))), _wgslsmith_mod_i32(~(-27365i), _wgslsmith_mod_i32(firstTrailingBit(u_input.e.x), -_wgslsmith_clamp_i32(0i, -48009i, 6078i))), vec2<u32>((1u << (_wgslsmith_mod_u32(1u, u_input.c.x) % 32u)) >> (4294967295u % 32u), 1u), var_0, i32(-1i) * -_wgslsmith_sub_i32(u_input.e.x, max(1i, 51437i)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.c.x), ~u_input.c.x) ^ ~u_input.c.x, 19u)];
    var var_3 = func_3(global2[_wgslsmith_index_u32(u_input.c.x, 19u)]);
    var_1 = Struct_1(func_1(!var_2.e, Struct_2(false, select(var_2.b, vec3<bool>(var_2.e, var_2.a, true), !var_2.e), ~abs(vec3<i32>(2147483647i, var_1.b, var_3.b)), var_2.c, any(var_2.b.xy) || var_2.a), Struct_1(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, u_input.c.x, var_3.c.x, var_1.a.x), vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x))), var_1.b, ~(~var_3.a.wx), var_3.d, i32(-1i) * -14119i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_1.d, var_1.d, 1000f)))).a, var_2.c.x, func_1(all(var_2.b), Struct_2(true, var_2.b, vec3<i32>(~29358i, 54984i, u_input.e.x), vec3<i32>(var_3.e, var_3.b, _wgslsmith_sub_i32(0i, var_1.e)), var_2.e), func_1(any(select(var_2.b, var_2.b, var_2.e)), Struct_2(!var_2.e, vec3<bool>(var_2.e, false, var_2.e), reverseBits(u_input.d), u_input.d | vec3<i32>(0i, var_2.c.x, -28919i), var_2.e), func_3(global2[_wgslsmith_index_u32(max(var_1.c.x, var_3.a.x), 19u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 1708f, var_1.d, 534f)))), vec4<f32>(var_1.d, _wgslsmith_f_op_f32(max(var_1.d, var_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-605f + -1079f))), _wgslsmith_f_op_f32(f32(-1f) * -1313f))).a.xw, -366f, var_3.e);
    var_1 = Struct_1(abs(max(var_1.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.a.x, var_1.a.x, 24733u, u_input.c.x), vec4<u32>(4294967295u, var_3.c.x, 10888u, var_1.c.x)))), var_3.b, select(u_input.c.xx, max(~vec2<u32>(var_3.c.x, 119792u), ~vec2<u32>(var_1.a.x, 108296u)), select(vec2<bool>(var_2.b.x != false, false), select(var_2.b.yy, vec2<bool>(var_2.e, true), 1u >= var_3.c.x), vec2<bool>(!var_2.e, true))), 1082f, var_2.c.x);
    var var_4 = u_input.c.xx;
    var var_5 = u_input.c.x << (49706u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(func_1(!var_2.b.x, Struct_2(var_2.e, var_2.b, u_input.e.wxw, var_2.d, false), Struct_1(vec4<u32>(0u, 35603u, 1u, 81269u), 2147483647i, var_1.a.xy, 1589f, var_3.b), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, 850f, -688f, var_0), vec4<f32>(214f, 842f, var_0, var_1.d))).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) - -229f))), 1205f, _wgslsmith_div_f32(func_1(var_2.e, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.c.x, 0u), 19u)], func_3(global2[_wgslsmith_index_u32(u_input.c.x, 19u)]), vec4<f32>(-567f, -814f, var_0, 2047f)).d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.d)))))), ~var_4.x);
}

