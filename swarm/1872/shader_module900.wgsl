struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, -1000f, vec4<bool>(false, true, true, false), 1000f);

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 15794u, 20031u, 0u, 1u, 24913u, 1753u, 1998u, 52960u, 1u, 1u, 45680u, 4294967295u, 17350u, 0u, 48731u);

var<private> global2: array<Struct_4, 24>;

var<private> global3: array<Struct_2, 15>;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> f32 {
    let var_0 = Struct_2(-arg_1.a.a, global0.d, vec4<bool>(!all(select(vec4<bool>(global4.x, true, false, false), global0.c, vec4<bool>(arg_1.a.c.x, false, true, true))), arg_1.a.c.x, !global4.x, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a.d * 157f))))), -450f));
    let var_1 = select(select(global0.c.x, max(u_input.a.x, 2040u) <= (u_input.a.x << (41944u % 32u)), !arg_1.a.c.x), false, any(vec3<bool>(false, false, select(false, var_0.c.x, true)))) | true;
    global0 = Struct_2(-12472i, 246f, select(vec4<bool>(true, arg_1.a.c.x, global4.x, true), select(select(!global0.c, select(vec4<bool>(global4.x, true, false, var_1), vec4<bool>(true, false, true, var_0.c.x), false), select(arg_1.a.c, vec4<bool>(var_1, arg_1.a.c.x, true, false), global0.c)), vec4<bool>(!arg_1.a.c.x, select(false, global0.c.x, global4.x), u_input.b.x >= 2147483647i, !global0.c.x), var_0.c), vec4<bool>(false, select(arg_1.a.c.x, true, false), true, all(var_0.c.wx))), _wgslsmith_f_op_f32(-arg_1.a.d));
    global2 = array<Struct_4, 24>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.b)), arg_1.a.b, _wgslsmith_f_op_f32(arg_2 - -175f), var_0.d)));
    return -1257f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(8160i, 0i)) << (countOneBits(vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u)), abs(u_input.b.zx & vec2<i32>(-24480i, -41649i)), vec2<i32>(~arg_0, _wgslsmith_add_i32(global0.a, u_input.b.x)))), _wgslsmith_div_vec2_i32(u_input.b.xy << (~_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 1u), u_input.a) % vec2<u32>(32u)), reverseBits(vec2<i32>(global0.a, _wgslsmith_mult_i32(global0.a, arg_0)))));
    let var_1 = true;
    global3 = array<Struct_2, 15>();
    let var_2 = Struct_3(Struct_1(u_input.a.x, u_input.b), Struct_1(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], u_input.a.x), u_input.a.x), ~(~countOneBits(vec3<i32>(arg_0, u_input.b.x, -47023i)))), Struct_1(u_input.a.x, _wgslsmith_div_vec3_i32(u_input.b, -(vec3<i32>(global0.a, global0.a, 2147483647i) << (vec3<u32>(u_input.a.x, 9645u, 0u) % vec3<u32>(32u))))), vec3<u32>(~(0u >> ((u_input.a.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)], 16u)] % 32u)) % 32u)), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(countOneBits(7909u), 60156u)), 34797u), true);
    var var_3 = vec4<u32>(var_2.a.a, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(59761u, 4294967295u, var_2.b.a, 1u), vec4<u32>(0u, 4294967295u, var_2.a.a, global1[_wgslsmith_index_u32(1097u, 16u)])) & ~1u, ~u_input.a.x), global1[_wgslsmith_index_u32(~u_input.a.x, 16u)], firstTrailingBit(_wgslsmith_dot_vec2_u32(var_2.d.zx, vec2<u32>(_wgslsmith_div_u32(8496u, 34669u), u_input.a.x & 4294967295u))));
    return -286f;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = u_input.a;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.d), -778f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(1i, _wgslsmith_f_op_f32(func_3(abs(-13631i), Struct_4(global3[_wgslsmith_index_u32(arg_2, 15u)]), global0.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.a.d, global0.b, 2795f) * vec4<f32>(-1030f, 1129f, 1299f, arg_0.a.b)), vec4<f32>(arg_0.a.b, -400f, 745f, 1147f))))))), _wgslsmith_div_f32(global0.d, _wgslsmith_div_f32(613f, _wgslsmith_f_op_f32(round(965f)))));
    let var_2 = Struct_3(Struct_1(~_wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 16u)], 16u)]) & (abs(arg_2) << (_wgslsmith_div_u32(arg_2, arg_1) % 32u)), vec3<i32>(~(-68482i), arg_0.a.a, -(global0.a >> (u_input.a.x % 32u)))), Struct_1(~_wgslsmith_add_u32(0u, var_0.x) ^ ~1u, firstTrailingBit(-vec3<i32>(-1i, 0i, 0i))), Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), u_input.a), abs(abs(u_input.b))), max(~(~(~vec3<u32>(arg_2, var_0.x, 4294967295u))), ~(~abs(vec3<u32>(arg_1, global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a.x)))), global4.x);
    var var_3 = arg_0.a;
    var var_4 = !var_3.c.zx;
    return true;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global4 = vec3<bool>(!all(vec4<bool>(global0.c.x, true, func_2(Struct_4(Struct_2(2147483647i, 1000f, global0.c, 2126f)), arg_0.x, 36800u), global0.c.x && false)), true, !(~(~4294967295u) != arg_0.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) * vec2<f32>(global0.b, 2076f))))));
    let var_1 = global2[_wgslsmith_index_u32(0u, 24u)];
    let var_2 = !select(select(!vec3<bool>(global0.c.x, global4.x, global4.x), vec3<bool>(global0.c.x, !global0.c.x, global0.c.x), vec3<bool>(var_1.a.c.x && var_1.a.c.x, global0.c.x, true)), !select(vec3<bool>(global0.c.x, global4.x, true), select(vec3<bool>(false, true, global0.c.x), vec3<bool>(global4.x, true, false), var_1.a.c.zxx), global0.c.x), !(1043f == _wgslsmith_f_op_f32(-var_1.a.d)));
    return Struct_1(u_input.a.x, ~_wgslsmith_sub_vec3_i32(vec3<i32>(13676i, -18342i & u_input.b.x, min(u_input.b.x, 0i)), select(vec3<i32>(-41944i, 1i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.a, 20516i, -1i), vec3<i32>(18456i, u_input.b.x, 0i)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 15>();
    let var_0 = u_input.b.x;
    var var_1 = global0.b;
    var var_2 = ~63686u;
    let var_3 = Struct_3(func_1(vec4<u32>(~9341u, global1[_wgslsmith_index_u32(abs(max(4294967295u, u_input.a.x)), 16u)], abs(~u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(61905u, 55972u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 4294967295u, 0u)) | u_input.a.x)), Struct_1(~u_input.a.x, abs(_wgslsmith_add_vec3_i32(countOneBits(u_input.b), vec3<i32>(u_input.b.x, -21329i, -57940i)))), func_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 5981u) & (vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]) ^ vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(32208u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(69439u, 16u)])), ~(~vec4<u32>(15558u, 31492u, 4294967295u, 1u)))), select(firstTrailingBit(countOneBits(abs(vec3<u32>(global1[_wgslsmith_index_u32(102743u, 16u)], 18732u, 5796u)))), reverseBits(select(_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(63563u, 16u)], 1u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 48052u, u_input.a.x)), ~vec3<u32>(51366u, u_input.a.x, 5110u), false)), select(select(vec3<bool>(true, true, true), select(global0.c.wwz, vec3<bool>(global0.c.x, global0.c.x, global0.c.x), global4.x), !vec3<bool>(global4.x, true, true)), global0.c.wyy, select(select(global0.c.yxz, vec3<bool>(false, global0.c.x, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, global4.x), true), global0.c.xzz))), !any(global0.c.wyz));
    var var_4 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~_wgslsmith_div_i32(2147483647i, var_0), var_3.c.b.x), ~(-u_input.b) ^ vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, global0.a), var_0, ~var_3.b.b.x)), var_3.c.b);
    var var_5 = func_1(vec4<u32>(firstTrailingBit(reverseBits(~14966u)), 86077u, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.a.x)).a;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(var_3.c.a, 16u)], abs(0u), ~19405u), 3469u), var_3.c.a, ~1u << (var_3.d.x % 32u), ~reverseBits(51918u)));
}

