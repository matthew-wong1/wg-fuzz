struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1129f, -1505f, -1000f, 179f, 285f, 150f, -313f, 976f, -294f, -932f, -1000f, -1375f, 1337f, -406f, -875f, 1703f, 955f, -1422f, -1229f, 282f, -2260f, -462f, 1180f, -797f, -1000f, 1029f, 514f);

var<private> global1: array<i32, 17>;

var<private> global2: bool = false;

var<private> global3: array<bool, 6> = array<bool, 6>(false, true, false, true, true, true);

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    var var_0 = -32884i;
    var var_1 = false;
    global2 = true;
    var_0 = u_input.b ^ _wgslsmith_mod_i32(u_input.b, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(31955u, 4354u, u_input.d, 86525u), vec4<u32>(6786u, u_input.d, 1u, 29581u)), vec4<u32>(0u, 78251u, 15649u, 577u) ^ vec4<u32>(u_input.d, 26652u, 86823u, u_input.c.x))), 17u)]);
    global3 = array<bool, 6>();
    return reverseBits(~_wgslsmith_add_u32(u_input.d >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.d, 4294967295u), vec4<u32>(14885u, 9874u, u_input.c.x, 4294967295u)) % 32u), ~(~0u)));
}

fn func_2() -> i32 {
    global0 = array<f32, 27>();
    var var_0 = countOneBits(u_input.b ^ 1i);
    let var_1 = Struct_1(vec2<u32>(firstLeadingBit(u_input.c.x), ~(~(u_input.c.x | 4294967295u))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(func_3(vec3<f32>(1214f, global0[_wgslsmith_index_u32(5930u, 27u)], -439f), global1[_wgslsmith_index_u32(47713u, 17u)]), ~u_input.c.x, 55141u), select(4294967295u, _wgslsmith_sub_u32(42491u, u_input.d), true)), 22738u, _wgslsmith_add_u32(u_input.c.x & ~0u, countOneBits(64558u)), ~50433u | (select(1u, u_input.d, true) | u_input.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(f32(-1f) * -357f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.d, 27u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(59020u, 27u)] - global0[_wgslsmith_index_u32(4294967295u, 27u)]))))), u_input.a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_1.c))), _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(-var_1.c)))) - 1423f), select(vec4<bool>(true, select(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(var_1.b.x, 6u)], true)), any(vec2<bool>(global3[_wgslsmith_index_u32(var_1.b.x, 6u)], true)), true), 1i >= min(var_1.d, var_1.d), !(!global3[_wgslsmith_index_u32(2223u, 6u)])), select(vec4<bool>(!global3[_wgslsmith_index_u32(17005u, 6u)], !global3[_wgslsmith_index_u32(u_input.d, 6u)], true, true), !vec4<bool>(true, global3[_wgslsmith_index_u32(var_1.a.x, 6u)], true, global3[_wgslsmith_index_u32(u_input.d, 6u)]), select(!vec4<bool>(global3[_wgslsmith_index_u32(69281u, 6u)], true, global3[_wgslsmith_index_u32(var_1.b.x, 6u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(53990u, 6u)], true, global3[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(u_input.c.x, 6u)], true, false), false), select(false, true, global3[_wgslsmith_index_u32(35091u, 6u)]))), !all(vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.b.x, 6u)]))));
    global3 = array<bool, 6>();
    return 24328i;
}

fn func_1() -> bool {
    global0 = array<f32, 27>();
    var var_0 = Struct_1(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 1u), 38494u << (1u % 32u), u_input.d, _wgslsmith_mult_u32(u_input.c.x, 14083u)), vec4<u32>(~u_input.d, 25889u, u_input.d, 0u)) << (~(~(vec4<u32>(u_input.d, 66744u, u_input.d, 39312u) >> (vec4<u32>(0u, 1u, 26081u, u_input.d) % vec4<u32>(32u)))) % vec4<u32>(32u)), 2418f, func_2());
    var var_1 = Struct_1(vec2<u32>(countOneBits(u_input.c.x), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 0u << (0u % 32u)) >> (u_input.d % 32u)), ~(~(~vec4<u32>(u_input.d, var_0.a.x, u_input.c.x, 91925u))) ^ var_0.b, _wgslsmith_div_f32(1513f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 27u)], var_0.c) - -104f), -615f))), _wgslsmith_dot_vec4_i32(~abs(~vec4<i32>(2147483647i, var_0.d, 36272i, 16694i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0.d, 1i, 20767i, global1[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], 1i, var_0.d), vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.c.x, 17u)], u_input.a, global1[_wgslsmith_index_u32(u_input.d, 17u)]))), min(~vec4<i32>(13464i, var_0.d, 1i, u_input.b), select(vec4<i32>(u_input.a, u_input.a, var_0.d, 10174i), vec4<i32>(u_input.a, 1i, u_input.b, -2147483647i), true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_f32(ceil(var_0.c)), false)))), 126f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, var_1.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1385f, global0[_wgslsmith_index_u32(14677u, 27u)]))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, 415f))), global3[_wgslsmith_index_u32(abs(var_1.a.x), 6u)])) * vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 27u)] + var_0.c), -711f))), all(vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_0.b.x, 0u)), 6u)], true, !(45319i == global1[_wgslsmith_index_u32(var_0.b.x, 17u)]), !global3[_wgslsmith_index_u32(var_1.b.x, 6u)]))));
    var var_3 = Struct_2(606f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1999f, 652f, global0[_wgslsmith_index_u32(1516u, 27u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 27u)], -178f, 214f, var_0.c))))))), ~(global1[_wgslsmith_index_u32(var_1.a.x, 17u)] & ~(~(-2147483647i))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    global3 = array<bool, 6>();
    var var_0 = vec3<bool>(func_1(), true == !(!any(vec4<bool>(false, true, true, true))), any(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)] && global3[_wgslsmith_index_u32(10885u, 6u)], true, false), select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], true, global3[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(u_input.d, 6u)]), false), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 6u)], global3[_wgslsmith_index_u32(u_input.d, 6u)], global3[_wgslsmith_index_u32(41696u, 6u)]), global3[_wgslsmith_index_u32(~72164u, 6u)]), select(vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], true, global3[_wgslsmith_index_u32(u_input.d, 6u)]), all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 6u)], global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(0u, 6u)]))))));
    let var_1 = Struct_1(u_input.c, firstTrailingBit(firstTrailingBit(~vec4<u32>(u_input.c.x, 12114u, 32443u, u_input.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f - global0[_wgslsmith_index_u32(u_input.c.x, 27u)]) + _wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(u_input.d, 27u)])))), _wgslsmith_f_op_f32(f32(-1f) * -233f), all(!(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], var_0.x))))), func_2());
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(-401f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(142f * -1000f))))), 1316f, 117f, global0[_wgslsmith_index_u32(12974u, 27u)]);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-387f + -571f), Struct_2(var_2.x, var_2, var_1.d), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, ~26254u), var_1.a << (~vec2<u32>(5060u, 26134u) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.c)), global0[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -937f, global0[_wgslsmith_index_u32(reverseBits(44482u), 27u)], _wgslsmith_f_op_f32(floor(-416f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)), vec4<bool>(false, true, !global3[_wgslsmith_index_u32(4294967295u, 6u)], -245f > var_2.x))), reverseBits(u_input.a)));
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1i & (var_1.d << (1u % 32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~abs(var_4), reverseBits(4294967295u >> (1u % 32u))), ~u_input.c), -2147483647i, i32(-1i) * -_wgslsmith_div_i32(30034i ^ var_3.b.c, _wgslsmith_add_i32(u_input.b, global1[_wgslsmith_index_u32(var_1.b.x, 17u)])));
}

