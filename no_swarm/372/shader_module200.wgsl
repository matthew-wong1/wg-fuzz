struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec4<u32>(4842u, 4294967295u, 32014u, 61740u), 33895u);

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = Struct_2(global1[_wgslsmith_index_u32(global0.b.x, 23u)], ~global0.b, global0.b.x);
    let var_0 = ~reverseBits(~max(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, u_input.b.x, 33988u), vec3<u32>(25637u, 0u, u_input.b.x))));
    global1 = array<vec2<bool>, 23>();
    var var_1 = global0.a.x;
    var var_2 = Struct_3(Struct_2(!select(global1[_wgslsmith_index_u32(20753u, 23u)], vec2<bool>(true, global0.a.x), global0.a.x), global0.b, select(var_0, countOneBits(_wgslsmith_clamp_u32(global0.b.x, var_0, 1u)), global0.a.x || true)), Struct_2(!global1[_wgslsmith_index_u32(arg_0, 23u)], ~select(global0.b, vec4<u32>(1u, 10838u, var_0, 4294967295u), select(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), vec4<bool>(false, false, global0.a.x, global0.a.x), false)), 30922u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1741f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1166f, -631f), _wgslsmith_f_op_f32(1170f - -177f), true)))))));
    return ~select(select(abs(u_input.b) | (var_2.b.b.zyz & vec3<u32>(4294967295u, 4294967295u, arg_0)), ~vec3<u32>(u_input.b.x, 22789u, 55670u), !vec3<bool>(false, global0.a.x, true)), ~abs(reverseBits(vec3<u32>(36420u, global0.c, 4294967295u))), !select(var_2.a.a.x, 0i < u_input.a, var_2.a.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(reverseBits(global0.c >> (u_input.b.x % 32u)), 23u)], global0.b, _wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, global0.c, global0.b.x), ~global0.b.zzz), func_3(15888u))), Struct_2(vec2<bool>(true, global0.a.x), global0.b, 20870u | u_input.b.x), _wgslsmith_f_op_f32(ceil(-1414f)));
    var var_1 = Struct_1(select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 5519i, -1i), vec4<i32>(31572i, u_input.a, 16297i, 0i)), 1i), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -19600i, u_input.a, u_input.a)), vec4<i32>(-8278i, u_input.a, -2147483647i, -10084i) | vec4<i32>(25016i, u_input.a, u_input.a, u_input.a))), -vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a) & vec4<i32>(u_input.a, 0i, i32(-1i) * -2147483647i, -u_input.a), select(vec4<bool>(true, true, true, u_input.b.x < u_input.b.x), select(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), select(vec4<bool>(true, true, false, var_0.b.a.x), vec4<bool>(global0.a.x, var_0.a.a.x, false, var_0.a.a.x), false), !var_0.a.a.x), vec4<bool>(any(global0.a), var_0.a.a.x, all(vec2<bool>(true, global0.a.x)), var_0.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, var_0.c, 388f), vec3<f32>(541f, var_0.c, 553f)))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 604f, -1958f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(-331f, 586f, var_0.c), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -1000f, 1225f)))))), _wgslsmith_sub_vec2_i32(vec2<i32>(max(u_input.a, -16990i), -u_input.a), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a))) << (reverseBits(~_wgslsmith_mod_vec2_u32(global0.b.ww, u_input.b.yx)) % vec2<u32>(32u)));
    var_0 = Struct_3(Struct_2(vec2<bool>(global0.a.x, all(vec4<bool>(global0.a.x, false, var_0.a.a.x, var_0.b.a.x))), reverseBits(_wgslsmith_sub_vec4_u32(min(global0.b, var_0.b.b), select(global0.b, global0.b, var_0.b.a.x))), countOneBits(firstLeadingBit(_wgslsmith_sub_u32(63955u, 19500u)))), Struct_2(global0.a, select(global0.b, vec4<u32>(u_input.b.x, global0.c, u_input.b.x, u_input.b.x) ^ ~var_0.b.b, vec4<bool>(var_0.b.a.x, true, global0.a.x, global0.a.x)), func_3(4294967295u).x), _wgslsmith_f_op_f32(454f - var_1.b.x));
    var_0 = Struct_3(Struct_2(select(select(!vec2<bool>(false, global0.a.x), !var_0.a.a, true), !vec2<bool>(true, var_0.a.a.x), global1[_wgslsmith_index_u32(countOneBits(countOneBits(4294967295u)), 23u)]), vec4<u32>(0u << (u_input.b.x % 32u), ~62357u, var_0.a.c, var_0.a.c), ~(~(~61490u))), Struct_2(select(global0.a, !var_0.a.a, global1[_wgslsmith_index_u32(~1u ^ ~var_0.a.b.x, 23u)]), ~(~(~vec4<u32>(57487u, 57126u, 0u, 0u))), global0.b.x << (global0.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(floor(var_1.b.x)))))));
    var_1 = Struct_1(_wgslsmith_sub_vec4_i32(-var_1.a, ~var_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, 534f, 663f), vec3<f32>(var_0.c, var_0.c, -673f))) * _wgslsmith_f_op_vec3_f32(var_1.b + var_1.b))), false)), vec2<i32>(abs(0i ^ _wgslsmith_mod_i32(var_1.a.x, 24711i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.a.x), var_1.a), _wgslsmith_mod_vec4_i32(-vec4<i32>(-37936i, u_input.a, u_input.a, -22972i), abs(vec4<i32>(var_1.a.x, u_input.a, -1i, 46903i))))));
    return Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], ~vec4<u32>(min(1u, 45948u), _wgslsmith_mod_u32(~4294967295u, ~0u), var_0.b.c, abs(1u)), _wgslsmith_dot_vec2_u32(~global0.b.yy, ~(~(~u_input.b.zx))));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec2<bool>, 23>();
    let var_0 = !(!vec2<bool>(false, (-27989i | u_input.a) > u_input.a));
    global0 = func_2();
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32((u_input.a ^ u_input.a) << (~global0.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, u_input.a), vec4<i32>(1i, -39120i, -17616i, u_input.a)) ^ -9187i), -(~(-8907i)), u_input.a), -abs(max(_wgslsmith_add_vec3_i32(vec3<i32>(-17898i, 2147483647i, u_input.a), vec3<i32>(u_input.a, -1i, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -20567i, -2147483647i), vec3<i32>(27980i, u_input.a, u_input.a)))));
    global0 = Struct_2(global0.a, ~(~(~(global0.b & global0.b))), _wgslsmith_mod_u32(countOneBits(global0.b.x), _wgslsmith_clamp_u32(4294967295u, 1u, ~_wgslsmith_add_u32(global0.b.x, 4294967295u))));
    return StorageBuffer(39684u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 23>();
    global1 = array<vec2<bool>, 23>();
    var var_0 = -vec2<i32>(u_input.a, -u_input.a) ^ vec2<i32>(-select(1i, u_input.a, false), u_input.a);
    var_0 = ~vec2<i32>(select(2519i, -_wgslsmith_mult_i32(37746i, -14709i), global0.a.x), _wgslsmith_add_i32(u_input.a, firstTrailingBit(var_0.x)));
    global0 = Struct_2(global0.a, global0.b, 31586u);
    var var_1 = 0u;
    let x = u_input.a;
    s_output = func_1();
}

