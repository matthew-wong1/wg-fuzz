struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 21> = array<f32, 21>(-275f, 376f, 1951f, -705f, 602f, 501f, -1000f, -354f, -1149f, 157f, -554f, -2652f, 1399f, 335f, 1777f, 1796f, 235f, 1204f, 933f, 1000f, 1205f);

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = ~4294967295u;
    let var_1 = vec2<bool>((_wgslsmith_dot_vec3_u32(abs(global0.b.ywz), ~vec3<u32>(u_input.a.x, 21249u, u_input.a.x)) < ~11394u) && true, (~abs(-59755i) >> (~_wgslsmith_div_u32(67656u, u_input.b.x) % 32u)) >= (28699i >> (~_wgslsmith_mod_u32(u_input.a.x, 0u) % 32u)));
    return 1u;
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, arg_1, global0.a.b | 45611u)), vec3<u32>(global0.c.b, ~(~(arg_1 | 50522u)), ~firstLeadingBit(func_3())));
    let var_1 = Struct_1(select(select(!(!global0.c.a), vec3<bool>(u_input.b.x >= arg_1, false, !global0.c.a.x), true), global0.a.a, any(vec3<bool>(global0.c.a.x || false, true, any(vec4<bool>(global0.c.a.x, true, global0.a.a.x, true))))), var_0.x << ((func_3() << (~_wgslsmith_div_u32(1u, u_input.b.x) % 32u)) % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-111f)))), _wgslsmith_f_op_f32(trunc(131f)), global0.e.x));
    var var_3 = -global0.d.wzy;
    let var_4 = Struct_2(Struct_1(select(global0.a.a, select(global0.c.a, !vec3<bool>(true, var_1.a.x, global0.a.a.x), global0.a.a), !vec3<bool>(true, global0.c.a.x, true)), _wgslsmith_mult_u32(18669u, arg_0)), ~global0.b, Struct_1(vec3<bool>(any(!var_1.a), all(!vec4<bool>(global0.a.a.x, true, true, global0.a.a.x)), true), global0.c.b ^ 0u), max(global0.d, max(global0.d | vec4<i32>(var_3.x, global0.d.x, 2147483647i, global2.x), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(10876i, 10698i, -23731i, global0.d.x), vec4<i32>(global0.d.x, 0i, 0i, var_3.x))))), global0.e);
    return _wgslsmith_add_u32(4294967295u, var_1.b);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = u_input.b.x ^ func_2(firstLeadingBit(u_input.b.x ^ (1u << (global0.b.x % 32u))), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.yw, vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(global0.c.b, 53111u) | vec2<u32>(u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_mult_i32(29216i, global2.x);
    var var_2 = global0.a;
    var_0 = 1u;
    global0 = Struct_2(Struct_1(!global0.c.a, 0u), _wgslsmith_div_vec4_u32(arg_0 & (~vec4<u32>(u_input.a.x, var_2.b, 4294967295u, var_2.b) ^ vec4<u32>(0u, u_input.a.x, arg_0.x, arg_0.x)), vec4<u32>(var_2.b, arg_0.x, ~arg_0.x << (abs(u_input.a.x) % 32u), 13609u)), global0.a, vec4<i32>(_wgslsmith_sub_i32(max(global0.d.x, global2.x), global2.x & 29824i), 1i, 23616i, ~global0.d.x) ^ firstTrailingBit(vec4<i32>(global0.d.x & 65595i, _wgslsmith_add_i32(global2.x, 1i), _wgslsmith_mod_i32(-54945i, global2.x), 1i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.e)))), _wgslsmith_div_vec3_f32(global0.e, vec3<f32>(_wgslsmith_f_op_f32(round(-1678f)), _wgslsmith_f_op_f32(-3209f - global1[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(-global0.e.x))), true || all(vec2<bool>(false, false)))));
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2(0u, 28246u), 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(_wgslsmith_add_vec4_u32(vec4<u32>(40014u, u_input.a.x, u_input.a.x, global0.b.x), vec4<u32>(u_input.b.x, 14587u, 0u, 37617u))))) + global0.e.x));
    let var_1 = _wgslsmith_dot_vec3_i32(reverseBits(countOneBits(vec3<i32>(global2.x, 0i, -1i) << ((vec3<u32>(global0.a.b, 26476u, global0.a.b) >> (global0.b.wzx % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.d.x, 2147483647i, global0.d.x), global2.wwx), -global2.yxx), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-41467i, global0.d.x, global2.x), vec3<i32>(34226i, -9388i, 0i), vec3<i32>(global2.x, -32489i, global2.x))) << (_wgslsmith_clamp_vec3_u32(~u_input.a, ~vec3<u32>(1u, 20537u, 1660u), ~global0.b.wxz) % vec3<u32>(32u)), vec3<i32>(1458i, firstTrailingBit(18650i), 2147483647i)));
    var_0 = global0.e.x;
    var var_2 = 1000f;
    var var_3 = Struct_2(Struct_1(global0.c.a, max(min(1u << (global0.b.x % 32u), global0.c.b), ~abs(global0.c.b))), ~(max(vec4<u32>(u_input.b.x, global0.c.b, 4294967295u, 12149u), firstTrailingBit(vec4<u32>(4294967295u, 1u, u_input.a.x, 0u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 86389u, global0.c.b, global0.b.x), select(vec4<u32>(u_input.b.x, 95210u, global0.b.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, global0.b.x), vec4<bool>(false, true, global0.c.a.x, global0.a.a.x))) % vec4<u32>(32u))), Struct_1(global0.c.a, ~_wgslsmith_sub_u32(1u, global0.a.b)), global0.d, _wgslsmith_f_op_vec3_f32(-global0.e));
    global1 = array<f32, 21>();
    let var_4 = Struct_1(vec3<bool>(false, all(vec3<bool>(true, true, true)), select(all(!vec4<bool>(var_3.c.a.x, var_3.c.a.x, false, true)), true && (var_3.a.a.x && false), var_1 <= _wgslsmith_sub_i32(1i, var_1))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~(~vec4<i32>(-2072i, -4735i, -52715i, 2147483647i)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.b >> (22955u % 32u), 1u >> (var_3.a.b % 32u), global0.b.x), vec3<u32>(1u, reverseBits(abs(8604u)), 4294967295u)), vec4<i32>(~(-firstLeadingBit(var_1)), ~var_3.d.x, ~(~max(var_3.d.x, global2.x)), -20188i), -_wgslsmith_add_i32(~(-1i), max(global2.x, max(var_3.d.x, -1i))));
}

