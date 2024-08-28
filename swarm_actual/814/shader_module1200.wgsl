struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = Struct_3(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, all(global0[_wgslsmith_index_u32(max(0u, arg_1.x), 29u)])), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true)));
    var var_1 = Struct_1(arg_0 <= max(_wgslsmith_clamp_i32(-7536i, arg_2.x, arg_2.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 35124u), vec3<u32>(6099u, arg_1.x, 55647u)) % 32u), _wgslsmith_mod_i32(countOneBits(-9296i), _wgslsmith_div_i32(u_input.c.x, arg_0))), abs(arg_1));
    let var_2 = Struct_2(max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x << (var_1.b.x % 32u), 4294967295u, _wgslsmith_div_u32(var_1.b.x, arg_1.x), ~2778u), select(~vec4<u32>(0u, 0u, 0u, arg_1.x), ~vec4<u32>(var_1.b.x, 81600u, var_1.b.x, arg_1.x), var_1.a)), vec4<u32>(125538u, min(1u, reverseBits(arg_1.x)), ~max(var_1.b.x, 4294967295u), arg_1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, _wgslsmith_sub_i32(10932i, u_input.b.x), arg_2.x, -arg_2.x), vec4<i32>(arg_0, -1116i, abs(arg_2.x), 0i), ~(~u_input.c)), vec4<i32>(firstTrailingBit(62789i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-49468i, arg_2.x, arg_0, u_input.b.x) | u_input.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, -2147483647i, 2147483647i, 0i), vec4<i32>(-43337i, arg_0, u_input.c.x, u_input.b.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 63055i, arg_2.x), u_input.b.yzw), arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1445f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(570f, 1322f)), _wgslsmith_f_op_f32(-437f - 1566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f * -643f) + _wgslsmith_f_op_f32(trunc(1391f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1488f * -1031f)), 503f, 345f))), select(select(reverseBits(vec3<u32>(5068u, var_1.b.x, 1u)), abs(vec3<u32>(var_1.b.x, var_1.b.x, 4294967295u) & vec3<u32>(var_1.b.x, 36168u, 63272u)), !(!global0[_wgslsmith_index_u32(var_1.b.x, 29u)])), ~(~(~vec3<u32>(arg_1.x, 13730u, var_1.b.x))), var_1.a));
    var var_3 = Struct_1(!(27316i <= -countOneBits(arg_2.x)), vec2<u32>(~(~32078u), ~36639u));
    let var_4 = select(select(!(!select(vec4<bool>(var_3.a, var_0.a.x, var_3.a, var_3.a), vec4<bool>(false, var_3.a, var_3.a, var_3.a), vec4<bool>(var_1.a, var_1.a, var_0.a.x, true))), select(!select(vec4<bool>(var_1.a, true, false, true), vec4<bool>(var_3.a, var_1.a, true, true), var_1.a), !(!vec4<bool>(true, true, var_0.a.x, true)), false && !var_0.a.x), !(!select(vec4<bool>(true, var_3.a, var_3.a, false), vec4<bool>(var_1.a, var_0.a.x, true, true), vec4<bool>(var_1.a, true, false, var_0.a.x)))), vec4<bool>(!var_0.a.x && true, true, var_3.a, any(vec3<bool>(true, var_3.a, !var_1.a))), all(global0[_wgslsmith_index_u32(max(var_2.a.x, 4294967295u) ^ (27729u ^ var_3.b.x), 29u)]));
    return -vec2<i32>(u_input.c.x, -2147483647i) | vec2<i32>(~(-2147483647i), ~var_2.b.x);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = any(global0[_wgslsmith_index_u32(min(~(~1u), ~(~1u)), 29u)]);
    var var_1 = arg_0;
    var var_2 = Struct_1(arg_0, vec2<u32>(1u, 1u));
    let var_3 = _wgslsmith_add_vec3_i32(select(abs(_wgslsmith_div_vec3_i32(u_input.b.xww, vec3<i32>(arg_1.x, -26046i, arg_1.x))) ^ -vec3<i32>(u_input.b.x, u_input.b.x, arg_1.x), abs(max(firstLeadingBit(u_input.a), -vec3<i32>(2147483647i, arg_1.x, u_input.c.x))), arg_0), select(firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.b.xzy, vec3<i32>(arg_1.x, -53391i, 9018i))), vec3<i32>(-arg_1.x, _wgslsmith_sub_i32(46224i, ~0i), i32(-1i) * -30182i), var_2.a));
    var var_4 = Struct_1(var_2.a, ~var_2.b ^ var_2.b);
    return abs(vec4<u32>(max(firstTrailingBit(1u), 4294967295u), 24386u, 2712u, 4294967295u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_2(func_4(true, select(u_input.c.zx, _wgslsmith_mult_vec2_i32(func_3(u_input.a.x, arg_2.zy, u_input.b.zwx), vec2<i32>(21546i, -39012i)), any(vec4<bool>(arg_3, false, arg_3, arg_3)) & all(global0[_wgslsmith_index_u32(arg_2.x, 29u)]))), u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), -737f) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2803f - 393f), -404f, -1050f))), vec3<u32>(arg_2.x, 18062u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, 4294967295u), _wgslsmith_clamp_u32(0u, arg_2.x, 1u))));
    var var_1 = Struct_1(true, vec2<u32>(firstLeadingBit(46459u), ~(var_0.e.x ^ 10090u)));
    var_1 = Struct_1(var_1.a, vec2<u32>(~69665u, 24746u) & ~var_0.e.yz);
    global0 = array<vec3<bool>, 29>();
    var_1 = Struct_1(true && !any(select(vec4<bool>(arg_1.x, arg_3, false, true), vec4<bool>(true, true, arg_1.x, false), vec4<bool>(false, arg_1.x, false, arg_3))), vec2<u32>(26154u, 0u));
    return var_0.c;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = -444f;
    var var_1 = arg_0;
    let var_2 = true;
    global0 = array<vec3<bool>, 29>();
    let var_3 = Struct_1(all(vec2<bool>(all(vec4<bool>(arg_0.a.x, var_2, false, false)), true)), ~vec2<u32>(4294967295u, 1u));
    return Struct_2(~vec4<u32>(min(max(var_3.b.x, 0u), var_3.b.x), ~1u, 4294967295u, ~_wgslsmith_add_u32(var_3.b.x, 7896u)), u_input.b >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x), abs(vec4<u32>(1u, 31056u, var_3.b.x, var_3.b.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(864f, 1026f), vec3<bool>(true, true, true), vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x), var_2))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, 598f) + vec2<f32>(-160f, -1106f)), !vec3<bool>(var_3.a, false, var_2), ~vec3<u32>(var_3.b.x, var_3.b.x, 71286u), all(vec3<bool>(false, true, arg_0.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1163f, 533f), vec2<f32>(-813f, -138f))), vec3<bool>(arg_0.a.x, false, arg_0.a.x), firstLeadingBit(vec3<u32>(5448u, 0u, 2525u)), all(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, -1642f, 1249f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(1295f)), -464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + -143f)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, var_3.b.x), min(var_3.b.x, _wgslsmith_add_u32(155969u, var_3.b.x))), var_3.b.x ^ ~min(var_3.b.x, 58166u), ~((var_3.b.x & 1u) << (_wgslsmith_sub_u32(var_3.b.x, 34478u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(vec2<bool>(all(!global0[_wgslsmith_index_u32(7715u, 29u)]), true)), vec3<i32>(abs(1i), -_wgslsmith_add_i32(reverseBits(2147483647i), u_input.c.x), -abs(-1i)));
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    let var_1 = -(~(~_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(0i, u_input.b.x, 10611i, var_0.b.x)))));
    var var_2 = firstTrailingBit(func_1(Struct_3(vec2<bool>(true, true)), abs(vec3<i32>(-2147483647i, u_input.b.x, _wgslsmith_add_i32(-20056i, var_1)))).a.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-331f)), _wgslsmith_f_op_f32(select(var_0.c.x, 790f, false)))))));
}

