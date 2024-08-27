struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-20412i);

var<private> global1: array<i32, 20> = array<i32, 20>(-23273i, -1i, 1i, 1i, i32(-2147483648), -1i, -42749i, 21731i, 2147483647i, -1i, 0i, -1i, 3241i, 13507i, -34517i, -1i, 40999i, -1i, 39852i, 43235i);

var<private> global2: Struct_3 = Struct_3(Struct_1(i32(-2147483648)), Struct_1(11345i), 4294967295u, Struct_2(Struct_1(-16005i), vec2<f32>(-209f, 246f), vec4<u32>(4294967295u, 450u, 1u, 71968u), vec2<bool>(true, false), vec2<i32>(17440i, 0i)));

var<private> global3: vec4<i32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global2 = Struct_3(global2.a, global2.d.a, 100u, Struct_2(global2.a, _wgslsmith_f_op_vec2_f32(-global2.d.b), (~vec4<u32>(44615u, 1u, global2.c, 51336u) | global2.d.c) | ~firstLeadingBit(vec4<u32>(global2.d.c.x, 0u, u_input.d, global2.d.c.x)), vec2<bool>(!(false | global2.d.d.x), true), global3.ww));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = (global2.d.c.xz | (_wgslsmith_mult_vec2_u32(min(global2.d.c.yw, vec2<u32>(86023u, 4294967295u)), max(vec2<u32>(global2.c, 35124u), u_input.e)) & ((vec2<u32>(global2.d.c.x, 4294967295u) | vec2<u32>(global2.d.c.x, global2.c)) & global2.d.c.yz))) & ~vec2<u32>(_wgslsmith_sub_u32(~global2.c, 4294967295u), 1u);
    global2 = Struct_3(global2.d.a, Struct_1(~_wgslsmith_add_i32(2147483647i, ~0i)), select(_wgslsmith_dot_vec3_u32(reverseBits(global2.d.c.wzy), vec3<u32>(_wgslsmith_mod_u32(7131u, var_1.x), _wgslsmith_add_u32(global2.c, u_input.e.x), ~1u)), ~138427u, true), global2.d);
    let var_2 = !(!vec3<bool>(true, all(global2.d.d) & all(global2.d.d), global2.d.c.x < ~5794u));
    return ~var_1.x;
}

fn func_2() -> Struct_1 {
    global2 = Struct_3(global2.d.a, global2.a, ~(~(~61545u)), global2.d);
    global3 = countOneBits(max(vec4<i32>(global0.a, global3.x, countOneBits(abs(global0.a)), -2147483647i), _wgslsmith_mult_vec4_i32(-vec4<i32>(7923i, 18162i, global3.x, global2.d.a.a) & vec4<i32>(-1i, 1i, -21714i, -2147483647i), countOneBits(-vec4<i32>(0i, 1i, global4.x, 0i)))));
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_i32(firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(global2.c), 20u)]), ~24980i)), global2.b, ~(~func_3()), Struct_2(global2.a, global2.d.b, global2.d.c, global2.d.d, ~(~(vec2<i32>(global1[_wgslsmith_index_u32(global2.d.c.x, 20u)], global0.a) ^ vec2<i32>(-1i, global0.a)))));
    var var_1 = _wgslsmith_dot_vec2_i32(~reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(4598i, var_0.d.e.x), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.d.c.x, 20u)])), var_0.d.e)), var_0.d.e);
    var var_2 = vec2<bool>(!all(vec2<bool>(false, global2.d.d.x || true)), true);
    return global2.a;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.e << (global2.d.c.zw % vec2<u32>(32u))), u_input.e), global2.d.c.zy);
    let var_1 = reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(~var_0.x, 3843u & u_input.d) | ~u_input.e, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global2.d.c.x, 0u), 4294967295u), var_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1050f, global2.d.b.x, global2.d.b.x, global2.d.b.x))))));
    let var_3 = global2.d.b.x;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-663f, -1019f, -622f, global2.d.b.x))) + vec4<f32>(global2.d.b.x, 778f, global2.d.b.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.b.x, 670f, var_2.x, global2.d.b.x) + vec4<f32>(-1135f, 614f, global2.d.b.x, var_2.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-406f, var_2.x, 360f, 252f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, -727f, 494f, -682f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.b.x)), _wgslsmith_f_op_f32(floor(-518f)), 1648f)));
    return Struct_3(Struct_1(~abs(firstLeadingBit(global2.a.a))), Struct_1(2147483647i), ~var_1.x, Struct_2(func_2(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1260f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.b.x * var_2.x) * _wgslsmith_f_op_f32(abs(global2.d.b.x)))), ~(~global2.d.c), select(global2.d.d, !global2.d.d, global2.d.d.x), ~vec2<i32>(_wgslsmith_div_i32(global2.a.a, 1i), ~global1[_wgslsmith_index_u32(global2.c, 20u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f * -597f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.b.x), -672f)), global2.d.b.x);
    global3 = -vec4<i32>(firstLeadingBit(global3.x), global1[_wgslsmith_index_u32(~u_input.d, 20u)] >> (firstLeadingBit(0u) % 32u), ~(~firstLeadingBit(0i)), global4.x);
    var var_1 = func_1();
    var var_2 = func_1();
    global4 = ~vec2<i32>(_wgslsmith_div_i32(-abs(0i), _wgslsmith_dot_vec2_i32(~global2.d.e, func_1().d.e)), global3.x);
    var var_3 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(var_3.c.yzx, vec3<u32>(u_input.d, var_3.c.x, u_input.e.x))), 0u)), global2.d.e, -max(global0.a, global3.x) | _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(global3.xxx, global3.yxy), vec3<i32>(func_2().a, 19008i, i32(-1i) * -2030i)), reverseBits(_wgslsmith_clamp_i32(~global1[_wgslsmith_index_u32(var_1.c, 20u)], 1i, -20155i) | global0.a), var_3.e);
}

