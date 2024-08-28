struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: vec2<u32> = vec2<u32>(32597u, 1u);

var<private> global2: array<f32, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = Struct_4(vec4<f32>(global2[_wgslsmith_index_u32(countOneBits(~(~global1.x)), 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 1u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~21884u, 1u)], global2[_wgslsmith_index_u32(global1.x, 1u)])), global2[_wgslsmith_index_u32(42554u, 1u)], _wgslsmith_f_op_f32(min(-910f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(46798u, 1u)])))))), _wgslsmith_dot_vec3_i32(max(abs(-vec3<i32>(u_input.c.x, -43398i, arg_0.x)), vec3<i32>(~26430i, u_input.c.x, u_input.c.x)), vec3<i32>(23826i, _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(u_input.c.x, -2147483647i)), _wgslsmith_div_i32(u_input.e & u_input.c.x, -23239i))));
    let var_1 = vec3<i32>(max(var_0.b, ~(-(~u_input.c.x))), _wgslsmith_mod_i32(u_input.c.x & (i32(-1i) * -1i), -_wgslsmith_add_i32(u_input.c.x, abs(0i))), ~(-2147483647i));
    let var_2 = var_0;
    global2 = array<f32, 1>();
    global0 = vec4<bool>(true, false, false, false);
    return firstLeadingBit(vec2<u32>(min(22470u, u_input.a << (abs(12775u) % 32u)), global1.x));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec2<u32> {
    global1 = _wgslsmith_add_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~21384u), reverseBits(vec2<u32>(u_input.d, global1.x)) & ~vec2<u32>(u_input.b, global1.x))), abs(~func_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, -2147483647i), vec2<i32>(u_input.e, u_input.c.x)))));
    global2 = array<f32, 1>();
    let var_0 = countOneBits(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(firstLeadingBit(-1i), -7703i)), -reverseBits(-22281i), i32(-1i) * -73240i));
    let var_1 = vec4<f32>(1239f, -297f, -1313f, -170f);
    var var_2 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-30944i, var_0.x, var_0.x, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 23377i, -7629i, -2147483647i), -vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, var_0.x), -vec4<i32>(var_0.x, 11447i, u_input.c.x, 1i))) >> (min(vec4<u32>(min(u_input.a, 1u), 1u, 66480u, func_3(u_input.c).x), firstLeadingBit(select(vec4<u32>(u_input.a, global1.x, 44054u, u_input.b), vec4<u32>(1u, 71682u, u_input.a, 4480u), vec4<bool>(true, true, true, false)))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-635f, -384f, var_1.x, global2[_wgslsmith_index_u32(1u, 1u)]), var_1) - _wgslsmith_f_op_vec4_f32(round(var_1)))), ~vec4<u32>(reverseBits(u_input.b), 1u, ~10077u, ~global1.x), vec4<u32>(4294967295u, u_input.d, ~global1.x, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 2855u), vec2<u32>(u_input.b, 31214u))))), select(!(!(!vec4<bool>(arg_0, true, true, global0.x))), !vec4<bool>(true, false, any(global0.zy), true), false));
    return vec2<u32>(var_2.b.c.x, firstLeadingBit(global1.x >> (~1u % 32u)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    global1 = ~(~(abs(~vec2<u32>(46088u, global1.x)) ^ countOneBits(func_2(global0.x, global0.yy))));
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(151f)), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a, 1u)]))))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(674i, arg_0, -1i, arg_0), vec4<i32>(58403i, 2147483647i, -1i, u_input.c.x)), -71187i) << (min(1u, func_3(_wgslsmith_mod_vec2_i32(u_input.c, u_input.c)).x) % 32u));
    global2 = array<f32, 1>();
    var var_1 = Struct_2((_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-27965i, arg_0, 2147483647i, var_0.b)), select(vec4<i32>(arg_0, arg_0, var_0.b, u_input.c.x), vec4<i32>(arg_0, 0i, 2147483647i, 1i), global0.x)) | firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, var_0.b, var_0.b, var_0.b), vec4<i32>(arg_0, arg_0, u_input.e, var_0.b), vec4<i32>(var_0.b, arg_0, -2147483647i, 11282i)))) >> (vec4<u32>(u_input.a, u_input.d, firstTrailingBit(u_input.a ^ 21470u), _wgslsmith_mult_u32(44156u, _wgslsmith_add_u32(42495u, global1.x))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - var_0.a)), max(firstTrailingBit(~vec4<u32>(52179u, u_input.a, u_input.a, 34590u)), vec4<u32>(0u, u_input.b, 4048u, 83356u) << (~vec4<u32>(u_input.d, u_input.b, global1.x, 1u) % vec4<u32>(32u))), vec4<u32>(select(348u, global1.x, global0.x) | u_input.b, ~abs(4294967295u), global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 39108u, global1.x) >> (vec3<u32>(global1.x, u_input.a, 79728u) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)))), select(vec4<bool>(true, !all(vec4<bool>(global0.x, global0.x, false, global0.x)), any(!vec2<bool>(false, global0.x)), all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec4<bool>(global0.x, all(vec4<bool>(true, global0.x, global0.x, true)) && (u_input.b <= 1u), all(vec3<bool>(global0.x, true, false)) == !global0.x, false), !any(select(global0.yyy, vec3<bool>(false, global0.x, true), global0.x))));
    var_1 = Struct_2(vec4<i32>(-44271i, _wgslsmith_dot_vec4_i32(var_1.a, -reverseBits(vec4<i32>(-1i, var_1.a.x, var_0.b, u_input.c.x))), u_input.c.x, 1i), var_1.b, select(var_1.c, var_1.c, vec4<bool>(all(var_1.c.wxw), !global0.x & true, any(select(var_1.c, vec4<bool>(true, var_1.c.x, true, global0.x), true)), var_1.c.x)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f + var_1.b.a.x) + _wgslsmith_f_op_f32(floor(102f))), -1775f, var_0.a.x, -581f)), -1i);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_1 {
    global2 = array<f32, 1>();
    let var_0 = vec4<bool>(global0.x, !any(!select(vec4<bool>(true, global0.x, false, false), vec4<bool>(true, false, global0.x, global0.x), global0.x)), any(vec2<bool>(reverseBits(1i) < _wgslsmith_dot_vec3_i32(vec3<i32>(-47827i, -5446i, 0i), vec3<i32>(u_input.e, 27877i, 24643i)), global0.x)), global0.x);
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(-9957i, -14389i, -28507i, 41510i)), -(~vec4<i32>(arg_1.x, u_input.c.x, 0i, -6504i))), _wgslsmith_mod_vec4_i32(firstTrailingBit(min(vec4<i32>(u_input.e, 0i, arg_1.x, 2147483647i), vec4<i32>(36635i, -68676i, arg_1.x, 0i))), min(vec4<i32>(u_input.c.x, arg_1.x, u_input.e, arg_0.b), vec4<i32>(arg_0.b, arg_1.x, -77555i, arg_1.x)))), firstTrailingBit(vec4<i32>(reverseBits(~1i), arg_1.x, u_input.c.x >> ((global1.x ^ 4294967295u) % 32u), -arg_1.x ^ ~44302i)));
    global0 = select(vec4<bool>(!var_0.x, false, !var_0.x, true), vec4<bool>(all(select(var_0, select(var_0, var_0, global0.x), var_0.x || true)), false, true, global1.x < (global1.x | _wgslsmith_dot_vec3_u32(vec3<u32>(5362u, 73072u, 1u), vec3<u32>(global1.x, global1.x, global1.x)))), any(select(select(var_0, var_0, all(var_0.wy)), vec4<bool>(arg_1.x <= -459i, all(vec4<bool>(global0.x, true, true, global0.x)), global0.x, true), var_0)));
    let var_2 = func_2(any(var_0), vec2<bool>(!all(global0.xy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f), global2[_wgslsmith_index_u32(1u, 1u)]) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1943f, global2[_wgslsmith_index_u32(global1.x, 1u)]) * _wgslsmith_div_f32(arg_0.a.x, global2[_wgslsmith_index_u32(global1.x, 1u)]))));
    return Struct_1(arg_0.a, ~vec4<u32>(var_2.x, u_input.a, ~select(var_2.x, 100723u, false), select(~44664u, 0u, any(var_0.xyz))), vec4<u32>(var_2.x, ~(~4294967295u), global1.x, ~countOneBits(11370u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~u_input.e), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c, u_input.c), vec2<i32>(-_wgslsmith_mult_i32(-1i, u_input.c.x), firstTrailingBit(~15611i)), u_input.c));
    global1 = ~func_4(func_1(func_1(-37206i).b), vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -1i | u_input.e), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.e, u_input.e), select(u_input.e, u_input.c.x, false), ~2147483647i))).c.yy;
    global1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.b.xw, ~select(vec2<u32>(var_0.b.x, u_input.b), var_0.b.wx, global0.zw)), 1u), u_input.b);
    let var_1 = 1u;
    let var_2 = ~func_1(-50117i).b;
    global1 = vec2<u32>(~1775u, global1.x);
    var var_3 = reverseBits(var_2);
    let var_4 = func_1(reverseBits(u_input.e >> (max(var_0.c.x, ~27595u) % 32u)));
    let var_5 = func_1(u_input.e).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.ywz, u_input.c);
}

