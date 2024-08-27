struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 16>;

var<private> global2: array<i32, 7> = array<i32, 7>(14525i, 35964i, 2147483647i, -5211i, -1i, 2147483647i, 53716i);

var<private> global3: Struct_3;

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global4 = select(vec4<i32>(u_input.a, ~global0.x, ~global4.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(global3.c.b.x, 7u)], -17557i, 2147483647i, global2[_wgslsmith_index_u32(global3.c.b.x, 7u)]), vec4<i32>(global3.c.a, 2147483647i, -2147483647i, 39915i)))), vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(62250u >> (global3.e.b.b.x % 32u), u_input.c.x >> (2817u % 32u), _wgslsmith_clamp_u32(1u, 71578u, u_input.b), 41851u), vec4<u32>(~4294967295u, ~1u, 43311u, reverseBits(81204u))), 7u)], _wgslsmith_div_i32(global0.x, ~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global3.a.a.b.x, 7u)], 49434i)), _wgslsmith_dot_vec3_i32((vec3<i32>(global4.x, global4.x, 0i) ^ global4.yzz) | global4.zxx, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2409i, 62594i, global0.x), global3.a.d), global4.x, -global2[_wgslsmith_index_u32(22547u, 7u)])), global3.d.b.a), false);
    global0 = ~global4.xwx;
    var var_0 = Struct_3(Struct_2(global3.a.a, global3.d.b, vec3<f32>(642f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -671f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-294f, -298f), 935f, global3.b.x && global3.b.x))), global3.d.d), !select(!(!vec3<bool>(global3.b.x, global3.b.x, true)), select(vec3<bool>(global3.b.x, global3.b.x, true), global3.b, vec3<bool>(global3.b.x, true, false)), vec3<bool>(any(vec3<bool>(false, global3.b.x, global3.b.x)), !global3.b.x, true)), Struct_1(_wgslsmith_div_i32(global3.d.b.a, global0.x) << (~4294967295u % 32u), ~(max(vec3<u32>(global3.d.a.b.x, global3.e.a.b.x, 25974u), vec3<u32>(4294967295u, 9738u, 4294967295u)) ^ ~vec3<u32>(0u, u_input.b, global3.e.a.b.x))), global3.e, Struct_2(Struct_1(-8820i, u_input.c), global3.e.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.a.c)))), -(vec3<i32>(u_input.a, global3.e.b.a, u_input.a) >> (vec3<u32>(global3.e.a.b.x, global3.e.a.b.x, u_input.c.x) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(u_input.b, 25659u, 4294967295u) << (global3.d.b.b % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = firstLeadingBit(_wgslsmith_add_vec2_i32(max(-(global3.a.d.xx >> (global3.e.a.b.xz % vec2<u32>(32u))), vec2<i32>(~global2[_wgslsmith_index_u32(global3.c.b.x, 7u)], global0.x)), vec2<i32>(-(global3.a.d.x >> (global3.a.a.b.x % 32u)), _wgslsmith_mult_i32(min(-29113i, global3.e.b.a), firstLeadingBit(14197i)))));
    var var_2 = _wgslsmith_f_op_f32(-400f + -856f) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.c.x)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.e.c.x), var_0.d.c.x));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    var var_0 = !select(global3.b, select(!select(vec3<bool>(false, global3.b.x, global3.b.x), global3.b, global3.b.x), !vec3<bool>(true, false, global3.b.x), true), global3.b.x);
    let var_1 = Struct_3(global3.e, global3.b, arg_0, global3.e, global3.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.d.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global3.a.c.x)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))) != _wgslsmith_f_op_f32(func_3());
    var var_3 = arg_0;
    let var_4 = Struct_4(~(~(~vec2<u32>(var_3.b.x, global3.a.a.b.x))) & _wgslsmith_mod_vec2_u32(~global3.a.b.b.zy, ~_wgslsmith_sub_vec2_u32(arg_0.b.zy, arg_2)), vec2<f32>(global3.d.c.x, global3.e.c.x));
    return arg_0.b.x;
}

fn func_1() -> vec3<u32> {
    let var_0 = ~vec4<u32>(~(~u_input.c.x), firstLeadingBit(func_2(Struct_1(-1i, vec3<u32>(global3.c.b.x, 4294967295u, 61913u)), u_input.c.x, ~vec2<u32>(1u, u_input.b))), global3.c.b.x, global3.a.b.b.x);
    var var_1 = Struct_4(vec2<u32>(_wgslsmith_mult_u32(~33803u ^ ~var_0.x, var_0.x), 1266u), vec2<f32>(global3.e.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-124f, 1000f)), _wgslsmith_div_f32(-692f, 364f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -184f))))));
    global1 = array<Struct_4, 16>();
    let var_2 = Struct_3(Struct_2(Struct_1(global0.x, countOneBits(global3.a.b.b << (u_input.c % vec3<u32>(32u)))), Struct_1(-1i, vec3<u32>(~var_1.a.x, 10605u, 36343u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e.c) * vec3<f32>(-1652f, global3.a.c.x, 1000f)), vec3<f32>(global3.e.c.x, _wgslsmith_div_f32(var_1.b.x, global3.a.c.x), _wgslsmith_f_op_f32(sign(global3.a.c.x)))), global3.e.d), select(!(!select(vec3<bool>(global3.b.x, global3.b.x, true), global3.b, true)), global3.b, global3.b), global3.e.a, Struct_2(Struct_1(_wgslsmith_div_i32(-52236i, global0.x), vec3<u32>(~var_0.x, ~u_input.b, 1u)), global3.d.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + 1412f) + _wgslsmith_f_op_f32(-634f + var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.c.x) * 1902f)), select(-global3.d.d, countOneBits(countOneBits(vec3<i32>(-13947i, -2147483647i, -12184i))), all(vec4<bool>(global3.b.x, true, false, global3.b.x)))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(9898u, 7u)], ~select(vec3<u32>(1u, 6289u, global3.a.b.b.x), vec3<u32>(var_0.x, 41806u, u_input.b), vec3<bool>(global3.b.x, false, false))), global3.e.b, global3.e.c, min((vec3<i32>(457i, -1i, -2147483647i) & global3.e.d) & ~global3.a.d, global4.xzz)));
    let var_3 = countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, global3.a.b.a), vec3<i32>(global4.x, u_input.a, global2[_wgslsmith_index_u32(15807u, 7u)])), ~(-77875i), global4.x, 1i), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-40135i, u_input.a, global2[_wgslsmith_index_u32(20631u, 7u)], -40069i), vec4<i32>(global4.x, global2[_wgslsmith_index_u32(var_1.a.x, 7u)], 2147483647i, -6687i), vec4<i32>(global4.x, 1i, var_2.d.a.a, 58998i)), ~vec4<i32>(2147483647i, u_input.a, u_input.a, global3.e.d.x))), 2147483647i, ~global0.x));
    return ~vec3<u32>(~41179u, 27558u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    var var_1 = u_input.a;
    let var_2 = global3.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1390f)), _wgslsmith_f_op_f32(global3.d.c.x - _wgslsmith_f_op_f32(max(-1008f, -1494f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.c.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.d.c.x - _wgslsmith_f_op_f32(-global3.a.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.a.c.x, -796f)), -763f)))));
    var var_4 = Struct_3(Struct_2(Struct_1(min(abs(-23774i), -851i), ~_wgslsmith_clamp_vec3_u32(global3.a.a.b, vec3<u32>(var_0.x, 27737u, var_2.b.x), vec3<u32>(var_2.b.x, 1u, 1u))), Struct_1(-2147483647i, vec3<u32>(~74163u, _wgslsmith_mult_u32(global3.e.a.b.x, var_0.x), var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, _wgslsmith_div_f32(-1569f, 601f), _wgslsmith_f_op_f32(f32(-1f) * -1155f))), vec3<i32>(var_2.a, ~_wgslsmith_div_i32(3814i, u_input.a), countOneBits(-34773i))), vec3<bool>(global3.b.x & global3.b.x, all(vec4<bool>(true, true, true, true)), true), global3.d.b, Struct_2(global3.e.b, Struct_1(_wgslsmith_clamp_i32(abs(1i), global3.e.a.a, _wgslsmith_add_i32(-20591i, 43045i)), ~(~u_input.c)), global3.e.c, reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.x, global4.x, -1i), vec3<i32>(-23925i, 24087i, global3.e.b.a), global3.e.d), global3.e.d))), global3.a);
    global1 = array<Struct_4, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(global4.x, var_2.a, global2[_wgslsmith_index_u32(37720u, 7u)], -2147483647i) & vec4<i32>(27715i, global0.x, 35518i, var_4.a.b.a), vec4<i32>(var_2.a, -1140i, global4.x, 33678i), select(vec4<bool>(global3.b.x, false, false, var_4.b.x), vec4<bool>(global3.b.x, false, true, global3.b.x), vec4<bool>(false, global3.b.x, var_4.b.x, var_4.b.x)))), _wgslsmith_mult_vec4_i32(min(-vec4<i32>(var_4.e.a.a, 10500i, 5591i, global0.x), firstLeadingBit(vec4<i32>(global3.e.a.a, -1i, 27408i, 2147483647i))), vec4<i32>(-42754i, _wgslsmith_mult_i32(var_2.a, 2147483647i), u_input.a, 0i))), global4.x, max(abs(~(-2147483647i)) >> (1u % 32u), firstLeadingBit(global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, global3.a.c.x, 278f, 281f) - vec4<f32>(902f, 1465f, global3.d.c.x, global3.a.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1228f, var_3, var_4.a.c.x, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1394f, -414f, -850f, var_3))))));
}

