struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(true, -261f, Struct_1(vec4<i32>(1i, -41935i, -63533i, 55212i), vec3<f32>(470f, 218f, -225f), 26175i), vec3<f32>(1737f, -603f, -1023f), true));

var<private> global2: array<bool, 25>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<i32>(-66108i, 5757i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-1745f, -648f, 1873f), 48716i), 0u, vec3<i32>(104794i, -1i, i32(-2147483648)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = (_wgslsmith_mod_vec3_u32(select(vec3<u32>(14368u, global3.b, 59216u), vec3<u32>(17642u, 42732u, 0u), global2[_wgslsmith_index_u32(1u, 25u)]) >> (~vec3<u32>(u_input.a, 28748u, u_input.a) % vec3<u32>(32u)), select(min(vec3<u32>(4294967295u, global3.b, global3.b), vec3<u32>(u_input.a, 15094u, global3.b)), min(vec3<u32>(u_input.a, 1u, global3.b), vec3<u32>(global3.b, 48847u, u_input.a)), global2[_wgslsmith_index_u32(abs(u_input.a), 25u)])) & firstLeadingBit(vec3<u32>(u_input.a, ~1u, u_input.a))) ^ ~select(~vec3<u32>(26495u, u_input.a, global3.b) | abs(vec3<u32>(5876u, 48047u, global3.b)), ~vec3<u32>(u_input.a, 8052u, 69339u), global2[_wgslsmith_index_u32(u_input.a, 25u)]);
    var var_1 = Struct_4(vec2<i32>(-1i) * -min(_wgslsmith_mod_vec2_i32(vec2<i32>(global3.c.x, arg_0.a.x), global3.c.zz), global3.a.a.zw & global3.c.yx), Struct_3(Struct_1((vec4<i32>(global3.c.x, arg_0.c, arg_0.c, 0i) ^ vec4<i32>(arg_0.c, 52510i, arg_0.a.x, 2147483647i)) | _wgslsmith_add_vec4_i32(global3.a.a, vec4<i32>(1i, -2147483647i, arg_0.a.x, global3.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.b.x, -1822f, -576f)))), 5967i), ~(~3755u), arg_0.a.zww | _wgslsmith_mod_vec3_i32(arg_0.a.xwz, vec3<i32>(global3.a.c, global3.a.a.x, 30263i))), Struct_2(all(vec3<bool>(false, true, 2147483647i == arg_0.c)), _wgslsmith_f_op_f32(max(global3.a.b.x, _wgslsmith_f_op_f32(min(global3.a.b.x, _wgslsmith_f_op_f32(exp2(global3.a.b.x)))))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(25116i, -7315i), _wgslsmith_div_i32(arg_0.a.x, global3.a.a.x), -arg_0.a.x, global3.c.x), vec3<f32>(1f, 1f, 1f), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.c, 1819i), vec2<i32>(2147483647i, 1382i))), vec3<f32>(_wgslsmith_div_f32(global3.a.b.x, _wgslsmith_f_op_f32(-338f * arg_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x * 2180f), _wgslsmith_f_op_f32(-global3.a.b.x), global2[_wgslsmith_index_u32(min(u_input.a, var_0.x), 25u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-902f, global3.a.b.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]))))), true), global3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)), 374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1056f))))));
    let var_2 = vec2<bool>(all(vec3<bool>(-2688f == var_1.c.c.b.x, true, all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 25u)], true, var_1.c.e)))), !global2[_wgslsmith_index_u32(1u, 25u)]);
    global3 = var_1.b;
    var var_3 = 1i;
    return vec4<u32>(_wgslsmith_clamp_u32(var_1.b.b, ~(reverseBits(var_1.b.b) >> (~3733u % 32u)), ~(countOneBits(global3.b) ^ 52738u)), 0u, 15867u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(24106u, global3.b), u_input.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = ~global3.a.a;
    let var_1 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(~arg_1), ~(~vec4<u32>(49612u, 0u, u_input.a, global3.b))), countOneBits(~func_3(global3.a))), arg_1, select(select(vec4<bool>(any(global0[_wgslsmith_index_u32(0u, 28u)]), true, any(vec3<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(29212u, 25u)])), false), vec4<bool>(select(arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 25u)], false), false, arg_0.x, !global2[_wgslsmith_index_u32(u_input.a, 25u)]), global2[_wgslsmith_index_u32(0u, 25u)]), !(!vec4<bool>(true, arg_0.x, arg_0.x, true)), vec4<bool>(true, select(true != global2[_wgslsmith_index_u32(37334u, 25u)], global3.b < global3.b, true | global2[_wgslsmith_index_u32(83866u, 25u)]), !(!global2[_wgslsmith_index_u32(arg_1.x, 25u)]), !any(global0[_wgslsmith_index_u32(global3.b, 28u)]))));
    var var_2 = _wgslsmith_mult_vec3_i32(select(-var_0.zzy, global3.a.a.wwy, all(global0[_wgslsmith_index_u32(34413u, 28u)])), global3.c);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.x))), _wgslsmith_f_op_f32(-global3.a.b.x));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a, 1u)) >> (~reverseBits(arg_1.zy) % vec2<u32>(32u))) >> (~firstLeadingBit(vec2<u32>(0u, arg_1.x)) % vec2<u32>(32u)), arg_1.yy), 1u)];
    return vec3<f32>(_wgslsmith_f_op_f32(-1284f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(689f, -2004f)) - _wgslsmith_div_f32(-884f, _wgslsmith_f_op_f32(select(-864f, -1077f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.b.x - _wgslsmith_f_op_f32(var_3.x * global3.a.b.x))))), -1000f);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(countOneBits(~reverseBits(vec4<u32>(3958u, 4294967295u, 1u, 0u))), ~vec4<u32>(_wgslsmith_div_u32(36101u, global3.b), 1u, u_input.a, 1u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(758f, global3.a.b.x, arg_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(173f, 1282f, 2053f), vec3<f32>(global3.a.b.x, -448f, global3.a.b.x)))))), arg_1, global0[_wgslsmith_index_u32(u_input.a, 28u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1), vec3<f32>(global3.a.b.x, -1106f, global3.a.b.x), false)))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_1(-vec4<i32>(firstLeadingBit(select(0i, 0i, true)), ~(-21131i ^ arg_0.a.c), 56911i, arg_0.a.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(-18777i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, false), vec4<u32>(0u, u_input.a, 0u, arg_0.b)))), true)))), -1i ^ _wgslsmith_dot_vec2_i32(max(vec2<i32>(-47456i, global3.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.c, global3.c.x), global3.a.a.xy, global3.c.yz)), vec2<i32>(~2147483647i, global3.a.c)));
    let var_1 = max(vec2<u32>(0u, countOneBits(_wgslsmith_add_u32(1u, ~11756u))), vec2<u32>(arg_0.b | arg_0.b, ~_wgslsmith_div_u32(firstLeadingBit(global3.b), 1u)));
    let var_2 = (abs(min(_wgslsmith_mult_u32(1u, 4294967295u), global3.b << (u_input.a % 32u))) & func_3(global3.a).x) ^ ~(~_wgslsmith_mod_u32(~30801u, var_1.x));
    let var_3 = ~(~(arg_0.b ^ ~_wgslsmith_dot_vec2_u32(var_1, var_1)));
    let var_4 = select(!(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(26664u, 25u)], false), vec2<bool>(true, true), vec2<bool>(false, false)))), !select(vec2<bool>(global2[_wgslsmith_index_u32(var_3, 25u)], true), select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(var_3, 25u)], true), true), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(var_3, 25u)]), vec2<bool>(global2[_wgslsmith_index_u32(23867u, 25u)], true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(var_1.x, 25u)]))), !vec2<bool>(!(var_1.x <= var_1.x), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0.b, 0u), 25u)]));
    return var_3 | ~var_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    return Struct_3(Struct_1(firstLeadingBit(max(arg_3.a.a, -vec4<i32>(2147483647i, 0i, arg_2, 2586i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2388f, global3.a.b.x, 665f))))), _wgslsmith_mult_i32(global3.a.c, ~arg_2) | _wgslsmith_dot_vec3_i32(arg_3.c, arg_3.c)), _wgslsmith_add_u32(global3.b, u_input.a), arg_3.c);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = global3.a.b;
    var var_1 = Struct_4(reverseBits(-global3.a.a.yx), arg_1, global1[_wgslsmith_index_u32(~7401u, 1u)], global3.a, _wgslsmith_f_op_f32(f32(-1f) * -1410f));
    var var_2 = -49181i;
    let var_3 = u_input.a;
    var var_4 = global3.a;
    return func_5(max(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(16130u, var_3), vec2<u32>(0u, var_1.b.b))), ~(~vec2<u32>(1u, var_3))) ^ ~reverseBits(~vec2<u32>(var_1.b.b, 0u)), ~1u, global3.a.a.x ^ firstLeadingBit(firstLeadingBit(-72874i)), func_5(vec2<u32>(1u, _wgslsmith_clamp_u32(reverseBits(2184u), var_1.b.b, u_input.a)), firstTrailingBit(1u) ^ (~var_1.b.b & var_1.b.b), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_4.a.ywz, _wgslsmith_add_vec3_i32(var_4.a.xwz, vec3<i32>(var_1.d.c, -19110i, 135i)), vec3<i32>(0i, arg_1.a.c, arg_1.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -19340i, -46260i), var_4.a.ywx | vec3<i32>(29456i, var_1.b.c.x, -2147483647i))), func_5(~vec2<u32>(global3.b, global3.b) >> (~vec2<u32>(var_3, var_1.b.b) % vec2<u32>(32u)), ~_wgslsmith_div_u32(4294967295u, var_3), 46163i, func_5(vec2<u32>(var_3, arg_1.b) & vec2<u32>(var_3, 4294967295u), _wgslsmith_mult_u32(var_1.b.b, u_input.a), firstTrailingBit(-1i), Struct_3(Struct_1(vec4<i32>(var_4.c, var_4.a.x, var_1.c.c.a.x, var_1.d.a.x), global3.a.b, 14483i), global3.b, vec3<i32>(0i, var_4.c, global3.a.c)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 25>();
    var var_0 = Struct_3(Struct_1(vec4<i32>(abs(_wgslsmith_mod_i32(18241i, -29123i)), -global3.c.x & ~1i, -17746i, -2147483647i), _wgslsmith_f_op_vec3_f32(global3.a.b + vec3<f32>(global3.a.b.x, _wgslsmith_f_op_f32(max(global3.a.b.x, global3.a.b.x)), _wgslsmith_f_op_f32(select(-334f, global3.a.b.x, false)))), _wgslsmith_div_i32(-_wgslsmith_div_i32(16638i, -1i), -13920i >> (global3.b % 32u))), ~_wgslsmith_add_u32(72610u, u_input.a), max(vec3<i32>(-63655i & global3.c.x, min(0i, 12359i), -9071i) & (vec3<i32>(-2147483647i, -24896i, global3.c.x) | _wgslsmith_sub_vec3_i32(global3.a.a.wzx, vec3<i32>(global3.a.a.x, global3.a.c, global3.a.a.x))), global3.c));
    var var_1 = func_6(var_0.a.b.zy, func_5(vec2<u32>(abs(1u), _wgslsmith_add_u32(global3.b, func_1(Struct_3(var_0.a, 4294967295u, vec3<i32>(global3.c.x, global3.c.x, 1i))))), ~(~(~var_0.b)), select(~global3.a.c & firstLeadingBit(global3.a.c), abs(_wgslsmith_dot_vec3_i32(global3.a.a.wzz, vec3<i32>(0i, -2147483647i, 1099i))), true), Struct_3(Struct_1(-var_0.a.a, vec3<f32>(var_0.a.b.x, var_0.a.b.x, 1619f), _wgslsmith_dot_vec2_i32(global3.c.zz, global3.c.zz)), var_0.b, ~(~global3.a.a.wyz))));
    let var_2 = var_0.b;
    var var_3 = func_5(_wgslsmith_div_vec2_u32(func_3(Struct_1(vec4<i32>(global3.a.a.x, -21793i, 2147483647i, 0i), global3.a.b, var_1.c)).zy | firstLeadingBit(vec2<u32>(41669u, u_input.a)), min(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, u_input.a), vec2<u32>(0u, u_input.a)), ~vec2<u32>(4294967295u, u_input.a)) >> (vec2<u32>(_wgslsmith_mod_u32(57489u, 34208u), u_input.a) % vec2<u32>(32u))), ~(~59578u), _wgslsmith_mult_i32(-(i32(-1i) * -global3.c.x), global3.c.x), func_5(max(~vec2<u32>(global3.b, 1u), select(~vec2<u32>(var_0.b, 0u), vec2<u32>(57583u, u_input.a) & vec2<u32>(42410u, global3.b), global2[_wgslsmith_index_u32(global3.b, 25u)] || global2[_wgslsmith_index_u32(1u, 25u)])), 4294967295u, -2856i | (_wgslsmith_mod_i32(var_0.c.x, var_1.c) & -8299i), Struct_3(global3.a, 0u, _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.c.x, var_0.c.x, -39722i), var_0.a.a.ywy)))).b;
    global2 = array<bool, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.a.xzz, var_0.a.a.x, 2147483647i, vec4<i32>(_wgslsmith_div_i32(global3.a.c, ~(-5960i)), var_1.c, var_0.c.x, _wgslsmith_add_i32(firstTrailingBit(var_0.a.c), -var_0.a.a.x) ^ ~(global3.a.c & -1i)));
}

