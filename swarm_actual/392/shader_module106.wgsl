struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(1u, 4294967295u, 28807u, 28303u, 97299u, 9104u, 32744u, 39324u, 1u, 1u, 4294967295u, 84137u, 4294967295u, 0u, 95454u, 0u, 6867u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 4294967295u, 11469u, 36576u);

var<private> global1: i32 = 8423i;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(1u, 52753u, 5901u, 3428u), vec4<i32>(1i, -1i, -72217i, -82533i), 1183f, vec3<u32>(1u, 4294967295u, 18992u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 8632u, 0u), vec4<i32>(66145i, 21510i, 13421i, -87237i), 541f, vec3<u32>(4294967295u, 4294967295u, 1u), true), Struct_1(vec4<u32>(16589u, 0u, 14811u, 1u), vec4<i32>(-1i, -38794i, -37584i, i32(-2147483648)), 1156f, vec3<u32>(1u, 1u, 30154u), true), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<i32>(0i, 2147483647i, -38489i, -1i), -501f, vec3<u32>(0u, 48698u, 25680u), false), Struct_1(vec4<u32>(4294967295u, 0u, 7026u, 6330u), vec4<i32>(68905i, -4924i, 27326i, 22568i), -688f, vec3<u32>(51209u, 1u, 1u), true));

var<private> global3: array<Struct_2, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = arg_0.b.wx;
    let var_1 = ~arg_1.a;
    var_0 = select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, select(2147483647i, 2147483647i, true), -1i, ~1254i), arg_1.b), abs(arg_0.b.x) & -_wgslsmith_add_i32(u_input.c.x, arg_1.b.x)), ~(vec2<i32>(var_0.x, u_input.b) & ((arg_1.b.xx ^ vec2<i32>(-2147483647i, u_input.d.x)) & ~vec2<i32>(var_0.x, 0i))), !vec2<bool>((false | arg_1.e) && (u_input.a >= arg_1.d.x), false));
    var var_2 = arg_0;
    var_0 = u_input.d.zx;
    return 0u != ~(~(~(~global0[_wgslsmith_index_u32(arg_1.d.x, 25u)])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    let var_0 = 1u;
    var var_1 = arg_2.e;
    let var_2 = arg_2;
    let var_3 = firstLeadingBit(u_input.d.x);
    global1 = 0i;
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(select(u_input.a, 19296u, true & (select(arg_0.x && false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 25u)] <= u_input.a, false) | false)), 5u)];
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(select(var_0.a.x, 0u, true), 25u)], 4294967295u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~select(18758u, 4294967295u, arg_0.x), 25u)], 25u)]), 14u)];
    global3 = array<Struct_2, 14>();
    let var_2 = ~(vec2<u32>(_wgslsmith_div_u32(var_0.a.x, ~u_input.a), 0u) << (var_0.a.xy % vec2<u32>(32u)));
    var var_3 = ~vec2<u32>(min(max(~1u, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 25u)])), ~2154u), u_input.a);
    return var_0.b.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    global3 = array<Struct_2, 14>();
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.b.yw, arg_1.b.zw), 1i, func_4(!vec4<bool>(true, true, func_2(global2[_wgslsmith_index_u32(21673u, 5u)], Struct_1(vec4<u32>(u_input.a, u_input.a, arg_1.d.x, arg_1.d.x), vec4<i32>(-17706i, arg_1.b.x, u_input.b, arg_1.b.x), 1000f, arg_1.a.yzy, false)), func_3(vec2<u32>(arg_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<f32>(arg_1.c, -388f, -1062f, arg_0), arg_1)), _wgslsmith_f_op_f32(-arg_1.c), vec4<bool>(true, true, true, true)), u_input.b);
    global2 = array<Struct_1, 5>();
    let var_1 = arg_1.c;
    global2 = array<Struct_1, 5>();
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(select(countOneBits(1u), 43939u, true), ~(8760u >> (_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 25u)]) % 32u)), u_input.a), countOneBits(arg_1.a.wzw), vec3<u32>(global0[_wgslsmith_index_u32(28252u, 25u)], max(global0[_wgslsmith_index_u32(6497u, 25u)], _wgslsmith_div_u32(56602u, 59257u)), 28585u << (abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38951u, 25u)], 25u)]) % 32u)) << ((firstLeadingBit(arg_1.d >> (vec3<u32>(0u, arg_1.d.x, arg_1.a.x) % vec3<u32>(32u))) & max(arg_1.a.wzx, arg_1.a.yxx)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(335f)) - 398f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(398f, 236f)))), vec3<f32>(2346f, _wgslsmith_f_op_f32(floor(-342f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-370f)))))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -475f)))), -1505f), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(1524f * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1095f)) + _wgslsmith_f_op_f32(round(-1124f))))));
    var var_1 = vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)), ~48179u) ^ ~(vec3<u32>(abs(u_input.a), 1u, 1u) | select(vec3<u32>(u_input.a, u_input.a, 0u) & vec3<u32>(4174u, 0u, u_input.a), ~vec3<u32>(global0[_wgslsmith_index_u32(42567u, 25u)], 5945u, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(true, true, true)));
    var_0 = vec3<f32>(var_0.x, 1339f, _wgslsmith_f_op_f32(min(562f, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(-1242f + -492f)))))));
    var_1 = max(~vec3<u32>(1u, 105276u, countOneBits(1757u)), func_1(-452f, Struct_1(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1298u, 19239u, 23327u, var_1.x), vec4<u32>(4294967295u, u_input.a, u_input.a, 32481u))), -select(vec4<i32>(u_input.b, 26061i, u_input.d.x, 1i), vec4<i32>(u_input.d.x, -5514i, u_input.d.x, 3452i), vec4<bool>(true, false, false, true)), -295f, firstLeadingBit(vec3<u32>(0u, u_input.a, var_1.x)), false)));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, -39299i), -4351i, u_input.c.x), abs(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(5180i, u_input.b, u_input.c.x), u_input.d))) << (~vec3<u32>(~4438u, ~14717u, 24083u >> (var_1.x % 32u)) % vec3<u32>(32u)), max(~max(u_input.c >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), u_input.c), ~(firstTrailingBit(vec3<i32>(u_input.c.x, -2147483647i, 0i)) & vec3<i32>(-1i, -28002i, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d, ~vec3<i32>(u_input.c.x, -2147483647i, -2237i), vec3<bool>(true, true, true)) << (((select(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(u_input.a, var_1.x, 0u), vec3<bool>(true, true, true)) & vec3<u32>(7734u, 89868u, u_input.a)) & ~(~vec3<u32>(0u, 0u, 44290u))) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(func_1(-1114f, Struct_1(vec4<u32>(96987u, 8633u, global0[_wgslsmith_index_u32(58062u, 25u)], var_1.x), vec4<i32>(u_input.d.x, -38668i, -1i, var_2.x), var_0.x, vec3<u32>(4294967295u, 0u, 4881u), false)).x, ~4294967295u, 20550u) | vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(49649u, 25u)], var_1.x), 32241u >> (var_1.x % 32u))));
}

