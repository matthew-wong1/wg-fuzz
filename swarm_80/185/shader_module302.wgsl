struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(54723i, true), Struct_1(-16364i, true), Struct_1(64242i, false));

var<private> global2: array<bool, 27>;

var<private> global3: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false));

var<private> global4: array<u32, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    return -(~arg_1 | 72786i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = 0i;
    let var_1 = (~abs(vec4<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20008u, 22u)], 22u)], arg_1.b.x, u_input.c)) ^ ~(~(~vec4<u32>(1u, 45316u, arg_1.a, 4294967295u)))) >> (select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 18599u, 62024u, global0.x) << (select(vec4<u32>(global4[_wgslsmith_index_u32(0u, 22u)], 4294967295u, global0.x, arg_1.a), vec4<u32>(0u, 37145u, 1u, 1u), arg_0.b) % vec4<u32>(32u)), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(~10899u, 22u)], 0u, arg_1.b.x)), vec4<u32>(global0.x, 16080u, ~0u, ~1u), !(!select(vec4<bool>(true, arg_0.b, arg_1.c.b, false), global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(6863u, 15u)]))) % vec4<u32>(32u));
    let var_2 = -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(19136i, var_0), _wgslsmith_add_i32(-2147483647i, arg_1.d), -arg_0.a), vec3<i32>(_wgslsmith_add_i32(1i, 28634i), ~51046i, firstLeadingBit(u_input.b))), vec3<i32>(-1i) * -(vec3<i32>(-2147483647i, var_0, arg_1.d) ^ vec3<i32>(1i, var_0, arg_0.a)));
    global1 = array<Struct_1, 3>();
    let var_3 = true;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(((u_input.a.x & global4[_wgslsmith_index_u32(11334u, 22u)]) ^ global0.x) ^ _wgslsmith_clamp_u32(0u, var_1.x, ~21262u), arg_1.a), arg_1.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    let var_0 = global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(75781u, arg_2), 1u) & 1u, 3u)], Struct_2(_wgslsmith_mult_u32(~(~u_input.a.x), ~_wgslsmith_add_u32(arg_1.x, 45423u)), vec2<u32>(_wgslsmith_div_u32(35228u, ~global0.x), 1u), Struct_1(-11601i, true), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f * 803f)), u_input.b), _wgslsmith_f_op_f32(-827f + _wgslsmith_f_op_f32(step(-693f, 1629f))))), 3u)];
    global1 = array<Struct_1, 3>();
    global2 = array<bool, 27>();
    return -(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, 1i), 0i, -var_0.a) ^ var_0.a);
}

fn func_4(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(171f, 325f, 227f, -154f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1503f, -1000f, 1704f, -729f) - vec4<f32>(201f, -827f, -433f, 192f))), global2[_wgslsmith_index_u32(firstTrailingBit(~1u), 27u)])))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -781f) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)))), var_0.x));
    var var_2 = Struct_2(~46285u, u_input.a.xz, Struct_1(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-288f, 427f) * _wgslsmith_div_f32(var_0.x, 303f)), u_input.b), false), 2147483647i, _wgslsmith_div_f32(var_0.x, var_1.x));
    let var_3 = Struct_2(~global4[_wgslsmith_index_u32(~min(var_2.b.x, global4[_wgslsmith_index_u32(21745u, 22u)]) << (global4[_wgslsmith_index_u32(1u, 22u)] % 32u), 22u)], vec2<u32>(~(~_wgslsmith_mult_u32(28069u, 1u)), global0.x), Struct_1(~_wgslsmith_add_i32(28239i >> (var_2.a % 32u), _wgslsmith_mod_i32(u_input.b, arg_0)), select(_wgslsmith_f_op_f32(floor(178f)) == _wgslsmith_f_op_f32(round(var_0.x)), var_2.c.b, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(var_2.b.x), ~global4[_wgslsmith_index_u32(16049u, 22u)]), 27u)])), -_wgslsmith_dot_vec4_i32(~(-vec4<i32>(2147483647i, arg_1, arg_0, 11832i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_2.d, 31534i, var_2.d), vec4<i32>(0i, arg_0, arg_0, -16111i))), var_0.x);
    var var_4 = ~select(vec3<i32>(_wgslsmith_mult_i32(var_2.d << (global0.x % 32u), -arg_0), -41994i, ~(-38514i)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_3.d, 2147483647i, var_2.d)), vec3<i32>(-arg_1, 16854i, _wgslsmith_mult_i32(arg_0, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_2.e) + _wgslsmith_f_op_f32(floor(var_2.e))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1699f, 364f)), var_2.e)));
    return 1152f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(countOneBits(func_1(vec2<u32>(900u, u_input.d) >> (u_input.a.yy % vec2<u32>(32u)), ~global0.xzw, _wgslsmith_add_u32(10040u, 0u), select(vec4<u32>(u_input.c, u_input.d, 1u, 0u), vec4<u32>(global0.x, 6831u, global4[_wgslsmith_index_u32(global0.x, 22u)], u_input.a.x), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false, true, true)))), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1632f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1295f), _wgslsmith_f_op_f32(-1407f - 189f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-463f)), _wgslsmith_f_op_f32(select(1643f, -461f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f + _wgslsmith_f_op_f32(sign(686f)))));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global0.x, 22u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 22u)], 22u)]), 3u)];
    let var_2 = Struct_2(~7956u, u_input.a.xz, Struct_1(916i ^ _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~35474i), any(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.x & 4294967295u, 27u)]))), -_wgslsmith_sub_i32(countOneBits(-22582i) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -6136i, u_input.b, -4351i)), var_1.a >> (_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(global0.x, 42301u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))));
    let var_3 = !(true | !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(71671u, u_input.c), 22u)], abs(global0.x)), 27u)]);
    var_1 = Struct_1(var_1.a, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.x | var_2.a, 22u)], 27u)]);
    var var_4 = ~(-(~(-81248i >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 22u)] % 32u)))) | -(~(~(-2147483647i) << (_wgslsmith_sub_u32(0u, global0.x) % 32u)));
    var_1 = var_2.c;
    let var_5 = ~global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1.a), 19571i | (u_input.b >> (global0.x % 32u)), ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_5, global4[_wgslsmith_index_u32(4294967295u, 22u)]), var_5, global0.x >> (5444u % 32u)), 0u, var_2.b.x, 35317u));
}

