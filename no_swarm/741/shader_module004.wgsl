struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(641f, 1482f), vec2<f32>(827f, 1588f), vec2<f32>(-630f, -352f), vec2<f32>(964f, 1000f), vec2<f32>(-973f, 343f), vec2<f32>(1291f, 1289f), vec2<f32>(-1000f, -723f), vec2<f32>(-908f, 876f), vec2<f32>(1685f, 788f), vec2<f32>(1118f, 140f), vec2<f32>(-1941f, -162f), vec2<f32>(1000f, 120f), vec2<f32>(293f, 304f), vec2<f32>(1428f, -207f), vec2<f32>(-517f, 165f), vec2<f32>(-1097f, -379f), vec2<f32>(580f, 888f), vec2<f32>(1040f, -1000f), vec2<f32>(938f, -164f), vec2<f32>(205f, -254f), vec2<f32>(268f, -792f), vec2<f32>(-874f, 1237f), vec2<f32>(371f, -1393f), vec2<f32>(-1203f, -421f), vec2<f32>(-1000f, -2277f), vec2<f32>(-608f, -977f), vec2<f32>(1104f, 694f), vec2<f32>(-696f, 1000f), vec2<f32>(-634f, -1308f), vec2<f32>(-570f, 999f), vec2<f32>(1096f, -197f));

var<private> global3: array<bool, 27>;

var<private> global4: array<u32, 14>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 360f, -1242f, global1.x) * vec4<f32>(global0.b.b.x, arg_0.x, -305f, global0.a.b.x)))), _wgslsmith_mod_vec4_i32(vec4<i32>(~72i, i32(-1i) * -1i, -2147483647i, global0.a.c.x ^ 0i), firstLeadingBit(vec4<i32>(17545i, 60754i, global0.b.c.x, 30408i))), arg_1), Struct_1(firstLeadingBit(-countOneBits(vec3<i32>(global0.a.a.x, -36481i, global0.a.c.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0))))), ~vec4<i32>(~(-41914i), _wgslsmith_mult_i32(-1i, u_input.a), min(-2147483647i, 2247i), _wgslsmith_sub_i32(-1i, global0.b.a.x)), select(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(global0.e.x, 27u)], false), select(vec3<bool>(global3[_wgslsmith_index_u32(2059u, 27u)], true, global0.b.d.x), arg_1, arg_1), false), vec3<bool>(all(global0.b.d), !global3[_wgslsmith_index_u32(u_input.b, 27u)], true), select(global1.x > global1.x, global0.c.x, true))), vec2<bool>(false & ((global0.e.x & 20146u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(76798u, 42889u, 16946u, global0.e.x), vec4<u32>(64265u, 0u, 37615u, u_input.b))), true), !global0.a.d.zy, ~select(firstTrailingBit(global0.e), ~global0.e, arg_1.x));
    global1 = _wgslsmith_f_op_vec3_f32(sign(global0.a.b.zwy));
    let var_1 = Struct_4(Struct_1(~vec3<i32>(min(1i, -6763i), ~var_0.a.a.x, abs(var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.b.b, global0.a.b, false)), vec4<f32>(global0.a.b.x, -760f, -1050f, 395f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.b)), arg_0, !vec4<bool>(true, true, var_0.a.d.x, global3[_wgslsmith_index_u32(global0.e.x, 27u)]))), global0.b.c.x <= var_0.a.c.x)), -abs(select(vec4<i32>(var_0.b.c.x, global0.a.a.x, -2147483647i, -17831i), vec4<i32>(global0.b.c.x, global0.b.a.x, var_0.b.c.x, 48964i), global3[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<bool>(true, arg_1.x, true)));
    return countOneBits(_wgslsmith_div_u32(69609u ^ firstLeadingBit(max(u_input.b, 52067u)), ~global0.e.x));
}

fn func_2() -> bool {
    global2 = array<vec2<f32>, 31>();
    var var_0 = ~_wgslsmith_add_u32(select(firstLeadingBit(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(global0.e.x, 14u)], 467u)), 1u, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], u_input.b) != ~global0.e.x), firstTrailingBit(global0.e.x));
    var var_1 = ~(~vec4<u32>(_wgslsmith_mult_u32(u_input.b, 0u), ~global0.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4[_wgslsmith_index_u32(global0.e.x, 14u)], u_input.b, global0.e.x), vec4<u32>(u_input.b, 10658u, u_input.b, 42394u)), func_3(global0.a.b, vec3<bool>(false, true, false)))) | max(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b, 7575u, _wgslsmith_mult_u32(0u, 29026u), u_input.b), ~vec4<u32>(global0.e.x, 31313u, global0.e.x, u_input.b) & vec4<u32>(u_input.b, 0u, 65336u, global0.e.x)), vec4<u32>(44591u, firstLeadingBit(4294967295u), ~max(0u, global4[_wgslsmith_index_u32(8107u, 14u)]), global0.e.x));
    let var_2 = ~u_input.a;
    let var_3 = any(select(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(21974u, 27u)], false, global3[_wgslsmith_index_u32(4515u, 27u)], true))), vec4<bool>(var_2 < var_2, true, all(vec4<bool>(global0.a.d.x, global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(49773u, 27u)])) & all(vec3<bool>(false, global3[_wgslsmith_index_u32(global0.e.x, 27u)], global0.b.d.x)), false), false));
    return global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25133u, 14u)], 27u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    return ~select(~_wgslsmith_add_u32(~9040u, _wgslsmith_mult_u32(12192u, global4[_wgslsmith_index_u32(0u, 14u)])), select(arg_1, _wgslsmith_mod_u32(0u << (0u % 32u), 1u), any(vec4<bool>(arg_3.x, true, arg_3.x, global0.d.x)) && global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.b, 14u)], u_input.b), 27u)]), global3[_wgslsmith_index_u32(10344u, 27u)]);
}

fn func_1() -> vec3<u32> {
    let var_0 = select(~global0.e.x, func_4(select(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global0.e.x, global4[_wgslsmith_index_u32(global0.e.x, 14u)], 38666u)), _wgslsmith_add_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 14u)], global4[_wgslsmith_index_u32(58873u, 14u)], 4294967295u), vec3<u32>(1u, 3957u, global0.e.x))), ~reverseBits(vec3<u32>(64266u, global4[_wgslsmith_index_u32(global0.e.x, 14u)], 31655u)), func_2()), global0.e.x, global0.a.a.x, global0.b.d.zz), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-891f)), 1015f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(-global0.a.b.x)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(global0.a.b.x, _wgslsmith_f_op_f32(round(global0.b.b.x)))), -650f, -155f))), global3[_wgslsmith_index_u32(max(~26899u, 0u), 27u)]));
    let var_2 = Struct_2(global0.a, global0.a, global0.b.d.xz, global0.d, ~min(reverseBits(vec2<u32>(global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(0u, 14u)])), ~(~global0.e)));
    global0 = Struct_2(Struct_1(vec3<i32>(-1i) * -countOneBits(var_2.a.a), _wgslsmith_f_op_vec4_f32(floor(var_2.a.b)), max(select(vec4<i32>(global0.b.c.x, -7003i, var_2.a.c.x, -82704i), global0.a.c, vec4<bool>(true, var_2.d.x, var_2.c.x, var_2.d.x)), _wgslsmith_add_vec4_i32(var_2.a.c, vec4<i32>(var_2.a.a.x, 15240i, u_input.a, -15463i))) & var_2.b.c, vec3<bool>(false, all(var_2.a.d), !(!global0.c.x))), Struct_1(vec3<i32>(firstLeadingBit(-26980i) ^ ~global0.a.c.x, _wgslsmith_div_i32(24857i & var_2.a.c.x, ~0i), u_input.a), global0.b.b, vec4<i32>(-11571i, _wgslsmith_clamp_i32(var_2.b.a.x, _wgslsmith_clamp_i32(u_input.a, global0.a.a.x, 38469i), min(global0.a.c.x, 0i)), firstLeadingBit(_wgslsmith_add_i32(19252i, u_input.a)), _wgslsmith_mod_i32(global0.a.a.x, var_2.a.c.x)), vec3<bool>(false, -261f != _wgslsmith_f_op_f32(-var_1.x), false)), var_2.c, vec2<bool>(select(false || global0.a.d.x, !(-400f == global0.b.b.x), false), false), global0.e);
    let var_3 = Struct_3(~(~vec2<u32>(global0.e.x ^ 0u, _wgslsmith_dot_vec2_u32(global0.e, vec2<u32>(var_2.e.x, 63051u)))), global3[_wgslsmith_index_u32(abs(1u), 27u)], false, !select(!global0.c, global0.b.d.xy, !var_2.d));
    return (abs(vec3<u32>(func_4(vec3<u32>(global0.e.x, var_2.e.x, 0u), 29915u, 6465i, vec2<bool>(global3[_wgslsmith_index_u32(1u, 27u)], global0.b.d.x)), 1u, global0.e.x)) << ((~vec3<u32>(var_2.e.x, var_3.a.x, 0u) | min(~vec3<u32>(0u, 0u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 102375u), vec3<u32>(var_2.e.x, 1u, 49387u), vec3<u32>(0u, var_3.a.x, var_0)))) % vec3<u32>(32u))) ^ abs(_wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(global0.e.x, var_0, var_0)), ~vec3<u32>(4294967295u, 33863u, 1u) & (vec3<u32>(var_2.e.x, u_input.b, 4294967295u) >> (vec3<u32>(var_0, 81556u, 0u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.b, _wgslsmith_mod_u32(var_0.x, 20875u)), 0u), 108319u), true, select(all(global0.c), all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 27u)], true, global3[_wgslsmith_index_u32(4294967295u, 27u)])), true), !global0.a.d.yy);
    let var_2 = Struct_1(-vec3<i32>(u_input.a, 1i, 49569i), vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1403f - 1572f)))), _wgslsmith_f_op_f32(min(global0.b.b.x, global0.b.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f - 1804f)))), _wgslsmith_f_op_f32(372f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(532f - global1.x))))), -global0.b.c, select(select(global0.a.d, select(!vec3<bool>(true, var_1.c, var_1.d.x), global0.b.d, vec3<bool>(true, true, true)), select(func_2(), global0.c.x, global3[_wgslsmith_index_u32(global0.e.x, 27u)] || var_1.b)), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -718f) == _wgslsmith_f_op_f32(round(global0.a.b.x)), global0.c.x), global0.d.x & ((-2147483647i >= u_input.a) || (global1.x != global1.x))));
    let var_3 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(var_2.c << (vec4<u32>(29553u, 0u, 1u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(var_2.a.x, var_2.a.x, u_input.a, 1i) ^ global0.b.c), abs(-u_input.a), _wgslsmith_dot_vec3_i32(global0.a.c.yyw, vec3<i32>(var_2.a.x, u_input.a, var_2.a.x) >> (vec3<u32>(var_0.x, global4[_wgslsmith_index_u32(0u, 14u)], 34835u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(var_2.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 234f, global1.x, 679f) + vec4<f32>(global1.x, -1634f, global0.b.b.x, 1938f)))), global0.b.c, vec3<bool>(var_0.x != 0u, any(!vec4<bool>(var_2.d.x, var_2.d.x, true, false)), true)), global0.a, global0.d, vec2<bool>(!func_2(), func_2()), vec2<u32>(55607u, 1u));
    global0 = Struct_2(var_3.b, var_3.b, var_3.b.d.zy, select(select(select(vec2<bool>(false, var_2.d.x), select(vec2<bool>(true, true), vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 27u)]), var_3.a.d.x), var_3.a.d.x), var_3.c, true), !var_3.c, !global0.d), reverseBits(var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(2147483647i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, u_input.a), var_3.b.c.zx))), -1i, vec2<u32>(1u, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(~(4294967295u >> (global0.e.x % 32u)), 14u)], 1u)));
}

