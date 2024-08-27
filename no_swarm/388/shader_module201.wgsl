struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<u32, 24> = array<u32, 24>(63258u, 4294967295u, 29327u, 53249u, 79188u, 11029u, 1u, 75199u, 52456u, 4294967295u, 0u, 0u, 1u, 0u, 1u, 35756u, 29068u, 22239u, 1u, 4294967295u, 20205u, 20731u, 1u, 0u);

var<private> global2: array<i32, 14> = array<i32, 14>(-1i, 1i, 2147483647i, 2147483647i, 0i, 0i, -20426i, 19646i, 0i, 9975i, 2147483647i, -46921i, i32(-2147483648), 2147483647i);

var<private> global3: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(103f, -295f, -197f), vec3<f32>(-1874f, -2731f, -318f), vec3<f32>(854f, -1428f, -506f), vec3<f32>(662f, -105f, 2016f), vec3<f32>(1420f, -694f, 1275f), vec3<f32>(-257f, 1939f, -1989f), vec3<f32>(573f, 329f, -177f), vec3<f32>(781f, 1436f, -511f), vec3<f32>(581f, 690f, -259f), vec3<f32>(433f, 965f, 1375f), vec3<f32>(828f, 1061f, -249f), vec3<f32>(1715f, -609f, 1000f), vec3<f32>(1000f, 1040f, -397f), vec3<f32>(-2306f, -1000f, -403f), vec3<f32>(-617f, -937f, 448f), vec3<f32>(-1069f, 553f, 516f), vec3<f32>(1502f, -322f, -929f), vec3<f32>(611f, -896f, -1433f), vec3<f32>(1504f, -1312f, -714f), vec3<f32>(1646f, 1609f, -217f), vec3<f32>(-1074f, -1000f, 257f), vec3<f32>(-714f, 1000f, 535f), vec3<f32>(-400f, -234f, -771f), vec3<f32>(-255f, -1870f, -2331f), vec3<f32>(-1268f, 544f, 1017f), vec3<f32>(-201f, 428f, -1000f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = 1f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(673f, global0[_wgslsmith_index_u32(4294967295u, 9u)]))))));
    global2 = array<i32, 14>();
    let var_2 = Struct_1(vec4<i32>(~global2[_wgslsmith_index_u32(4294967295u, 14u)], 34817i, global2[_wgslsmith_index_u32(~(1u ^ ~u_input.b), 14u)], _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-26730i, 1i)), -vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(9785u, 14u)]))));
    global2 = array<i32, 14>();
    return -min(~vec4<i32>(-global2[_wgslsmith_index_u32(34529u, 14u)], _wgslsmith_sub_i32(u_input.a, 0i), ~var_2.a.x, firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 14u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.a), _wgslsmith_mult_i32(2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], 14u)]), 2512i, ~var_2.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a, var_2.a.x), var_2.a)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a, 36365i, -42504i)), ~vec4<i32>(global2[_wgslsmith_index_u32(22502u, 14u)], global2[_wgslsmith_index_u32(75350u, 14u)], 1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 14u)])), (vec4<i32>(-90379i, u_input.a, global2[_wgslsmith_index_u32(39944u, 14u)], -2147483647i) | vec4<i32>(-2147483647i, -69077i, u_input.a, 30236i)) ^ (vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i) << (vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(16144u, 24u)], 72374u) % vec4<u32>(32u)))), func_3(vec2<bool>(any(vec4<bool>(true, true, false, true)), global2[_wgslsmith_index_u32(6477u, 14u)] == u_input.a)), ~vec4<i32>(u_input.a << (u_input.e % 32u), u_input.a, global2[_wgslsmith_index_u32(944u, 14u)], -2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.d.yz, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], u_input.e)), 24u)], 9u)])))));
    var var_2 = ~(~select(vec4<u32>(~global1[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_clamp_u32(u_input.e, 83200u, u_input.c), _wgslsmith_mult_u32(u_input.e, u_input.d.x), ~0u), ~(~vec4<u32>(4294967295u, 2303u, global1[_wgslsmith_index_u32(2270u, 24u)], u_input.e)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)));
    var_1 = 2084f;
    var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(~global1[_wgslsmith_index_u32(~var_2.x, 24u)], ~(~u_input.c), _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(18321u, global1[_wgslsmith_index_u32(1u, 24u)])), ~_wgslsmith_clamp_u32(var_2.x, u_input.d.x, u_input.b))), vec4<u32>(~(~_wgslsmith_dot_vec2_u32(var_2.yx, u_input.d.xy)), max(0u, 0u), firstTrailingBit(~_wgslsmith_clamp_u32(var_2.x, 10164u, var_2.x)), 0u));
    return Struct_2(Struct_1(vec4<i32>(u_input.a, ~_wgslsmith_clamp_i32(3367i, u_input.a, 0i), global2[_wgslsmith_index_u32(1u, 14u)] ^ min(var_0.a.x, -33059i), -global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 14u)])), vec4<u32>(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, var_2.x)), var_2.zz >> (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 24u)]) % vec2<u32>(32u))), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, 4294967295u), var_2.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41609u, 24u)], 24u)], 0u), vec4<u32>(var_2.x, var_2.x, 4294967295u, 21667u))), 24u)] >> (global1[_wgslsmith_index_u32(select(abs(var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(72311u, u_input.e), u_input.d.xx), global0[_wgslsmith_index_u32(u_input.c, 9u)] <= global0[_wgslsmith_index_u32(var_2.x, 9u)]), 24u)] % 32u), 24u)], 4294967295u), u_input.d, Struct_1(~(~var_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(-func_3(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), arg_2.b, select(arg_0.c, ~(vec3<u32>(1u, u_input.c, u_input.b) & arg_0.b.zzw), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), func_2().d);
    global3 = array<vec3<f32>, 26>();
    var var_1 = true;
    var var_2 = true;
    var var_3 = ~(-u_input.a);
    return Struct_3(Struct_2(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(1u, 14u)], func_3(vec2<bool>(true, true)).x, -226i, arg_2.a.a.x)), ~firstLeadingBit(~vec4<u32>(4294967295u, 4116u, 1u, global1[_wgslsmith_index_u32(arg_2.b.x, 24u)])), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 18996u, global1[_wgslsmith_index_u32(arg_0.c.x, 24u)]), vec3<u32>(0u, 1u, arg_2.b.x) >> (arg_0.b.zxz % vec3<u32>(32u))), Struct_1(vec4<i32>(-1i, ~12900i, reverseBits(2147483647i), ~arg_0.d.a.x))));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2177f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)] * _wgslsmith_f_op_f32(sign(886f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-346f * global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 9u)])))), global0[_wgslsmith_index_u32(arg_2.a.c.x, 9u)], global0[_wgslsmith_index_u32(~reverseBits(select(0u, u_input.c, false)), 9u)]));
    global1 = array<u32, 24>();
    let var_1 = func_4(arg_2.a, Struct_1(arg_2.a.a.a), func_2()).a;
    let var_2 = Struct_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, ~1i, arg_2.a.a.a.x | arg_2.a.d.a.x, var_1.d.a.x ^ -2147483647i)), _wgslsmith_add_vec4_u32(var_1.b, arg_2.a.b), ~vec3<u32>(89552u, var_1.c.x, ~arg_2.a.b.x), func_2().a));
    let var_3 = _wgslsmith_sub_u32(arg_2.a.c.x, ~global1[_wgslsmith_index_u32(4294967295u, 24u)]);
    return vec2<bool>(all(vec4<bool>(arg_0, all(vec4<bool>(arg_0, false, arg_0, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, arg_0), vec2<bool>(false, false))), !select(arg_0, arg_0, arg_0))), false);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> bool {
    global3 = array<vec3<f32>, 26>();
    let var_0 = any(func_5(arg_0, arg_1, func_4(func_2(), Struct_1(vec4<i32>(26498i, 55886i, 7812i, 1i) | vec4<i32>(13146i, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 24u)], 14u)], 73805i)), Struct_2(func_2().a, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 24503u, 23100u, 0u), countOneBits(u_input.d), Struct_1(vec4<i32>(0i, u_input.a, arg_1.x, global2[_wgslsmith_index_u32(u_input.e, 14u)]))))));
    global2 = array<i32, 14>();
    global3 = array<vec3<f32>, 26>();
    global1 = array<u32, 24>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 26>();
    global2 = array<i32, 14>();
    global1 = array<u32, 24>();
    var var_0 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec2<bool>(func_1(10729i > (u_input.a & u_input.a), vec3<i32>(min(16242i, u_input.a), global2[_wgslsmith_index_u32(0u, 14u)] & 12496i, 0i)), true), !all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)));
    global3 = array<vec3<f32>, 26>();
    var var_1 = Struct_1(func_2().d.a ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(104664u, 14u)], 0i, -16824i, -17904i), vec4<i32>(-u_input.a, u_input.a >> (0u % 32u), reverseBits(u_input.a), -15781i)));
    var var_2 = vec2<bool>(var_0.x, var_0.x);
    var var_3 = all(!(!vec2<bool>(true & var_2.x, true)));
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 9u)], global0[_wgslsmith_index_u32(51387u, 9u)]) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(20175u, 9u)]))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-889f, _wgslsmith_f_op_f32(ceil(-216f))), vec2<f32>(1f, global0[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(u_input.c, 24u)], 32624u), 9u)]))), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(667f * 583f), -614f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14768u, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -957f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 1548f, global0[_wgslsmith_index_u32(0u, 9u)]) - vec4<f32>(-357f, 2299f, -1146f, 507f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1608f, global0[_wgslsmith_index_u32(20155u, 9u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 24u)], 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 9u)], -886f, -1000f, global0[_wgslsmith_index_u32(69466u, 9u)]))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-567f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 9u)], global0[_wgslsmith_index_u32(6079u, 9u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6258u, 24u)], 24u)], 9u)])))))), firstLeadingBit(firstTrailingBit(global1[_wgslsmith_index_u32(~func_4(Struct_2(Struct_1(vec4<i32>(var_1.a.x, 88526i, 7913i, var_1.a.x)), vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(0u, 24u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 24u)], 4294967295u, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), Struct_1(var_1.a)), Struct_1(vec4<i32>(var_4.x, var_4.x, -1i, -41587i)), Struct_2(Struct_1(var_1.a), vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], 1u), u_input.d, Struct_1(var_1.a))).a.c.x, 24u)])));
}

