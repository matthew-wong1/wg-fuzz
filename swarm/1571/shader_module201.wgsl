struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(false, -1i, Struct_1(vec2<u32>(87903u, 10604u), vec2<f32>(126f, 356f), 1i, true), -540f, vec4<i32>(-4362i, 2147483647i, 5095i, 2147483647i)), Struct_2(true, 0i, Struct_1(vec2<u32>(0u, 1u), vec2<f32>(829f, -1081f), 1i, true), -359f, vec4<i32>(1i, -23394i, -65530i, -30443i)), Struct_2(true, i32(-2147483648), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-383f, 974f), 41510i, true), -188f, vec4<i32>(-1i, i32(-2147483648), -24014i, 2147483647i)), Struct_2(true, 21383i, Struct_1(vec2<u32>(23858u, 4294967295u), vec2<f32>(-649f, -308f), -11752i, false), 1000f, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 9562i)), Struct_2(true, 2147483647i, Struct_1(vec2<u32>(0u, 24731u), vec2<f32>(428f, 1101f), -2051i, true), -1732f, vec4<i32>(0i, -36439i, -9365i, 1634i)), Struct_2(false, -1i, Struct_1(vec2<u32>(29871u, 4294967295u), vec2<f32>(-827f, 1011f), 47457i, false), -1000f, vec4<i32>(2147483647i, -1i, 36052i, 2147483647i)), Struct_2(false, -20219i, Struct_1(vec2<u32>(78219u, 18187u), vec2<f32>(-806f, -1160f), 12336i, true), 466f, vec4<i32>(0i, 14948i, -64180i, 1i)), Struct_2(false, 2147483647i, Struct_1(vec2<u32>(59614u, 10915u), vec2<f32>(1132f, -679f), 2147483647i, true), -1114f, vec4<i32>(-36547i, 42517i, -42468i, 10491i)));

var<private> global1: bool = false;

var<private> global2: array<f32, 6>;

var<private> global3: i32;

var<private> global4: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 134f)) + vec3<f32>(-112f, -646f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)])) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], -184f, global2[_wgslsmith_index_u32(33392u, 6u)]), vec3<f32>(1078f, global2[_wgslsmith_index_u32(30565u, 6u)], 1820f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1159f, 1000f, global2[_wgslsmith_index_u32(21100u, 6u)])))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(46874u, 6u)]) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(0u, 6u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, global2[_wgslsmith_index_u32(53915u, 6u)], 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(849f, global2[_wgslsmith_index_u32(26875u, 6u)], 745f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -515f), global2[_wgslsmith_index_u32(1u & u_input.a.x, 6u)], _wgslsmith_f_op_f32(677f * -722f))), false)));
    global2 = array<f32, 6>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a, firstLeadingBit(vec2<u32>(4294967295u, 3576u))) ^ 49444u, ~(~(48957u << (1u % 32u))), ~_wgslsmith_mod_u32(4294967295u, u_input.a.x)), 17865u), 8u)];
    global4 = !var_0;
    return vec2<bool>(false, all(select(select(select(vec4<bool>(var_0, var_2.a, true, var_0), vec4<bool>(var_0, var_2.c.d, true, false), false), select(vec4<bool>(true, var_0, var_2.a, true), vec4<bool>(true, false, false, var_0), false), select(vec4<bool>(false, true, false, var_2.c.d), vec4<bool>(false, false, var_0, false), var_0)), !(!vec4<bool>(false, var_0, true, false)), !select(var_2.a, var_0, var_0))));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    var var_0 = (arg_3.xyz ^ (vec3<u32>(firstTrailingBit(arg_1.a.c.a.x), 3458u, min(arg_0, arg_3.x)) & arg_3.zzz)) ^ _wgslsmith_mult_vec3_u32(arg_3.xzw, vec3<u32>(~(~39911u), 4294967295u, max(4294967295u, 4294967295u)));
    let var_1 = ~min(0i, u_input.b) | -1i;
    var var_2 = Struct_2(any(!vec4<bool>(arg_1.a.c.d, true, arg_1.a.a, 257f >= arg_1.a.c.b.x)), arg_1.a.e.x, Struct_1(arg_3.xz, vec2<f32>(global2[_wgslsmith_index_u32(19079u, 6u)], arg_1.a.c.b.x), var_1, !arg_1.a.a), global2[_wgslsmith_index_u32(34421u, 6u)], _wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(arg_1.a.e, arg_1.a.e | arg_1.a.e), firstTrailingBit(vec4<i32>(2147483647i, 14273i, var_1, 19082i)), 5411i > _wgslsmith_mod_i32(var_1, 1i)), ~arg_1.a.e));
    let var_3 = !(!vec2<bool>(arg_1.a.c.a.x <= ~0u, true));
    let var_4 = Struct_4(global0[_wgslsmith_index_u32(19050u, 8u)], arg_3, !func_3(u_input.b), Struct_2(var_2.a, _wgslsmith_mod_i32(var_1, abs(var_2.b)) & (i32(-1i) * -55174i), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(988f)) + _wgslsmith_f_op_f32(var_2.d - global2[_wgslsmith_index_u32(4294967295u, 6u)]))), var_2.e), Struct_3(!var_3, vec2<i32>(u_input.b, var_1), ~_wgslsmith_mod_vec2_u32(select(u_input.a, u_input.a, true), arg_3.xy), Struct_2(!any(vec3<bool>(var_3.x, arg_1.a.a, true)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -39997i), vec2<i32>(arg_1.a.e.x, u_input.b)), Struct_1(vec2<u32>(4294967295u, var_2.c.a.x), _wgslsmith_f_op_vec2_f32(min(var_2.c.b, vec2<f32>(293f, 843f))), firstLeadingBit(58321i), false), arg_1.a.c.b.x, vec4<i32>(-2147483647i >> (var_2.c.a.x % 32u), -2147483647i, _wgslsmith_clamp_i32(var_2.c.c, -147i, u_input.b), 1i))));
    return 95811u << (_wgslsmith_mod_u32(var_4.a.c.a.x, (abs(var_4.d.c.a.x) & ~arg_0) ^ var_4.d.c.a.x) % 32u);
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_4(Struct_2(true, 10742i, Struct_1(vec2<u32>(u_input.a.x, func_2(8156u, Struct_5(Struct_2(false, 3203i, Struct_1(vec2<u32>(u_input.a.x, 31607u), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(30367u, 6u)]), 1i, false), 1241f, vec4<i32>(u_input.b, 1i, u_input.b, 0i))), u_input.a.x, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1721f, 513f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(706f, 725f))), -16740i, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), -vec4<i32>(-11306i, 1i, 1i, ~u_input.b)), reverseBits(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6156u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), !vec2<bool>(any(vec3<bool>(true, false, false)), true), global0[_wgslsmith_index_u32(51283u ^ firstTrailingBit(21685u), 8u)], Struct_3(vec2<bool>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 6u)] * 1000f) > global2[_wgslsmith_index_u32(1u, 6u)], select(true, true, func_3(36913i).x)), _wgslsmith_sub_vec2_i32(~(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(6359u, u_input.a.x) % vec2<u32>(32u))), ~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, 2147483647i))), max(vec2<u32>(countOneBits(81758u), ~u_input.a.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a)), Struct_2(true, ~_wgslsmith_clamp_i32(u_input.b, 1i, -6355i), Struct_1(reverseBits(u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 2244f) * vec2<f32>(196f, 410f)), -1i, any(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-113f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], true))), vec4<i32>(-2147483647i, -23828i, u_input.b ^ u_input.b, _wgslsmith_add_i32(18354i, u_input.b)))));
    var var_1 = 4159u;
    let var_2 = max(i32(-1i) * -1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.e.b.x, var_0.d.c.c), i32(-1i) * -40668i, u_input.b), ~(~u_input.b)));
    var_1 = _wgslsmith_sub_u32(var_0.a.c.a.x, ~var_0.e.d.c.a.x);
    let var_3 = var_0.e.a.x;
    return select(~(vec2<i32>(_wgslsmith_div_i32(-20543i, var_2), select(u_input.b, u_input.b, true)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.c.a.x, var_0.d.c.a.x), u_input.a & u_input.a, u_input.a) % vec2<u32>(32u))), ~(-_wgslsmith_div_vec2_i32(var_0.a.e.yw, vec2<i32>(5352i, -14500i)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(53252u, 38346u)), u_input.a) % vec2<u32>(32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 6>();
    var var_0 = !all(vec3<bool>(true, true, true));
    let var_1 = firstTrailingBit(-(~func_1()));
    var var_2 = 1u;
    var var_3 = Struct_5(global0[_wgslsmith_index_u32(4294967295u, 8u)]);
    var_3 = Struct_5(global0[_wgslsmith_index_u32(~1u, 8u)]);
    var_0 = any(select(select(vec2<bool>(func_3(1i).x, var_3.a.a), select(vec2<bool>(var_3.a.a, var_3.a.a), !vec2<bool>(var_3.a.c.d, false), vec2<bool>(false, true)), !vec2<bool>(true, var_3.a.a)), vec2<bool>(-792f == _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(48231u, 6u)] * 176f), var_3.a.c.d), all(!(!vec3<bool>(false, true, var_3.a.c.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

