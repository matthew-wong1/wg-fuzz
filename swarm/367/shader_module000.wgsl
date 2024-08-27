struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: u32 = 0u;

var<private> global3: array<f32, 1>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 21>();
    global2 = 4294967295u;
    global1 = array<Struct_1, 21>();
    var var_0 = abs(~min(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)], 32194u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(9260u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]) ^ vec3<u32>(25309u, 17365u, 41684u))) << (~(abs(~vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21604u, 19u)], 19u)], 19u)], 20713u)) ^ firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(79685u, 19u)], u_input.d, 4294967295u))) % vec3<u32>(32u));
    let var_1 = arg_2;
    return vec2<bool>(false, select(false, all(vec3<bool>(all(vec4<bool>(false, true, true, false)), true, true)), (arg_0.x << (global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 19u)] % 32u)) <= arg_2.a));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = vec3<bool>(!arg_0, true || any(select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), func_3(vec3<i32>(u_input.c, 2147483647i, u_input.a), global3[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26220u, 19u)], 21u)]))), arg_0);
    let var_1 = countOneBits(vec2<i32>(-1i) * -vec2<i32>(~(-1i), ~2147483647i));
    let var_2 = false;
    let var_3 = Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-549f, 343f))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1.x)))), countOneBits(~max(1u, 21765u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-var_1.x, -54518i), firstTrailingBit(-(~var_1)), vec2<i32>(firstLeadingBit(64384i), u_input.c)), global1[_wgslsmith_index_u32(2628u, 21u)]);
    global1 = array<Struct_1, 21>();
    return select(!(!vec2<bool>(true, any(var_0.zx))), func_3(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(1366i, -2147483647i, 1i), vec3<i32>(-2147483647i, -31952i, var_1.x), vec3<bool>(false, false, arg_0)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, var_3.d.a), vec3<i32>(u_input.c, -5228i, var_1.x))), _wgslsmith_f_op_f32(round(var_3.a.b)), global1[_wgslsmith_index_u32(4294967295u, 21u)]), 740f == _wgslsmith_f_op_f32(min(arg_1.x, var_3.a.b)));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 19u)], 19u)], _wgslsmith_add_u32(1u, ~1u))), 19u)], ~(~11431u));
    global2 = var_0;
    let var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, ~global0[_wgslsmith_index_u32(0u, 19u)], u_input.e, abs(4294967295u)), firstTrailingBit(~vec4<u32>(1u, 40333u, 4294967295u, var_0))), ~(~vec4<u32>(1u, var_0, abs(24788u), countOneBits(var_0))));
    return Struct_1(-min(min(u_input.a, u_input.c), _wgslsmith_add_i32(-1i, u_input.c)) & -u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - global3[_wgslsmith_index_u32(9514u, 1u)]))))) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.b, 1u)] * -1000f)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = false;
    global0 = array<u32, 19>();
    var var_1 = 0i;
    global3 = array<f32, 1>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 491f, global3[_wgslsmith_index_u32(1u, 1u)], 239f), vec4<f32>(-409f, global3[_wgslsmith_index_u32(91796u, 1u)], -410f, 416f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1522f, global3[_wgslsmith_index_u32(u_input.e, 1u)], global3[_wgslsmith_index_u32(44233u, 1u)], 619f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 582f, 205f, arg_0)))), vec4<f32>(747f, 1000f, arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), vec4<bool>(true, true, true, true))), all(vec4<bool>(true, 89011u > _wgslsmith_mult_u32(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 19u)]), true, true))));
    return func_4(select(func_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.yww))), vec2<bool>(!(u_input.a < -1i), true), func_3(-firstTrailingBit(vec3<i32>(u_input.a, 18143i, u_input.a)), -1508f, global1[_wgslsmith_index_u32(0u, 21u)]).x));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    var var_0 = false;
    global0 = array<u32, 19>();
    global1 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.e, 1u)], 511f), _wgslsmith_f_op_f32(917f * global3[_wgslsmith_index_u32(0u, 1u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 144f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 19u)], 1u)]) * vec2<f32>(-362f, -399f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -529f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(241f, global3[_wgslsmith_index_u32(0u, 1u)])))))));
    global0 = array<u32, 19>();
    return vec3<i32>(arg_0.a, (-2147483647i >> (~firstTrailingBit(global0[_wgslsmith_index_u32(0u, 19u)]) % 32u)) | select(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, 1i, 1385i), vec3<i32>(0i, -1i, u_input.c)), ~select(-1i, -38695i, arg_1), true & select(arg_1, false, arg_1)), reverseBits(abs(func_1(_wgslsmith_f_op_f32(max(224f, -1558f))).a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    let var_0 = true;
    global2 = ~(4294967295u & global0[_wgslsmith_index_u32(1u, 19u)]);
    var var_1 = reverseBits(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(19732i, u_input.c, u_input.a)), _wgslsmith_mod_i32(u_input.c, -3098i), ~(~(-48992i)))) | func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1734f))), true);
    let var_2 = ~global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.e) >> (vec2<u32>(1u, u_input.e) % vec2<u32>(32u)), min(vec2<u32>(21178u, u_input.e), vec2<u32>(u_input.e, 1u))) ^ _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)] & u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 53288u, 4294967295u), vec3<u32>(1259u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(242u, 19u)], 19u)], 0u))), ~abs(u_input.d) & ~(global0[_wgslsmith_index_u32(11388u, 19u)] & 59066u)), 19u)];
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11097u, 19u)], 21u)], ~(22082u >> (global0[_wgslsmith_index_u32(0u, 19u)] % 32u)), ~vec2<i32>(_wgslsmith_sub_i32(~0i, select(37268i, var_1.x, true)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, 1i, 1i, u_input.c), vec4<i32>(var_1.x, 28870i, u_input.a, var_1.x))), func_4(!vec2<bool>(!var_0, all(vec3<bool>(false, var_0, false)))));
    let var_4 = select(func_2(true, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.d.b, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_2, 1u)], 447f)), _wgslsmith_f_op_f32(-var_3.a.b))))).x, true, false);
    global2 = ~u_input.d;
    var var_5 = Struct_2(global1[_wgslsmith_index_u32(var_3.b, 21u)], u_input.e, max(vec2<i32>(func_4(vec2<bool>(var_0, true)).a, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(52646i, u_input.a, 0i)), abs(vec3<i32>(0i, -50176i, var_1.x)))), countOneBits(-max(var_3.c, vec2<i32>(28280i, u_input.a)))), Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(52092u, 1u)]))) + global3[_wgslsmith_index_u32(14105u, 1u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-11446i | (_wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.a.a, -23984i), var_5.d.a) | 1i), 43894i, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(var_5.c, vec2<i32>(var_1.x, var_5.a.a), vec2<bool>(false, true)), reverseBits(vec2<i32>(93058i, 2147483647i))), vec2<i32>(-1i) * -vec2<i32>(var_3.d.a, -2830i))));
}

