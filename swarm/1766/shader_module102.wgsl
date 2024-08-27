struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<f32, 3>;

var<private> global2: Struct_3;

var<private> global3: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = Struct_3(19141i);
    global2 = var_0;
    global0 = array<bool, 31>();
    return vec3<u32>(39692u, firstLeadingBit(1u), 0u);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = vec3<f32>(-474f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(708f + _wgslsmith_div_f32(arg_2.b.a.a, _wgslsmith_f_op_f32(861f * global1[_wgslsmith_index_u32(arg_0.c.x, 3u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)), 1660f, any(vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.d.a)) * _wgslsmith_f_op_f32(sign(1344f))), -572f))));
    var var_1 = _wgslsmith_div_u32(arg_0.c.x, _wgslsmith_mod_u32(4294967295u, u_input.b.x));
    var var_2 = vec2<i32>(min(~45481i, abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(72275i, global2.a, 2147483647i, 0i)), vec4<i32>(u_input.a, u_input.a, global2.a, u_input.a)))), ~2147483647i);
    var var_3 = arg_0.b;
    global1 = array<f32, 3>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(674f)), _wgslsmith_f_op_f32(-arg_3.d.b.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_4) -> i32 {
    var var_0 = u_input.b.x;
    var var_1 = -2633f;
    var_0 = u_input.b.x;
    let var_2 = u_input.b.xwx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + 1000f) * global1[_wgslsmith_index_u32(var_2.x, 3u)]))));
    return _wgslsmith_dot_vec3_i32(-vec3<i32>(select(38353i, -2147483647i, true), global2.a, global2.a) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, i32(-1i) * -16944i, arg_1), firstTrailingBit(vec3<i32>(31122i, -1i, 0i))), abs(abs(max(vec3<i32>(u_input.a, 1i, global2.a), vec3<i32>(arg_1, global2.a, 2147483647i)))));
}

fn func_2() -> u32 {
    global3 = false;
    global1 = array<f32, 3>();
    global2 = Struct_3((_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.a, 1i)) << (~(~u_input.b.x) % 32u)) & u_input.a);
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 15981u, 1u, u_input.b.x) >> (vec4<u32>(0u, 4294967295u, 0u, 1u) % vec4<u32>(32u))), 3u)] * _wgslsmith_f_op_f32(-1000f + -2213f))), global1[_wgslsmith_index_u32(1303u << (~reverseBits(_wgslsmith_dot_vec3_u32(u_input.b.wxw, u_input.b.yzx)) % 32u), 3u)], -340f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), 3u)]) - -958f)));
    let var_1 = -func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-587f, -296f, -1305f, 1580f), vec4<f32>(1059f, 2617f, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(6350u, 3u)])) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 3u)], -470f, 1055f, global1[_wgslsmith_index_u32(35260u, 3u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], -830f, 151f, 935f), global0[_wgslsmith_index_u32(u_input.b.x, 31u)])))), firstTrailingBit(-2147483647i), _wgslsmith_f_op_vec2_f32(func_4(Struct_5(true, Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 3u)], vec2<f32>(782f, 489f)), u_input.b.x, vec4<u32>(31010u, u_input.b.x, u_input.b.x, 1u), Struct_1(240f, vec2<f32>(-893f, 164f))), select(vec3<u32>(1u, 4294967295u, u_input.b.x), u_input.b.ywx, vec3<bool>(false, true, false)), select(global0[_wgslsmith_index_u32(0u, 31u)], true, global0[_wgslsmith_index_u32(5402u, 31u)])), Struct_4(Struct_1(816f, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]))), Struct_5(global0[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 31u)], Struct_2(Struct_1(-487f, vec2<f32>(global1[_wgslsmith_index_u32(948u, 3u)], global1[_wgslsmith_index_u32(108448u, 3u)])), u_input.b.x, vec4<u32>(88108u, 58351u, 78063u, 0u), Struct_1(global1[_wgslsmith_index_u32(0u, 3u)], vec2<f32>(180f, 1058f))), func_3(Struct_4(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], vec2<f32>(162f, -1981f))), u_input.b.zy), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 31u)]))), Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 3u)], vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)])), u_input.b.x, abs(u_input.b), Struct_1(263f, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 392f))))), Struct_4(Struct_1(-315f, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)]))));
    return _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.b.x, u_input.b.x, 4420u, u_input.b.x) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, 1115u, 37825u))), u_input.b);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<bool, 31>();
    let var_0 = Struct_3((abs(~u_input.a) | ~abs(1i)) & 33027i);
    let var_1 = 298f;
    global1 = array<f32, 3>();
    let var_2 = arg_0;
    return arg_3.a;
}

fn func_1() -> Struct_4 {
    global1 = array<f32, 3>();
    global2 = Struct_3(u_input.a);
    var var_0 = ~(global2.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(91360i, -1i >> (u_input.b.x % 32u), _wgslsmith_add_i32(1i, global2.a)), vec3<i32>(17052i, global2.a, -2147483647i)));
    let var_1 = -vec4<i32>(global2.a, _wgslsmith_mod_i32(-(~global2.a), 38793i), 2147483647i, -2147483647i);
    let var_2 = func_6(!(!vec3<bool>(global0[_wgslsmith_index_u32(func_2(), 31u)], true, !global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, _wgslsmith_f_op_f32(-1300f - 975f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 3u)]))))), vec2<bool>(true, true), Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 3u)], vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(65455u, 3u)])), _wgslsmith_f_op_f32(select(254f, -495f, false)))), reverseBits(_wgslsmith_mod_u32(1u, 1u)), _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1884f, -965f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(81997u, 3u)], -227f), vec2<f32>(1719f, global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec2<bool>(false, true)))))));
    return Struct_4(func_6(select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(53513u, 31u)])), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(30765u, 31u)], false), global0[_wgslsmith_index_u32(0u, 31u)]), vec3<f32>(global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(82939u, 39811u, u_input.b.x, u_input.b.x), u_input.b), u_input.b.x), 3u)], var_2.b.x, -1553f), select(vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 31u)], any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]))), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(1u, 31u)]), Struct_2(func_6(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(75132u, 31u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -351f)), vec2<bool>(true, true), Struct_2(Struct_1(var_2.a, var_2.b), u_input.b.x, u_input.b, var_2)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.b, func_6(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, -169f, 504f) * vec3<f32>(-373f, 604f, global1[_wgslsmith_index_u32(3165u, 3u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(46067u, 31u)]), true), Struct_2(Struct_1(757f, var_2.b), 61820u, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(-1195f, var_2.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 3>();
    let var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], false), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false), vec2<bool>(true, true)))), select(vec2<bool>(true, !(false & global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), !select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true), all(vec3<bool>(true, global0[_wgslsmith_index_u32(1536u, 31u)], global0[_wgslsmith_index_u32(30164u, 31u)]))), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), true), vec2<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), global1[_wgslsmith_index_u32(1u, 3u)] <= 278f), select(vec2<bool>(true, global0[_wgslsmith_index_u32(37705u, 31u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(9526u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])))), all(vec2<bool>(u_input.b.x >= (1u >> (u_input.b.x % 32u)), all(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(53553u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], true), vec3<bool>(global0[_wgslsmith_index_u32(99224u, 31u)], false, global0[_wgslsmith_index_u32(106753u, 31u)]))))));
    global0 = array<bool, 31>();
    global3 = true;
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(271f)) - 1300f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)] + -334f)))) * _wgslsmith_f_op_f32(floor(-587f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.a, -449f, 628f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 2111f, -1000f), vec3<f32>(-248f, 1781f, global1[_wgslsmith_index_u32(u_input.b.x, 3u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, global1[_wgslsmith_index_u32(u_input.b.x, 3u)]))))), vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], -931f), global1[_wgslsmith_index_u32(u_input.b.x, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2121f - global1[_wgslsmith_index_u32(21008u, 3u)]) * _wgslsmith_f_op_f32(round(var_1.a.b.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), -105f))), -311f));
}

