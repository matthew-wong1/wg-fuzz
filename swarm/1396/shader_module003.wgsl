struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(false, true, 4294967295u, 24809u, vec2<f32>(-1245f, -888f)), Struct_1(true, true, 3441u, 0u, vec2<f32>(1000f, -266f)), Struct_1(true, false, 0u, 0u, vec2<f32>(-1310f, -464f))), Struct_2(Struct_1(true, false, 1u, 0u, vec2<f32>(1440f, -716f)), Struct_1(true, true, 65873u, 10893u, vec2<f32>(-252f, 1124f)), Struct_1(true, false, 1u, 1u, vec2<f32>(838f, -1963f))), Struct_2(Struct_1(false, false, 1u, 24666u, vec2<f32>(-553f, 291f)), Struct_1(false, true, 4294967295u, 53636u, vec2<f32>(528f, -1037f)), Struct_1(true, false, 20921u, 59067u, vec2<f32>(1641f, -825f))), Struct_2(Struct_1(false, true, 1u, 1u, vec2<f32>(-356f, 162f)), Struct_1(false, false, 38990u, 49092u, vec2<f32>(625f, -1700f)), Struct_1(false, true, 5544u, 4294967295u, vec2<f32>(347f, -826f))), Struct_2(Struct_1(true, true, 0u, 0u, vec2<f32>(-490f, 863f)), Struct_1(false, true, 116393u, 1u, vec2<f32>(904f, 132f)), Struct_1(false, false, 0u, 0u, vec2<f32>(1767f, -1046f))), Struct_2(Struct_1(true, true, 57843u, 0u, vec2<f32>(406f, 780f)), Struct_1(true, false, 0u, 5657u, vec2<f32>(758f, -1141f)), Struct_1(false, true, 4294967295u, 54353u, vec2<f32>(-132f, 1649f))), Struct_2(Struct_1(true, false, 29259u, 15635u, vec2<f32>(-257f, 734f)), Struct_1(true, true, 49512u, 25136u, vec2<f32>(-303f, -495f)), Struct_1(false, true, 39311u, 0u, vec2<f32>(-786f, 1000f))), Struct_2(Struct_1(false, true, 0u, 31617u, vec2<f32>(-778f, -1306f)), Struct_1(false, false, 14783u, 1u, vec2<f32>(615f, -532f)), Struct_1(false, false, 4294967295u, 1u, vec2<f32>(-193f, 960f))), Struct_2(Struct_1(false, false, 2001u, 90672u, vec2<f32>(2127f, 1000f)), Struct_1(true, false, 5718u, 1u, vec2<f32>(1355f, -1126f)), Struct_1(false, true, 0u, 21661u, vec2<f32>(461f, 1000f))), Struct_2(Struct_1(true, true, 48656u, 65686u, vec2<f32>(-164f, 1188f)), Struct_1(true, true, 1u, 4294967295u, vec2<f32>(312f, -148f)), Struct_1(false, false, 0u, 43861u, vec2<f32>(1553f, 1397f))), Struct_2(Struct_1(false, false, 1u, 4294967295u, vec2<f32>(404f, -527f)), Struct_1(true, true, 4294967295u, 89620u, vec2<f32>(990f, 1000f)), Struct_1(false, true, 48447u, 12987u, vec2<f32>(494f, 1146f))));

var<private> global2: array<bool, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(15877u), 13u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy | u_input.a.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(12335u, 1u))) << (24171u % 32u), 13u)], ~4294967295u, _wgslsmith_clamp_u32(u_input.c, 34316u, ~(~6027u)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), Struct_1(global2[_wgslsmith_index_u32(countOneBits(u_input.c), 13u)], any(select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 13u)], true, global2[_wgslsmith_index_u32(19605u, 13u)], global2[_wgslsmith_index_u32(12494u, 13u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(40071u, 13u)]), false)), 1u, ~u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0))) + _wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(168f, 115f)))), Struct_1(any(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 13u)])), 1u >= u_input.a.x, u_input.a.x, ~4294967295u >> (~u_input.c % 32u), _wgslsmith_f_op_vec2_f32(min(arg_0, vec2<f32>(497f, _wgslsmith_f_op_f32(489f * arg_0.x))))));
    let var_1 = _wgslsmith_mod_vec2_i32(u_input.b.zx, vec2<i32>(20i, reverseBits((u_input.b.x & -2147483647i) ^ abs(global0[_wgslsmith_index_u32(var_0.b.d, 29u)]))));
    let var_2 = abs(vec4<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(select(firstLeadingBit(var_1), -var_1, true & var_0.b.b), var_1), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(var_0.a.c & u_input.c), ~(u_input.c >> (4859u % 32u))), 29u)], _wgslsmith_mod_i32(-2147483647i, ~global0[_wgslsmith_index_u32(~23483u, 29u)])));
    let var_3 = Struct_1(true, false, firstTrailingBit(4294967295u), u_input.a.x, _wgslsmith_f_op_vec2_f32(-var_0.c.e));
    global1 = array<Struct_2, 11>();
    return all(!select(!(!vec2<bool>(global2[_wgslsmith_index_u32(29553u, 13u)], false)), !select(vec2<bool>(var_0.b.a, var_3.b), vec2<bool>(true, var_3.a), var_0.a.a), var_0.a.a));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(true, !func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(585f, 2247f)))))), ~0u, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1036f)))));
    global2 = array<bool, 13>();
    let var_1 = min(vec3<u32>(_wgslsmith_div_u32(~u_input.a.x, countOneBits(1u)) & abs(106918u), firstTrailingBit(_wgslsmith_add_u32(var_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.c, 4294967295u, var_0.c), u_input.a))), var_0.d), ~(~(~u_input.a.www)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_0.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, 2393f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.e.x, var_0.e.x)), -1725f) + _wgslsmith_f_op_vec2_f32(-var_0.e))), select(vec2<bool>(false, global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xy)), 13u)]), vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(22450u, 13u)], global2[_wgslsmith_index_u32(var_0.d, 13u)], false)), !var_0.a), !select(!vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 13u)]), select(vec2<bool>(var_0.b, false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], var_0.b), vec2<bool>(global2[_wgslsmith_index_u32(var_0.d, 13u)], true)), var_0.b && false))));
    let var_3 = var_0.e;
    return Struct_3(Struct_2(Struct_1(true, !(global2[_wgslsmith_index_u32(var_0.c, 13u)] & var_0.b), var_0.c, max(u_input.a.x, ~var_1.x), var_0.e), Struct_1(var_0.b, any(vec4<bool>(global2[_wgslsmith_index_u32(36762u, 13u)], false, true, true)), max(20585u, 100526u), 1u, _wgslsmith_f_op_vec2_f32(select(var_0.e, vec2<f32>(909f, -843f), !vec2<bool>(global2[_wgslsmith_index_u32(59089u, 13u)], global2[_wgslsmith_index_u32(83659u, 13u)])))), Struct_1(!var_0.b, 31788u < ~u_input.a.x, abs(4294967295u ^ var_1.x), ~(~u_input.c), _wgslsmith_div_vec2_f32(var_0.e, var_0.e))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    global2 = array<bool, 13>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_0 = func_2();
    var var_1 = select(select(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(33894u, 13u)]), !vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 13u)]), !var_0.a.b.a), !select(!vec2<bool>(false, var_0.a.c.b), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec2<bool>(true, var_0.a.b.b), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(12654u, 13u)])), vec2<bool>(true, var_0.a.c.b)), var_0.a.a.e.x > _wgslsmith_f_op_f32(sign(-1409f))), vec2<bool>(true, !(37079i <= -u_input.d)), all(vec2<bool>(var_0.a.b.b, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-264f - _wgslsmith_f_op_f32(519f + -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1064f, 690f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-203f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1142f + -417f) - _wgslsmith_f_op_f32(func_1(-39938i, u_input.a)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1620f, 779f) - 598f) - _wgslsmith_div_f32(1505f, 703f))));
    var var_1 = ~(~((vec4<i32>(2147483647i, 39753i, global0[_wgslsmith_index_u32(28008u, 29u)], u_input.b.x) & ~vec4<i32>(global0[_wgslsmith_index_u32(43872u, 29u)], -1i, u_input.d, -16353i)) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 23866i, u_input.b.x))));
    let var_2 = Struct_2(func_2().a.b, func_2().a.c, Struct_1(global2[_wgslsmith_index_u32(38902u, 13u)], global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.a.ww, reverseBits(vec2<u32>(7346u, u_input.c)))), 13u)], min(~u_input.c, u_input.c), u_input.c, vec2<f32>(1f, 1000f)));
    var var_3 = var_2.c.d;
    global2 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.b.e.x, var_2.b.e.x, var_2.b.e.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.e.x, -1434f, 2322f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b.e.x, var_2.c.e.x, var_2.c.e.x))))))), u_input.c, abs(~(vec3<u32>(u_input.a.x, var_2.a.d, u_input.a.x) | vec3<u32>(55265u, 28401u, 18939u)) << ((firstLeadingBit(u_input.a.zxw) >> (u_input.a.yww % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1762f + _wgslsmith_f_op_f32(f32(-1f) * -755f)) * _wgslsmith_f_op_f32(var_2.a.e.x * var_2.a.e.x))), u_input.d);
}

