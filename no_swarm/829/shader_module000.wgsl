struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 57489u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(98696u, 528u), vec2<u32>(1929u, 0u), vec2<u32>(25195u, 5112u), vec2<u32>(49533u, 598u), vec2<u32>(54785u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(23140u, 17525u), vec2<u32>(53990u, 21305u), vec2<u32>(71627u, 53557u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(49133u, 1u), vec2<u32>(40733u, 0u), vec2<u32>(23131u, 28083u), vec2<u32>(25950u, 1218u), vec2<u32>(0u, 76079u));

var<private> global2: vec2<f32> = vec2<f32>(-1284f, 618f);

var<private> global3: vec3<u32> = vec3<u32>(22190u, 1u, 0u);

var<private> global4: array<f32, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<bool>) -> u32 {
    global4 = array<f32, 12>();
    global1 = array<vec2<u32>, 19>();
    var var_0 = vec2<i32>(-6318i, ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.x, 34414i) << (max(1u, 1u) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(57745i, arg_1.x, arg_0.d, arg_0.d), vec4<i32>(u_input.c, -2437i, arg_1.x, arg_0.d)), ~arg_0.d)));
    let var_1 = ~firstLeadingBit(~vec4<u32>(4294967295u, ~u_input.d, ~global3.x, u_input.d));
    let var_2 = !arg_2.xx;
    return ~(~u_input.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(select(reverseBits(countOneBits(~vec3<i32>(arg_2.x, arg_1.d, arg_1.d))), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(9889i, arg_1.d, arg_1.d)), _wgslsmith_div_vec3_i32(~u_input.a, arg_2.xxw << (vec3<u32>(14220u, global3.x, 27404u) % vec3<u32>(32u)))), false), Struct_1(!arg_0.x, func_3(Struct_1(false, u_input.b, u_input.d, ~(-1427i)), ~(vec4<i32>(2511i, arg_2.x, arg_1.d, arg_2.x) | vec4<i32>(arg_2.x, arg_1.d, arg_2.x, arg_1.d)), !vec3<bool>(true, arg_0.x, arg_1.a)), 4294967295u, abs(_wgslsmith_mod_i32(arg_2.x, -30031i)) & ~_wgslsmith_mod_i32(u_input.a.x, 41588i)), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global3.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 1u, 52751u), ~vec3<u32>(1u, arg_1.b, 59176u))), 12u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(arg_1.c, 12u)], global2.x)))));
    let var_1 = !select(arg_0, vec2<bool>(arg_1.a, arg_0.x), all(!vec4<bool>(false, arg_1.a, false, arg_0.x)) && !arg_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(650f * _wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(arg_1.c, 12u)], 463f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1518f)) - var_0.c), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~12048u, 12u)] + global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.c, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -427f))), !vec4<bool>(true, true, true, arg_1.a))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1115f, _wgslsmith_f_op_f32(-1794f + -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(124f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = _wgslsmith_sub_vec4_u32(~vec4<u32>(global3.x, u_input.b, u_input.d, 1713u) & _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_1.c, 32711u, 22400u, 43190u)), _wgslsmith_mult_vec4_u32(vec4<u32>(29644u, 1u, arg_1.b, arg_1.b), vec4<u32>(48228u, u_input.d, global3.x, global3.x))), countOneBits(reverseBits(firstLeadingBit(vec4<u32>(u_input.d, var_0.b.b, arg_1.b, u_input.d))))) & ~(vec4<u32>(global3.x, _wgslsmith_sub_u32(139624u, 33237u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.c, 60402u, global3.x, 0u), vec4<u32>(var_0.b.c, 17088u, 0u, var_0.b.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_1.c, global3.x, u_input.d), vec4<u32>(u_input.d, u_input.b, arg_1.c, 21519u))) ^ ~abs(vec4<u32>(4294967295u, var_0.b.b, arg_1.b, 1u)));
    let var_4 = arg_2.x != -54512i;
    return Struct_3(vec4<u32>(~var_0.b.c, 31436u, func_3(arg_1, -vec4<i32>(arg_1.d, arg_1.d, 1i, arg_1.d), vec3<bool>(arg_0.x, false, true)), 32384u) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.b.b, u_input.b, var_3.x), ~abs(vec4<u32>(82511u, 49848u, var_0.b.c, global3.x))), vec3<bool>(!var_4, !var_1.x, ~global3.x <= _wgslsmith_dot_vec3_u32(var_3.wxw, ~var_3.yzw)), Struct_1(true, ~global3.x, global3.x, ~abs(firstTrailingBit(arg_1.d))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = Struct_1(!any(vec4<bool>(arg_0.x == arg_0.x, true, true, true)), 1u, 36289u, arg_2.c.d);
    var_0 = Struct_1(var_0.a, firstTrailingBit(var_0.b), arg_2.a.x, _wgslsmith_mult_i32(1i, countOneBits(firstLeadingBit(3978i) >> (_wgslsmith_dot_vec3_u32(arg_2.a.xzx, vec3<u32>(u_input.b, 1u, u_input.b)) % 32u))));
    return arg_0.yzy;
}

fn func_1(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, global4[_wgslsmith_index_u32(4294967295u, 12u)], global4[_wgslsmith_index_u32(u_input.b, 12u)], 1497f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -1183f, 299f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1846f, -165f, -532f, -122f)))), (u_input.d > 99334u) && false, func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), Struct_1(global4[_wgslsmith_index_u32(global3.x, 12u)] < 505f, global3.x, abs(13782u), _wgslsmith_mod_i32(2147483647i, -1i)), abs(countOneBits(vec4<i32>(u_input.a.x, 10316i, arg_0.x, 16527i)))))));
    global0 = ~arg_0.x << (~abs(_wgslsmith_clamp_u32(min(u_input.b, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, u_input.b, 98u, 58118u), vec4<u32>(global3.x, 1u, global3.x, global3.x)), ~3372u)) % 32u);
    let var_1 = func_2(vec2<bool>(true, any(func_2(vec2<bool>(true, true), Struct_1(false, global3.x, 92954u, u_input.a.x), vec4<i32>(arg_0.x, -10650i, 21983i, -2147483647i)).b.zx) == true), Struct_1(all(vec2<bool>(true, false)) && false, global3.x, u_input.d, firstTrailingBit(firstLeadingBit(u_input.a.x))), vec4<i32>(_wgslsmith_add_i32(u_input.a.x | -9615i, (-2147483647i & u_input.a.x) & (i32(-1i) * -42491i)), 1i, ~arg_0.x, max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(4743i, -2147483647i), ~u_input.a.yz)))).c;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(188f, 665f)) * _wgslsmith_f_op_f32(global2.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1560f * var_0.x))) * var_0.xx));
    let var_2 = func_2(!(!select(!vec2<bool>(true, var_1.a), vec2<bool>(true, true), true)), var_1, abs(vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, var_1.d, var_1.d, -6604i))));
    return vec4<u32>(33777u, 0u, _wgslsmith_dot_vec4_u32(~(~(var_2.a & vec4<u32>(32585u, var_1.c, 1u, u_input.d))), firstLeadingBit(vec4<u32>(var_2.a.x, var_1.b, var_2.c.c, 4294967295u)) ^ (vec4<u32>(4294967295u, u_input.b, 69035u, 1u) >> (~var_2.a % vec4<u32>(32u)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~4294967295u, 1u) & ~global3.x, 55256u, select(34883u, max(var_1.c, 1u), !all(vec4<bool>(false, var_1.a, var_1.a, var_2.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -u_input.c;
    var var_0 = u_input.a.x;
    let var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), !(_wgslsmith_div_f32(-760f, -414f) == _wgslsmith_div_f32(global2.x, 666f)));
    var var_2 = Struct_1(all(var_1), ~(u_input.b << (~(~global3.x) % 32u)), abs(_wgslsmith_add_u32(~global3.x, _wgslsmith_div_u32(70979u, u_input.b))) >> (firstTrailingBit(~global3.x) % 32u), -(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(24093i, -1i), vec2<i32>(u_input.c, u_input.a.x)), min(1i, u_input.a.x)) ^ (-u_input.c & -u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(min(288f, global4[_wgslsmith_index_u32(89238u, 12u)])))))), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~66187u, _wgslsmith_sub_u32(_wgslsmith_add_u32(global3.x, u_input.b), 1u), 1u, u_input.d), func_1(-vec3<i32>(u_input.c, var_2.d, 2147483647i))), ~(~u_input.d), _wgslsmith_f_op_f32(489f - 1338f));
}

