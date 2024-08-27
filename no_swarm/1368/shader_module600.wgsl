struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global1: array<bool, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_2(vec3<bool>(~_wgslsmith_sub_i32(u_input.b.x, 31461i) >= u_input.b.x, true, all(select(select(arg_3, arg_2.zw, arg_2.x), select(vec2<bool>(global1[_wgslsmith_index_u32(81225u, 5u)], false), arg_3, arg_3.x), select(arg_3, arg_3, arg_3)))), Struct_1(38204i), u_input.b.wzw);
    let var_1 = u_input.b.x;
    global1 = array<bool, 5>();
    var var_2 = !arg_2.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), 3121f), -245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -361f)))));
    return u_input.b.x;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(7836i, 14311i, 49150i), ~(-27068i), abs(1i), -2147483647i), vec4<i32>(func_3(vec4<f32>(1363f, -278f, 792f, 343f), global0.x, vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], false, global1[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(23545u, 5u)], global1[_wgslsmith_index_u32(global0.x, 5u)])), -20206i, ~u_input.b.x, 12641i)), u_input.b) & reverseBits(u_input.b);
    var var_1 = Struct_2(vec3<bool>(any(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 5u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global0.x, 5u)]), global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(17128u, 5u)], true, true))), all(select(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(12165u, 5u)], false, global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 5u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)])), all(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 5u)], true)))), true), Struct_1(i32(-1i) * -50218i), vec3<i32>(u_input.b.x ^ -var_0.x, 0i, ~_wgslsmith_mult_i32(abs(-2147483647i), _wgslsmith_mod_i32(var_0.x, var_0.x))));
    let var_2 = Struct_2(select(!var_1.a, !select(!var_1.a, !vec3<bool>(false, var_1.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), !var_1.a.x), !select(!vec3<bool>(var_1.a.x, true, global1[_wgslsmith_index_u32(global0.x, 5u)]), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, false, global1[_wgslsmith_index_u32(97505u, 5u)]), global1[_wgslsmith_index_u32(0u, 5u)]), var_1.a.x)), Struct_1(firstTrailingBit(u_input.b.x)), vec3<i32>(var_0.x, _wgslsmith_div_i32(38281i, var_0.x), ~_wgslsmith_add_i32(var_0.x, 1i)));
    let var_3 = Struct_2(vec3<bool>(-45071i > var_2.c.x, select(var_2.a.x, any(!vec2<bool>(false, var_2.a.x)), true), true), var_2.b, _wgslsmith_clamp_vec3_i32(abs(u_input.b.xzx), vec3<i32>(var_2.b.a, ~var_0.x >> ((1u << (1u % 32u)) % 32u), var_0.x >> ((u_input.a.x << (0u % 32u)) % 32u)), ~firstTrailingBit(_wgslsmith_div_vec3_i32(var_0.wwy, vec3<i32>(-35310i, -4547i, u_input.b.x)))));
    var var_4 = countOneBits(~var_0.x);
    return 4294967295u;
}

fn func_1() -> vec4<bool> {
    global1 = array<bool, 5>();
    var var_0 = Struct_2(select(vec3<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 5u)], false)), global1[_wgslsmith_index_u32(1u, 5u)], true), vec3<bool>(global1[_wgslsmith_index_u32(func_2(), 5u)], all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)])) && select(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], false), !all(vec3<bool>(false, global1[_wgslsmith_index_u32(79485u, 5u)], global1[_wgslsmith_index_u32(global0.x, 5u)]))), true), Struct_1(-u_input.b.x), vec3<i32>(-1i) * -select(_wgslsmith_clamp_vec3_i32(u_input.b.xyx, u_input.b.ywz, u_input.b.zzy), max(u_input.b.wzz, u_input.b.zxx), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 5u)], true, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0.x, 5u)]))));
    var var_1 = Struct_2(!(!var_0.a), var_0.b, _wgslsmith_mod_vec3_i32(u_input.b.ywz, (~u_input.b.xzx | vec3<i32>(var_0.b.a, var_0.b.a, var_0.b.a)) & u_input.b.zxz));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32((u_input.b >> (vec4<u32>(1u, 1u, global0.x, 52770u) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 20346u, u_input.a.x, global0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(u_input.b ^ u_input.b, vec4<i32>(21717i, u_input.b.x, var_1.b.a, var_0.b.a))) & (u_input.b << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, global0.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.x)) % vec4<u32>(32u))), u_input.b << (vec4<u32>(~42678u, 40804u, ~u_input.a.x, 9638u) % vec4<u32>(32u)));
    return !(!(!vec4<bool>(var_1.a.x, any(vec3<bool>(var_1.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], true)), true, var_0.a.x | global1[_wgslsmith_index_u32(global0.x, 5u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 5>();
    let var_0 = func_1();
    var var_1 = u_input.b.x;
    global1 = array<bool, 5>();
    global0 = vec3<u32>(1u, _wgslsmith_clamp_u32(abs(global0.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 19357u), vec3<u32>(8752u, 13250u, 16979u)), ~vec3<u32>(global0.x, 76921u, 6505u)), 1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.a.x, 0u), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), global0.x);
    global1 = array<bool, 5>();
    var var_2 = u_input.b.x;
    let var_3 = Struct_2(var_0.yxz, Struct_1(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(34215i, u_input.b.x)), _wgslsmith_clamp_i32(u_input.b.x, 64574i, u_input.b.x)) >> (56574u % 32u)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(24041i, u_input.b.x, u_input.b.x), -u_input.b.wxw, -u_input.b.xzy)) ^ select(u_input.b.yyw, countOneBits(u_input.b.zxx), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-151f, -545f, -1000f, -346f), vec4<f32>(-290f, -620f, -1238f, -1384f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1602f, -1238f, -1600f, 614f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -199f, -1086f, -643f))) + vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 565f, -1000f, -1809f), vec4<f32>(-247f, -1000f, -1000f, 1767f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(491f, -953f, -437f, 607f) - vec4<f32>(-2094f, 694f, 1268f, 187f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2221f, 1346f, 1024f, 1800f) * vec4<f32>(-1081f, -478f, -743f, 543f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-305f, -348f, -1000f, -940f))), vec4<bool>(true, var_0.x, var_3.a.x, true)))), !(!var_0))), ~_wgslsmith_add_vec3_i32(firstLeadingBit(var_3.c ^ vec3<i32>(u_input.b.x, var_3.b.a, 83322i)), var_3.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, 1000f, -152f, -1034f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1339f, 999f, -489f, -873f), vec4<f32>(-447f, -882f, -1230f, -1067f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-532f, 1000f, 2012f, -849f), vec4<f32>(-740f, -2226f, 1098f, 165f)))))));
}

