struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 29> = array<u32, 29>(73854u, 34348u, 18455u, 17724u, 22493u, 4294967295u, 18097u, 4294967295u, 4294967295u, 36570u, 36963u, 4294967295u, 1u, 0u, 1u, 31021u, 7592u, 4294967295u, 1u, 4294967295u, 0u, 1u, 1u, 4294967295u, 4294967295u, 0u, 1u, 33011u, 0u);

var<private> global2: array<u32, 10> = array<u32, 10>(1u, 0u, 1u, 33571u, 4294967295u, 1u, 73415u, 119663u, 6681u, 0u);

var<private> global3: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_2(_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(select(global0.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 10u)], 29u)], false), _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13944u, 29u)], 29u)])), _wgslsmith_mult_u32(_wgslsmith_div_u32(global0.a, global1[_wgslsmith_index_u32(arg_0, 29u)]), 0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1448f * _wgslsmith_f_op_f32(step(-918f, global0.c.b))))) < _wgslsmith_f_op_f32(min(-452f, 461f)), Struct_1(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1385f, 1035f, global0.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, global0.d.c.x)))), vec2<f32>(_wgslsmith_div_f32(-1021f, global0.e.b), _wgslsmith_f_op_f32(global0.c.b * global0.d.b)))), global0.d, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-975f, 966f))))), 551f, global0.c.c));
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-427f * _wgslsmith_f_op_f32(abs(global0.e.a)))))));
    var var_1 = !(!select(select(select(vec4<bool>(global0.b, true, true, true), global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(13083u, 24u)]), global3[_wgslsmith_index_u32(countOneBits(38773u), 24u)], global3[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25237u, 29u)], 29u)], global0.a, true), 24u)]), vec4<bool>(all(global3[_wgslsmith_index_u32(4294967295u, 24u)]), !global0.b, false, true), !vec4<bool>(global0.b, global0.b, true, global0.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(289f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(115f, var_0))) + global0.e.b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], -1273f == _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1638f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-449f, _wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(max(-949f, _wgslsmith_f_op_f32(floor(arg_1.b))))), _wgslsmith_div_f32(-1015f, arg_1.b), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.b) + vec2<f32>(-1000f, arg_0.b)), global0.c.c), _wgslsmith_f_op_vec2_f32(select(global0.c.c, _wgslsmith_f_op_vec2_f32(round(global0.d.c)), vec2<bool>(global0.b, true))))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(global0.a, 66465u))), arg_1.b), _wgslsmith_f_op_vec2_f32(-global0.c.c)), global0.e);
    let var_1 = all(select(vec2<bool>(true, false), vec2<bool>(var_0.b, true), !vec2<bool>(any(vec3<bool>(false, var_0.b, var_0.b)), !global0.b)));
    global3 = array<vec4<bool>, 24>();
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~(~global0.a), ~(~24419u), 56872u, ~select(0u, 65203u, false)), vec4<u32>(var_0.a, ~var_0.a, global1[_wgslsmith_index_u32(var_0.a, 29u)], ~global1[_wgslsmith_index_u32(var_0.a, 29u)]) | abs(select(vec4<u32>(0u, 27960u, global1[_wgslsmith_index_u32(0u, 29u)], 22897u), vec4<u32>(global0.a, 50454u, 1u, 63145u), var_0.b)));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(20239i, _wgslsmith_sub_i32(-u_input.a.x, ~arg_0.a.x)) << (vec2<u32>(77914u, global1[_wgslsmith_index_u32(global0.a, 29u)]) % vec2<u32>(32u)), ~abs(~_wgslsmith_add_vec2_i32(arg_0.a, u_input.a.zy)));
    return Struct_1(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(994f)), _wgslsmith_div_f32(1089f, 2289f))) - -1224f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(389f, arg_1.b) - _wgslsmith_f_op_f32(round(global0.c.a))) - _wgslsmith_f_op_f32(min(-1460f, _wgslsmith_f_op_f32(global0.d.a * var_0.c.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.c.c, vec2<f32>(-619f, arg_0.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.c))), vec2<f32>(_wgslsmith_f_op_f32(step(-279f, -1801f)), _wgslsmith_f_op_f32(select(-2249f, _wgslsmith_f_op_f32(trunc(global0.d.c.x)), var_1)))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<u32, 29>();
    let var_0 = arg_2.xy;
    let var_1 = true;
    global0 = Struct_2(1u, true, Struct_1(_wgslsmith_f_op_f32(select(-177f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1589f, 198f)), global0.b)), _wgslsmith_f_op_f32(sign(global0.e.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.e.c, _wgslsmith_f_op_vec2_f32(-global0.e.c)))), global0.c, func_2(Struct_4(_wgslsmith_clamp_vec2_i32(countOneBits(u_input.a.yw), u_input.a.xz, vec2<i32>(arg_0, arg_0)), _wgslsmith_f_op_f32(floor(global0.e.c.x))), Struct_4(-u_input.a.ww, _wgslsmith_f_op_f32(f32(-1f) * -1954f))));
    var var_2 = -2147483647i;
    return func_2(Struct_4(min(vec2<i32>(1i, abs(u_input.a.x)), countOneBits(vec2<i32>(arg_0, arg_0) | vec2<i32>(-1i, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1461f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) * global0.d.c.x))), Struct_4(_wgslsmith_div_vec2_i32(~firstLeadingBit(u_input.a.ww), vec2<i32>(_wgslsmith_sub_i32(-58332i, arg_0), 1i)), -422f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = global0.b;
    global1 = array<u32, 29>();
    let var_1 = abs(_wgslsmith_sub_u32(arg_3.c, ~arg_1.a.x));
    let var_2 = arg_1;
    let var_3 = Struct_4(arg_3.e.wy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 991f))))));
    return ~abs(var_2.a.xy);
}

fn func_5(arg_0: vec2<u32>) -> Struct_2 {
    global3 = array<vec4<bool>, 24>();
    global0 = Struct_2(18473u, all(!(!select(global3[_wgslsmith_index_u32(38818u, 24u)], global3[_wgslsmith_index_u32(arg_0.x, 24u)], vec4<bool>(false, false, global0.b, global0.b)))), global0.d, Struct_1(global0.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.d.b, global0.c.a, false)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.d.b, global0.e.b)), global0.d.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.d.a * -564f), _wgslsmith_f_op_f32(f32(-1f) * -528f)), func_2(Struct_4(vec2<i32>(u_input.a.x, u_input.a.x), global0.e.b), Struct_4(u_input.a.zw, -1766f)).c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b) + -284f)), _wgslsmith_f_op_f32(f32(-1f) * -1461f), vec2<f32>(-299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(397f)) + 1678f))));
    let var_0 = select(select(!vec3<bool>(false, global0.b && global0.b, false), !select(select(vec3<bool>(true, true, global0.b), vec3<bool>(false, global0.b, global0.b), vec3<bool>(global0.b, global0.b, false)), select(vec3<bool>(global0.b, true, false), vec3<bool>(false, false, false), global0.b), true || global0.b), all(!global3[_wgslsmith_index_u32(~1u, 24u)])), select(select(!select(vec3<bool>(false, false, global0.b), vec3<bool>(false, true, global0.b), false), !(!vec3<bool>(false, false, global0.b)), select(global0.b, !global0.b, any(vec4<bool>(true, global0.b, false, global0.b)))), vec3<bool>(global0.b, false, all(vec2<bool>(true, false))), global0.b), true);
    let var_1 = vec3<bool>(select(any(vec2<bool>(false, 27818u > global2[_wgslsmith_index_u32(91099u, 10u)])), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.a.x) > _wgslsmith_clamp_i32(firstLeadingBit(-30684i), ~u_input.a.x, 0i), var_0.x), select(!(!all(vec4<bool>(false, true, true, var_0.x))), ~global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global0.a, 10u)], 29u)] < ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(961u, 10u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23993u, 29u)], 29u)], 10u)], 29u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 10u)], 10u)], global0.a, global1[_wgslsmith_index_u32(arg_0.x, 29u)])), !(!global0.b) || false), global0.b);
    let var_2 = ~abs(min(arg_0, vec2<u32>(3738u, 21243u)));
    return Struct_2(~0u << (var_2.x % 32u), true, global0.d, func_1(-2147483647i, true, !vec4<bool>(all(vec3<bool>(false, true, var_1.x)), false, global0.b, !var_1.x)), Struct_1(func_1(~min(1229i, u_input.a.x), !all(var_1), vec4<bool>(global0.a >= var_2.x, true, var_1.x, var_1.x)).b, global0.d.c.x, _wgslsmith_div_vec2_f32(global0.c.c, _wgslsmith_div_vec2_f32(vec2<f32>(global0.e.c.x, 1000f), vec2<f32>(global0.e.c.x, global0.d.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_vec2_u32(func_4(func_1(u_input.a.x, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 24u)]), Struct_3(vec3<u32>(4226u, 4294967295u, 11912u), Struct_1(1012f, 503f, vec2<f32>(global0.e.c.x, global0.c.c.x))), global2[_wgslsmith_index_u32(global0.a, 10u)], Struct_5(global1[_wgslsmith_index_u32(1u, 29u)], true, 84353u, u_input.a.xx, u_input.a)) >> (countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(33678u, 6231u), vec2<u32>(global2[_wgslsmith_index_u32(16908u, 10u)], 7014u))) % vec2<u32>(32u)), ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], 0u)));
    var var_1 = reverseBits(_wgslsmith_add_vec2_i32(u_input.a.zx, -(~vec2<i32>(u_input.a.x, u_input.a.x)) | u_input.a.zz));
    global0 = Struct_2(~_wgslsmith_clamp_u32(var_0.a, _wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(var_0.a, 10u)]) >> ((53965u >> (1u % 32u)) % 32u), global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 10u)], 29u)]), 29u)]), global0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f + _wgslsmith_f_op_f32(sign(-445f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.e.a * var_0.c.c.x)))), global0.c.c.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.e.b, -2576f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.e.c.x, -1000f, var_0.b)))))), Struct_1(_wgslsmith_div_f32(890f, -1000f), global0.d.c.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(767f, -1000f)))), Struct_1(1839f, _wgslsmith_f_op_f32(-func_5(vec2<u32>(34503u, var_0.a) & vec2<u32>(global0.a, global1[_wgslsmith_index_u32(0u, 29u)])).c.b), _wgslsmith_f_op_vec2_f32(ceil(var_0.e.c))));
    var var_2 = var_0.b;
    var var_3 = Struct_2(_wgslsmith_div_u32(53918u, ~_wgslsmith_clamp_u32(1u, 53795u, var_0.a)), true, global0.c, var_0.e, Struct_1(_wgslsmith_f_op_f32(-func_5(~vec2<u32>(global1[_wgslsmith_index_u32(var_0.a, 29u)], global2[_wgslsmith_index_u32(28418u, 10u)])).c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1576f + global0.d.c.x)) - 1132f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.e.b, -413f), global0.e.c))));
    let var_4 = select(true & any(!select(vec2<bool>(true, var_3.b), vec2<bool>(true, true), true)), true, !func_5(~abs(vec2<u32>(global2[_wgslsmith_index_u32(var_0.a, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33718u, 10u)], 10u)]))).b);
    var var_5 = vec2<f32>(var_3.c.b, _wgslsmith_f_op_f32(-var_3.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -680f, 120f, -308f), vec4<f32>(-940f, _wgslsmith_div_f32(-1290f, 595f), _wgslsmith_f_op_f32(-global0.c.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1747f, -880f)) * var_0.c.c.x)), countOneBits(_wgslsmith_dot_vec3_i32(u_input.a.zxy, vec3<i32>(var_1.x, var_1.x, 0i))) < _wgslsmith_dot_vec3_i32(vec3<i32>(18151i, var_1.x, -6397i), vec3<i32>(u_input.a.x, 2147483647i, 1i)))));
}

