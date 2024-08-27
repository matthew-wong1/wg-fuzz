struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(20447i, 1i, 1i, i32(-2147483648), -1i, 22516i, 23511i, 10201i);

var<private> global1: array<i32, 3> = array<i32, 3>(2147483647i, -26827i, i32(-2147483648));

var<private> global2: Struct_4 = Struct_4(vec3<u32>(42892u, 1u, 4294967295u), vec2<i32>(0i, 19196i), vec3<u32>(1u, 1u, 1u));

var<private> global3: array<f32, 22> = array<f32, 22>(1191f, 148f, -382f, 248f, -402f, -2032f, -797f, 682f, 1963f, -528f, -301f, 1505f, 1124f, -740f, -131f, 1000f, 169f, 1178f, 292f, 1000f, -215f, -1625f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = vec4<i32>(~(-_wgslsmith_add_i32(-1i, firstLeadingBit(2147483647i))), u_input.c, global1[_wgslsmith_index_u32(~global2.a.x, 3u)], ~firstTrailingBit(countOneBits(0i)));
    var var_1 = all(vec3<bool>(all(select(vec2<bool>(false, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false))), (16108u < arg_0.a.x) || true, arg_0.c)) & arg_0.c;
    var var_2 = 52940u;
    global1 = array<i32, 3>();
    let var_3 = Struct_1(u_input.c | ~((global1[_wgslsmith_index_u32(arg_0.a.x, 3u)] & var_0.x) >> (27341u % 32u)), _wgslsmith_div_vec3_u32(~(vec3<u32>(arg_0.a.x, 1u, 1u) << (global2.c % vec3<u32>(32u))), vec3<u32>(~arg_0.a.x, 23763u, 0u)), min(vec3<u32>(u_input.a, ~abs(global2.c.x), 1u), countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(7960u, 1u, 19366u), global2.c, vec3<u32>(86992u, 28309u, global2.a.x)))), select(select(vec3<i32>(abs(u_input.c), var_0.x, _wgslsmith_sub_i32(global2.b.x, -3067i)), ~vec3<i32>(-2147483647i, 0i, 2147483647i), -135f > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.a.x, 22u)])), -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global2.c.x, 3u)], global0[_wgslsmith_index_u32(global2.c.x, 8u)]), vec3<i32>(global2.b.x, var_0.x, -2147483647i))), arg_0.c), !all(select(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, false), false)) & arg_0.c);
    return ~_wgslsmith_clamp_vec3_u32(abs(var_3.c), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4624u, 1u), var_3.c.x, arg_0.a.x), ~(var_3.b & vec3<u32>(0u, u_input.b, u_input.b))), vec3<u32>(1u, max(_wgslsmith_div_u32(u_input.b, arg_0.a.x), global2.a.x | 45645u), 40124u));
}

fn func_2() -> Struct_1 {
    global2 = Struct_4(abs(func_3(Struct_3(vec4<u32>(global2.c.x, 56874u, 6040u, global2.c.x) << (vec4<u32>(u_input.b, 4294967295u, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(30812u, 22u)] - global3[_wgslsmith_index_u32(1u, 22u)]), select(false, true, true)))), ~(-vec2<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 8u)]), ~(-30792i))), abs(~abs(vec3<u32>(18876u, global2.c.x, 15528u)) >> (~vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u))));
    let var_0 = 1631f;
    let var_1 = firstLeadingBit(~(firstLeadingBit(24487i) >> (firstLeadingBit(u_input.b) % 32u)) | 25424i);
    let var_2 = ~(vec3<i32>(global0[_wgslsmith_index_u32(~u_input.a, 8u)], ~global2.b.x, 27637i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.x ^ global2.a.x, global2.c.x, global2.c.x), ~global2.c) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 3u)], -abs(var_2.x & var_2.x), ~var_2.x), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(var_2), var_2), max(global0[_wgslsmith_index_u32(abs(u_input.a), 8u)], var_2.x), ~var_1, countOneBits(0i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a << (global2.c.x % 32u), select(u_input.b, u_input.a, true), 15269u, ~4294967295u), ~vec4<u32>(26021u, 1u, u_input.b, 30831u) ^ vec4<u32>(global2.a.x, 1u, u_input.b, u_input.b)) % vec4<u32>(32u)));
    return Struct_1(1i >> (_wgslsmith_add_u32(~_wgslsmith_sub_u32(0u, global2.a.x), u_input.a) % 32u), _wgslsmith_clamp_vec3_u32(global2.a, global2.a >> (~(global2.c & vec3<u32>(9066u, 0u, global2.a.x)) % vec3<u32>(32u)), ~firstTrailingBit(global2.a ^ vec3<u32>(35464u, 13184u, 1u))), select(~global2.a & vec3<u32>(u_input.a, global2.c.x, ~u_input.b), global2.a, true), var_3.wyw, _wgslsmith_dot_vec3_u32(reverseBits(~global2.a), select(~global2.a, vec3<u32>(1u, global2.c.x, global2.c.x), vec3<bool>(true, true, false))) < func_3(Struct_3(~vec4<u32>(19283u, 0u, 4294967295u, u_input.a), -1802f, true)).x);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_2(func_2());
    var var_1 = firstLeadingBit(vec3<u32>(4294967295u, ~_wgslsmith_add_u32(~1u, 1u), 0u));
    global3 = array<f32, 22>();
    var var_2 = Struct_2(var_0.a);
    let var_3 = var_0.a.c.yx;
    return ~(-29203i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(select(vec3<u32>(76645u, global2.a.x, 1u), max(global2.a, vec3<u32>(4294967295u, global2.c.x, 1u)), true) << (vec3<u32>(global2.c.x, u_input.a, 79308u) % vec3<u32>(32u))));
    let var_1 = vec3<i32>(-36363i | (_wgslsmith_div_i32(u_input.c, -1i) & abs(func_1(vec3<i32>(global1[_wgslsmith_index_u32(11503u, 3u)], global2.b.x, -5479i)))), abs(-u_input.c), _wgslsmith_dot_vec4_i32(~min(select(vec4<i32>(global2.b.x, u_input.c, u_input.c, -2147483647i), vec4<i32>(-2147483647i, u_input.c, global2.b.x, global2.b.x), vec4<bool>(true, true, true, false)), vec4<i32>(-2147483647i, 43768i, -40195i, 6781i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 4250i, 3292i, global1[_wgslsmith_index_u32(global2.c.x, 3u)]), -(~vec4<i32>(43470i, -30117i, -33341i, global1[_wgslsmith_index_u32(var_0.x, 3u)])))));
    var var_2 = 0i;
    let var_3 = ~countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, var_0.x), global2.c.xz, true), global2.a.yz), 61299u, global2.a.x));
    var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(-vec4<i32>(global0[_wgslsmith_index_u32(global2.c.x, 8u)], -1i, 38002i, 0i), vec4<i32>(-26784i, 37917i, 0i, -2147483647i)), countOneBits(vec4<i32>(0i, var_1.x, 1i, 0i))), firstTrailingBit(-(~vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(var_3.x, 8u)], global2.b.x)))), -u_input.c);
    var_2 = abs(-1568i);
    global1 = array<i32, 3>();
    let var_4 = ~firstLeadingBit(global0[_wgslsmith_index_u32(1u, 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 0u, 1u, u_input.b), vec4<u32>(var_0.x, u_input.b, 0u, 11300u))), 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(63138u, 22u)]), var_0.x, 589f, _wgslsmith_div_vec2_i32(vec2<i32>(max(-19464i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(36026u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], 1i), vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(1u, 3u)], -30527i, var_1.x)) << (var_0.x % 32u)), vec2<i32>(~abs(global0[_wgslsmith_index_u32(var_3.x, 8u)]), u_input.c)), abs(_wgslsmith_mult_u32(1u, 4294967295u)));
}

