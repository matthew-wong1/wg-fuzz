struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(31128u, 0u, 1u, 4294967295u, 25077u, 19992u, 1u, 8459u, 4294967295u, 6069u, 4294967295u, 4294967295u, 0u, 1u, 4294967295u, 22840u, 1u, 53267u, 1u, 1u, 40765u, 1u, 4294967295u, 0u, 4294967295u, 36220u, 4294967295u, 43478u, 0u, 4294967295u, 55020u);

var<private> global1: u32;

var<private> global2: i32 = 1894i;

var<private> global3: vec2<f32> = vec2<f32>(-1334f, -245f);

var<private> global4: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 0i, -1i), vec4<i32>(9435i, -40212i, i32(-2147483648), -1i), i32(-2147483648), vec4<i32>(-1i, 0i, 2147483647i, -10067i), Struct_1(vec3<i32>(2147483647i, 24066i, 1i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = global3.x;
    global0 = array<u32, 31>();
    let var_1 = 73u;
    global2 = 167i;
    var var_2 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(global4.d, global4.d), _wgslsmith_div_i32(_wgslsmith_div_i32(29182i, global4.a.x), ~global4.d.x), -1i), max(-1i, -u_input.a >> (var_1 % 32u))), global4.c >> (((_wgslsmith_clamp_u32(var_1, 4294967295u, 25u) >> (_wgslsmith_div_u32(var_1, 0u) % 32u)) << (max(global0[_wgslsmith_index_u32(1u, 31u)] | var_1, ~global0[_wgslsmith_index_u32(var_1, 31u)]) % 32u)) % 32u), ~_wgslsmith_mult_i32(reverseBits(global4.b.x), _wgslsmith_dot_vec4_i32(global4.d, vec4<i32>(u_input.a, 28062i, u_input.a, -4210i)) ^ (global4.b.x << (global0[_wgslsmith_index_u32(4294967295u, 31u)] % 32u))), _wgslsmith_dot_vec3_i32(~global4.a, _wgslsmith_add_vec3_i32(select(global4.b.wyy, global4.a, vec3<bool>(true, false, true)), vec3<i32>(u_input.a, -20446i, global4.d.x))) << (firstLeadingBit(1u) % 32u));
    return 1u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> u32 {
    global0 = array<u32, 31>();
    let var_0 = Struct_4(vec3<i32>(u_input.a, -1i, i32(-1i) * -1i), Struct_2(abs(arg_1.x), 4294967295u, global4.e, all(vec4<bool>(true, arg_2.x, arg_2.x, true))), max(-global4.b, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(global4.e.a.x, 2147483647i, -1i, global4.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global4.d.x, global4.a.x, u_input.a), reverseBits(vec4<i32>(17158i, u_input.a, 25612i, u_input.a)), firstLeadingBit(global4.b)))), Struct_2(1u, global0[_wgslsmith_index_u32(arg_1.x, 31u)], Struct_1(-global4.b.zyz), !(!all(vec2<bool>(arg_2.x, false)))), Struct_1(_wgslsmith_mod_vec3_i32(global4.d.xxz, global4.e.a)));
    let var_1 = false;
    let var_2 = abs(var_0.c.x);
    let var_3 = Struct_4(_wgslsmith_div_vec3_i32(var_0.c.zww, vec3<i32>(9178i, _wgslsmith_sub_i32(max(-2147483647i, global4.e.a.x), 23887i), _wgslsmith_mod_i32(firstLeadingBit(-20458i), i32(-1i) * -1i))), var_0.d, vec4<i32>(firstLeadingBit(1i >> ((arg_1.x | arg_1.x) % 32u)), var_2, 1i, var_0.b.c.a.x), Struct_2(reverseBits(max(arg_1.x, ~arg_1.x)), ~(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(10388u, 31u)], arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_1(vec3<i32>(~(-2147483647i), 0i, max(u_input.a, 2147483647i))), any(vec4<bool>(true, var_0.d.b <= 4294967295u, arg_2.x, global3.x <= arg_0.x))), Struct_1(max(~(~var_0.d.c.a), -(global4.b.yzz & global4.b.zxw))));
    return 0u >> (_wgslsmith_mult_u32(var_3.b.a, _wgslsmith_mod_u32(~4294967295u, firstLeadingBit(arg_1.x))) % 32u);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(firstTrailingBit(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20844u, 31u)], 31u)], 31u)], 1u, global0[_wgslsmith_index_u32(0u, 31u)], 72444u))), vec4<u32>(_wgslsmith_sub_u32(7246u, 0u), global0[_wgslsmith_index_u32(62270u, 31u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 31u)], 31u)], ~87870u)), vec4<u32>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, 219f, -334f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-408f, 171f, global3.x), vec3<f32>(617f, -1839f, -1685f))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(62219u, 31u)], 7122u, 40966u), vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(25819u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)])), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)]), func_3(), 0u), select(vec2<bool>(false, true), vec2<bool>(false, true), any(vec4<bool>(true, true, true, false)))), global0[_wgslsmith_index_u32(~(~1u), 31u)], _wgslsmith_mult_u32((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)] & 28290u) << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 86669u) ^ vec2<u32>(global0[_wgslsmith_index_u32(14292u, 31u)], 1u), firstTrailingBit(vec2<u32>(4294967295u, 31718u)))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18559u, 31u)], 31u)]));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global3.x, global3.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(508f, -317f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1002f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -198f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1759f, 347f)))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1487f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global3.x, global3.x)))))));
    var var_2 = select(vec4<bool>(!(!(2147483647i != global4.a.x)), true, false, false), vec4<bool>(true, true, !any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), vec4<bool>(false, true, true, true));
    let var_3 = (_wgslsmith_mult_vec2_i32(global4.a.xy, select(global4.a.xx, vec2<i32>(-43074i, global4.d.x), var_2.yz)) >> (var_0.wy % vec2<u32>(32u))) ^ global4.b.zz;
    return Struct_3(vec3<i32>(_wgslsmith_clamp_i32(var_3.x, var_3.x, u_input.a), var_3.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.a), _wgslsmith_sub_i32(var_3.x, 20218i)), 51887i)), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0, -2867i, global4.a.x | u_input.a, -29673i >> (global0[_wgslsmith_index_u32(6355u, 31u)] % 32u)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, -30987i, -28093i, global4.b.x), global4.d << (vec4<u32>(0u, 33031u, var_0.x, 0u) % vec4<u32>(32u)), true), ~min(vec4<i32>(arg_0, 35009i, 0i, var_3.x), global4.d))), -arg_0, -vec4<i32>(~var_3.x, u_input.a, -1i, -2147483647i), global4.e);
}

fn func_1() -> vec2<bool> {
    global4 = func_2(-10258i);
    global1 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(87848u, 31u)], 31u)], ~(~0u));
    global0 = array<u32, 31>();
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, abs(firstTrailingBit(u_input.a))), global4.d.zw), vec2<i32>(~(~(-67808i)), countOneBits(~(-global4.b.x))));
    var var_1 = !(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))) | false);
    return vec2<bool>(select(all(vec3<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, true)), u_input.a <= 66585i)), true & select(true, all(vec4<bool>(true, false, true, true)), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -366f;
    global2 = global4.a.x;
    let var_1 = !func_1();
    var var_2 = func_2(-(_wgslsmith_dot_vec4_i32(global4.b, global4.d) & 23694i) & -global4.c);
    global2 = u_input.a;
    let var_3 = !vec4<bool>(var_1.x, any(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, true), false)), any(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), var_1.x | true);
    let var_4 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, var_0, 1491f)), _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(5968u, 31u)], 17405u, 85345u, 1u), vec4<u32>(9594u, global0[_wgslsmith_index_u32(1u, 31u)], 4294967295u, 48044u)), !var_1), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)])), firstLeadingBit(_wgslsmith_mod_vec2_u32(firstTrailingBit(max(vec2<u32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 31u)]), vec2<u32>(71554u, 1u))), min(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20341u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), vec2<u32>(45076u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31277u, 31u)], 31u)], 31u)])))), vec2<u32>(max(~max(global0[_wgslsmith_index_u32(43633u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), 0u), 58094u));
    global2 = -1i;
    let var_5 = Struct_2(30073u & (abs(~var_4.x) >> (global0[_wgslsmith_index_u32(34605u, 31u)] % 32u)), 22801u, func_2(-2274i).e, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(ceil(global3.x)))), _wgslsmith_f_op_f32(-var_0)) * var_0), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 443f, global3.x), vec3<f32>(global3.x, global3.x, -1098f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(254f, var_0, -146f) - vec3<f32>(-1633f, -1512f, 381f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -948f, global3.x) + vec3<f32>(157f, 598f, var_0)))))));
}

