struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-830f, -1000f, 789f), vec3<f32>(-470f, 728f, -2517f), vec3<f32>(1558f, -455f, 243f), vec3<f32>(516f, -436f, -2524f), vec3<f32>(1116f, -967f, 1287f), vec3<f32>(-2335f, -584f, 810f), vec3<f32>(-433f, -194f, 1354f), vec3<f32>(-124f, 554f, 1190f), vec3<f32>(-799f, -429f, 488f), vec3<f32>(762f, 846f, 572f), vec3<f32>(-2236f, -889f, -135f), vec3<f32>(404f, 1000f, -503f), vec3<f32>(-653f, -745f, 1742f), vec3<f32>(629f, -897f, 311f), vec3<f32>(-980f, 2503f, 285f), vec3<f32>(1000f, -710f, -1278f), vec3<f32>(-1652f, 445f, -1000f), vec3<f32>(-897f, 309f, 1045f), vec3<f32>(-163f, -542f, -1580f), vec3<f32>(-298f, 676f, -1112f), vec3<f32>(612f, -322f, -220f), vec3<f32>(-1000f, -320f, -108f), vec3<f32>(508f, 1000f, -324f), vec3<f32>(1737f, -630f, 465f), vec3<f32>(-172f, -954f, -968f), vec3<f32>(721f, -1136f, -899f), vec3<f32>(3218f, 2057f, 1000f), vec3<f32>(-1386f, 1147f, 636f), vec3<f32>(-1562f, 375f, -434f));

var<private> global2: f32 = 1058f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global2 = arg_0.c.x;
    global2 = arg_0.c.x;
    let var_0 = ~firstLeadingBit(i32(-1i) * -2147483647i);
    var var_1 = u_input.c;
    let var_2 = ~u_input.a.x;
    return _wgslsmith_mod_u32(u_input.c, 39736u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_2 {
    global1 = array<vec3<f32>, 29>();
    var var_0 = global0[_wgslsmith_index_u32(func_3(Struct_1(arg_0.d, ~select(2147483647i, -1i, arg_0.a), arg_0.c, true, !vec3<bool>(true, !arg_0.a, arg_0.d)), select(arg_0.d, arg_0.d, arg_0.a)), 5u)];
    let var_1 = Struct_2(Struct_1(true, 1i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1197f), vec2<f32>(-707f, 1228f))))), arg_0.a, vec3<bool>(var_0.e.x, true, arg_0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-38579i, u_input.b.x, u_input.b.x, -2147483647i)), reverseBits(vec4<i32>(-32405i, 2147483647i, 0i, arg_0.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -2622i, 74362i, 11249i) & vec4<i32>(0i, arg_0.b, u_input.b.x, var_0.b), abs(vec4<i32>(var_0.b, 8051i, u_input.b.x, var_0.b))), _wgslsmith_add_i32(arg_0.b, u_input.b.x & 10247i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, arg_0.b, arg_0.b), vec3<i32>(var_0.b, arg_0.b, -2147483647i)) << ((vec3<u32>(34883u, 61604u, 1u) & vec3<u32>(u_input.c, u_input.a.x, 1u)) % vec3<u32>(32u)), ~(u_input.b | u_input.b))), vec4<bool>(any(!var_0.e), !var_0.e.x, arg_0.e.x, false), Struct_1(!(arg_0.d & true), -1i, arg_0.c, all(vec2<bool>(any(vec4<bool>(true, true, arg_0.e.x, false)), var_0.d)), !select(vec3<bool>(false, var_0.e.x, var_0.d), arg_0.e, true)), arg_1.x);
    let var_2 = ~u_input.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)) + _wgslsmith_f_op_f32(arg_0.c.x - var_1.d.c.x)) - 236f);
    return var_1;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global1 = array<vec3<f32>, 29>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-545f)) - _wgslsmith_div_f32(-1497f, -1158f)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_0 = func_2(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 5u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1803f, 245f, 584f)))));
    let var_1 = func_2(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(func_3(func_2(global0[_wgslsmith_index_u32(0u, 5u)], vec3<f32>(-1000f, var_0.d.c.x, var_0.d.c.x)).a, var_0.c.x), 29u)] * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, 718f, var_0.e))) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, 21612u, 4294967295u), max(~vec3<u32>(0u, u_input.c, 9921u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 121049u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.a.x)))), 29u)])).d;
    return Struct_2(Struct_1(var_0.d.d, func_2(Struct_1(var_1.e.x, 1i, _wgslsmith_f_op_vec2_f32(-var_0.a.c), u_input.a.x <= u_input.c, func_2(global0[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]).c.wzy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(325f, var_0.a.c.x, var_1.c.x))))).a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), 2222f)), !any(vec3<bool>(var_0.d.d, true, var_0.a.e.x)), !(!var_0.a.e)), vec3<i32>(~_wgslsmith_dot_vec3_i32(-var_0.b, firstLeadingBit(vec3<i32>(arg_0.x, var_1.b, var_0.a.b))), -43110i, _wgslsmith_dot_vec3_i32(abs(var_0.b), vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(u_input.b.x, 38750i)), -1i))), var_0.c, func_2(func_2(func_2(Struct_1(false, -53861i, vec2<f32>(485f, 276f), false, var_1.e), global1[_wgslsmith_index_u32(2560u, 29u)]).a, _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.c, 29u)] * global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(17071u, u_input.a.x), 29u)])).a, vec3<f32>(_wgslsmith_div_f32(1723f, -139f), -328f, _wgslsmith_f_op_f32(f32(-1f) * -2422f))).a, var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = 616f;
    global0 = array<Struct_1, 5>();
    let var_1 = u_input.b.zz;
    let var_2 = func_1(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~(vec2<i32>(var_1.x, var_1.x) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), ~(~u_input.b.xx), var_1), var_1));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.d.c + var_2.a.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-200f, -1042f)))), false)), vec2<f32>(1f, func_2(var_2.d, global1[_wgslsmith_index_u32(u_input.c << (4294967295u % 32u), 29u)]).d.c.x)) - vec2<f32>(-621f, _wgslsmith_div_f32(1675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e - 1000f) * 927f))));
    global1 = array<vec3<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(select(max(vec2<i32>(var_2.b.x, var_2.b.x), var_2.b.xz ^ vec2<i32>(var_1.x, var_1.x)), vec2<i32>(i32(-1i) * -1i, ~(-25923i)), all(vec2<bool>(false, var_2.d.e.x)) & select(true, false, var_2.c.x)), var_2.b.xx), u_input.b.x);
}

