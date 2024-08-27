struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global2: array<f32, 1> = array<f32, 1>(460f);

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<u32>(1u, 1u), 4294967295u, Struct_1(-48402i, vec2<u32>(89356u, 39419u), -634f, vec3<bool>(true, false, true), 58903u), Struct_1(i32(-2147483648), vec2<u32>(1u, 4294967295u), 757f, vec3<bool>(true, false, false), 31143u), i32(-2147483648)), Struct_2(vec2<u32>(42089u, 4294967295u), 31462u, Struct_1(49439i, vec2<u32>(28967u, 12870u), 1561f, vec3<bool>(false, false, true), 4294967295u), Struct_1(21096i, vec2<u32>(4294967295u, 0u), -1229f, vec3<bool>(false, false, false), 7496u), 2147483647i), Struct_2(vec2<u32>(1u, 35767u), 4294967295u, Struct_1(-29227i, vec2<u32>(4294967295u, 1u), 2198f, vec3<bool>(true, true, true), 18696u), Struct_1(13072i, vec2<u32>(34057u, 0u), -918f, vec3<bool>(false, false, false), 4294967295u), i32(-2147483648)), Struct_2(vec2<u32>(8583u, 0u), 82451u, Struct_1(-26117i, vec2<u32>(0u, 11086u), 374f, vec3<bool>(true, false, false), 1u), Struct_1(-21747i, vec2<u32>(23342u, 32660u), -1651f, vec3<bool>(true, false, true), 0u), -28041i), Struct_2(vec2<u32>(23382u, 23393u), 0u, Struct_1(-1i, vec2<u32>(41584u, 56456u), -813f, vec3<bool>(true, true, true), 4294967295u), Struct_1(1i, vec2<u32>(1u, 4294967295u), -226f, vec3<bool>(false, false, true), 1u), 7156i), Struct_2(vec2<u32>(4294967295u, 11231u), 4294967295u, Struct_1(-7527i, vec2<u32>(98604u, 38123u), 1029f, vec3<bool>(false, true, false), 55935u), Struct_1(29390i, vec2<u32>(16535u, 73832u), -227f, vec3<bool>(true, true, true), 2932u), -90742i), Struct_2(vec2<u32>(4294967295u, 4294967295u), 35472u, Struct_1(-44337i, vec2<u32>(4294967295u, 4294967295u), 566f, vec3<bool>(false, false, true), 39940u), Struct_1(i32(-2147483648), vec2<u32>(0u, 4294967295u), 920f, vec3<bool>(true, true, false), 4294967295u), 0i), Struct_2(vec2<u32>(9363u, 22989u), 1u, Struct_1(-17475i, vec2<u32>(2118u, 4294967295u), 232f, vec3<bool>(true, false, true), 17052u), Struct_1(-1552i, vec2<u32>(1u, 55963u), -181f, vec3<bool>(true, true, true), 4294967295u), 8642i), Struct_2(vec2<u32>(55772u, 4294967295u), 29436u, Struct_1(0i, vec2<u32>(4294967295u, 48857u), -762f, vec3<bool>(true, false, true), 4294967295u), Struct_1(1i, vec2<u32>(117921u, 37778u), 1466f, vec3<bool>(true, false, false), 0u), -1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = ~(0u | ~_wgslsmith_add_u32(u_input.e.x << (4294967295u % 32u), u_input.a));
    global0 = array<Struct_2, 28>();
    var var_1 = !(!vec2<bool>(true, -917f <= global2[_wgslsmith_index_u32(12393u, 1u)]));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(24823u, 0u), vec2<u32>(u_input.b.x, u_input.d)) & ~vec2<u32>(u_input.e.x, u_input.e.x)), u_input.e.xx), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(reverseBits(0u), _wgslsmith_dot_vec2_u32(u_input.e.zw, u_input.b))), ~min(_wgslsmith_mod_vec2_u32(u_input.b, u_input.e.yy), ~u_input.b)));
    var_0 = _wgslsmith_clamp_u32(74919u, select(65558u, u_input.b.x, all(vec2<bool>(false, false))), u_input.d);
    return u_input.c.zzz;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_2.d;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1399f);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-899f + var_0.c) * 854f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(874f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.e.x, 1u)]) + -141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c - global2[_wgslsmith_index_u32(12913u, 1u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c.c)) * -1253f))));
    var var_3 = Struct_1(~firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_i32(694i, 40705i, -1i))), firstLeadingBit(var_0.b), var_2.x, vec3<bool>(arg_2.d.d.x, select(u_input.c.x > (i32(-1i) * -2147483647i), (-845f > var_0.c) & any(vec4<bool>(var_0.d.x, arg_2.c.d.x, arg_2.c.d.x, true)), all(select(vec2<bool>(var_0.d.x, false), vec2<bool>(arg_2.d.d.x, false), true))), true), abs(~abs(1u)));
    let var_4 = vec2<u32>(~arg_0.x, abs(_wgslsmith_clamp_u32(var_0.e, _wgslsmith_sub_u32(13687u, var_0.b.x), arg_0.x)));
    return min(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), var_3.a), u_input.c.zx) >> (~(var_3.b << (arg_0.yy % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~72578u, 1u)];
    let var_1 = _wgslsmith_div_vec2_i32((reverseBits(u_input.c.yx) | (u_input.c.wx >> (vec2<u32>(u_input.e.x, 86u) % vec2<u32>(32u)))) & u_input.c.wz, func_4(_wgslsmith_mod_vec3_u32(u_input.e.zzw ^ abs(vec3<u32>(1u, u_input.d, 23340u)), select(_wgslsmith_div_vec3_u32(u_input.e.zwx, u_input.e.xyw), ~u_input.e.zxx, !global1[_wgslsmith_index_u32(1u, 17u)])), func_3(true), Struct_2(_wgslsmith_sub_vec2_u32(~u_input.b, select(vec2<u32>(4294967295u, 8449u), u_input.b, vec2<bool>(true, true))), u_input.e.x, Struct_1(u_input.c.x, vec2<u32>(28944u, u_input.e.x), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 1u)])), vec3<bool>(true, false, true), 46049u), Struct_1(u_input.c.x, u_input.e.yx, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(55648u, u_input.b.x, 4294967295u, 979u)), 1u)], global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 17u)], u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(16967i, 2333i, -35603i), vec3<i32>(0i, u_input.c.x, u_input.c.x) | vec3<i32>(u_input.c.x, 0i, u_input.c.x)))));
    global3 = array<Struct_2, 9>();
    var var_2 = Struct_1(10349i, ~firstTrailingBit(~(vec2<u32>(1u, u_input.d) ^ vec2<u32>(u_input.d, u_input.b.x))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, countOneBits(~(~78548u))), 1u)], !global1[_wgslsmith_index_u32(u_input.e.x, 17u)], ~u_input.b.x << (~(~u_input.d) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1150f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_2.b.x, _wgslsmith_div_u32(51132u, 1u)), 1u)] * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(var_2.b.x, 1u)]) * _wgslsmith_f_op_f32(min(841f, -1559f)))), _wgslsmith_f_op_f32(sign(var_2.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-200f, var_2.c, -1371f))))))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(-411f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.b.x, 1u)] * var_3.x))) + var_2.c));
}

fn func_1() -> Struct_2 {
    var var_0 = select(12053u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(57536u, u_input.e.x, 4294967295u, 1u) << (vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.e.x) % vec4<u32>(32u)), ~u_input.e), ~u_input.a), u_input.c.x > u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2[_wgslsmith_index_u32(8692u, 1u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(abs(35458u), 1u)], _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1102f, global2[_wgslsmith_index_u32(15314u, 1u)]) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 1u)], 1617f)))))))));
    let var_2 = Struct_1(-3695i, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x & 69089u, u_input.d), vec2<u32>(u_input.e.x, ~4294967295u)), vec2<u32>(max(1u, abs(u_input.e.x)), 0u)), global2[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(~98583u, 17u)], u_input.d);
    let var_3 = var_2.d;
    let var_4 = countOneBits(u_input.c.x);
    return Struct_2(vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.b.x)), abs(abs(u_input.b.x)), var_2, Struct_1(abs(select(-2147483647i, _wgslsmith_div_i32(var_2.a, u_input.c.x), 48275u <= u_input.e.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, var_2.b | vec2<u32>(var_2.b.x, var_2.b.x)), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 1u)])) * var_1.x)), select(!select(var_2.d, vec3<bool>(var_3.x, false, var_2.d.x), vec3<bool>(var_2.d.x, true, var_2.d.x)), vec3<bool>(true, false, select(var_2.d.x, var_3.x, var_2.d.x)), vec3<bool>(all(vec4<bool>(var_3.x, false, var_2.d.x, true)), false, false)), _wgslsmith_dot_vec3_u32(u_input.e.yxx, ~vec3<u32>(u_input.b.x, 50010u, var_2.e))), -36364i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(530f, var_0.c.c, var_0.c.c, global2[_wgslsmith_index_u32(var_0.b, 1u)]), vec4<f32>(var_0.c.c, -1750f, global2[_wgslsmith_index_u32(1u, 1u)], -757f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-647f, 1502f, 2282f, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]))))))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(floor(-1334f)), _wgslsmith_f_op_f32(round(var_0.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -1961f)));
    let var_2 = func_1();
    global1 = array<vec3<bool>, 17>();
    let var_3 = u_input.c.xwy & (~vec3<i32>(_wgslsmith_add_i32(var_0.d.a, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-74894i, var_2.c.a), vec2<i32>(-8435i, 22472i)), func_1().e) | _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.c.x, var_0.d.a | -21048i, var_2.d.a), u_input.c.wzw));
    global3 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(414f, var_0.c.c, true)), _wgslsmith_f_op_f32(trunc(759f))))), _wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(804f + var_1.x), _wgslsmith_f_op_f32(var_0.c.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)))), -(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, var_2.d.a, var_2.d.a), min(vec3<i32>(-11163i, var_3.x, -1i), u_input.c.wzw))));
}

