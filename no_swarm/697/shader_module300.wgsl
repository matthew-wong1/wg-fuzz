struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<bool, 6>;

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(54783u, 10122u, 1u), vec3<u32>(60458u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 15206u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(115419u, 0u, 1u), vec3<u32>(14084u, 1663u, 15111u), vec3<u32>(12384u, 0u, 45884u), vec3<u32>(4294967295u, 10901u, 39468u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(21117u, 4294967295u, 49735u), vec3<u32>(4294967295u, 48154u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(37869u, 25279u, 24981u), vec3<u32>(0u, 17741u, 0u), vec3<u32>(0u, 37447u, 0u), vec3<u32>(4294967295u, 7891u, 78998u), vec3<u32>(77567u, 0u, 52553u), vec3<u32>(33626u, 7109u, 33056u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 4294967295u, 61437u), vec3<u32>(4294967295u, 10689u, 26032u), vec3<u32>(16981u, 39235u, 1431u), vec3<u32>(14327u, 4294967295u, 44319u), vec3<u32>(69739u, 7867u, 4294967295u), vec3<u32>(1u, 1u, 42087u), vec3<u32>(1u, 0u, 9435u), vec3<u32>(8080u, 1u, 82845u), vec3<u32>(4294967295u, 34331u, 0u), vec3<u32>(4294967295u, 0u, 38370u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(min(~abs(-vec3<i32>(u_input.a, u_input.a, u_input.a)), -(vec3<i32>(-13858i, -2147483647i, u_input.a) & vec3<i32>(u_input.a, 23698i, -2147483647i)) ^ vec3<i32>(_wgslsmith_mod_i32(2749i, 21885i), -2147483647i, u_input.a)), !vec2<bool>(true || all(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(18457u, 6u)], global1[_wgslsmith_index_u32(arg_0, 6u)])), global1[_wgslsmith_index_u32(firstLeadingBit(arg_0), 6u)]), _wgslsmith_f_op_f32(trunc(-685f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(170f, _wgslsmith_f_op_f32(185f - 1530f)), _wgslsmith_f_op_f32(-1192f + _wgslsmith_f_op_f32(max(411f, 1377f))), 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, 746f, -703f, -794f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, -1733f, -1005f, -1188f))), _wgslsmith_div_vec4_f32(vec4<f32>(-461f, 172f, -877f, 598f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1672f, 450f, 1344f), vec4<f32>(348f, -1548f, -1000f, -706f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1862f, 353f, 118f, -618f) - vec4<f32>(-2439f, 436f, -347f, -1081f))))));
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)), any(!select(vec4<bool>(var_0.b.x, false, var_0.b.x, false), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0, 6u)], var_0.b.x, true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0, 6u)], var_0.b.x, var_0.b.x))), var_0.d.x < _wgslsmith_f_op_f32(f32(-1f) * -1155f), true), !select(!select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 6u)], true, true, global1[_wgslsmith_index_u32(arg_0, 6u)]), vec4<bool>(var_0.b.x, true, global1[_wgslsmith_index_u32(4294967295u, 6u)], false), var_0.b.x), vec4<bool>(all(var_0.b), !var_0.b.x, var_0.b.x && true, arg_0 < 58565u), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), var_0.b.x);
    var var_2 = Struct_2(Struct_1(vec3<i32>(countOneBits(_wgslsmith_sub_i32(1i, 1714i)), _wgslsmith_add_i32(u_input.a, min(u_input.a, var_0.a.x)), var_0.a.x), select(!var_0.b, vec2<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, arg_0), 6u)]), select(!var_1.zz, var_1.zz, select(var_0.b, vec2<bool>(false, false), var_0.b))), _wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, var_0.c) - vec3<f32>(var_0.d.x, var_0.e.x, -1620f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), 671f, _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e - var_0.e)))), -45912i, 1000f);
    var var_3 = Struct_1(vec3<i32>(var_2.a.a.x, ~(-2147483647i << (arg_0 % 32u)), ((i32(-1i) * -1i) >> (~arg_0 % 32u)) << (~_wgslsmith_div_u32(arg_0, arg_0) % 32u)), select(vec2<bool>(var_2.a.b.x, true), !select(var_0.b, select(var_0.b, var_2.a.b, global1[_wgslsmith_index_u32(arg_0, 6u)]), false), vec2<bool>(any(select(var_1.wwz, var_1.ywz, var_1.xww)), u_input.a <= ~(-1i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(456f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(211f, var_2.c, false)), _wgslsmith_f_op_f32(117f + var_2.a.e.x), false))), 1000f)), var_0.d, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(min(1436f, 1477f)), _wgslsmith_div_f32(-1237f, _wgslsmith_f_op_f32(-584f * _wgslsmith_f_op_f32(select(990f, -2386f, false))))));
    let var_4 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(-var_2.a.a, select(var_2.a.a, vec3<i32>(var_3.a.x, -1i, 33880i), var_1.wyz)), 37104i), var_0.a), vec2<bool>(true, select(any(!vec3<bool>(var_3.b.x, var_2.a.b.x, var_2.a.b.x)), any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_2.a.b.x, global1[_wgslsmith_index_u32(0u, 6u)], false), vec4<bool>(var_3.b.x, false, var_1.x, var_3.b.x))), true)), var_2.c, vec3<f32>(_wgslsmith_f_op_f32(-var_3.d.x), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(209f, -1342f)), -1029f) - _wgslsmith_f_op_f32(f32(-1f) * -1682f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.d.x))))), var_0.e.x, var_3.c, -439f));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -547f)))));
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(43663u, 6u)];
    global0 = array<Struct_2, 28>();
    global1 = array<bool, 6>();
    var_0 = true;
    var var_1 = !(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 6u)] | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f)) != _wgslsmith_f_op_f32(func_3(~0u))));
    return -241f;
}

fn func_1() -> f32 {
    let var_0 = min(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(0u, ~(~(~17391u))));
    let var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(func_2()));
    global0 = array<Struct_2, 28>();
    let var_2 = ~var_0;
    global2 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_f32(floor(-1568f));
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    global2 = array<vec3<u32>, 29>();
    let var_0 = -(~vec4<i32>(u_input.a, -64526i, -u_input.a, u_input.a)) << (~(~(~(~vec4<u32>(4294967295u, 0u, 1u, 0u)))) % vec4<u32>(32u));
    var var_1 = 1u;
    let var_2 = all(vec4<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, select(49746u, 0u, false)), 6u)], !(global1[_wgslsmith_index_u32(31551u, 6u)] == global1[_wgslsmith_index_u32(75146u, 6u)]), !(global1[_wgslsmith_index_u32(56394u, 6u)] != global1[_wgslsmith_index_u32(1u, 6u)]))) & true;
    let var_3 = global0[_wgslsmith_index_u32(18522u, 28u)];
    return global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u), firstTrailingBit(~59732u))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 29>();
    var var_0 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(ceil(-1244f))), -2475f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-548f, 562f)), -320f))), vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = array<Struct_2, 28>();
    var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f + 1000f)) <= _wgslsmith_div_f32(var_0.a.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(70059i, 2147483647i | _wgslsmith_dot_vec4_i32(min(vec4<i32>(15929i, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, var_0.b, -53725i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.x, var_0.b, var_0.a.a.x, var_0.a.a.x), vec4<i32>(-2147483647i, 1i, var_0.b, u_input.a)))), -24612i, ~abs(~(~vec2<u32>(1u, 3291u))));
}

