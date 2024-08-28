struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: f32 = -251f;

var<private> global2: array<vec2<bool>, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(min(abs(~u_input.b), 4294967295u), 24u)], u_input.d.wz, _wgslsmith_f_op_f32(ceil(-1058f)) != _wgslsmith_f_op_f32(-731f - _wgslsmith_f_op_f32(step(1390f, -1111f)))), _wgslsmith_add_vec4_i32(firstLeadingBit(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(793i, 33104i, u_input.a.x, 22699i), u_input.a))), ~u_input.d & abs(vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, 21711i) | vec4<i32>(-1i, 5193i, u_input.d.x, -44048i))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(arg_0.x), 64577u, 36393u), vec3<u32>(~arg_0.x, min(arg_0.x, arg_0.x), arg_0.x)), u_input.b), vec2<i32>(44444i, 1i), Struct_2(global0[_wgslsmith_index_u32(reverseBits(arg_0.x), 24u)], u_input.a.zz, ~18218i <= select(-46295i, abs(u_input.a.x), true)));
    let var_1 = Struct_1(~u_input.b, countOneBits(1u));
    var var_2 = vec4<i32>(~countOneBits(-1i), 6257i, ~u_input.d.x, abs(~_wgslsmith_dot_vec2_i32(u_input.d.wx, u_input.d.zx)) & -2236i);
    let var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, -439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2173f - 440f) + -170f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2438f + 144f) - -1057f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1318f, -1000f)), 114f)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(min(u_input.e & arg_0.x, u_input.c.x)), u_input.e), _wgslsmith_sub_vec2_u32(vec2<u32>(18211u, arg_0.x), vec2<u32>(~var_0.e.a.b, u_input.b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> Struct_3 {
    global2 = array<vec2<bool>, 18>();
    let var_0 = reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.xxw, u_input.d.xwx));
    let var_1 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(4294967295u >> (arg_1 % 32u), countOneBits(u_input.b), ~65753u), _wgslsmith_add_u32(arg_1, 7090u), func_3(max(vec3<u32>(u_input.c.x, 37638u, 1u), vec3<u32>(u_input.c.x, 0u, 14089u))), arg_1)), select(firstTrailingBit(~vec4<u32>(25451u, u_input.c.x, 1u, u_input.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(13138u, 56406u, 4294967295u, arg_1) | (vec4<u32>(0u, arg_1, arg_1, u_input.b) ^ vec4<u32>(arg_1, u_input.b, u_input.b, 4294967295u)), firstLeadingBit(vec4<u32>(4294967295u, 79745u, arg_1, 24432u))), !all(vec4<bool>(true, true, true, true))));
    var var_2 = max(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(-52281i, min(var_0, -1i))), select(u_input.d.x, ~(-1i), select(true, any(vec3<bool>(false, false, true)), true))), arg_0.x);
    let var_3 = vec2<i32>(~1i, select(abs(arg_0.x ^ countOneBits(-1i)), -3666i, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true))));
    return Struct_3(Struct_2(global0[_wgslsmith_index_u32(arg_1, 24u)], vec2<i32>(1i, var_3.x), false), vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(min(24151i, arg_0.x), firstTrailingBit(u_input.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(40812i, 320i), vec2<i32>(-1i, reverseBits(arg_0.x))), arg_0.x, ~(-u_input.d.x)), global0[_wgslsmith_index_u32(1u, 24u)], abs(arg_0), Struct_2(global0[_wgslsmith_index_u32(arg_1, 24u)], vec2<i32>(var_3.x, ~(-38946i) & -var_0), false));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = func_2((vec2<i32>(-1i) * -(~vec2<i32>(-23107i, 2147483647i))) >> (u_input.c % vec2<u32>(32u)), 1u, arg_1);
    let var_1 = Struct_3(func_2(select(~u_input.d.xy << (select(vec2<u32>(var_0.e.a.b, arg_0.x), u_input.c, vec2<bool>(arg_2.x, arg_2.x)) % vec2<u32>(32u)), -firstLeadingBit(var_0.a.b), false), abs(abs(73236u)), arg_1).e, vec4<i32>(u_input.a.x, reverseBits(_wgslsmith_sub_i32(~u_input.a.x, var_0.d.x)), -firstLeadingBit(_wgslsmith_sub_i32(var_0.a.b.x, 0i)), func_2(vec2<i32>(firstLeadingBit(u_input.d.x), ~var_0.d.x), 9984u, -985f).b.x), global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.e, ~var_0.a.a.b)), 24u)], select(var_0.b.zy, firstTrailingBit(abs(vec2<i32>(-2233i, var_0.a.b.x))), !select(vec2<bool>(true, var_0.a.c), vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, true))), Struct_2(Struct_1(arg_0.x, var_0.a.a.b), u_input.a.xx, !func_2(var_0.d, var_0.e.a.a, _wgslsmith_f_op_f32(floor(arg_1))).e.c));
    let var_2 = vec3<u32>(1u, arg_0.x, u_input.e);
    let var_3 = select(vec3<bool>(all(!select(global2[_wgslsmith_index_u32(18617u, 18u)], arg_2, true)), !var_1.e.c, true), vec3<bool>(func_2(countOneBits(abs(vec2<i32>(1i, -32106i))), 58471u, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1, -1000f), arg_1, false))).a.c, arg_2.x, true), var_0.e.c);
    var var_4 = _wgslsmith_f_op_f32(arg_1 + 1588f);
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = !func_1(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c.b, 47452u), vec2<u32>(4294967295u, u_input.b)), min(u_input.c, arg_2.xx)), arg_2.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(462f - 1000f)))), vec2<bool>(select(true, true, arg_1) || false, select(false, true, true))).e.c;
    global0 = array<Struct_1, 24>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1469f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1743f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-964f - 1000f))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1013f);
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(0i, reverseBits(_wgslsmith_mult_i32(-abs(-20397i), _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yy), vec2<i32>(u_input.d.x, u_input.d.x)))), (func_4(func_1(vec2<u32>(u_input.c.x, u_input.b), 807f, global2[_wgslsmith_index_u32(u_input.b, 18u)]), u_input.a.x > -9420i, countOneBits(vec4<u32>(4294967295u, 4294967295u, 3246u, 36286u))) & 2147483647i) & ((_wgslsmith_mult_i32(u_input.a.x, 1i) ^ u_input.a.x) << (u_input.b % 32u)));
    var var_1 = all(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, u_input.c.x), min(_wgslsmith_div_u32(~6671u, u_input.c.x), u_input.c.x)), 18u)]);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-531f, 1778f)), _wgslsmith_f_op_f32(trunc(-330f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -843f)));
    var var_2 = func_1(u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(535f, 1f)))), !select(select(vec2<bool>(false, false), global2[_wgslsmith_index_u32(1u, 18u)], true), global2[_wgslsmith_index_u32(38305u, 18u)], select(global2[_wgslsmith_index_u32(42461u << (u_input.b % 32u), 18u)], vec2<bool>(true, false), true))).e;
    var_1 = !any(global2[_wgslsmith_index_u32(u_input.c.x ^ var_2.a.b, 18u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-606f)), 1000f, -652f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))));
    var var_4 = _wgslsmith_f_op_f32(515f + 1122f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~min(select(vec4<u32>(u_input.c.x, u_input.b, 71887u, u_input.e), vec4<u32>(u_input.b, 1u, 39073u, 7406u), var_2.c), abs(vec4<u32>(18427u, 9339u, var_2.a.a, 70687u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x >> (_wgslsmith_sub_u32(u_input.b, var_2.a.b) % 32u), firstLeadingBit(1i)), var_0.yz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, var_3.x, var_3.x)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.x, var_3.x, var_3.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, 2392f, -1418f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1409f, -823f, -902f))), vec3<bool>(all(vec4<bool>(var_2.c, var_2.c, false, false)), 0i < u_input.a.x, true))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(298f, _wgslsmith_f_op_f32(-var_3.x), -1000f)))));
}

