struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<f32, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = global1.b.b.x;
    let var_1 = global1.b.b.x ^ ~global1.b.b.x;
    global1 = Struct_2(true, Struct_1(-45364i, select(_wgslsmith_sub_vec3_i32(global1.b.b, _wgslsmith_div_vec3_i32(global1.b.b, vec3<i32>(4355i, 0i, -2147483647i))), ~vec3<i32>(var_1, 2147483647i, -2147483647i), select(!vec3<bool>(global1.e, global1.e, false), !vec3<bool>(global1.a, global2.x, global1.e), global1.e))), _wgslsmith_clamp_i32(select(countOneBits(global1.b.a), 18956i, true), ~(-(i32(-1i) * -1i)), 43464i), false, global1.e);
    var_0 = _wgslsmith_div_i32(54680i, ~var_1 >> (u_input.a.x % 32u));
    let var_2 = vec4<bool>(global1.a, true, global2.x, select((var_1 >> (u_input.a.x % 32u)) == (global1.c << (30551u % 32u)), false, false) | global1.d);
    return ~min(min(reverseBits(vec4<u32>(u_input.b, u_input.b, 1u, 1u) ^ vec4<u32>(33789u, 1031u, u_input.b, 13504u)), firstLeadingBit(~vec4<u32>(27760u, 10167u, 4294967295u, 0u))), ~max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, u_input.a.x, u_input.a.x)), countOneBits(vec4<u32>(32480u, u_input.a.x, u_input.b, u_input.b))));
}

fn func_2() -> u32 {
    global0 = 110f;
    var var_0 = func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1060f))))));
    var var_1 = Struct_4(Struct_3(Struct_2(!(80043u <= u_input.a.x), Struct_1(2147483647i, global1.b.b), firstTrailingBit(global1.b.b.x), true, global1.a), -(~vec4<i32>(global1.b.b.x, global1.c, -2147483647i, global1.b.b.x) << ((vec4<u32>(u_input.a.x, var_0.x, 1u, u_input.a.x) | vec4<u32>(43256u, var_0.x, 6767u, u_input.b)) % vec4<u32>(32u))), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(u_input.b, u_input.a.x, 0u)), vec3<u32>(abs(36652u), 4294967295u, u_input.a.x)), global1.b), Struct_3(Struct_2(global1.e, Struct_1(-89155i, -vec3<i32>(global1.c, 2147483647i, -1i)), -global1.c, true, all(!vec2<bool>(global2.x, true))), vec4<i32>(select(global1.c, 1i, true), _wgslsmith_add_i32(-35581i, global1.b.b.x), 8985i, -8258i) << (select(max(vec4<u32>(57471u, 0u, var_0.x, u_input.a.x), vec4<u32>(4294967295u, var_0.x, 28560u, 6242u)), vec4<u32>(7940u, var_0.x, u_input.a.x, 25121u), !vec4<bool>(global1.a, true, global2.x, true)) % vec4<u32>(32u)), abs((u_input.a ^ vec3<u32>(u_input.a.x, 1u, 0u)) << (~u_input.a % vec3<u32>(32u))), global1.b), reverseBits(select(vec4<i32>(38498i, abs(75877i), _wgslsmith_clamp_i32(global1.c, global1.b.b.x, global1.b.b.x), firstLeadingBit(global1.b.b.x)), abs(max(vec4<i32>(global1.c, global1.c, -42328i, global1.b.b.x), vec4<i32>(-1i, 33305i, -21252i, global1.b.a))), global2.x)));
    let var_2 = -584f == _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.x, 0u, 17658u, 13760u), vec4<u32>(u_input.b, var_0.x, u_input.b, 1u))), 5u)], _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~0u, 5u)])));
    global3 = array<f32, 5>();
    return ~countOneBits(~4294967295u);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -1000f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 5u)]), global3[_wgslsmith_index_u32(~43285u, 5u)], _wgslsmith_f_op_f32(f32(-1f) * -764f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 5u)]), 1480f, -516f, global3[_wgslsmith_index_u32(u_input.b | u_input.a.x, 5u)]))));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, func_2(), 4294967295u), 5u)];
    global3 = array<f32, 5>();
    var var_1 = global1.b.b.x;
    global0 = 2722f;
    return Struct_2(any(select(!(!vec2<bool>(global2.x, global2.x)), select(vec2<bool>(false, global2.x), select(vec2<bool>(false, global1.e), vec2<bool>(true, false), vec2<bool>(global1.e, false)), vec2<bool>(global2.x, true)), select(!vec2<bool>(true, global2.x), !vec2<bool>(true, global1.a), !global2.x))), Struct_1(global1.b.b.x, global1.b.b), -1i, -1943f <= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(63108u, 1u)), 5u)]), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1318f - 1149f))), global3[_wgslsmith_index_u32(u_input.b, 5u)]);
    let var_0 = func_1();
    var var_1 = Struct_4(Struct_3(var_0, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -var_0.c), countOneBits(-var_0.c), ~_wgslsmith_dot_vec3_i32(global1.b.b, global1.b.b), 1i), u_input.a, func_1().b), Struct_3(func_1(), ~select(-vec4<i32>(1i, global1.b.b.x, global1.c, global1.b.b.x), vec4<i32>(global1.b.a, 0i, -1959i, -7979i), false), u_input.a | ~firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), var_0.b), -vec4<i32>(1i, -2147483647i, _wgslsmith_sub_i32(1i, 1i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, -7190i, -1i, var_0.c), vec4<i32>(-1977i, -34684i, var_0.c, global1.b.a)))));
    let var_2 = vec4<bool>(!func_1().e, !any(select(vec4<bool>(true, false, false, var_1.a.a.d), select(vec4<bool>(var_1.b.a.a, false, true, true), vec4<bool>(false, global2.x, false, false), vec4<bool>(var_1.b.a.a, var_1.b.a.d, global2.x, var_1.a.a.e)), all(vec2<bool>(var_1.b.a.a, false)))), global2.x, var_0.a);
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~func_2() << (firstTrailingBit(_wgslsmith_mult_u32(var_1.b.c.x, u_input.a.x)) % 32u)), var_1.b.c.x), 5u)];
    var var_3 = u_input.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~7134u);
}

