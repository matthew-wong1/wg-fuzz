struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(575f, vec4<i32>(0i, i32(-2147483648), 41439i, 2147483647i), vec2<i32>(0i, 0i), 0u, 3310i), Struct_2(-1820f, vec4<i32>(-1i, -1i, 30905i, -1i), vec2<i32>(i32(-2147483648), 576i), 4294967295u, 35672i), Struct_2(-727f, vec4<i32>(2147483647i, 52711i, 0i, -2021i), vec2<i32>(1i, -19337i), 1u, 1i), Struct_2(1437f, vec4<i32>(8223i, -1i, 0i, 5724i), vec2<i32>(28681i, 0i), 4294967295u, -12644i));

var<private> global2: i32;

var<private> global3: i32 = 2147483647i;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-33149i, -9488i, 1845i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global3 = -1i;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(845f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(882f)), _wgslsmith_div_f32(-374f, 571f))))))), min(countOneBits(select(abs(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], u_input.b.x, u_input.b.x, u_input.b.x)), firstLeadingBit(vec4<i32>(global4.a.x, global0[_wgslsmith_index_u32(5184u, 1u)], -57973i, u_input.b.x)), vec4<bool>(true, true, true, true))), abs(-vec4<i32>(u_input.b.x, global4.a.x, -14580i, -36285i))), -vec2<i32>(global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(36104u, 1u)], 1i, -global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), u_input.a.x, -12817i);
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(-global4.a, var_0.b.yzz, select(abs(min(u_input.b, global4.a)), _wgslsmith_sub_vec3_i32(var_0.b.xxz, u_input.b & var_0.b.xxw), true)));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, ~var_0.d, ~firstLeadingBit(4294967295u)), vec3<u32>(58967u ^ var_0.d, u_input.a.x, u_input.a.x)), 4u)];
    var var_3 = var_1;
    return max(u_input.b.x, var_1.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    global2 = func_3();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(387f, -430f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, arg_3.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, var_0.a))))));
    var var_2 = arg_0;
    global3 = _wgslsmith_add_i32(-44151i, _wgslsmith_dot_vec3_i32(select(var_2.b.zzx, countOneBits(vec3<i32>(8063i, var_0.e, 30384i)), _wgslsmith_div_f32(var_0.a, arg_3.a) <= 877f), arg_1.zwy));
    return _wgslsmith_div_u32(35110u, _wgslsmith_div_u32(arg_3.d, arg_0.d));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> bool {
    var var_0 = vec2<i32>(global4.a.x, _wgslsmith_sub_i32(0i & firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.b.x, arg_2.a.e, 2147483647i)), -(vec3<i32>(21331i, -1i, arg_1.x) >> (u_input.a % vec3<u32>(32u))))));
    let var_1 = 2018f;
    global2 = ~(-45381i);
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), 1u)];
    var var_2 = Struct_1(~(~select(arg_1.wxy, -vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(arg_0.x, 1u)], 22452i), true)));
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = false;
    var var_1 = false;
    let var_2 = ~reverseBits(34016i);
    var var_3 = ~4294967295u;
    var var_4 = arg_2.b;
    return !vec3<bool>(func_4(vec2<u32>(func_2(Struct_2(1092f, vec4<i32>(-13875i, global0[_wgslsmith_index_u32(72131u, 1u)], arg_3.x, arg_3.x), vec2<i32>(var_2, global0[_wgslsmith_index_u32(1u, 1u)]), 51238u, 3374i), vec4<i32>(1i, -8366i, 22177i, var_2), 60208u, arg_2.b), 1u), _wgslsmith_clamp_vec4_i32(var_4.b, var_4.b, ~arg_2.a.b), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-757f)) + 350f)), true, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.zz;
    let var_1 = vec4<bool>(any(select(!func_1(vec2<bool>(true, false), Struct_1(global4.a), Struct_3(Struct_2(548f, vec4<i32>(global0[_wgslsmith_index_u32(51180u, 1u)], global4.a.x, 7991i, -40356i), vec2<i32>(global4.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), u_input.a.x, 26135i), global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<i32>(global4.a.x, u_input.b.x)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(all(vec2<bool>(false, true)), true, true))), false & ((true && all(vec2<bool>(true, true))) | true), !(true == !any(vec3<bool>(true, true, true))), true);
    var var_2 = max(35630i, _wgslsmith_mult_i32(-(~(-1i)), _wgslsmith_add_i32(~select(global4.a.x, -2147483647i, true), -39412i)));
    var var_3 = vec3<i32>(-1i) * -max(vec3<i32>(1i, _wgslsmith_add_i32(global4.a.x, -16696i), global0[_wgslsmith_index_u32(17441u, 1u)] << (1u % 32u)), vec3<i32>(max(-22972i, global4.a.x), global0[_wgslsmith_index_u32(~1u, 1u)], u_input.b.x));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(852f - 182f), -243f) * 768f), ~vec4<i32>(max(1i, 0i), select(u_input.b.x, global4.a.x, var_1.x), -2147483647i, _wgslsmith_add_i32(-31798i, -30059i)), countOneBits(global4.a.yx << (~vec2<u32>(8328u, 8503u) % vec2<u32>(32u))), var_0.x, global0[_wgslsmith_index_u32(39510u, 1u)]), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 0u), vec3<u32>(89311u, var_0.x, 4294967295u)), u_input.a, var_1.wzy), ~select(u_input.a, vec3<u32>(18715u, u_input.a.x, 0u), var_1.x)), 4u)]);
    var var_5 = 1u ^ select(var_4.b.d, 8695u, false);
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 2147483647i, global4.a.x, u_input.b.x), -var_4.b.b), _wgslsmith_sub_vec4_i32(abs(var_4.b.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, 0i, var_3.x, global0[_wgslsmith_index_u32(71605u, 1u)]) << (vec4<u32>(19462u, var_4.a.d, var_4.a.d, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, -1i, var_3.x, -1i), min(var_4.b.b, var_4.a.b))), !(!any(var_1))));
}

