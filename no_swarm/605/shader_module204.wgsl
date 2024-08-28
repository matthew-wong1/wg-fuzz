struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<i32, 9> = array<i32, 9>(i32(-2147483648), -1i, 64512i, i32(-2147483648), -1i, -29404i, -12531i, 56283i, -26962i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = u_input.a;
    global1 = array<Struct_1, 14>();
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, -332f, 705f))), vec3<i32>(-10463i, global2[_wgslsmith_index_u32(38546u, 9u)], var_0.x) & var_0, vec2<u32>(1u, 1u), ~(~1u), 1f), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(81089u, 1u), vec2<u32>(8990u, 20380u)), ~1u, 0u, 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(5136u, 1u, 1u, 4294967295u)), abs(~vec4<u32>(42113u, 18288u, 1u, 31858u))), 7u)], all(vec4<bool>(true, all(global0[_wgslsmith_index_u32(30678u, 7u)]), true, true))));
    global2 = array<i32, 9>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.e, 1000f, 957f, -125f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.a.e, var_1.a.a.a.x, -745f, var_1.a.a.e), vec4<f32>(var_1.a.a.e, -743f, var_1.a.a.e, var_1.a.a.a.x), vec4<bool>(var_1.a.c.x, var_1.a.c.x, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.a.a.x)), var_1.a.a.e, var_1.a.a.a.x, _wgslsmith_f_op_f32(sign(-192f))), !(!vec4<bool>(var_1.a.c.x, var_1.a.d, true, var_1.a.d)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1350f, -1725f, -1012f, var_1.a.a.e) * vec4<f32>(var_1.a.a.e, 1191f, var_1.a.a.e, 1027f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 344f, -1000f, -693f), vec4<f32>(var_1.a.a.a.x, -1885f, 435f, 1000f), var_1.a.d))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-299f, var_1.a.a.e, 1255f, 295f), vec4<f32>(var_1.a.a.a.x, 1421f, var_1.a.a.a.x, -391f)))))))));
    return max(1u, var_1.a.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = ~vec3<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.a.zy, abs(vec2<i32>(u_input.a.x, 38130i)))), 2147483647i, select(i32(-1i) * -1i, u_input.a.x, true) << (~1u % 32u));
    global0 = array<vec2<bool>, 7>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~max(vec3<u32>(0u, 11848u, 4882u), vec3<u32>(82262u, 4294967295u, 0u)), vec3<u32>(func_3(), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 53068u, 60793u), vec3<u32>(33538u, 55058u, 4294967295u)))), ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(38194u, 0u, 1u), vec3<u32>(48418u, 39477u, 77358u)))) | firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 1u, 8160u), _wgslsmith_mult_u32(0u, 3495u)), 1u)), 14u)];
    let var_2 = var_1.c.x << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.d, 61243u), 20607u >> (1u % 32u)), var_1.c), 4294967295u) % 32u);
    let var_3 = select(firstTrailingBit(0u), func_3(), true);
    return !arg_0.x;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(!vec3<bool>(any(vec3<bool>(true, true, false)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1020f, -1000f)) - _wgslsmith_f_op_f32(trunc(-770f))) * _wgslsmith_f_op_f32(ceil(-1076f)))));
    var var_1 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i ^ global2[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(99361u, 9u)], 32958i), u_input.a.yz), i32(-1i) * -1i, select(0i, -15362i, false)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -85284i, u_input.a.x, global2[_wgslsmith_index_u32(1u, 9u)]), vec4<i32>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(9177u, 9u)], u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], -1i, 2147483647i, 2147483647i)), ~vec4<i32>(u_input.a.x, -1i, -17631i, global2[_wgslsmith_index_u32(0u, 9u)]))) << (1u % 32u));
    var_1 = ~u_input.a.x;
    var var_2 = Struct_4(Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(18144u, 22987u, 20364u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 38399u, 1u), vec3<u32>(4294967295u, 13789u, 1u), vec3<u32>(1u, 48202u, 4294967295u))), 14u)], ~reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), !select(!vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), !global0[_wgslsmith_index_u32(1u, 7u)]), all(vec3<bool>(var_0, true, !var_0))));
    var var_3 = true;
    return var_2.a;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(reverseBits(global2[_wgslsmith_index_u32(14865u, 9u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.a.x, u_input.a.x))), -_wgslsmith_sub_vec2_i32(u_input.a.zy, reverseBits(arg_3.a.b.yy))), -arg_3.a.b.yz, abs(~countOneBits(abs(vec2<i32>(arg_2.x, arg_2.x)))));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    global2 = array<i32, 9>();
    global0 = array<vec2<bool>, 7>();
    global1 = array<Struct_1, 14>();
    return Struct_2(arg_3.a, vec4<u32>(abs(~0u), ~(arg_1.x ^ max(1u, 1u)), arg_3.b.x >> (max(_wgslsmith_mult_u32(53815u, 79235u), arg_1.x << (34106u % 32u)) % 32u), ~1u), select(vec2<bool>(true, true), select(select(global0[_wgslsmith_index_u32(103141u, 7u)], select(vec2<bool>(false, true), vec2<bool>(var_1.x, false), false), arg_3.c.x), func_1().c, global0[_wgslsmith_index_u32(arg_3.b.x, 7u)]), !vec2<bool>(true | var_1.x, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec4<i32>(_wgslsmith_add_i32(-2897i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(select(15196u, firstLeadingBit(26207u), true), 9u)], firstTrailingBit(34451i), _wgslsmith_div_i32(reverseBits(u_input.a.x), _wgslsmith_clamp_i32(58573i, -2147483647i, -2147483647i)))), ~firstTrailingBit(u_input.a.x), u_input.a.x, countOneBits(min(23125i, _wgslsmith_mod_i32(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 9u)])) | -(u_input.a.x & u_input.a.x)));
    global2 = array<i32, 9>();
    let var_2 = Struct_4(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(914u, 9u)], -12309i, ~14342i), reverseBits(var_1.wzw)), ~(~(~vec2<u32>(1u, 47318u))), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(19524u, 1u, 49513u, 64817u), vec4<u32>(1u, 7741u, 6179u, 0u)), ~0u, true), 9u)], _wgslsmith_clamp_i32(abs(1i), ~u_input.a.x, 1689i)), func_1()));
    global1 = array<Struct_1, 14>();
    var var_3 = Struct_2(func_1().a, vec4<u32>(~1u, 63678u & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(69906u, var_2.a.b.x, var_2.a.a.d), vec3<u32>(var_2.a.a.d, 15143u, var_2.a.b.x))), reverseBits(var_2.a.a.c.x) | 13001u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(10106u, var_2.a.a.d, var_2.a.a.d)), vec3<u32>(var_2.a.b.x, var_2.a.b.x, 29408u) << (var_2.a.b.wyz % vec3<u32>(32u)))), select(global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(~34623u, ~var_2.a.b.x), _wgslsmith_mod_u32(~616u, ~var_2.a.b.x), !all(vec4<bool>(var_2.a.c.x, var_2.a.c.x, var_0, var_2.a.d))), 7u)], vec2<bool>(_wgslsmith_f_op_f32(step(var_2.a.a.e, var_2.a.a.a.x)) >= _wgslsmith_f_op_f32(abs(1060f)), any(select(vec3<bool>(var_0, var_2.a.c.x, var_2.a.d), vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, var_2.a.c.x)))), var_2.a.d), false);
    global1 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(3252u << (~(func_1().b.x ^ ~var_3.a.d) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.a.e)) * _wgslsmith_f_op_f32(var_2.a.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)))));
}

