struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 17>;

var<private> global2: array<Struct_3, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    global1 = array<u32, 17>();
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(~select(1040u, global1[_wgslsmith_index_u32(49443u, 17u)], arg_1.a.b.a), _wgslsmith_add_u32(~arg_0.b.x, 14337u | global1[_wgslsmith_index_u32(u_input.a, 17u)])), countOneBits((arg_0.b >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) >> (min(select(arg_0.b, u_input.c, arg_1.a.b.b.yy), vec2<u32>(4444u, 0u)) % vec2<u32>(32u))), vec2<u32>(13370u, 53731u));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.e.a.a.x, _wgslsmith_div_f32(1793f, 1312f), 1000f), _wgslsmith_f_op_vec3_f32(ceil(arg_1.a.a.xyy)))), vec3<f32>(-665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(647f, arg_1.a.a.x)) + -253f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f - -442f))), !vec3<bool>(all(vec3<bool>(true, arg_0.c.x, arg_1.a.c.a)), true, arg_1.a.b.a))), max(u_input.c, firstTrailingBit(vec2<u32>(4294967295u, ~var_0.x))), select(vec4<bool>(any(vec2<bool>(arg_0.c.x, true)) | any(vec4<bool>(false, arg_0.e.a.b.b.x, false, arg_1.a.c.b.x)), any(select(arg_0.c.zyw, vec3<bool>(arg_0.c.x, arg_0.c.x, arg_1.a.b.b.x), false)), arg_0.c.x, select(all(arg_1.a.b.b.yx), true, arg_0.c.x | arg_0.e.a.b.a)), !(!vec4<bool>(false, true, arg_0.c.x, arg_0.e.a.b.a)), arg_0.c.x), ~((vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], global1[_wgslsmith_index_u32(var_0.x, 17u)], 0u) << (select(vec4<u32>(var_0.x, var_0.x, 123368u, 4294967295u), vec4<u32>(14122u, u_input.a, 1u, 20304u), arg_1.a.b.b.x) % vec4<u32>(32u))) & (~arg_0.d | arg_0.d)), arg_1);
    var var_2 = 93199u;
    global2 = array<Struct_3, 11>();
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_2() -> u32 {
    var var_0 = u_input.d;
    global1 = array<u32, 17>();
    let var_1 = u_input.b;
    var var_2 = vec2<i32>(~_wgslsmith_sub_i32(u_input.d, u_input.d), 1i);
    var var_3 = -824f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec3<f32>(1000f, -767f, 549f), u_input.c, vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 12895u, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 17u)], 17u)]), Struct_4(Struct_3(vec4<f32>(319f, 1338f, 1910f, 354f), Struct_2(false, vec4<bool>(true, true, false, true)), Struct_2(false, vec4<bool>(true, true, true, true))), vec2<i32>(var_2.x, u_input.d))), Struct_4(Struct_3(vec4<f32>(310f, 649f, -1811f, 1472f), Struct_2(true, vec4<bool>(true, true, true, false)), Struct_2(false, vec4<bool>(true, false, false, true))), vec2<i32>(59994i, u_input.d)), 1624f, vec4<i32>(-37531i, -17197i, u_input.d, var_2.x))) * _wgslsmith_f_op_f32(select(283f, -708f, true))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(960f, -705f, true)), _wgslsmith_f_op_f32(ceil(-808f)), 46905u >= var_1))) + _wgslsmith_f_op_f32(select(-598f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f + 451f) + 260f), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))));
    return ~(~u_input.b);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~(~(~(~(~u_input.c.x)))), 17u)];
    global1 = array<u32, 17>();
    let var_1 = abs(_wgslsmith_clamp_vec2_i32(countOneBits(select(~vec2<i32>(9473i, arg_3), vec2<i32>(-374i, -53741i), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), false))), firstTrailingBit(reverseBits(abs(vec2<i32>(arg_3, arg_3)))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_2), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(arg_3, 2147483647i))), vec2<i32>(1i, -67521i) | vec2<i32>(2147483647i, arg_0))));
    var var_2 = select(vec3<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 72323u, 45411u, global1[_wgslsmith_index_u32(u_input.b, 17u)]), vec4<u32>(32604u, u_input.c.x, 1u, u_input.c.x))), 0u), min(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(30645u, 28507u), u_input.c & u_input.c)), global1[_wgslsmith_index_u32(func_2(), 17u)]), vec3<u32>(0u, max(0u, 1119u << (global1[_wgslsmith_index_u32(27035u, 17u)] % 32u)), global1[_wgslsmith_index_u32(firstLeadingBit(abs(0u)), 17u)]) | _wgslsmith_clamp_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(u_input.c.x, 17u)], ~4821u, ~global1[_wgslsmith_index_u32(40248u, 17u)]), ~min(vec3<u32>(1u, 76845u, global1[_wgslsmith_index_u32(0u, 17u)]), vec3<u32>(u_input.c.x, 1894u, u_input.c.x)), ~vec3<u32>(26401u, 0u, u_input.a) | reverseBits(vec3<u32>(8135u, 1u, u_input.c.x))), arg_1);
    var var_3 = !(!(!vec4<bool>(false, false, false, arg_1)));
    return Struct_1(~vec2<i32>(u_input.d, (53257i & arg_2) & ~arg_3), u_input.c.x);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<i32>(arg_0.a.x, _wgslsmith_sub_i32(arg_0.a.x, -_wgslsmith_mod_i32(-43898i, 65725i)), firstLeadingBit(min(1i, _wgslsmith_add_i32(30800i, firstLeadingBit(-2147483647i)))));
    let var_1 = !vec4<bool>(all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), !all(vec2<bool>(true, false)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, false))));
    global2 = array<Struct_3, 11>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1288f, -452f, -274f, 1573f))))) * vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(true, vec4<bool>(!var_1.x, var_1.x, !(var_1.x | var_1.x), ~(-1i) == ~u_input.d)), Struct_2(true, var_1));
    let var_3 = ~firstLeadingBit(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, 0i, var_0.x, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, arg_0.a.x, 39876i, -2068i), vec4<i32>(0i, 0i, u_input.d, arg_0.a.x)))) | -(vec4<i32>(1i, arg_0.a.x, 0i, -36891i) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(58618u, 17u)], u_input.a, 42460u, 4294967295u), ~vec4<u32>(24708u, u_input.a, u_input.c.x, 4294967295u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<f32>) -> StorageBuffer {
    global1 = array<u32, 17>();
    global0 = ~(_wgslsmith_add_u32(max(abs(u_input.b), 1u), 37552u) ^ (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(0u, 17u)], u_input.b), ~u_input.b, ~2339u) << (~(~global1[_wgslsmith_index_u32(u_input.c.x, 17u)]) % 32u)));
    let var_0 = arg_1.b;
    var var_1 = arg_1;
    var var_2 = select(vec4<bool>(true, 0u >= ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)] & global1[_wgslsmith_index_u32(24472u, 17u)], 17u)], true, true), !(!var_1.c.b), any(!select(!vec2<bool>(var_1.b.a, var_0.b.x), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.x), arg_1.b.b.yy), arg_0)));
    return StorageBuffer(1u, ~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mult_u32(~u_input.c.x, ~1u), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -195f), -846f, -1i != arg_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-251f, var_1.a.x)), _wgslsmith_f_op_f32(488f + 393f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * -634f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(~(~abs(~global1[_wgslsmith_index_u32(~64305u, 17u)])), 17u)];
    global2 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = func_5(vec2<bool>(true, true), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 7444u << (firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 17u)]) % 32u)), 11u)], ~(-min(vec4<i32>(u_input.d, u_input.d, u_input.d, -15491i) ^ vec4<i32>(-2147483647i, -2147483647i, -19918i, u_input.d), ~vec4<i32>(u_input.d, 1i, 5832i, u_input.d))), vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(~2147483647i, any(vec3<bool>(true, true, true)), 56756i, u_input.d & -2147483647i))), -212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-417f)) + _wgslsmith_f_op_f32(ceil(1280f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(f32(-1f) * -1267f)))));
}

