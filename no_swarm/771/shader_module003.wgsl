struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_4,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 23> = array<f32, 23>(-1000f, -122f, -263f, 531f, 423f, -457f, -2352f, -716f, 1958f, -2341f, -517f, -332f, 2306f, -1347f, 338f, -781f, -313f, 301f, 672f, 498f, 160f, 190f, -429f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(885f - -2245f), -1000f));
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_1 = true;
    var var_2 = vec4<bool>(_wgslsmith_mod_u32(~(~u_input.a), ~_wgslsmith_mod_u32(47500u, u_input.e.x)) > _wgslsmith_dot_vec2_u32(u_input.e.yx << (vec2<u32>(u_input.e.x, u_input.e.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.e.zz << (u_input.e.xz % vec2<u32>(32u)), ~vec2<u32>(24193u, 1u))), var_1 || (~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 20076i), vec2<i32>(u_input.b, u_input.c.x)) >= u_input.b), any(!select(!vec4<bool>(true, false, false, var_1), vec4<bool>(var_1, var_1, true, var_1), select(vec4<bool>(true, false, var_1, var_1), vec4<bool>(true, var_1, false, false), var_1))), var_1);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(select(u_input.a, ~u_input.a, var_0 > 384f), ~u_input.a >> (u_input.d % 32u), u_input.a, max(_wgslsmith_clamp_u32(1u, u_input.e.x, 51195u), min(u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(u_input.e.x, 1u, u_input.d, 0u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 20646u, 9059u, 1u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a), vec4<u32>(u_input.d, 0u, 13207u, 4294967295u))))), vec4<u32>(u_input.d, _wgslsmith_mult_u32(1u, ~u_input.e.x), 23100u, 0u) | ~(vec4<u32>(24668u, u_input.a, 43418u, u_input.d) << (select(vec4<u32>(u_input.d, 68898u, 123287u, u_input.a), vec4<u32>(4294967295u, u_input.d, 46300u, u_input.a), vec4<bool>(var_1, var_2.x, var_1, var_2.x)) % vec4<u32>(32u))));
}

fn func_2() -> Struct_3 {
    global2 = array<f32, 23>();
    global2 = array<f32, 23>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 21u)];
    var var_1 = Struct_3(var_0.b, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(294f - 258f))), global2[_wgslsmith_index_u32(func_3(), 23u)])), Struct_1(var_0.b.a, vec2<f32>(_wgslsmith_div_f32(-1039f, global2[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_f32(abs(1619f))), _wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_mult_vec2_u32(~u_input.e.xy, _wgslsmith_clamp_vec2_u32(u_input.e.xx, vec2<u32>(u_input.e.x, u_input.d), vec2<u32>(4294967295u, var_0.b.a))))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))), vec3<bool>(true, !all(vec3<bool>(false, true, true)), false), vec3<bool>(select(true, all(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true))), u_input.d > u_input.e.x, false)), select(((u_input.b ^ u_input.b) >> (_wgslsmith_add_u32(56478u, u_input.e.x) % 32u)) >= (u_input.c.x & u_input.b), false, true));
    let var_2 = vec4<bool>(false & ((var_1.d & (var_1.d | var_1.c.x)) & !(!var_1.c.x)), !(!var_1.c.x), var_1.c.x, true);
    return Struct_3(var_1.a, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x))), var_1.a), vec3<bool>((1u >> (u_input.e.x % 32u)) == ~1u, var_1.d, var_1.c.x), any(var_2.yy));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> i32 {
    let var_0 = all(select(vec4<bool>(arg_0.c.x, abs(u_input.d) != arg_0.b.b.a, false, true), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, arg_0.d, true), arg_1.x >= 1u), select(select(vec4<bool>(false, false, true, arg_0.c.x), vec4<bool>(true, false, true, arg_0.d), true), select(vec4<bool>(arg_0.c.x, true, false, true), vec4<bool>(true, true, arg_0.c.x, arg_0.c.x), arg_0.d), vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x)), !vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.d)), !vec4<bool>(false, true, arg_0.c.x == arg_0.c.x, true)));
    var var_1 = Struct_4(min(~firstTrailingBit(u_input.c), u_input.c), _wgslsmith_div_f32(794f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_1.x, 23u)], 533f))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.x, ~48385u), 4294967295u), 21u)], _wgslsmith_f_op_f32(f32(-1f) * -952f));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(812f, global2[_wgslsmith_index_u32(30118u, 23u)], 566f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, var_1.c.a, global2[_wgslsmith_index_u32(49419u, 23u)])))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1356f, arg_0.b.a, -1853f) * vec3<f32>(-607f, global2[_wgslsmith_index_u32(25462u, 23u)], global2[_wgslsmith_index_u32(39823u, 23u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1251f, 1034f, var_1.d), vec3<f32>(1241f, 565f, arg_0.b.b.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-835f, global2[_wgslsmith_index_u32(50731u, 23u)], var_1.d), vec3<f32>(arg_0.b.b.b.x, -599f, var_1.b), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_1.x, 23u)], var_1.c.b.c, var_1.c.a)))))));
    let var_3 = arg_0.c.zz;
    var var_4 = func_2();
    return 2147483647i;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5) -> i32 {
    var var_0 = 1i;
    var_0 = ~(func_4(func_2(), vec4<u32>(~56225u, 4294967295u, arg_1.c.c.b.a, func_3())) ^ u_input.b);
    global0 = array<Struct_2, 21>();
    var var_1 = vec4<bool>(arg_1.e | arg_1.e, abs(2147483647i) > (u_input.c.x >> (select(1u, u_input.d, func_2().c.x) % 32u)), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true | arg_1.e)), true);
    global1 = 35048u | arg_1.c.c.b.d.x;
    return _wgslsmith_dot_vec4_i32(~countOneBits(-max(arg_1.b, vec4<i32>(-2147483647i, -36311i, arg_1.a.x, -1i))), vec4<i32>(min((68618i >> (arg_1.c.c.b.d.x % 32u)) >> (arg_1.c.c.b.d.x % 32u), -41780i), arg_0.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 0i), ~arg_1.b.yy), -_wgslsmith_dot_vec4_i32(vec4<i32>(65288i, 0i, u_input.b, 2147483647i), vec4<i32>(arg_0.x, -56507i, -1i, u_input.c.x)) << (35742u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.c.x), u_input.c.x | 2147483647i, func_1(u_input.c, Struct_5(vec2<i32>(75109i, 0i), vec4<i32>(0i, u_input.c.x, 2147483647i, u_input.b), Struct_4(vec2<i32>(u_input.b, u_input.c.x), -1878f, Struct_2(global2[_wgslsmith_index_u32(u_input.a, 23u)], Struct_1(1u, vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], -1851f), 605f, u_input.e.zz)), -189f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(19711u, 23u)]), true))), min(vec3<i32>(31916i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.b, u_input.b) | vec3<i32>(1i, u_input.c.x, u_input.b))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, ~vec2<i32>(2361i, -29788i)), u_input.c << (vec2<u32>(0u >> (u_input.d % 32u), _wgslsmith_mod_u32(1u, u_input.d)) % vec2<u32>(32u))));
    var var_1 = func_2().a;
    let var_2 = func_2().b.b;
    global0 = array<Struct_2, 21>();
    var var_3 = -2147483647i;
    var var_4 = ~u_input.e;
    var var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_1.c, var_1.c) * vec3<f32>(var_2.b.x, var_2.c, -1339f)), vec3<f32>(-415f, -387f, global2[_wgslsmith_index_u32(var_4.x, 23u)])) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 23u)], 374f, global2[_wgslsmith_index_u32(var_1.a, 23u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_2.c, var_2.b.x))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.c)), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(max(-1211f, 1650f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

