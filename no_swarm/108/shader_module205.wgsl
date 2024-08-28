struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 2147483647i, 1i);

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec2<i32>(1i, -32432i), vec2<i32>(3456i, 0i), Struct_2(Struct_1(437f, vec2<i32>(1i, 2147483647i)), Struct_1(-1089f, vec2<i32>(29i, 0i)), 33170i, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), Struct_1(859f, vec2<i32>(0i, -28621i))), vec3<bool>(false, false, false), 1u), Struct_3(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -2763i), Struct_2(Struct_1(1000f, vec2<i32>(-1i, -27689i)), Struct_1(813f, vec2<i32>(2147483647i, i32(-2147483648))), 2147483647i, vec4<u32>(90961u, 1u, 30503u, 11921u), Struct_1(-403f, vec2<i32>(1i, 1141i))), vec3<bool>(false, false, false), 695u), Struct_3(vec2<i32>(1i, 7533i), vec2<i32>(-1i, 9271i), Struct_2(Struct_1(-1000f, vec2<i32>(-1i, -14650i)), Struct_1(328f, vec2<i32>(-36620i, -8035i)), 2147483647i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 59978u), Struct_1(540f, vec2<i32>(1i, 2147483647i))), vec3<bool>(true, false, true), 15716u), Struct_3(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(25934i, 2147483647i), Struct_2(Struct_1(-1226f, vec2<i32>(2147483647i, -17055i)), Struct_1(1074f, vec2<i32>(19091i, -14062i)), 1i, vec4<u32>(62027u, 20314u, 0u, 53797u), Struct_1(655f, vec2<i32>(i32(-2147483648), 0i))), vec3<bool>(true, true, false), 1u), Struct_3(vec2<i32>(-42763i, -1i), vec2<i32>(1i, i32(-2147483648)), Struct_2(Struct_1(1412f, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(1308f, vec2<i32>(-39792i, 2147483647i)), 30005i, vec4<u32>(54577u, 13669u, 1u, 160u), Struct_1(-981f, vec2<i32>(2147483647i, i32(-2147483648)))), vec3<bool>(false, false, true), 4294967295u), Struct_3(vec2<i32>(-4945i, -15438i), vec2<i32>(10090i, 2147483647i), Struct_2(Struct_1(1000f, vec2<i32>(37882i, 0i)), Struct_1(-792f, vec2<i32>(47307i, -43059i)), -6029i, vec4<u32>(0u, 57848u, 2117u, 54138u), Struct_1(410f, vec2<i32>(-10232i, 33431i))), vec3<bool>(true, false, true), 4294967295u), Struct_3(vec2<i32>(-10586i, 2147483647i), vec2<i32>(-6639i, 2147483647i), Struct_2(Struct_1(1032f, vec2<i32>(2147483647i, 25411i)), Struct_1(-1000f, vec2<i32>(2147483647i, -1i)), 5883i, vec4<u32>(32924u, 4294967295u, 29600u, 4294967295u), Struct_1(-1000f, vec2<i32>(-12388i, -1i))), vec3<bool>(true, true, false), 0u), Struct_3(vec2<i32>(37491i, i32(-2147483648)), vec2<i32>(1i, -49505i), Struct_2(Struct_1(1126f, vec2<i32>(1i, -4666i)), Struct_1(-1000f, vec2<i32>(1i, 29100i)), 2277i, vec4<u32>(30468u, 1u, 0u, 0u), Struct_1(2380f, vec2<i32>(-4235i, 2147483647i))), vec3<bool>(false, false, true), 57033u));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<u32> {
    global3 = Struct_2(global3.b, arg_1.e, -1i, min(arg_1.d, select(vec4<u32>(select(0u, 14118u, arg_2.x), max(1u, global3.d.x), ~arg_1.d.x, arg_1.d.x << (arg_1.d.x % 32u)), max(~arg_1.d, arg_1.d), true)), global3.a);
    global0 = array<f32, 9>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(ceil(-389f)));
    global1 = vec3<i32>(12572i >> (arg_1.d.x % 32u), select(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e.b.x, u_input.b, arg_0, global1.x), vec4<i32>(-18136i, -6819i, u_input.c.x, u_input.a))), ~(~(-1i)), false), firstLeadingBit(~(~29789i))) << (reverseBits(~select(arg_1.d.zwx, vec3<u32>(arg_1.d.x, 1u, 11222u), arg_2.x) ^ (abs(vec3<u32>(arg_1.d.x, 32433u, 0u)) & firstLeadingBit(arg_1.d.wxx))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-40839i, -1i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-17584i, 2147483647i, 1i) ^ vec3<i32>(u_input.b, -1i, -47180i)), ~(vec3<i32>(global1.x, 11180i, arg_1.b.b.x) >> (vec3<u32>(27585u, arg_1.d.x, 51883u) % vec3<u32>(32u)))), ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global3.e.b.x, 1i), vec3<i32>(2147483647i, -34141i, -15669i)), -vec3<i32>(3479i, 39288i, arg_1.b.b.x))), countOneBits(_wgslsmith_sub_i32(1i, ~(~global3.a.b.x))));
    return ~global3.d.zz & vec2<u32>(4294967295u, _wgslsmith_add_u32(global3.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_1.d, vec4<u32>(global3.d.x, 9400u, 38198u, arg_1.d.x)), reverseBits(global3.d.x))));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: i32, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1425f * _wgslsmith_f_op_f32(arg_0.a.b.x * 1000f)) + 107f))));
    global2 = array<Struct_3, 8>();
    var var_1 = arg_0.a;
    let var_2 = arg_0.c.c.d.x << (global3.d.x % 32u);
    global3 = arg_0.c.c;
    return vec4<bool>(_wgslsmith_dot_vec2_u32(arg_0.c.c.d.zz, func_3(var_1.d, Struct_2(Struct_1(1494f, vec2<i32>(arg_0.c.a.x, arg_2)), var_1.a, 27171i, vec4<u32>(arg_0.c.c.d.x, var_2, 505u, 1u), Struct_1(global0[_wgslsmith_index_u32(42426u, 9u)], vec2<i32>(arg_3, -1i))), vec2<bool>(arg_0.b, arg_0.c.d.x)) ^ select(vec2<u32>(17284u, global3.d.x), arg_0.c.c.d.yz, vec2<bool>(arg_0.c.d.x, false))) != ~global3.d.x, true, true, (i32(-1i) * -(arg_3 | 1i)) != _wgslsmith_clamp_i32(1i, -arg_2, 1i));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = select(!(!(!vec4<bool>(true, arg_1.x, false, arg_1.x))), select(!vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), vec4<bool>(!(!arg_1.x), arg_1.x, arg_1.x, !(!arg_1.x)), vec4<bool>(true, !(arg_0.c <= global3.d.x), !arg_1.x, true)), select(vec4<bool>(false, arg_1.x, all(vec3<bool>(true, true, true)), arg_1.x), func_2(Struct_5(Struct_4(global3.b, arg_0.b, 12484u, u_input.b), true, Struct_3(global3.a.b, global1.zx, Struct_2(global3.b, Struct_1(global3.a.a, u_input.c), global3.c, vec4<u32>(arg_0.c, 0u, 143879u, arg_0.c), Struct_1(756f, arg_0.a.b)), arg_1, 4294967295u), _wgslsmith_f_op_f32(arg_0.a.a + -1000f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.d.x, 25851u), 9u)]), 38037i, 1i), all(vec4<bool>(true, true, true, true))));
    global3 = Struct_2(arg_0.a, global3.a, u_input.c.x, vec4<u32>(14774u, firstLeadingBit(~(~4294967295u)), arg_0.c, _wgslsmith_add_u32(firstTrailingBit(88749u), select(116187u, _wgslsmith_dot_vec3_u32(global3.d.xzz, global3.d.wxx), arg_0.a.a > arg_0.a.a))), global3.a);
    global0 = array<f32, 9>();
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.a, arg_0.a.a), _wgslsmith_f_op_f32(abs(1673f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-139f))))), -112f), -497f);
    var var_2 = arg_0;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 9>();
    let var_0 = Struct_2(func_1(Struct_4(global3.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global3.d.x, 9u)], 1070f, -1000f, -320f) - vec4<f32>(global0[_wgslsmith_index_u32(global3.d.x, 9u)], -1000f, 1021f, 952f)), vec4<f32>(global3.a.a, global0[_wgslsmith_index_u32(0u, 9u)], global3.e.a, global3.a.a))), ~(0u << (global3.d.x % 32u)), _wgslsmith_add_i32(global3.a.b.x, max(global3.e.b.x, u_input.b))), vec3<bool>(abs(-8004i) <= (global3.a.b.x << (4294967295u % 32u)), all(vec2<bool>(true, false)) || true, any(vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1115f + global0[_wgslsmith_index_u32(23893u, 9u)])) - _wgslsmith_div_f32(1907f, -497f)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.e.b.x, -1i), vec2<i32>(global1.x, 1i))), abs(global3.b.b << (vec2<u32>(15919u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(u_input.c ^ global3.e.b, u_input.c))), abs(2147483647i), vec4<u32>(min(_wgslsmith_mod_u32(111298u, 4294967295u), global3.d.x), 1u, 16718u, global3.d.x) & vec4<u32>(~_wgslsmith_add_u32(26245u, global3.d.x), ~global3.d.x & 27856u, _wgslsmith_div_u32(global3.d.x, global3.d.x), countOneBits(global3.d.x)), global3.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.a.a, global0[_wgslsmith_index_u32(35438u, 9u)], -400f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.e.a, var_0.b.a, global0[_wgslsmith_index_u32(1u, 9u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, -196f, -268f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e.a, global3.a.a, var_0.a.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 9u)], 1000f))))));
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_1.yz);
    global1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_sub_i32(1i, -18345i), 0i, _wgslsmith_clamp_i32(37493i, var_0.b.b.x, 1i))), -vec3<i32>(func_1(Struct_4(Struct_1(global0[_wgslsmith_index_u32(1017u, 9u)], vec2<i32>(u_input.b, global3.b.b.x)), vec4<f32>(global0[_wgslsmith_index_u32(0u, 9u)], -106f, global0[_wgslsmith_index_u32(4539u, 9u)], global3.a.a), global3.d.x, global1.x), vec3<bool>(false, false, true)).b.x, 1i, 0i)), vec3<i32>(_wgslsmith_div_i32(~(-global3.b.b.x), firstTrailingBit(global1.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global3.a.b.x, 1i, 0i, 1i) & ~vec4<i32>(global1.x, global3.e.b.x, -15631i, var_0.e.b.x), reverseBits(vec4<i32>(var_0.b.b.x, var_0.c, -1i, -2522i) >> (vec4<u32>(73592u, 45134u, global3.d.x, global3.d.x) % vec4<u32>(32u)))), 40188i));
    var var_4 = Struct_5(Struct_4(var_0.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.a, -1000f, 1000f, global3.b.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 938f, 272f) + vec4<f32>(global3.b.a, -1400f, -1328f, -451f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, 1721f, 571f, var_3.x), vec4<f32>(var_1.x, var_0.e.a, 1861f, -692f)))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), true))), 0u, _wgslsmith_dot_vec2_i32(-global1.zz, global3.a.b)), false, Struct_3(vec2<i32>(min(func_1(Struct_4(Struct_1(var_0.b.a, vec2<i32>(41319i, -19407i)), vec4<f32>(1049f, global3.b.a, var_3.x, -544f), var_0.d.x, -1i), vec3<bool>(true, false, true)).b.x, max(-2147483647i, -2147483647i)), ~reverseBits(u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-50944i, abs(0i)), -vec2<i32>(global1.x, 1i) >> (~vec2<u32>(0u, var_0.d.x) % vec2<u32>(32u))), Struct_2(var_0.e, Struct_1(_wgslsmith_f_op_f32(var_1.x + var_0.b.a), var_0.e.b), 38896i, global3.d, Struct_1(_wgslsmith_f_op_f32(540f * global0[_wgslsmith_index_u32(var_0.d.x, 9u)]), ~vec2<i32>(u_input.b, 22537i))), func_2(Struct_5(Struct_4(Struct_1(821f, u_input.c), vec4<f32>(var_0.e.a, 1067f, 383f, -2216f), 4294967295u, var_0.e.b.x), true, global2[_wgslsmith_index_u32(~1u, 8u)], var_3.x), _wgslsmith_f_op_f32(255f - _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_clamp_i32(~(-15434i), firstTrailingBit(var_0.b.b.x), ~(-2147483647i)), ~(~54632i)).xxx, _wgslsmith_add_u32(0u, ~0u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -299f))));
    var var_5 = var_4.c.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b, 4294967295u, ~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.d.x, var_0.d.x), var_4.a.c)), 31318i, vec3<u32>(_wgslsmith_add_u32(~var_0.d.x, global3.d.x), 4294967295u >> (var_4.a.c % 32u), var_4.a.c));
}

