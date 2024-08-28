struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<i32, 9> = array<i32, 9>(0i, -3945i, 13147i, 20949i, 24598i, 2147483647i, 2147483647i, 0i, -48382i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(17096u, 1u), select(true, true, true)), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 0u), select(vec2<u32>(4294967295u, 37835u), vec2<u32>(45913u, 13972u), true))), ~vec2<u32>(1u, 1u)), global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mod_u32(1u, ~26072u)), 1u)], all(vec4<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 102758u, 4294967295u, 0u), vec4<u32>(2140u, 0u, 4294967295u, 24697u)) == _wgslsmith_div_u32(67037u, 1u), !select(false, false, true), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-319f, -1000f, false))), -178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(709f))))));
    var_0 = Struct_3(select(max(abs(var_0.a) ^ ~var_0.a, reverseBits(~vec2<u32>(var_0.b.b, var_0.a.x))), var_0.a, all(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, false, true), var_0.c))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x & var_0.a.x, select(var_0.a.x, 6885u, true)), vec2<u32>(~4294967295u, 1u)), _wgslsmith_mod_u32(~var_0.b.b, var_0.b.c), var_0.b.b), var_0.c, vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(max(-670f, -176f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x))))), -483f));
    var var_1 = vec4<u32>(~_wgslsmith_mult_u32(4294967295u, ~var_0.a.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.a.x, 1u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.b.b, var_0.b.a.x), ~var_0.b.c, var_0.b.a.x)), _wgslsmith_sub_u32(abs(var_0.b.a.x), ~8181u) << (var_0.a.x % 32u), _wgslsmith_clamp_u32(~firstLeadingBit(0u), 25155u, abs(var_0.b.c & 6070u))), (4294967295u & var_0.a.x) & var_0.b.b, abs(1u));
    var_1 = firstLeadingBit(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(var_0.a.x, select(var_1.x, var_1.x, var_0.c)), var_1.x, 0u, var_0.a.x)));
    var_0 = Struct_3(_wgslsmith_div_vec2_u32(var_1.zx, ~firstTrailingBit(~var_0.b.a)), global0[_wgslsmith_index_u32(var_0.a.x, 1u)], true, var_0.d);
    return false;
}

fn func_2() -> i32 {
    var var_0 = ~1i;
    var var_1 = !select(vec2<bool>(func_3(), true), vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))));
    return global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(12708u, 1u), vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 4294967295u)))), 9u)];
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)) ^ (global1[_wgslsmith_index_u32(reverseBits(arg_2.x), 9u)] >> (1u % 32u));
    var var_1 = 8572u;
    global0 = array<Struct_1, 1>();
    global1 = array<i32, 9>();
    global0 = array<Struct_1, 1>();
    return ~vec4<i32>(-22240i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 1i), countOneBits(vec3<i32>(28735i, global1[_wgslsmith_index_u32(arg_0.a.a.x, 9u)], 1i))) | _wgslsmith_mult_i32(50409i, countOneBits(19791i)), -func_2(), max(~(-2147483647i), abs(~1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = 43781u;
    var var_2 = 4294967295u;
    let var_3 = Struct_4(Struct_3(min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), global0[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(2211u, _wgslsmith_dot_vec4_u32(vec4<u32>(15510u, 82380u, 1u, 1u), vec4<u32>(8846u, 4294967295u, 0u, 21093u))), 1u)], all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1094f, -713f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -480f, -758f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 1000f, 1288f))))), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(666f - var_0), -1000f, _wgslsmith_f_op_f32(floor(var_0))))), min(abs(func_1(Struct_4(Struct_3(vec2<u32>(55354u, 1u), global0[_wgslsmith_index_u32(43242u, 1u)], true, vec3<f32>(-156f, -1120f, var_0)), vec3<f32>(-434f, var_0, var_0), u_input.b), -272f, vec2<u32>(11103u, 8824u))) >> (~(~vec4<u32>(0u, 0u, 10888u, 4294967295u)) % vec4<u32>(32u)), select(_wgslsmith_div_vec4_i32(-u_input.b, select(vec4<i32>(0i, 2147483647i, u_input.b.x, 1i), u_input.b, true)), ~(vec4<i32>(22170i, global1[_wgslsmith_index_u32(4294967295u, 9u)], 54796i, global1[_wgslsmith_index_u32(4294967295u, 9u)]) << (vec4<u32>(0u, 0u, 0u, 0u) % vec4<u32>(32u))), true)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) + var_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    global0 = array<Struct_1, 1>();
    let var_5 = -257f;
    let var_6 = Struct_4(var_3.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_3.a.d * vec3<f32>(var_3.a.d.x, var_0, -296f)), vec3<f32>(-1244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1317f) * var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1921f + 1000f)))))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_6.a.b.c, var_6.a.a.x, var_3.a.a.x), vec3<u32>(1u, 1u, 1u), vec3<u32>(21237u, 0u, 1u)), ~(vec3<u32>(var_6.a.b.a.x, var_3.a.b.a.x, var_3.a.a.x) | vec3<u32>(1u, 4294967295u, 4294967295u))), _wgslsmith_add_vec2_i32(~u_input.a.xx, ~(-_wgslsmith_mult_vec2_i32(var_3.c.yw, var_6.c.yx))));
}

