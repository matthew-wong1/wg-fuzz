struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
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

var<private> global0: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec4<i32>(1953i, i32(-2147483648), 18476i, 28268i), -816f, 22659u, vec2<f32>(-1029f, -668f), vec2<i32>(16853i, -1i)), Struct_5(vec4<i32>(24597i, 754i, -13386i, 19518i), 1282f, 1u, vec2<f32>(860f, 802f), vec2<i32>(-21923i, -1i)), Struct_5(vec4<i32>(1i, 51574i, 0i, 126i), 483f, 92923u, vec2<f32>(-1000f, -1368f), vec2<i32>(i32(-2147483648), 0i)), Struct_5(vec4<i32>(-31555i, 1i, -3589i, 12838i), -2254f, 36632u, vec2<f32>(1000f, -953f), vec2<i32>(0i, 16944i)), Struct_5(vec4<i32>(-86868i, 2147483647i, 2147483647i, -19620i), -979f, 4294967295u, vec2<f32>(1157f, 454f), vec2<i32>(1i, -1i)), Struct_5(vec4<i32>(-1i, -1i, 0i, 1i), -195f, 38239u, vec2<f32>(3168f, 325f), vec2<i32>(-10776i, 13253i)), Struct_5(vec4<i32>(0i, -30772i, 0i, -57057i), -1434f, 4294967295u, vec2<f32>(-170f, -1222f), vec2<i32>(-1i, 1760i)), Struct_5(vec4<i32>(-1i, 0i, -1i, -33465i), -439f, 0u, vec2<f32>(841f, -2139f), vec2<i32>(-23916i, -6402i)), Struct_5(vec4<i32>(3019i, 2147483647i, 1i, -1i), -600f, 12536u, vec2<f32>(-441f, -451f), vec2<i32>(4668i, 2147483647i)), Struct_5(vec4<i32>(i32(-2147483648), -12902i, i32(-2147483648), 0i), 280f, 4294967295u, vec2<f32>(-1748f, -692f), vec2<i32>(24918i, -1i)), Struct_5(vec4<i32>(i32(-2147483648), -7321i, -32815i, 3611i), -321f, 0u, vec2<f32>(592f, 893f), vec2<i32>(-1i, 2147483647i)));

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-211f, -1288f, 238f), vec3<f32>(-223f, -1000f, -1183f), vec3<f32>(766f, 271f, -682f), vec3<f32>(257f, -1261f, 314f), vec3<f32>(988f, -1728f, -1070f), vec3<f32>(-378f, 172f, -748f), vec3<f32>(-159f, -125f, 994f), vec3<f32>(-2128f, 111f, 687f), vec3<f32>(-1000f, -1200f, 1293f), vec3<f32>(2286f, -1384f, -1467f), vec3<f32>(418f, 1330f, 1017f), vec3<f32>(-1413f, -278f, 1000f), vec3<f32>(1007f, 1000f, -1212f));

var<private> global2: array<i32, 19> = array<i32, 19>(-27125i, -6234i, -21069i, 0i, 5802i, 1i, 15850i, 2147483647i, 1i, 0i, -42044i, -11336i, 1i, 0i, 34326i, 0i, 0i, 0i, -11021i);

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 41750u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> bool {
    var var_0 = abs(select(-1i, firstTrailingBit(global2[_wgslsmith_index_u32(~7812u, 19u)]), !all(vec2<bool>(false, global3.x))) >> (~_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), 1u) % 32u));
    global1 = array<vec3<f32>, 13>();
    var var_1 = Struct_2(select(!vec4<bool>(false, true, !arg_0, global4.x >= 29857u), !select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, false, true, arg_0), true), select(vec4<bool>(false, true, any(vec2<bool>(true, false)), all(vec2<bool>(true, arg_0))), select(select(vec4<bool>(global3.x, global3.x, true, arg_0), vec4<bool>(global3.x, arg_0, true, true), global3.x), select(vec4<bool>(global3.x, true, true, arg_0), vec4<bool>(arg_0, global3.x, global3.x, arg_0), false), vec4<bool>(true, global3.x, true, global3.x)), select(global3.x, all(vec2<bool>(true, false)), global3.x))), -arg_1, select(all(select(vec3<bool>(true, arg_0, global3.x), !vec3<bool>(global3.x, false, true), global3.x)), arg_0, all(vec4<bool>(false & global3.x, true, arg_0, true))), Struct_1(!(!(!global3.x)), arg_1.x));
    let var_2 = all(!var_1.a.wx);
    var var_3 = Struct_4(Struct_1(true, global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(720f, _wgslsmith_div_f32(1f, 1f))));
    return false;
}

fn func_2(arg_0: Struct_5) -> vec4<u32> {
    let var_0 = -arg_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d.x, 746f))))));
    global3 = vec2<bool>(global3.x, func_3(global3.x, ~(-(vec2<i32>(1i, -2147483647i) >> (global4.yy % vec2<u32>(32u))))));
    let var_2 = select(vec4<bool>(global3.x, arg_0.b <= _wgslsmith_f_op_f32(sign(arg_0.d.x)), any(select(select(vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(global3.x, false, true, global3.x)), select(vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(false, true, global3.x, global3.x), global3.x), all(vec2<bool>(true, false)))), (var_0 == _wgslsmith_dot_vec4_i32(arg_0.a, arg_0.a)) || all(vec2<bool>(true, global3.x))), !(!(!(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), global3.x);
    return ~vec4<u32>(_wgslsmith_sub_u32(~(arg_0.c ^ arg_0.c), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(arg_0.c, u_input.a.x, 0u, 8738u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, 56761u, arg_0.c, 0u), vec4<u32>(1u, 0u, 5828u, 81845u)))), firstTrailingBit(global4.x), ~49504u, ~_wgslsmith_div_u32(arg_0.c, global4.x));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = countOneBits(-623i);
    global4 = _wgslsmith_sub_vec4_u32(reverseBits(select(func_2(Struct_5(vec4<i32>(global2[_wgslsmith_index_u32(global4.x, 19u)], u_input.b.x, 11816i, -40622i), 1191f, 0u, arg_0.zw, u_input.b)), u_input.a, vec4<bool>(u_input.b.x < u_input.b.x, false, true, false))), ~firstLeadingBit(vec4<u32>(global4.x, global4.x, u_input.a.x | 69443u, u_input.a.x)));
    let var_1 = Struct_5(vec4<i32>(reverseBits(~global2[_wgslsmith_index_u32(~global4.x, 19u)]), min(_wgslsmith_mod_i32(-u_input.b.x, 1i), 14918i), ~(~(-27563i)) >> (firstLeadingBit(1u) % 32u), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 451f)), _wgslsmith_mult_u32(global4.x, countOneBits(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) ^ func_2(Struct_5(vec4<i32>(1i, 2147483647i, -2147483647i, global2[_wgslsmith_index_u32(26281u, 19u)]), -1138f, 4294967295u, vec2<f32>(arg_0.x, arg_0.x), vec2<i32>(-2147483647i, 21311i))).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xy)), -_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(-15576i, 0i), -u_input.b) | max(-vec2<i32>(-1i, global2[_wgslsmith_index_u32(global4.x, 19u)]), ~max(vec2<i32>(global2[_wgslsmith_index_u32(0u, 19u)], -1i), u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f));
    var_0 = -38328i;
    return _wgslsmith_f_op_f32(arg_0.x * arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global4.x, 19u)], 1i, u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<i32>(2147483647i, -1i, u_input.b.x, -4048i)), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], -2147483647i) | 25676i, -1i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(76653i, -11322i, -2147483647i, 60416i), vec4<i32>(44005i, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(u_input.a.x, 19u)])) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(505f * _wgslsmith_div_f32(-567f, 1078f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1632f, false)) * _wgslsmith_f_op_f32(func_1(vec4<f32>(651f, 170f, 1720f, -563f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-958f, -1891f), _wgslsmith_f_op_f32(abs(-3300f)))), _wgslsmith_f_op_f32(round(-1128f))))), ~global4.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(755f))), _wgslsmith_f_op_f32(func_1(vec4<f32>(1f, 1f, 1f, 1f)))), ~u_input.b);
    global2 = array<i32, 19>();
    let var_1 = vec3<bool>(!(!global3.x), true, global3.x);
    var var_2 = Struct_3(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-736f)), 417f, true))))));
    let var_3 = -firstLeadingBit(u_input.b.x);
    global1 = array<vec3<f32>, 13>();
    var_2 = Struct_3(293f);
    var var_4 = _wgslsmith_dot_vec2_i32(firstLeadingBit(-var_0.e), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, reverseBits(32839i << (var_0.c % 32u))), vec2<i32>(var_3 << (1u % 32u), u_input.b.x), (vec2<i32>(-2147483647i, u_input.b.x) | ~vec2<i32>(var_3, 13829i)) << (vec2<u32>(11054u & var_0.c, _wgslsmith_mult_u32(13029u, u_input.a.x)) % vec2<u32>(32u))));
    global0 = array<Struct_5, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

