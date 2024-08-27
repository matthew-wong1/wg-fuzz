struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_4,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: i32;

var<private> global3: array<i32, 25> = array<i32, 25>(0i, 0i, -1i, i32(-2147483648), -54285i, 1i, -8012i, 9582i, -71742i, 2147483647i, -1i, -55488i, 2147483647i, -47868i, -10139i, 25472i, 32794i, -10836i, 22885i, i32(-2147483648), i32(-2147483648), 41221i, 1i, 1i, 18173i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(1u), 50508u, _wgslsmith_sub_u32(~countOneBits(1u), 1u)), (_wgslsmith_mult_u32(select(30790u, u_input.e.x, false), _wgslsmith_sub_u32(0u, u_input.e.x)) << (14527u % 32u)) >> (u_input.e.x % 32u));
    global2 = ~1i;
    let var_1 = true;
    var_0 = firstTrailingBit(0u);
    return !all(select(vec2<bool>(any(vec3<bool>(var_1, true, var_1)), var_1), !vec2<bool>(false, var_1), !any(vec4<bool>(true, false, var_1, var_1))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(147f, u_input.a, true, arg_0, true), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(72774u, u_input.e.x), u_input.e.x), _wgslsmith_sub_vec2_u32(u_input.e.yw, vec2<u32>(237u, 111272u)) >> (reverseBits(u_input.e.xx) % vec2<u32>(32u)))));
    let var_1 = arg_2.x;
    let var_2 = var_0.a;
    let var_3 = 1i;
    global2 = -21007i;
    return vec3<bool>(all(!vec4<bool>(var_0.a.e, true && var_0.a.e, all(vec2<bool>(true, false)), func_3(var_2.b))), !var_0.a.c, _wgslsmith_div_i32(3247i, 2147483647i) >= var_3);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    global3 = array<i32, 25>();
    var var_0 = Struct_1(1641f, vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xy, global1[_wgslsmith_index_u32(u_input.e.x, 22u)]), u_input.b), ~(i32(-1i) * -39549i), 0i, -global3[_wgslsmith_index_u32(min(u_input.e.x, _wgslsmith_add_u32(u_input.e.x, 0u)), 25u)]), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_0, arg_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(823f, arg_1.x, arg_0), vec3<f32>(-1000f, 1150f, -1000f), vec3<bool>(true, arg_2.x, arg_2.x))), !vec3<bool>(arg_2.x, arg_2.x, false)))))), arg_2.x);
    let var_1 = Struct_1(arg_1.x, vec4<i32>(-global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(31737u, u_input.e.x)), 25u)], _wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(-var_0.b.x, var_0.b.x)), -1i, (-u_input.c >> (_wgslsmith_div_u32(1u, u_input.e.x) % 32u)) << (~(~0u) % 32u)), false, vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_f32(max(1079f, _wgslsmith_f_op_f32(select(var_0.d.x, arg_1.x, any(vec3<bool>(true, true, true))))))), all(!vec2<bool>(false, !arg_2.x)));
    let var_2 = !arg_2;
    global0 = array<Struct_2, 11>();
    return 2061f;
}

fn func_1(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = vec2<bool>(firstTrailingBit(-11129i) <= select(u_input.a.x, arg_0.x, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), any(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))));
    var var_1 = -411f;
    var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1237f - -515f) + 759f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1214f, 2081f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-629f)), _wgslsmith_f_op_f32(156f + 532f)))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(193f, -583f, -135f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -130f, 369f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, 104f, 225f) * vec3<f32>(-1248f, -1199f, 675f)), vec3<f32>(1210f, 1834f, -607f)))), global3[_wgslsmith_index_u32(~u_input.e.x, 25u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-819f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -976f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    var var_2 = vec3<bool>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(78661i, global3[_wgslsmith_index_u32(u_input.e.x, 25u)], arg_0.x, arg_0.x), vec4<i32>(1985i, u_input.d, 1i, 2147483647i))), -(vec4<i32>(-1i, arg_0.x, global3[_wgslsmith_index_u32(u_input.e.x, 25u)], 2147483647i) & u_input.a)) < firstTrailingBit(abs(global3[_wgslsmith_index_u32(0u, 25u)]) | u_input.b), all(!select(!vec3<bool>(var_0.x, var_0.x, var_0.x), func_2(vec3<f32>(1328f, 689f, 1000f), global3[_wgslsmith_index_u32(6182u, 25u)], vec2<f32>(-660f, 305f)), true)), true);
    let var_3 = global0[_wgslsmith_index_u32(12790u, 11u)];
    return var_3.a.d;
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_4 {
    global3 = array<i32, 25>();
    global3 = array<i32, 25>();
    var var_0 = 1i;
    global1 = array<vec2<i32>, 22>();
    global0 = array<Struct_2, 11>();
    return Struct_4(Struct_3(Struct_1(arg_2.x, vec4<i32>(1i, firstLeadingBit(arg_1), ~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -5561i), vec3<i32>(-1i, -2251i, 2147483647i))), func_2(vec3<f32>(820f, -559f, arg_2.x), global3[_wgslsmith_index_u32(u_input.e.x, 25u)], arg_2.zz).x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, -200f, arg_2.x), arg_2, vec3<bool>(false, true, false)))), false), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), -u_input.a, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 363f) + arg_2)), true), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 0u, 5267u, 34082u) << (u_input.e % vec4<u32>(32u)), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.e.x)), 1u)), _wgslsmith_f_op_vec3_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.zy, arg_0.zy), 13244u >> (1u % 32u)) >> (1u % 32u), 22u)])).xy, Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) - -1000f), -vec4<i32>(global3[_wgslsmith_index_u32(4130u, 25u)], 0i, -39698i, arg_1), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) * vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), any(vec3<bool>(true, true, true))), arg_0.zx), Struct_2(Struct_1(_wgslsmith_f_op_f32(1164f + _wgslsmith_f_op_f32(-arg_2.x)), u_input.a, !(800f < arg_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 - arg_2) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 1000f) * arg_2)), true), Struct_1(arg_2.x, abs(abs(u_input.a)), false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) * vec3<f32>(-175f, arg_2.x, 409f)), arg_2)), !(arg_1 < arg_1)), Struct_1(-468f, u_input.a | u_input.a, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2))), func_3(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.d, u_input.c, 0i, 8376i)))), -31543i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<u32>(~(abs(u_input.e.x) ^ 1u), abs(u_input.e.x), reverseBits(firstTrailingBit(_wgslsmith_sub_u32(113401u, 11190u)))), 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1305f, _wgslsmith_f_op_f32(-959f * 590f), _wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1093f, 160f, 2421f) * vec3<f32>(-1860f, 901f, -605f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1103f, -544f, 193f)))))) * _wgslsmith_f_op_vec3_f32(func_1(-global1[_wgslsmith_index_u32(u_input.e.x, 22u)]))));
    global1 = array<vec2<i32>, 22>();
    let var_1 = 53571u;
    global3 = array<i32, 25>();
    var var_2 = vec2<bool>(true, func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_0.d.a.b.x, func_5(u_input.e.wyx, global3[_wgslsmith_index_u32(1u, 25u)], vec3<f32>(var_0.a.a.d.x, 808f, -651f)).d.a.b.x, firstLeadingBit(-29497i)), u_input.a ^ u_input.a)));
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.a.d.x * -1356f), var_0.b.a.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d.a.d.x, 2868f)))))), 4294967295u, !func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a.d.x, var_0.b.a.d.x, var_0.b.a.a)), _wgslsmith_f_op_vec3_f32(func_1(var_0.a.a.b.xw)))), _wgslsmith_clamp_i32(abs(var_0.e.a.b.x), abs(0i), _wgslsmith_sub_i32(10969i, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e.b.d.xy, vec2<f32>(var_0.d.a.a, -222f)))), Struct_4(Struct_3(func_5(vec3<u32>(var_1, 1u, 1u) << (u_input.e.yxy % vec3<u32>(32u)), ~global3[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_vec3_f32(var_0.a.a.d + vec3<f32>(414f, var_0.a.a.d.x, var_0.d.a.d.x))).b.a, abs(u_input.e.xz >> (u_input.e.zx % vec2<u32>(32u)))), Struct_3(func_5(vec3<u32>(u_input.e.x, var_1, var_0.b.b.x), abs(0i), _wgslsmith_f_op_vec3_f32(-var_0.b.a.d)).e.b, reverseBits(~vec2<u32>(43854u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1160f, 1532f)))) * var_0.a.a.d.zy), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1549f), vec4<i32>(var_0.e.c.b.x, 1i, 1i, 25566i), var_0.e.b.e, _wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(0i, global3[_wgslsmith_index_u32(47976u, 25u)]))), var_0.a.a.e), var_0.a.b), Struct_2(Struct_1(var_0.a.a.d.x, vec4<i32>(u_input.b, u_input.b, 17508i, var_0.a.a.b.x), true, vec3<f32>(-1509f, 562f, var_0.b.a.d.x), var_2.x & false), func_5(~vec3<u32>(var_0.b.b.x, var_1, 37508u), var_0.d.a.b.x, var_0.a.a.d).a.a, func_5(u_input.e.zzz, _wgslsmith_clamp_i32(-46298i, var_0.a.a.b.x, global3[_wgslsmith_index_u32(83458u, 25u)]), vec3<f32>(322f, 368f, 967f)).d.a, -56269i)), var_0.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.d.b.a.d.xx), select(_wgslsmith_clamp_vec4_i32(~(-var_3.d.d.a.b), u_input.a & (u_input.a ^ var_3.d.e.c.b), func_5(vec3<u32>(var_3.b, var_1, var_0.b.b.x), func_5(vec3<u32>(28273u, var_1, var_1), 10987i, var_3.d.e.b.d).e.a.b.x, _wgslsmith_div_vec3_f32(var_0.b.a.d, var_3.d.e.c.d)).e.a.b), abs(_wgslsmith_clamp_vec4_i32(var_0.e.a.b | u_input.a, vec4<i32>(global3[_wgslsmith_index_u32(var_3.b, 25u)], -1i, -15487i, 0i) & vec4<i32>(20876i, var_0.b.a.b.x, u_input.b, 2147483647i), -vec4<i32>(-1i, -12221i, u_input.b, global3[_wgslsmith_index_u32(u_input.e.x, 25u)]))), select(false, var_3.c.x, true)), select(vec4<u32>(_wgslsmith_sub_u32(1u, var_3.d.b.b.x), 99538u, 4294967295u, _wgslsmith_add_u32(var_0.a.b.x, ~var_1)), abs(select(vec4<u32>(u_input.e.x, var_0.b.b.x, 4488u, var_3.d.b.b.x), vec4<u32>(var_1, var_0.d.b.x, 1u, var_3.d.a.b.x), var_3.c.x)) ^ u_input.e, var_2.x));
}

