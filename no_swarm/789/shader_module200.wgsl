struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: Struct_1 = Struct_1(1u, 4294967295u, -18368i, vec3<bool>(false, true, true));

var<private> global2: array<i32, 24> = array<i32, 24>(2147483647i, -9847i, 1i, -5891i, 21886i, 42238i, -24568i, 2147483647i, -21369i, 0i, 0i, 62035i, 2147483647i, 0i, -1i, -9487i, -71261i, 1i, 25231i, 2147483647i, -28203i, -16486i, -12843i, 30191i);

var<private> global3: array<vec4<f32>, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -583f);
    let var_1 = Struct_1(1u, 9553u, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(global1.c, 0i, global1.c), ~vec3<i32>(-13491i, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], 10114i), arg_1.d), u_input.d.zzy), select(global1.d, vec3<bool>(false, false, true), vec3<bool>(true, !arg_1.d.x, !(global1.a >= 47137u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, var_0) * vec2<f32>(var_0, -1092f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(select(-1189f, var_0, false))))));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * var_0) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-163f, 249f, global1.d.x)) - _wgslsmith_div_f32(var_0, var_2.x)), -553f), false, var_1.d.x);
    var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_2.x)), 1693f))), var_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-570f + var_0), -723f, true)), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(f32(-1f) * -198f), true))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(743f, var_0), 1062f), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_0 - -278f))))));
    return var_0;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x != arg_0.x, arg_1)))), arg_2.d.x));
    var_0 = -1060f;
    var var_1 = arg_2;
    var var_2 = ~_wgslsmith_dot_vec4_u32(min(firstLeadingBit(firstLeadingBit(vec4<u32>(0u, global1.a, 15803u, u_input.e.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(83583u, u_input.e.x, 50187u, arg_1.b), vec4<u32>(1u, global1.b, 0u, arg_1.b), vec4<u32>(1u, 1u, var_1.a, global1.b)) & _wgslsmith_mod_vec4_u32(vec4<u32>(61643u, 0u, 6600u, arg_1.a), vec4<u32>(arg_1.a, u_input.e.x, 35002u, 45521u))), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.e.x, arg_1.b, 0u, arg_2.b) << (vec4<u32>(51579u, global1.b, 4294967295u, 0u) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, arg_1.a, var_1.b, 1639u), reverseBits(vec4<u32>(u_input.e.x, 1u, arg_2.b, 44933u) >> (vec4<u32>(global1.a, arg_1.b, 0u, 0u) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_3)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -438f, -1639f))));
    return arg_1.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = array<vec4<bool>, 9>();
    global2 = array<i32, 24>();
    var var_0 = arg_1;
    let var_1 = Struct_1(1u, 4294967295u, ~_wgslsmith_dot_vec2_i32(~(-u_input.d.xz), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, var_0.c), ~vec2<i32>(1i, u_input.b))), !select(vec3<bool>(true, true, arg_1.d.x | false), select(!vec3<bool>(true, global1.d.x, true), select(var_0.d, vec3<bool>(global1.d.x, false, var_0.d.x), vec3<bool>(false, false, false)), global1.d.x), var_0.d));
    var var_2 = global1.d.x;
    return var_1.a;
}

fn func_1(arg_0: bool, arg_1: i32) -> vec4<bool> {
    global0 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-594f)), _wgslsmith_f_op_f32(f32(-1f) * -2888f)))));
    global0 = array<vec4<bool>, 9>();
    let var_1 = vec2<u32>(func_4(_wgslsmith_mult_vec2_u32(u_input.e.xz, vec2<u32>(firstLeadingBit(0u), func_2(vec4<f32>(-1000f, -2335f, -723f, -677f), Struct_1(u_input.e.x, 4294967295u, arg_1, vec3<bool>(global1.d.x, false, true)), Struct_1(0u, 4294967295u, 0i, vec3<bool>(arg_0, arg_0, global1.d.x)), vec3<f32>(-339f, 783f, 694f)))), Struct_1(global1.a, ~(~35069u), -1i, select(vec3<bool>(false, false, false), global1.d, all(vec3<bool>(global1.d.x, arg_0, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-958f + _wgslsmith_f_op_f32(f32(-1f) * -845f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2051f * -366f) - -275f))), 40415u);
    global1 = Struct_1(global1.a, 39901u << (firstTrailingBit(_wgslsmith_mod_u32(~var_1.x, 80415u)) % 32u), 5883i, vec3<bool>(select(all(global0[_wgslsmith_index_u32(4294967295u, 9u)]), true, global1.d.x), any(global1.d), true));
    return vec4<bool>(arg_0, !select(u_input.c.x == ~(-2147483647i), all(global1.d), false), arg_0, !(!global1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((_wgslsmith_div_vec3_i32(u_input.d.wxw, u_input.d.wzw) | (~u_input.d.wzy << (select(vec3<u32>(u_input.e.x, 1u, 72135u), vec3<u32>(11102u, 100624u, 1u), global1.d.x) % vec3<u32>(32u)))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-global2[_wgslsmith_index_u32(9514u, 24u)], -global1.c, _wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(35941u, 24u)])), abs(-vec3<i32>(global2[_wgslsmith_index_u32(global1.a, 24u)], u_input.c.x, u_input.d.x))));
    let var_1 = !(!vec3<bool>(true, all(func_1(global1.d.x, global1.c)), true));
    var_0 = u_input.d.zzw;
    var var_2 = Struct_1(12231u, u_input.e.x, abs(select(_wgslsmith_mod_i32(u_input.a, ~var_0.x), abs(~2830i), !(global1.d.x != global1.d.x))), func_1(true && var_1.x, _wgslsmith_add_i32(-11177i, global1.c) & 0i).xzy);
    global3 = array<vec4<f32>, 1>();
    var var_3 = var_2.d.x != (firstLeadingBit(_wgslsmith_div_u32(0u, ~69102u)) < var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mod_u32(countOneBits(global1.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, var_2.b, var_2.a, global1.b), vec4<u32>(global1.b, 1u, var_2.a, 0u)), ~var_2.a), _wgslsmith_clamp_u32(global1.a, ~u_input.e.x, ~(~13293u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(1281f)), _wgslsmith_f_op_f32(round(347f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 197f), vec2<f32>(999f, -1630f))), _wgslsmith_div_vec2_f32(vec2<f32>(-442f, 1000f), vec2<f32>(-1558f, 1291f))), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(432f, -183f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(968f, 744f) + vec2<f32>(1226f, -1000f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2015f), _wgslsmith_div_f32(-313f, -2530f))), global1.d.zx)), countOneBits(u_input.e.x));
}

