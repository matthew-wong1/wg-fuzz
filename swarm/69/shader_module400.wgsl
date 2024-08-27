struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(4017i);

var<private> global1: array<vec2<u32>, 3>;

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<i32>(1858i, -25064i, 2147483647i), 6468i, Struct_1(-1i, 0u, vec2<f32>(-877f, 1000f), vec3<u32>(32325u, 2502u, 60233u), 1u), vec2<u32>(0u, 8988u), 16631u), Struct_2(vec3<i32>(-9287i, 13768i, i32(-2147483648)), 2147483647i, Struct_1(2147483647i, 1u, vec2<f32>(-224f, -1436f), vec3<u32>(0u, 1u, 0u), 29384u), vec2<u32>(26805u, 71766u), 14539u));

var<private> global3: Struct_2;

var<private> global4: Struct_1 = Struct_1(0i, 4294967295u, vec2<f32>(-1565f, -467f), vec3<u32>(1u, 14972u, 8197u), 115154u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_2, 2>();
    let var_0 = -global3.a.x;
    global1 = array<vec2<u32>, 3>();
    var var_1 = arg_0;
    let var_2 = -369f;
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = reverseBits(-(~_wgslsmith_sub_vec3_i32(firstLeadingBit(global3.a), ~vec3<i32>(2147483647i, 1i, global3.b))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.c, vec2<f32>(global4.c.x, global4.c.x), true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.c)))))));
    var var_3 = 4294967295u;
    var_1 = max(_wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, global4.a, arg_1.a), vec3<i32>(0i, 1i, -53i)), ~global3.a) >> (reverseBits(~u_input.b >> (~vec3<u32>(0u, 38219u, var_0.e) % vec3<u32>(32u))) % vec3<u32>(32u)), -vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 53732u), 1u)], _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, arg_1.a, 447i, var_0.a), vec4<i32>(41110i, global3.a.x, u_input.a, 2147483647i), vec4<i32>(var_0.a, var_0.a, -55168i, arg_1.a)), max(vec4<i32>(arg_1.a, global0[_wgslsmith_index_u32(u_input.c, 1u)], arg_0.a, arg_0.a), vec4<i32>(global4.a, 53239i, 2147483647i, var_1.x))), global4.a));
    return false;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = vec3<bool>(true, false, func_3(global3.c, Struct_1(-firstTrailingBit(-17337i), global4.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.c.c.x, global3.c.c.x))) - global3.c.c), vec3<u32>(4294967295u, 19522u, ~1u), ~25444u)));
    var var_1 = Struct_2(vec3<i32>(arg_0.x, -1i, _wgslsmith_clamp_i32(0i, -2147483647i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 1u)], 27108i, -29259i) & _wgslsmith_mod_i32(8071i, 1i))), u_input.a, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 11570i) >> (vec2<u32>(u_input.c, 29598u) % vec2<u32>(32u)), global3.a.xy), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(-global4.c.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.c.c + vec2<f32>(global3.c.c.x, global4.c.x)) * global4.c)), global4.d, ~(~53146u)), ~(~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), global3.c.d.zx))), global3.e);
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b), var_1.c.d.x) ^ 43586u, 2u)];
    global0 = array<i32, 1>();
    global2 = array<Struct_2, 2>();
    return ~abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(12085u, 1u, global4.d.x), ~vec3<u32>(4294967295u, 4294967295u, 8206u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global4.e, global3.d.x, global3.e), vec3<u32>(42741u, u_input.c, var_1.d.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    global1 = array<vec2<u32>, 3>();
    global2 = array<Struct_2, 2>();
    global1 = array<vec2<u32>, 3>();
    global3 = Struct_2(min(vec3<i32>(-29487i, ~arg_0.b, u_input.a), -_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(arg_3.a, vec3<i32>(global0[_wgslsmith_index_u32(1u, 1u)], 1i, -20308i)), ~vec3<i32>(-1i, -15190i, 47525i), -arg_3.a)), global4.a, arg_0.c, firstLeadingBit(global3.d), _wgslsmith_clamp_u32(arg_0.e >> (reverseBits(abs(arg_2.d.x)) % 32u), firstTrailingBit(_wgslsmith_div_u32(global4.d.x ^ arg_0.d.x, select(arg_3.e, 37383u, false))), ~0u));
    var var_0 = ~(_wgslsmith_add_u32(55567u, _wgslsmith_mod_u32(1u, firstTrailingBit(global4.b))) & 0u);
    return global3.d;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(-129f == arg_1.c.c.x, true)), vec2<bool>(true, true), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(308f, global3.c.c.x, arg_1.c.c.x, global4.c.x), vec4<f32>(arg_2, 1000f, 354f, arg_2)))), vec4<f32>(arg_2, _wgslsmith_div_f32(global4.c.x, -2422f), _wgslsmith_f_op_f32(-679f * _wgslsmith_f_op_f32(-139f - global3.c.c.x)), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(round(-250f)))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(512f, _wgslsmith_f_op_f32(636f * global4.c.x))))));
    var var_3 = select(select(reverseBits(-vec4<i32>(0i, 42938i, u_input.a, arg_1.c.a) ^ vec4<i32>(39915i, u_input.a, global0[_wgslsmith_index_u32(9505u, 1u)], u_input.a)), vec4<i32>(36589i, u_input.a, arg_1.a.x, 40434i), select(!vec4<bool>(true, var_0.x, false, true), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), -(~(-(~vec4<i32>(39788i, global4.a, 16298i, global3.b)))), select(select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), !vec4<bool>(true, var_0.x, true, false), vec4<bool>(false, var_0.x, var_0.x, false)), vec4<bool>(var_0.x, arg_1.c.c.x >= 1462f, true, !var_0.x), !var_0.x), vec4<bool>(true, true, var_0.x, true), true));
    global1 = array<vec2<u32>, 3>();
    return Struct_2(vec3<i32>(-1i, ~u_input.a, abs(13234i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-_wgslsmith_add_i32(arg_1.b, arg_1.c.a), global3.b), abs(-15706i)), arg_1.c, vec2<u32>(_wgslsmith_clamp_u32(global3.e, global4.d.x, func_2(vec4<i32>(u_input.a, -1i, -2147483647i, 0i), select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x))).x), 11960u), _wgslsmith_div_u32(0u, func_4(global2[_wgslsmith_index_u32(func_2(vec4<i32>(global3.a.x, global0[_wgslsmith_index_u32(arg_1.c.e, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], 2147483647i), vec3<bool>(var_0.x, var_0.x, var_0.x)).x, 2u)], vec3<u32>(global3.c.b, arg_0, 15295u), Struct_1(-1i, 4294967295u, vec2<f32>(arg_1.c.c.x, 2329f), vec3<u32>(arg_0, 1u, u_input.c), global3.e), global2[_wgslsmith_index_u32(4535u, 2u)]).x) >> ((_wgslsmith_sub_u32(0u, global4.b) ^ ~reverseBits(4294967295u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x - -1451f) - global4.c.x)))));
    var var_1 = func_5(~_wgslsmith_add_u32(max(0u, u_input.c ^ 0u), func_1(global2[_wgslsmith_index_u32(global4.b, 2u)]) >> (~55185u % 32u)), Struct_2(global3.a, global3.c.a, global3.c, func_4(Struct_2(max(vec3<i32>(global3.b, 2147483647i, -9696i), vec3<i32>(global0[_wgslsmith_index_u32(19424u, 1u)], 0i, 0i)), _wgslsmith_dot_vec3_i32(global3.a, global3.a), Struct_1(430i, u_input.c, vec2<f32>(-339f, global3.c.c.x), vec3<u32>(global4.b, global3.c.b, global4.b), global4.b), global4.d.xy & vec2<u32>(4294967295u, 32681u), 4294967295u), func_2(vec4<i32>(0i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 1u)], global4.a), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), Struct_1(global3.b, 1u, _wgslsmith_f_op_vec2_f32(-global3.c.c), countOneBits(vec3<u32>(0u, 36064u, 45748u)), global4.d.x >> (global4.e % 32u)), Struct_2(vec3<i32>(45466i, 27592i, 36616i), _wgslsmith_dot_vec2_i32(global3.a.yy, global3.a.zx), global3.c, max(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global4.d.xx), 0u)), global3.e), _wgslsmith_f_op_f32(f32(-1f) * -484f));
    var var_2 = -1i;
    var var_3 = select(vec3<u32>(~global4.e, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b, 7366u, 49000u, 10319u), min(vec4<u32>(34711u, 23621u, global4.b, 1u), vec4<u32>(4294967295u, var_1.e, var_1.e, u_input.c))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 58968u, 1u, var_1.c.d.x), vec4<u32>(var_1.e, var_1.c.b, u_input.b.x, global3.d.x))), 37339u), var_1.c.d, vec3<bool>(all(vec3<bool>(true, true, true)), !(!any(vec4<bool>(true, true, true, false))), func_1(func_5(var_1.c.b, Struct_2(vec3<i32>(global4.a, var_1.b, 2147483647i), global3.a.x, global3.c, var_1.d, 7697u), var_1.c.c.x)) == func_4(Struct_2(global3.a, -37503i, Struct_1(10666i, 38176u, var_1.c.c, vec3<u32>(global4.e, var_1.e, var_1.d.x), var_1.d.x), u_input.b.zx, 0u), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(global3.c.b, var_1.e, 68002u)), var_1.c, func_5(global4.b, global2[_wgslsmith_index_u32(global4.b, 2u)], global4.c.x)).x));
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(func_5(u_input.b.x, global2[_wgslsmith_index_u32(global3.e, 2u)], var_1.c.c.x).c.d.zx >> (~vec2<u32>(4294967295u, 11422u) % vec2<u32>(32u))), ~u_input.b.yy) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(abs(var_1.e), u_input.b.x), ~(24911u | _wgslsmith_dot_vec3_u32(var_1.c.d, u_input.b))), 2u)];
    let var_5 = -611f;
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(firstLeadingBit(var_1.c.d), vec3<u32>(51216u, 4294967295u, var_3.x) << (vec3<u32>(24171u, u_input.c, 94403u) % vec3<u32>(32u)))) | ~(~global3.c.d), global3.c.d), 2u)];
    var var_6 = ~abs(var_1.a.x << (16568u % 32u));
    let var_7 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-785f + global4.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(var_1.a.x, global4.a)) >> (vec2<u32>(~func_2(vec4<i32>(-4451i, 0i, 1i, global0[_wgslsmith_index_u32(16886u, 1u)]), vec3<bool>(false, false, true)).x, var_1.e) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, 379f, -166f, 1000f) * vec4<f32>(1026f, -987f, global3.c.c.x, 565f)))), _wgslsmith_div_vec2_f32(global3.c.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-905f, _wgslsmith_f_op_f32(-var_5))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_7), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_4.c.c.x)), var_4.c.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_7.x)))))), var_7.x);
}

