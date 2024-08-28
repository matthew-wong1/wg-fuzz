struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 1i, 2147483647i);

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(max(abs(0u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(34318u, 0u)), vec2<u32>(1u, 1u), vec2<u32>(firstTrailingBit(4294967295u), ~67664u)), ~vec2<u32>(min(15204u, 1u), ~4294967295u))), 21u)];
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(1i, var_0.b.x), reverseBits(firstTrailingBit(global0.x)), _wgslsmith_add_i32(max(_wgslsmith_mult_i32(global0.x, ~(-35593i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 1i), vec2<i32>(u_input.a.x, var_0.b.x))), var_0.b.x & ~2850i), ~(-((i32(-1i) * -27118i) | reverseBits(global0.x))));
    let var_2 = Struct_1(abs(_wgslsmith_mod_vec2_u32(~var_0.a, vec2<u32>(4294967295u, 39880u))), ~_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_0.b.x, -10262i, var_1.x, -44319i) & var_0.b, reverseBits(var_0.b), true), var_1), true);
    return vec4<u32>(~64006u, select(1u, ~(~_wgslsmith_div_u32(9226u, 23764u)), var_2.c), _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(52739u, var_0.a.x)), _wgslsmith_sub_u32(642u, var_2.a.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(0u, 4294967295u, arg_0.a.x, arg_0.a.x), vec4<u32>(0u, 28971u, 1u, arg_0.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 80148u, 60088u, 8635u), vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x)), ~vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, arg_0.a.x))), _wgslsmith_add_vec4_u32(func_3(514f), abs(~vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, arg_0.a.x) << (~vec4<u32>(0u, arg_0.a.x, arg_0.a.x, arg_0.a.x) % vec4<u32>(32u)))));
    global0 = -(firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.b, vec4<i32>(u_input.a.x, global0.x, u_input.a.x, u_input.a.x)), -vec4<i32>(0i, u_input.a.x, global0.x, u_input.a.x))) ^ vec4<i32>(-2147483647i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1683i, arg_0.b.x, 18454i), vec4<i32>(global0.x, global0.x, 0i, -2147483647i)) | u_input.a.x, ~(-1i)));
    var var_1 = 1u;
    let var_2 = Struct_1(vec2<u32>(~(~_wgslsmith_sub_u32(var_0.x, arg_0.a.x)), 44807u), -arg_0.b ^ arg_0.b, true);
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 47601i, _wgslsmith_div_i32(u_input.a.x ^ (arg_2.b.x & arg_2.b.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.x, -2147483647i), 16125i)), ~u_input.a.x), func_2(func_2(Struct_1(vec2<u32>(arg_3.a.x, 34748u), countOneBits(vec4<i32>(arg_3.b.x, 1i, arg_3.b.x, arg_3.b.x)), !arg_2.c))).b);
    let var_0 = ~vec4<i32>(-13735i, 1i, -global0.x, firstLeadingBit(2147483647i));
    var var_1 = func_2(Struct_1(func_2(arg_3).a, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_2.b.x, arg_3.b.x, var_0.x) | vec4<i32>(global0.x, u_input.a.x, arg_3.b.x, global0.x), min(reverseBits(vec4<i32>(-31527i, arg_3.b.x, arg_2.b.x, -1i)), firstLeadingBit(vec4<i32>(arg_3.b.x, u_input.a.x, 20184i, 39212i)))), true));
    global1 = array<Struct_1, 21>();
    global0 = firstTrailingBit(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(~var_1.b, vec4<i32>(var_0.x, arg_2.b.x, 1i, -2147483647i) ^ vec4<i32>(u_input.a.x, 0i, -2147483647i, global0.x))), vec4<i32>(_wgslsmith_sub_i32(var_0.x ^ 34909i, 84531i), arg_3.b.x, select(u_input.a.x, u_input.a.x, var_1.c | var_1.c), (i32(-1i) * -1i) >> (1u % 32u))));
    return Struct_1(func_2(arg_3).a, abs(-arg_2.b), !(!any(vec2<bool>(arg_3.c, true))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 21>();
    var var_0 = func_2(Struct_1(arg_1.a, arg_3.b, arg_1.c));
    return (func_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-1i, 24808i, var_0.b.x, -1i), any(vec3<bool>(arg_2, var_0.c, true)))).a.x ^ ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 35222u, arg_3.a.x), 38270u)) & ~(~(~4294967295u));
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(29413u, 21u)];
    var var_1 = func_5(abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(1u), var_0.a.x), var_0.a.x)), func_4(_wgslsmith_clamp_u32(var_0.a.x, firstTrailingBit(var_0.a.x), countOneBits(31017u)), ~vec3<u32>(56370u, var_0.a.x, var_0.a.x), func_2(global1[_wgslsmith_index_u32(abs(var_0.a.x), 21u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.a.x, 4294967295u, var_0.a.x & 55910u, min(var_0.a.x, var_0.a.x)), ~vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, var_0.a.x)), 21u)]), var_0.c, global1[_wgslsmith_index_u32(select(~(~_wgslsmith_add_u32(4294967295u, var_0.a.x)), 29417u, func_2(func_4(_wgslsmith_mult_u32(22924u, 14928u), ~vec3<u32>(var_0.a.x, 14604u, var_0.a.x), func_2(global1[_wgslsmith_index_u32(0u, 21u)]), global1[_wgslsmith_index_u32(~var_0.a.x, 21u)])).c), 21u)]);
    let var_2 = var_0.b.xz | max(-countOneBits(u_input.a), var_0.b.yy & vec2<i32>(-global0.x, min(2147483647i, var_0.b.x)));
    var var_3 = vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -2147483647i), 2147483647i);
    global1 = array<Struct_1, 21>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(23867i, _wgslsmith_clamp_i32(-1i, max(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -28095i, -1i), global0.zyy)), u_input.a.x)), -(func_4(var_0.a.x ^ 13537u, vec3<u32>(var_0.a.x, var_0.a.x, 1u) >> (vec3<u32>(1u, 78492u, 11299u) % vec3<u32>(32u)), func_4(var_0.a.x, vec3<u32>(var_0.a.x, 1u, var_0.a.x), global1[_wgslsmith_index_u32(var_0.a.x, 21u)], Struct_1(vec2<u32>(0u, var_0.a.x), vec4<i32>(var_3.x, -19234i, var_0.b.x, 2147483647i), var_0.c)), func_4(6635u, vec3<u32>(var_0.a.x, 42019u, 14900u), Struct_1(vec2<u32>(8191u, var_0.a.x), vec4<i32>(18031i, var_2.x, -54317i, var_0.b.x), false), global1[_wgslsmith_index_u32(var_0.a.x, 21u)])).b.zz >> (var_0.a % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(~0i, ~select(_wgslsmith_sub_i32(global0.x << (13032u % 32u), 5829i >> (0u % 32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1772i, -1i), vec3<i32>(22726i, 18940i, 2171i)), 0i <= reverseBits(global0.x)));
    global1 = array<Struct_1, 21>();
    let var_1 = ~func_1(637f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(974f * -868f))));
    global1 = array<Struct_1, 21>();
    var var_2 = select(_wgslsmith_sub_vec2_i32(global0.wz, u_input.a), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(select(u_input.a, u_input.a, vec2<bool>(true, false)), global0.yz), vec2<i32>(1i, 1i), max(u_input.a, -vec2<i32>(2147483647i, 16122i))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, max(2147483647i, var_1)), vec2<i32>(abs(global0.x), 0i)), false);
    let var_3 = global1[_wgslsmith_index_u32(abs(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1060f, -292f))))).x), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x ^ 15292u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-163f, 1139f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, 1000f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(203f * 667f), _wgslsmith_f_op_f32(trunc(633f))) + -645f))), var_3.a);
}

