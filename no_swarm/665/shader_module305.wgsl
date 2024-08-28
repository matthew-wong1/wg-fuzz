struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 192f;

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: vec3<bool>;

var<private> global3: array<i32, 10>;

var<private> global4: array<u32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-1000f));
    global2 = vec3<bool>(true, !global2.x == global2.x, global2.x);
    let var_1 = Struct_1(~1i, 1f, 4294967295u, _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(112994u, 79751u, 58552u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6570u, 6u)], 6u)], 6u)], 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)]), vec3<u32>(global4[_wgslsmith_index_u32(1u, 6u)], 0u, 40182u)), ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global4[_wgslsmith_index_u32(21597u, 6u)], 56468u, global4[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)], 1u), vec3<u32>(44685u, 2756u, global4[_wgslsmith_index_u32(4294967295u, 6u)]))), reverseBits(~vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(67859u, 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 6u)], 6u)]))));
    global4 = array<u32, 6>();
    global2 = select(!(!vec3<bool>(global2.x, true, true)), !select(!(!vec3<bool>(global2.x, true, global2.x)), !select(vec3<bool>(false, global2.x, true), vec3<bool>(false, false, global2.x), global2.x), !global2.x), select(!select(vec3<bool>(true, true, true), !vec3<bool>(false, global2.x, false), vec3<bool>(false, global2.x, global2.x)), select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), 4294967295u == var_1.c), vec3<bool>(!global2.x, true, global2.x), true), global2.x));
    return var_1.c;
}

fn func_2() -> Struct_5 {
    global4 = array<u32, 6>();
    let var_0 = Struct_5(any(select(select(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(true, true, false, global2.x), global2.x), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(global2.x, false, global2.x, global2.x), false), global2.x != global2.x), !(!vec4<bool>(true, global2.x, global2.x, global2.x)), all(vec4<bool>(false, true, global2.x, global2.x)))), vec3<u32>(~func_3(), global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(81567u, 6u)] ^ 24562u, 0u), 6u)], 6u)], ~global4[_wgslsmith_index_u32(select(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)] & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(73247u, 6u)], 6u)], 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u | global4[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], true), 6u)]), firstLeadingBit(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(min(global4[_wgslsmith_index_u32(0u, 6u)], 1u), countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14247u, 6u)], 6u)])), 10u)]), firstTrailingBit(vec3<u32>(firstTrailingBit(4294967295u), ~59864u, global4[_wgslsmith_index_u32(~1882u, 6u)]) & abs(select(vec3<u32>(23163u, global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(5144u, 6u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(91453u, 6u)], 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 67088u), vec3<bool>(global2.x, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-720f, 747f, 1794f))), vec3<f32>(1f, 1f, 1f))));
    var var_1 = _wgslsmith_dot_vec2_u32(var_0.d.xy, vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c.wzw, var_0.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(33760u, global4[_wgslsmith_index_u32(62405u, 6u)], 27739u), select(vec3<u32>(8135u, var_0.d.x, var_0.d.x), var_0.c.zwx, true) ^ ~vec3<u32>(4294967295u, 40640u, 58877u))));
    global4 = array<u32, 6>();
    let var_2 = Struct_4(vec4<u32>(70630u, _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.c.x, 6u)], 6u)] & 59319u, var_0.c.x, 4294967295u), _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(4294967295u, 6u)], 79305u), select(global4[_wgslsmith_index_u32(~664u, 6u)], ~5800u, all(vec4<bool>(false, true, global2.x, true)))) | _wgslsmith_sub_vec4_u32(vec4<u32>(12851u & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10819u, 6u)], 6u)], 28930u, 4294967295u, firstTrailingBit(var_0.b.x)), ~abs(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 6u)], var_0.d.x, global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(var_0.d.x, 6u)]))), global2.x);
    return Struct_5(var_0.a, ~abs(vec3<u32>(1u, 0u, global4[_wgslsmith_index_u32(1u, 6u)]) & var_0.c.wyw), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global4[_wgslsmith_index_u32(var_2.a.x, 6u)], var_0.d.x, global4[_wgslsmith_index_u32(var_2.a.x, 6u)], 0u)), ~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2205u, 6u)], 10u)], vec4<u32>(55309u, 20196u, var_2.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)]), var_0.c)), global1[_wgslsmith_index_u32(var_2.a.x, 10u)]), var_0.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(var_0.e.x)), -1404f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    global1 = array<vec4<u32>, 10>();
    var var_0 = -(reverseBits(-1i) >> ((~(global4[_wgslsmith_index_u32(4294967295u, 6u)] | 38986u) >> (arg_1 % 32u)) % 32u));
    var var_1 = func_2();
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(arg_1, 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().e.x)) + var_1.e.x), arg_2.a.x, ~arg_2.a.zxz);
    global2 = !(!select(!(!vec3<bool>(true, true, global2.x)), select(vec3<bool>(true, arg_2.b, false), !vec3<bool>(global2.x, true, arg_2.b), select(vec3<bool>(true, arg_2.b, true), vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, true, global2.x))), !(!vec3<bool>(global2.x, true, var_1.a))));
    return arg_2;
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> i32 {
    let var_0 = global2.x;
    global3 = array<i32, 10>();
    return 1959i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-266f + 746f))), 1f)));
    var var_0 = select(func_4(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, -719f, 883f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(899f, -1272f, 1328f) + vec3<f32>(241f, 1626f, 1067f))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, 1u), 6u)], Struct_4(abs(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 10u)]), false), -12185i), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-952f, -488f, -770f))), ~35493u, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1700f, 2700f)), func_3(), func_1(vec3<f32>(633f, -508f, 585f), 4294967295u, Struct_4(global1[_wgslsmith_index_u32(1u, 10u)], global2.x), 1i), -2147483647i >> (global4[_wgslsmith_index_u32(1u, 6u)] % 32u)), global3[_wgslsmith_index_u32(reverseBits(12584u) | _wgslsmith_mod_u32(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12154u, 6u)], 6u)], 6u)]), 10u)]).b), abs(1i), func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f * -1084f) - -190f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f * -957f)), 1000f), 23897u, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1152f, -1541f) + vec3<f32>(-429f, 1000f, 1435f)), firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(33529u, 10u)], global1[_wgslsmith_index_u32(29341u, 10u)]), 6u)]), Struct_4(~vec4<u32>(1u, 59563u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(310u, 6u)], 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), func_2().a), ~u_input.a.x), _wgslsmith_dot_vec4_i32(-firstTrailingBit(u_input.b), min(u_input.b, -vec4<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8936u, 6u)], 6u)], 10u)], -1787i, u_input.b.x, u_input.a.x)))).b);
    var var_1 = any(vec4<bool>(!all(!vec2<bool>(global2.x, false)), global2.x, global2.x, true));
    let var_2 = vec2<f32>(1357f, 583f);
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(172f, _wgslsmith_f_op_f32(step(923f, var_2.x)), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, global2.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, 1415f, var_2.x))))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(115f, var_2.x, var_2.x), vec3<f32>(var_2.x, 161f, var_2.x)), vec3<f32>(var_2.x, 147f, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(230f + 276f), -841f, 180f))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(71345u, 6u)], 6u)], 0u, 4294967295u) ^ vec3<u32>(53658u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10162u, 6u)], 6u)], 0u)), _wgslsmith_add_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(1u, 6u)], 0u, 0u), vec3<u32>(91295u, global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(43793u, 6u)]))), vec3<u32>(9636u, _wgslsmith_add_u32(firstLeadingBit(44983u), ~31228u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(0u, 0u)), 6u)], 6u)])), Struct_4(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, 963f, var_2.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 0u), global1[_wgslsmith_index_u32(0u, 10u)]), Struct_4(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(116368u, 6u)], 10u)], global2.x), global3[_wgslsmith_index_u32(4294967295u, 10u)]).a >> (_wgslsmith_div_vec4_u32(vec4<u32>(79460u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], global4[_wgslsmith_index_u32(1u, 6u)], 15481u), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], global4[_wgslsmith_index_u32(13956u, 6u)], 19454u)) % vec4<u32>(32u)), var_2.x < _wgslsmith_f_op_f32(f32(-1f) * -822f)), -35426i);
    var_0 = abs(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(~1305u, _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43478u, 6u)], 6u)], 6640u), 54686u), 11859u), 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec2_u32(var_3.a.xw, var_3.a.wx), ~var_3.a.x, false), 10u)]);
}

