struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(584f, -985f, 366f, 1107f, 496f, -968f, -957f, -490f, 1196f, 554f, 779f, -195f, 2970f, 263f, 371f);

var<private> global1: array<Struct_4, 8>;

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(1u, 4294967295u), vec2<u32>(16529u, 1u), vec2<u32>(1u, 14564u), vec2<u32>(10621u, 74853u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 101406u));

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_1.zy;
    var var_1 = ~(~_wgslsmith_clamp_u32(~min(28694u, 38646u), max(_wgslsmith_div_u32(arg_0.e.x, 4294967295u), ~arg_0.e.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.e.x, 17488u), arg_2.e.x)));
    let var_2 = !select(vec2<bool>(any(global3.c.zy) | true, true & !global3.a.x), select(select(!vec2<bool>(global3.c.x, false), vec2<bool>(global3.a.x, global3.c.x), true), vec2<bool>(true, true), select(select(vec2<bool>(global3.a.x, global3.a.x), vec2<bool>(global3.a.x, true), global3.c.yz), vec2<bool>(global3.a.x, true), !global3.c.zx)), select(global3.c.zz, global3.c.yy, global3.a.x));
    var var_3 = global3.d;
    let var_4 = arg_0;
    return vec3<bool>(!var_2.x, any(vec2<bool>(_wgslsmith_f_op_f32(-arg_1.x) > arg_2.d, any(var_2))), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<f32> {
    var var_0 = ~_wgslsmith_mult_u32(firstLeadingBit(~47768u), abs(1u)) | ((_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(26118u, 6292u)), 1u) ^ _wgslsmith_clamp_u32(abs(26162u), select(4294967295u, 44526u, arg_2.x), 62870u)) & 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.d.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.d.b - _wgslsmith_f_op_vec4_f32(arg_1.d.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(1718f, -620f, -1000f, arg_1.d.b.x) - global3.d.b)))));
    var var_2 = Struct_3(-firstLeadingBit(global3.d.a), arg_1);
    var_2 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(max(u_input.b, _wgslsmith_mult_vec2_i32(vec2<i32>(-40376i, -37556i), u_input.b)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, u_input.b), -vec2<i32>(0i, 2147483647i))), abs(vec2<i32>(countOneBits(2147483647i), min(var_2.b.d.a, 36191i)))), var_2.b);
    let var_3 = abs(firstTrailingBit(-20699i) | -1i);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.b)) - 805f), _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(trunc(125f))), _wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(f32(-1f) * -445f))))), var_1);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_4, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(!global3.a, Struct_2(select(!vec4<bool>(true, global3.c.x, global3.c.x, false), select(!global3.a, vec4<bool>(false, false, true, true), all(vec3<bool>(global3.a.x, false, global3.a.x))), select(vec4<bool>(global3.a.x, global3.c.x, global3.a.x, global3.a.x), !vec4<bool>(true, global3.c.x, global3.c.x, global3.c.x), true | global3.c.x)), -411f, func_3(global1[_wgslsmith_index_u32(arg_0.x, 8u)], vec3<f32>(-694f, 312f, _wgslsmith_f_op_f32(step(-1096f, 979f))), Struct_4(_wgslsmith_f_op_f32(ceil(global3.b)), reverseBits(-2147483647i), global3.d.b.x, _wgslsmith_f_op_f32(-global3.d.b.x), arg_0.zy & vec2<u32>(101441u, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], -348f, -1000f, -525f))), Struct_1(select(-36045i, ~arg_1, global3.a.x & true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1235f, -489f, 1210f, -1144f)))), global3.a.xw));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -722f), 18568i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(376f * global0[_wgslsmith_index_u32(1u, 15u)]))), _wgslsmith_f_op_vec4_f32(func_4(select(global3.a, select(!vec4<bool>(true, false, false, global3.a.x), vec4<bool>(global3.c.x, global3.c.x, true, false), select(vec4<bool>(global3.c.x, global3.a.x, true, true), global3.a, global3.a.x)), global3.a), Struct_2(select(global3.a, select(global3.a, vec4<bool>(global3.c.x, true, false, false), global3.c.x), global3.c.x), _wgslsmith_f_op_f32(global3.b + global3.b), select(!global3.c, select(vec3<bool>(false, true, global3.a.x), vec3<bool>(false, global3.a.x, global3.a.x), true), true), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1443f, -570f, global3.d.b.x, -745f))))), vec2<bool>(false, !all(global3.a.yz)))).x, arg_0.xz);
    let var_2 = 23557u;
    var var_3 = Struct_1(arg_1, var_0);
    return Struct_2(global3.a, -361f, select(!global3.c, global3.a.wxw, global3.c), global3.d);
}

fn func_1(arg_0: u32) -> u32 {
    global3 = func_2(~abs(vec3<u32>(27741u, ~56176u, _wgslsmith_sub_u32(0u, arg_0))), select(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, 2147483647i), global3.d.a), true));
    global2 = array<vec2<u32>, 7>();
    var var_0 = vec3<bool>(true | !(_wgslsmith_f_op_f32(round(global3.d.b.x)) == global3.b), select(func_2(~(~vec3<u32>(4294967295u, 752u, arg_0)), global3.d.a).c.x, global3.c.x, !global3.a.x), func_2(~(~select(vec3<u32>(791u, 1u, 27114u), vec3<u32>(4294967295u, 8456u, arg_0), global3.a.zyy)), u_input.a).c.x);
    var var_1 = _wgslsmith_div_u32(58944u, ~reverseBits(arg_0 | arg_0));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.b.x, 1469f, global3.d.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d.b.zxw)))));
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.e.x;
    let var_1 = func_2(vec3<u32>(~1u, 1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.e.x, _wgslsmith_div_u32(4294967295u, arg_0.e.x)), max(arg_0.e.x, arg_0.e.x))), -arg_1.x);
    var var_2 = select(vec2<bool>(all(!global3.c.yx), false & global3.a.x), !var_1.c.zz, select(func_2(~(~vec3<u32>(0u, arg_0.e.x, 71598u)), var_1.d.a).c.xz, global3.c.yx, false));
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(~(~global2[_wgslsmith_index_u32(arg_0.e.x, 7u)])), vec2<u32>(~_wgslsmith_sub_u32(arg_0.e.x, 6286u), arg_0.e.x)), vec2<u32>(1u, 1u));
    var var_3 = Struct_1(func_2(~firstTrailingBit(~vec3<u32>(29697u, arg_0.e.x, arg_0.e.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(10835i, reverseBits(-2147483647i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(61898i, -34679i), vec2<i32>(global3.d.a, u_input.c))), select(vec4<i32>(var_1.d.a, -2764i, arg_0.b, 43792i), firstTrailingBit(vec4<i32>(-2147483647i, 13501i, 11174i, 14397i)), select(global3.a, vec4<bool>(var_2.x, global3.c.x, true, true), vec4<bool>(false, false, var_1.a.x, false))))).d.a, _wgslsmith_f_op_vec4_f32(-global3.d.b));
    return func_2(~(~(~firstLeadingBit(vec3<u32>(arg_0.e.x, 0u, 1u)))), -1i).d;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(arg_2.e.x), arg_2.e.x), 15u)];
    var var_1 = vec4<u32>(~1u, _wgslsmith_sub_u32(~(arg_2.e.x & ~arg_2.e.x), arg_2.e.x), 1u, select(~firstTrailingBit(arg_2.e.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_2.e.x), _wgslsmith_mult_u32(33443u, ~arg_2.e.x)), any(global3.a)));
    var var_2 = ~min(abs(vec2<i32>(arg_1.a >> (var_1.x % 32u), ~14494i)), vec2<i32>(global3.d.a, _wgslsmith_sub_i32(firstTrailingBit(arg_2.b), countOneBits(7499i))));
    var var_3 = func_2(~_wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, 36296u, var_1.x), var_1.zzw | vec3<u32>(arg_2.e.x, 0u, var_1.x)), var_1.wwy), -46879i);
    var var_4 = -vec4<i32>(u_input.c << ((var_1.x >> (~4294967295u % 32u)) % 32u), firstTrailingBit(global3.d.a), ~func_5(Struct_4(1934f, 2147483647i, -824f, global0[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<i32>(global3.d.a, arg_1.a, u_input.a, arg_1.a)).a, _wgslsmith_div_i32(-func_5(Struct_4(global3.b, arg_2.b, global0[_wgslsmith_index_u32(var_1.x, 15u)], arg_1.b.x, global2[_wgslsmith_index_u32(42101u, 7u)]), vec4<i32>(var_2.x, arg_2.b, var_3.d.a, arg_1.a)).a, -(1i & u_input.c)));
    return Struct_3(-1i, func_2(vec3<u32>(1u, abs(arg_2.e.x), _wgslsmith_add_u32(arg_2.e.x, countOneBits(arg_2.e.x))), _wgslsmith_div_i32(reverseBits(-22034i), firstTrailingBit(~5923i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-(select(_wgslsmith_add_vec4_i32(vec4<i32>(global3.d.a, u_input.a, 1i, 3846i), vec4<i32>(-21355i, global3.d.a, 38736i, u_input.b.x)), vec4<i32>(global3.d.a, global3.d.a, -40008i, 2147483647i), true) | (vec4<i32>(u_input.b.x, -28263i, u_input.c, 2147483647i) ^ ~vec4<i32>(61574i, u_input.b.x, u_input.a, u_input.c))));
    global0 = array<f32, 15>();
    var var_1 = global3.a.x;
    var_1 = true;
    let var_2 = -35730i;
    let var_3 = func_6(!(!(!(!vec3<bool>(global3.a.x, true, global3.a.x)))), func_5(Struct_4(-1335f, -2147483647i, -830f, global0[_wgslsmith_index_u32(func_1(18277u) >> (1u % 32u), 15u)], global2[_wgslsmith_index_u32(~1u >> (1u % 32u), 7u)]), var_0), global1[_wgslsmith_index_u32(1u, 8u)]);
    global2 = array<vec2<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(global3.d.b * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -809f, -404f, _wgslsmith_f_op_f32(var_3.b.d.b.x - -596f))))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 3754u), vec4<u32>(21570u, 56454u, 29u, 4294967295u)) ^ _wgslsmith_sub_u32(~10607u, max(0u, 62498u)), 1u));
}

