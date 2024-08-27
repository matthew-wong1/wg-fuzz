struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<i32, 25> = array<i32, 25>(-1i, -1i, 0i, 0i, -20090i, 0i, i32(-2147483648), -1i, -31886i, 1i, 0i, 5791i, -46405i, 1i, 1i, -1i, -1i, -18703i, -57934i, 2147483647i, -37067i, -17183i, 336i, 1i, 0i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(-1000f));
    return u_input.b;
}

fn func_2() -> vec4<i32> {
    var var_0 = max(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]);
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b, func_3() >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, 1u) >> (35272u % 32u), u_input.b.x)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 51348u << (u_input.b.x % 32u)), ~_wgslsmith_mult_u32(u_input.b.x, 77784u), 62215u), vec4<u32>(~4294967295u, u_input.b.x, abs(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, 45333u), vec4<u32>(1u, 4294967295u, 40417u, u_input.b.x)) % vec4<u32>(32u))) % 32u);
    let var_2 = vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_mult_u32(~680u, _wgslsmith_sub_u32(u_input.b.x, 9741u))) << (vec3<u32>(u_input.b.x, ~u_input.b.x, 0u) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(106f))), -452f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-478f)))))), -952f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1066f, -1124f, -1421f, -320f))))) * vec4<f32>(706f, _wgslsmith_f_op_f32(max(-674f, 564f)), _wgslsmith_f_op_f32(-984f + -1000f), _wgslsmith_div_f32(-272f, -1585f)))))));
    let var_4 = !((var_3.x > -366f) || false);
    return vec4<i32>(i32(-1i) * -_wgslsmith_clamp_i32(u_input.c.x << (u_input.b.x % 32u), firstLeadingBit(global2[_wgslsmith_index_u32(87832u, 25u)]), min(-20469i, 22469i)), 49554i >> (~(select(29624u, var_2.x, var_4) ^ 4294967295u) % 32u), u_input.c.x, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(3516u, 25u)], 92354i) | u_input.a.x, 1i, -2147483647i << (~var_2.x % 32u)));
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_4, 1>();
    let var_0 = false;
    global2 = array<i32, 25>();
    return Struct_3(true, min(-2147483647i, global2[_wgslsmith_index_u32(9773u, 25u)]), Struct_1(func_2()));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec4<bool>, 11>();
    let var_0 = u_input.b.x ^ 1u;
    global1 = array<Struct_4, 1>();
    var var_1 = Struct_2(vec2<i32>(~u_input.c.x | -1i, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(60848u, 1u), 25u)] >> (min(var_0 | var_0, reverseBits(u_input.b.x)) % 32u)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1390f, -660f)) - _wgslsmith_f_op_f32(ceil(-248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1453f)))))), !(!(!(!vec2<bool>(arg_0.a, true)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-228f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(630f - 404f)))), 706f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(3080f, -151f))))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.a.zxw, vec3<i32>(2147483647i, u_input.a.x, arg_0.b)), reverseBits(-1i), -6294i)), u_input.c));
    var var_2 = all(vec4<bool>(any(vec4<bool>(all(vec4<bool>(arg_0.a, true, var_1.c.x, arg_0.a)), var_1.c.x, true, arg_0.a)), true, all(select(vec3<bool>(arg_0.a, false, true), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(var_1.c.x, arg_0.a, var_1.c.x), vec3<bool>(arg_0.a, true, true)), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), 1u >= u_input.b.x));
    return Struct_3(true || var_1.c.x, max(756i, var_1.a.x | _wgslsmith_mod_i32(abs(2147483647i), -1i)), arg_0.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = arg_3;
    global1 = array<Struct_4, 1>();
    let var_1 = Struct_2(abs(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(~(-13598i), ~63416i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(658f + -351f), 996f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, 435f, 668f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, 124f, -943f)))))), !(!var_0.yy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(423f - 1862f), _wgslsmith_f_op_f32(abs(657f)), _wgslsmith_f_op_f32(f32(-1f) * -1071f), _wgslsmith_f_op_f32(step(-855f, 1485f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, 1000f, 1237f, 1347f) - vec4<f32>(-418f, 109f, 746f, 1109f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, 909f, -380f) - vec4<f32>(-774f, 2721f, 327f, 1764f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 153f)), _wgslsmith_f_op_f32(f32(-1f) * -1821f), _wgslsmith_f_op_f32(step(653f, -798f)), _wgslsmith_f_op_f32(610f * -1456f)))), arg_1.c.a.wyz << (~(vec3<u32>(arg_2, arg_2, 14448u) ^ min(vec3<u32>(0u, u_input.b.x, 50795u), vec3<u32>(1u, 64986u, 6329u))) % vec3<u32>(32u)));
    var var_2 = func_4(func_1()).c;
    var var_3 = vec4<bool>(any(var_1.c), false, ~(~_wgslsmith_mod_u32(arg_2, u_input.b.x)) != firstTrailingBit(1u), !arg_3.x);
    return Struct_2(~(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<i32>(arg_0.x, u_input.a.x)) & select(vec2<i32>(u_input.a.x, arg_1.b), arg_0.zy, var_0.zy)), var_1.b, !var_3.wz, var_1.d, func_2().xww);
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = ~u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b.xx, ~min(~u_input.b.zz, ~firstTrailingBit(vec2<u32>(u_input.b.x, 45353u)))), 1u)];
    var_0 = reverseBits(select(_wgslsmith_mod_vec2_i32(arg_0.e.xy, arg_0.e.yz) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(-2147483647i, u_input.c.x), false));
    var var_2 = func_4(Struct_3(!arg_0.c.x, countOneBits(-1i), Struct_1((vec4<i32>(arg_0.e.x, 1i, 35536i, -11015i) | vec4<i32>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)])) << (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 66600u) % vec4<u32>(32u)))));
    var var_3 = var_2.c;
    return var_3.a.x;
}

fn func_7(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> StorageBuffer {
    global1 = array<Struct_4, 1>();
    global0 = array<vec4<bool>, 11>();
    let var_0 = (vec4<i32>(func_5(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, arg_2, 29934i, arg_1), vec4<i32>(1i, 5170i, u_input.a.x, arg_2)), Struct_3(arg_0.x, 2147483647i, Struct_1(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], 2147483647i, 0i))), ~u_input.b.x, !vec3<bool>(true, arg_0.x, true)).e.x, func_1().b, global2[_wgslsmith_index_u32(u_input.b.x << (63254u % 32u), 25u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(111881u, u_input.b.x, 841u, u_input.b.x), ~vec4<u32>(33463u, u_input.b.x, u_input.b.x, u_input.b.x)), 25u)]) | firstLeadingBit(countOneBits(select(vec4<i32>(global2[_wgslsmith_index_u32(11785u, 25u)], -19457i, global2[_wgslsmith_index_u32(17996u, 25u)], 58417i), vec4<i32>(0i, 19629i, arg_1, arg_1), false)))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(89646u, u_input.b.x)), u_input.b.x & u_input.b.x, ~u_input.b.x, 38882u) & countOneBits(vec4<u32>(7139u, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(~u_input.b.x, u_input.b.x, u_input.b.x << (4294967295u % 32u), 0u)) % vec4<u32>(32u));
    global2 = array<i32, 25>();
    let var_1 = false;
    return StorageBuffer(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f))) - 360f), 653f, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(28501u, 25u)], 37863i, _wgslsmith_mult_i32(arg_2, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(u_input.c.x, -1i), -arg_1, select(u_input.a.x, var_0.x, arg_0.x))), global2[_wgslsmith_index_u32(1u, 25u)] << (max(firstTrailingBit(0u), 1740u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 25>();
    let x = u_input.a;
    s_output = func_7(vec4<bool>(true || !(u_input.b.x >= u_input.b.x), true, true, all(vec3<bool>(true, true, true))), 0i, func_6(func_5(~firstLeadingBit(vec4<i32>(u_input.c.x, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], 2147483647i)), func_4(func_1()), u_input.b.x, !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))));
}

