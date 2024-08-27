struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-1422f, -166f, 224f, 1480f), vec4<f32>(-452f, 757f, 1368f, -579f), vec4<f32>(-603f, 505f, 1223f, -2401f), vec4<f32>(598f, -1873f, -671f, -736f), vec4<f32>(-369f, -276f, -1000f, 988f), vec4<f32>(285f, -115f, -382f, -1331f), vec4<f32>(1704f, -835f, 464f, 1434f));

var<private> global1: array<bool, 10>;

var<private> global2: f32;

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    global2 = _wgslsmith_f_op_f32(exp2(arg_1.b));
    global0 = array<vec4<f32>, 7>();
    let var_0 = Struct_1(arg_1.a, arg_1.b);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -1613f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(326f, 166f) * vec2<f32>(arg_1.b, var_0.b)), _wgslsmith_div_vec2_f32(vec2<f32>(-100f, arg_1.b), vec2<f32>(1125f, 478f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, -1391f))))))));
    return _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, var_0.a.x, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, var_0.a.x), vec4<u32>(4480u, arg_1.a.x, 4294967295u, var_0.a.x))) ^ 0u), abs(select(select(vec3<u32>(arg_1.a.x, 30066u, arg_1.a.x), vec3<u32>(var_0.a.x, 4641u, var_0.a.x), var_0.a.x >= var_0.a.x), _wgslsmith_div_vec3_u32(arg_2.e.a, vec3<u32>(arg_2.b, 41735u, 1u)), !(!vec3<bool>(true, false, var_1)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> f32 {
    var var_0 = Struct_2(true, func_3(_wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b.zy)), u_input.b.yz), arg_1, Struct_2(false, 0u, arg_1, Struct_1(vec3<u32>(10210u, arg_2.x, arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1)).x, Struct_1(~min(_wgslsmith_mult_vec3_u32(arg_1.a, vec3<u32>(36051u, 1u, 7849u)), vec3<u32>(1u, 25760u, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f + arg_1.b) + _wgslsmith_f_op_f32(exp2(arg_1.b))), -598f)), Struct_1(abs(~firstLeadingBit(vec3<u32>(1u, 4294967295u, 4294967295u))), arg_1.b), Struct_1(min(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_2.x, 0u, 71896u)), countOneBits(arg_1.a.x)), ~vec3<u32>(54165u, 1u, 12263u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-985f - -1327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - 624f) - _wgslsmith_f_op_f32(arg_1.b - arg_1.b))))));
    var_0 = Struct_2(!global3.x, 0u, var_0.d, arg_1, arg_1);
    let var_1 = arg_3;
    global0 = array<vec4<f32>, 7>();
    global2 = _wgslsmith_f_op_f32(-var_0.d.b);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1790f) * _wgslsmith_f_op_f32(var_0.d.b - var_0.d.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * var_0.e.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1294f, _wgslsmith_f_op_f32(159f * arg_1.b)) * _wgslsmith_f_op_f32(-arg_1.b)), arg_1.b)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<f32>) -> f32 {
    global1 = array<bool, 10>();
    let var_0 = Struct_2((_wgslsmith_dot_vec2_i32(u_input.b.zy, max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, 2147483647i))) >> (~(u_input.a.x >> (15324u % 32u)) % 32u)) >= u_input.b.x, u_input.a.x, Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(-arg_2.x)), Struct_1(_wgslsmith_add_vec3_u32(u_input.a, max(u_input.a, vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(1u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(func_4(0i, Struct_1(func_3(u_input.b.yz, Struct_1(u_input.a, arg_2.x), Struct_2(true, 1346u, Struct_1(vec3<u32>(u_input.a.x, 785u, u_input.a.x), 575f), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 26306u), arg_2.x), Struct_1(u_input.a, arg_2.x))), _wgslsmith_f_op_f32(round(2682f))), max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 27925u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (select(vec4<u32>(7897u, 7508u, u_input.a.x, u_input.a.x), vec4<u32>(10091u, 1u, 26711u, 0u), false) % vec4<u32>(32u))))), Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))))));
    var var_1 = true;
    var var_2 = Struct_2(any(arg_1.wzx), _wgslsmith_sub_u32(firstTrailingBit(36511u), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(15383u, var_0.e.a.x), ~u_input.a.x)), Struct_1(~(~var_0.e.a), _wgslsmith_div_f32(2737f, var_0.c.b)), Struct_1(u_input.a, 1000f), var_0.d);
    global0 = array<vec4<f32>, 7>();
    return _wgslsmith_f_op_f32(-var_2.d.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = ~reverseBits(~(~1u) << (~(~0u) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, _wgslsmith_f_op_f32(func_2(true, vec4<bool>(false, global1[_wgslsmith_index_u32(var_0, 10u)], true, true), _wgslsmith_div_vec2_f32(arg_0.zx, vec2<f32>(arg_2, arg_2)))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1332f, 1000f)) - -316f))));
    let var_2 = arg_3;
    var var_3 = ~u_input.b.x;
    var var_4 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.x << (44439u % 32u), 1u), u_input.a.yz), countOneBits(vec2<u32>(arg_3.a.x, 0u)));
    return _wgslsmith_clamp_i32(-2147483647i, -(_wgslsmith_sub_i32(reverseBits(-2147483647i), arg_1 ^ 1i) ^ (-u_input.b.x ^ arg_1)), 4274i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.b.x, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3024f, -135f, _wgslsmith_f_op_f32(abs(-355f)), _wgslsmith_f_op_f32(479f + -983f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 1329f, 1000f, 410f)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b), ~vec3<i32>(48240i, u_input.b.x, u_input.b.x)) ^ u_input.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f - -1000f)), _wgslsmith_f_op_f32(-2146f + _wgslsmith_f_op_f32(round(969f))))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f - -1614f) + _wgslsmith_f_op_f32(928f + -766f)))));
    let var_1 = true;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2236f))) - _wgslsmith_f_op_f32(func_2(true && all(vec3<bool>(var_1, false, false)), !select(vec4<bool>(var_1, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], var_1, var_1), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(907f, -826f), vec2<f32>(-447f, 1225f), var_1))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 426f));
    global0 = array<vec4<f32>, 7>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -852f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-688f, _wgslsmith_f_op_f32(f32(-1f) * -336f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1514f + _wgslsmith_f_op_f32(f32(-1f) * -549f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1245f * _wgslsmith_f_op_f32(f32(-1f) * -339f)))), all(select(!vec4<bool>(true, var_1, true, false), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(6622u, 10u)], true), true)))), firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 49741u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x))) << (vec4<u32>(~(~u_input.a.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), ~49487u), ~4294967295u, min(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 59522u, u_input.a.x)))) % vec4<u32>(32u)), u_input.a.yx, abs(u_input.a) | vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u));
}

