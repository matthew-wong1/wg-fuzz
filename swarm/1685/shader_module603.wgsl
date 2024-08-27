struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<u32, 17>;

var<private> global2: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(34150u, Struct_2(2147483647i, false, vec3<u32>(1u, 1u, 1u)), 826f, 0u, 1174f), Struct_4(4294967295u, Struct_2(483i, false, vec3<u32>(4294967295u, 95909u, 0u)), 236f, 4294967295u, -1296f), Struct_4(62885u, Struct_2(i32(-2147483648), true, vec3<u32>(9440u, 4294967295u, 54519u)), 1000f, 11915u, -1000f), Struct_4(1056u, Struct_2(-1i, true, vec3<u32>(4294967295u, 1u, 0u)), -1377f, 4294967295u, 1024f), Struct_4(4294967295u, Struct_2(-1i, true, vec3<u32>(13495u, 0u, 4294967295u)), -1567f, 31008u, -385f), Struct_4(85121u, Struct_2(62942i, true, vec3<u32>(64592u, 4294967295u, 4294967295u)), -495f, 62693u, -992f), Struct_4(29728u, Struct_2(i32(-2147483648), true, vec3<u32>(8997u, 0u, 0u)), -839f, 7146u, 817f), Struct_4(1u, Struct_2(66360i, true, vec3<u32>(1884u, 21710u, 1u)), 537f, 4294967295u, -525f), Struct_4(1u, Struct_2(2147483647i, false, vec3<u32>(1u, 4294967295u, 1u)), -1055f, 25779u, -639f), Struct_4(1u, Struct_2(-32418i, true, vec3<u32>(4294967295u, 4294967295u, 4161u)), 177f, 21975u, -1581f));

var<private> global3: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_5(((vec4<u32>(arg_0, 35503u, global3.c.x, 12254u) ^ global3.c) | _wgslsmith_sub_vec4_u32(reverseBits(global3.c), vec4<u32>(4294967295u, 28188u, 1u, u_input.a))) << ((vec4<u32>(~0u, 1u, ~0u, _wgslsmith_sub_u32(u_input.a, u_input.a)) << (~global3.c % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = select(vec3<bool>(false, global3.a.b, true), select(select(!(!vec3<bool>(true, global3.d.c, true)), !select(vec3<bool>(global3.a.b, global3.d.c, true), vec3<bool>(true, global3.d.a, true), global3.a.b), !select(vec3<bool>(global3.a.b, global3.a.b, false), vec3<bool>(true, global3.d.a, global3.a.b), true)), vec3<bool>(global3.a.b, !any(vec3<bool>(true, false, false)), any(!vec3<bool>(global3.d.c, global3.d.c, false))), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, global3.d.a), vec2<bool>(global3.d.c, false))), true, global3.a.b)), true);
    let var_2 = u_input.a;
    let var_3 = vec4<i32>(reverseBits(countOneBits(abs(4935i))), -reverseBits(~(-1i)), firstTrailingBit(~arg_2.x << (_wgslsmith_mult_u32(39643u, 1u) % 32u)), _wgslsmith_div_i32(-arg_2.x, _wgslsmith_div_i32(reverseBits(43755i), 2147483647i))) ^ countOneBits(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, -67558i, arg_2.x, -45460i), vec4<i32>(global3.a.a, 27790i, -39407i, -24109i), vec4<i32>(-2147483647i, arg_1, -9157i, global3.b.x)), min(vec4<i32>(1i, arg_2.x, global3.a.a, arg_2.x) << (var_0.a % vec4<u32>(32u)), max(vec4<i32>(arg_2.x, -17617i, arg_2.x, -32510i), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_1)))));
    let var_4 = -651f;
    return -296f;
}

fn func_2() -> bool {
    global2 = array<Struct_4, 10>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(max(1u, 4294967295u >> (u_input.a % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global3.a.a, 0i, global3.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.a, global3.b.x, global3.a.a), vec3<i32>(global3.a.a, global3.b.x, global3.a.a)), select(vec3<i32>(global3.b.x, global3.b.x, -31829i), vec3<i32>(-40123i, global3.b.x, global3.b.x), vec3<bool>(global3.a.b, global3.d.a, global3.a.b))), vec3<i32>(global3.b.x, select(-1i, -28221i, false), 0i)), min(reverseBits(vec2<i32>(global3.a.a, -24609i) | global3.b), global3.b))), _wgslsmith_f_op_f32(f32(-1f) * -193f), 216f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1u, global3.a.a, vec2<i32>(global3.a.a, 0i))), _wgslsmith_f_op_f32(select(-520f, global3.d.b, false)))))));
    let var_1 = _wgslsmith_add_vec3_u32(select(~(select(vec3<u32>(u_input.a, global3.a.c.x, global1[_wgslsmith_index_u32(61479u, 17u)]), vec3<u32>(4294967295u, u_input.a, 57316u), vec3<bool>(true, true, global3.a.b)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 19589u, global1[_wgslsmith_index_u32(4294967295u, 17u)]), global3.c.yww, vec3<u32>(u_input.a, 1u, 0u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~(vec3<u32>(23105u, global3.a.c.x, 4294967295u) << (global3.a.c % vec3<u32>(32u))), vec3<u32>(~4294967295u, ~global3.c.x, global1[_wgslsmith_index_u32(9784u, 17u)] & 39836u)), global3.a.b), abs(global3.c.xwy));
    return global3.c.x == global1[_wgslsmith_index_u32(reverseBits(global3.a.c.x >> (_wgslsmith_dot_vec4_u32(global3.c, vec4<u32>(2105u, u_input.a, global3.a.c.x, global3.c.x)) % 32u)), 17u)];
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    global2 = array<Struct_4, 10>();
    let var_0 = !(!(!vec2<bool>(func_2(), any(vec2<bool>(global3.a.b, false)))));
    global1 = array<u32, 17>();
    let var_1 = global2[_wgslsmith_index_u32(global3.a.c.x, 10u)];
    let var_2 = reverseBits(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i << (1u % 32u), -2147483647i, select(-1i, var_1.b.a, global3.a.b), 0i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1, global3.b.x, 1i, 48457i), -vec4<i32>(2147483647i, arg_1, -1i, 35086i), vec4<i32>(global3.a.a, 0i, -2147483647i, -29024i) ^ vec4<i32>(4508i, var_1.b.a, -2147483647i, 0i)))));
    return Struct_2(countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-9987i, var_2.x, global3.a.a, var_1.b.a), vec4<i32>(-2147483647i, -1i, 0i, var_1.b.a))), var_1.b.b, _wgslsmith_clamp_vec3_u32(global3.a.c, ~global3.c.yzy, ~var_1.b.c) >> (~(~global3.a.c) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(func_1(~(~(~global1[_wgslsmith_index_u32(4294967295u, 17u)])), global3.a.a), global3.b, reverseBits(~(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u) << ((global3.c | vec4<u32>(4294967295u, 2424u, 4294967295u, 15196u)) % vec4<u32>(32u)))), global3.d);
    var var_0 = vec2<bool>(global3.d.a, global3.d.c);
    global3 = Struct_3(global0[_wgslsmith_index_u32(20843u, 21u)], _wgslsmith_add_vec2_i32(vec2<i32>(global3.a.a, firstLeadingBit(global3.b.x)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i) >> (1u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 1i, global3.b.x), vec3<i32>(global3.a.a, -36340i, global3.a.a) & vec3<i32>(-16087i, 34558i, -1i)))), select(select(vec4<u32>(min(u_input.a, 20793u), _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)]), ~global3.a.c.x, ~u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(8328u, 17u)], firstTrailingBit(global3.c.x), 25330u, _wgslsmith_clamp_u32(26926u, global3.a.c.x, u_input.a)), select(vec4<bool>(false, false, global3.a.b, true), select(vec4<bool>(global3.d.a, global3.d.c, var_0.x, global3.a.b), vec4<bool>(global3.a.b, global3.d.a, true, global3.d.c), vec4<bool>(global3.d.c, var_0.x, var_0.x, true)), all(vec4<bool>(var_0.x, var_0.x, false, false)))), global3.c | (countOneBits(global3.c) << ((global3.c >> (vec4<u32>(0u, u_input.a, global3.a.c.x, 10600u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(select(!vec4<bool>(var_0.x, true, true, true), !vec4<bool>(var_0.x, false, false, global3.d.c), !var_0.x), select(vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(false, global3.a.b, false, false), vec4<bool>(var_0.x, global3.d.a, global3.a.b, true), vec4<bool>(false, global3.a.b, false, true)), vec4<bool>(false, true, false, global3.a.b)), func_1(global3.a.c.x, global3.a.a).b | true)), Struct_1(_wgslsmith_f_op_f32(round(102f)) == global3.d.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.b)))), any(!vec3<bool>(false, true, global3.a.b))));
    var var_1 = reverseBits(-vec4<i32>(abs(global3.b.x), ~(global3.b.x >> (4294967295u % 32u)), global3.a.a, global3.a.a ^ global3.b.x));
    var_1 = -abs(vec4<i32>(firstLeadingBit(global3.a.a), _wgslsmith_mod_i32(var_1.x, 2147483647i), ~select(-47065i, 2444i, var_0.x), firstLeadingBit(_wgslsmith_clamp_i32(72532i, var_1.x, 19596i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec4<u32>(18255u, global1[_wgslsmith_index_u32(23460u, 17u)], global1[_wgslsmith_index_u32(17868u, 17u)], 0u))) >> (vec4<u32>(_wgslsmith_sub_u32(global3.a.c.x, 1u), 1634u, 31768u, (global3.a.c.x & u_input.a) ^ global3.c.x) % vec4<u32>(32u)), var_1.yxy, global3.b);
}

