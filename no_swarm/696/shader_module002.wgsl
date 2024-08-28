struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 1u;

var<private> global2: array<vec3<f32>, 6>;

var<private> global3: u32 = 0u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<i32> {
    var var_0 = u_input.c.zx | _wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(1i, u_input.a.x), ~0i), vec2<i32>(u_input.c.x, u_input.a.x));
    let var_1 = Struct_3(~u_input.b.x);
    global3 = u_input.d;
    global0 = _wgslsmith_f_op_f32(step(1566f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-465f, -684f)), _wgslsmith_div_f32(144f, 1338f)))) != _wgslsmith_f_op_f32(max(663f, _wgslsmith_f_op_f32(sign(1191f))));
    let var_2 = false;
    return _wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i) | u_input.a.zy, countOneBits(vec2<i32>(u_input.c.x, 7933i))) & u_input.c.xy, vec2<i32>(-1i, -1i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = abs(_wgslsmith_sub_u32(4294967295u, ~abs(1u)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.b.b.x, 27664u, arg_1.x, 4294967295u)), arg_2.a.b), vec4<u32>(u_input.e.x, u_input.b.x, 4294967295u, min(arg_2.b.a, arg_2.a.b.x))) % 32u));
    global2 = array<vec3<f32>, 6>();
    let var_1 = Struct_3(_wgslsmith_mult_u32(4294967295u, ~u_input.e.x) & 1u);
    var var_2 = Struct_1((_wgslsmith_sub_u32(~arg_2.b.b.x, ~1673u) ^ (arg_1.x | ~30055u)) << (~_wgslsmith_clamp_u32(~arg_2.a.b.x, firstTrailingBit(19042u), ~arg_2.b.b.x) % 32u), arg_2.b.b, arg_0.yw, u_input.c);
    var var_3 = arg_2.a;
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(var_2.a, arg_1.x), select(arg_1.x, firstLeadingBit(1u), select(false, true, true)), ~65717u), ~(~var_1.a) ^ arg_2.a.b.x) >> (var_1.a % 32u);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global3 = reverseBits(min(~_wgslsmith_clamp_u32(1u, u_input.e.x, arg_0.b.x), ~0u) << ((_wgslsmith_sub_u32(66453u, 1u) << (~_wgslsmith_mod_u32(arg_0.a, 1985u) % 32u)) % 32u));
    var var_0 = abs(_wgslsmith_div_vec2_i32(u_input.a.xy, func_2()));
    global3 = _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(func_3(vec4<f32>(arg_0.c.x, -826f, 571f, -1041f), vec2<u32>(arg_0.a, 0u), Struct_2(arg_0, Struct_1(8109u, vec4<u32>(u_input.d, 0u, 27622u, arg_0.a), arg_0.c, vec4<i32>(arg_0.d.x, 2147483647i, 1i, var_0.x)), vec4<f32>(-162f, arg_0.c.x, arg_0.c.x, -391f), global2[_wgslsmith_index_u32(arg_0.b.x, 6u)]), -303f) | u_input.d, u_input.d) ^ ~(~(~u_input.e)));
    let var_1 = _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), u_input.a), firstLeadingBit(vec3<i32>(-1i, var_0.x, arg_0.d.x) & firstLeadingBit(vec3<i32>(-13484i, -1i, u_input.a.x)))), 1i);
    var_0 = func_2();
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(1u, firstTrailingBit(~(~vec4<u32>(1087u, 0u, 55751u, 28048u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(u_input.d, vec4<u32>(51309u, u_input.e.x, 0u, u_input.e.x), vec2<f32>(505f, 397f), u_input.c))))), vec4<i32>(_wgslsmith_sub_i32(~u_input.c.x, 2147483647i), u_input.c.x << (~u_input.b.x % 32u), u_input.a.x, -(~(-1i)))), Struct_1(u_input.d, select(countOneBits(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 0u) & vec4<u32>(u_input.d, u_input.b.x, 12223u, u_input.e.x)), vec4<u32>(u_input.b.x & u_input.e.x, ~u_input.e.x, 76235u, 41896u), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1259f, -2319f)))))), firstLeadingBit(select(vec4<i32>(u_input.c.x, 2094i, u_input.c.x, u_input.c.x), u_input.c, vec4<bool>(true, true, true, true)))), vec4<f32>(1f, 1f, 1f, 1f), global2[_wgslsmith_index_u32(u_input.b.x, 6u)]);
    var var_1 = Struct_3(0u);
    let var_2 = _wgslsmith_mult_u32(~(~(~46427u)), _wgslsmith_clamp_u32(~1u, firstLeadingBit(var_1.a), 4294967295u));
    var var_3 = !vec2<bool>(all(vec2<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)))), var_1.a >= ~firstTrailingBit(0u));
    var var_4 = var_0.a.b.yzw;
    let var_5 = Struct_4(var_0.c, countOneBits(vec2<u32>(countOneBits(func_3(var_0.c, vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(0u, var_0.a.b, var_0.a.c, vec4<i32>(-55179i, var_0.a.d.x, u_input.c.x, -2147483647i)), Struct_1(13132u, vec4<u32>(var_2, u_input.b.x, 0u, 44134u), var_0.b.c, var_0.b.d), vec4<f32>(-153f, var_0.d.x, 1405f, 412f), vec3<f32>(-1935f, var_0.d.x, -1262f)), var_0.b.c.x)), _wgslsmith_sub_u32(u_input.e.x, 72640u))), !vec3<bool>(false & !var_3.x, true, false), _wgslsmith_f_op_vec3_f32(step(global2[_wgslsmith_index_u32(~u_input.d, 6u)], _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~(30240u & var_0.b.b.x), 6u)]))));
    let var_6 = ~(~var_0.a.b.x) >> (_wgslsmith_dot_vec4_u32(~(var_0.a.b | var_0.b.b), ~var_0.a.b) % 32u);
    var_4 = firstTrailingBit(~var_0.a.b.yyy) << (var_0.b.b.xyw % vec3<u32>(32u));
    let var_7 = Struct_2(Struct_1(abs(min(0u, min(var_1.a, 11419u))), countOneBits(var_0.b.b), var_0.c.zy, _wgslsmith_mod_vec4_i32(var_0.b.d, -vec4<i32>(2147483647i, var_0.a.d.x, -71467i, var_0.b.d.x))), var_0.b, vec4<f32>(var_5.a.x, -322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5.d.x))) - -1286f), var_0.a.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.d.x, var_5.a.x, _wgslsmith_f_op_f32(trunc(1414f))) * vec3<f32>(-360f, var_5.a.x, _wgslsmith_f_op_f32(-var_5.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, var_7.d.x, var_7.a.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, -1300f, var_0.c.x, var_0.b.c.x)), var_5.a), vec4<f32>(var_0.d.x, var_7.b.c.x, var_5.d.x, var_0.d.x))) - vec4<f32>(686f, 1114f, var_0.b.c.x, _wgslsmith_f_op_f32(abs(714f)))));
}

