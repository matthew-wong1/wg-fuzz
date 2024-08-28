struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: vec3<u32> = vec3<u32>(33453u, 4294967295u, 0u);

var<private> global2: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, 2394f, 596f))))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.e.b.a, arg_1.e.b.a, arg_1.d.b.a), _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(arg_1.e.b.a, arg_1.d.b.a)), abs(~arg_1.e.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 0u, 4294967295u) << (vec4<u32>(0u, arg_1.e.b.a.x, 86405u, arg_1.e.b.a.x) % vec4<u32>(32u)), arg_1.d.b.a))));
    var var_2 = ~(-u_input.c | u_input.a) | _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.c, u_input.c, 0i) >> (~arg_2 % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(var_1.a.x, 15u)]), -1i), _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(arg_2.x, 15u)], u_input.a), 4089i));
    let var_3 = reverseBits(~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, u_input.a, -298i), vec3<i32>(-2147483647i, -2569i, 37587i ^ u_input.b)));
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f - arg_1.b.x))))));
    return arg_1.d.a.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(38673u, u_input.d.x, ~global1.x, 1u), ~reverseBits(max(reverseBits(vec4<u32>(global1.x, 3279u, u_input.d.x, u_input.d.x)), ~vec4<u32>(13694u, 43149u, global1.x, global1.x))));
    var var_1 = any(!select(vec2<bool>(true, u_input.d.x < 3157u), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c <= u_input.b), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false))));
    return Struct_2(!(!vec3<bool>(true, true, func_3(false, Struct_4(arg_0, vec3<f32>(-234f, -203f, arg_0), true, Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u))), Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<u32>(16156u, global1.x, 18982u, global1.x)))), u_input.d))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(24813u, u_input.d.x, ~1u, u_input.d.x), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.yw, vec2<u32>(61985u, 46776u)), u_input.d.x, global1.x, global1.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    global1 = ~vec3<u32>(max(arg_1, ~46902u), _wgslsmith_div_u32(u_input.d.x, 29995u) & ~u_input.d.x, ~(~21010u));
    global0 = array<i32, 15>();
    global1 = _wgslsmith_add_vec3_u32(~(~(abs(vec3<u32>(global1.x, arg_1, 4294967295u)) ^ (vec3<u32>(7513u, arg_1, 53456u) ^ u_input.d))), arg_2.d.b.a.xxx);
    global2 = any(!(!(!arg_2.e.a))) & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f + -1813f) + _wgslsmith_f_op_f32(round(arg_2.a)))) > _wgslsmith_f_op_f32(-arg_2.a));
    var var_0 = _wgslsmith_div_vec4_i32(select(-firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(arg_2.d.b.a.x, 15u)], 37955i, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<i32>(0i, u_input.b, -24149i, 38374i))), -vec4<i32>(~0i, u_input.c, -20056i, ~global0[_wgslsmith_index_u32(global1.x, 15u)]), !arg_2.e.a.x), firstLeadingBit(firstLeadingBit(vec4<i32>(-2147483647i, u_input.c, u_input.a, -8686i)) >> (countOneBits(arg_2.d.b.a) % vec4<u32>(32u))) << ((_wgslsmith_add_vec4_u32(~arg_2.d.b.a, arg_2.d.b.a) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(37226u, 0u, arg_2.d.b.a.x, arg_2.d.b.a.x) >> (vec4<u32>(1519u, arg_2.e.b.a.x, arg_2.e.b.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_2.d.b.a.x, 4294967295u, arg_1), vec4<u32>(global1.x, u_input.d.x, arg_2.d.b.a.x, 0u), vec4<u32>(arg_1, global1.x, 50383u, arg_2.d.b.a.x)), func_2(-1187f).b.a)) % vec4<u32>(32u)));
    return Struct_3(u_input.b, Struct_2(arg_2.d.a, Struct_1((arg_2.e.b.a << (vec4<u32>(0u, global1.x, u_input.d.x, arg_2.d.b.a.x) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(arg_1, arg_1, arg_2.d.b.a.x, arg_1)) % vec4<u32>(32u)))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(1u), 34258u >> (arg_1 % 32u)), countOneBits(arg_2.d.b.a.xx)), ~(~(vec2<u32>(global1.x, 136979u) << (vec2<u32>(4294967295u, 34119u) % vec2<u32>(32u))))), Struct_1(~arg_2.d.b.a), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.x)))), arg_2.a))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1348f, arg_2, 649f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, arg_2, arg_2))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1649f, 1377f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, -674f, 864f))))), vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_div_f32(2134f, 327f)))), 42907u, Struct_4(-369f, vec3<f32>(_wgslsmith_f_op_f32(trunc(-554f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(723f))), _wgslsmith_f_op_f32(f32(-1f) * -1727f)), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.b.a.x, false, true, false), true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1755f)))))));
    var var_1 = Struct_1(~countOneBits(var_0.d.a));
    return Struct_2(select(vec3<bool>(any(arg_0.e.a.zy), all(vec4<bool>(true, arg_1, true, arg_1)), false), vec3<bool>(false, false, arg_3.x), arg_0.e.a), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(596f, arg_2, arg_2), vec3<f32>(1000f, -294f, 150f), vec3<bool>(false, arg_1, true))) * vec3<f32>(arg_2, 755f, arg_2)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1194f, 819f, 2436f), vec3<f32>(arg_2, 883f, 535f), var_0.e.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-699f, -1766f, arg_2) * vec3<f32>(arg_2, arg_2, arg_2))))), u_input.d.x, Struct_4(arg_2, vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(-827f, arg_2))), arg_3.x, func_4(vec3<f32>(-460f, -1173f, 1000f), _wgslsmith_mod_u32(u_input.d.x, 4294967295u), Struct_4(1100f, vec3<f32>(257f, arg_2, arg_2), arg_0.b.a.x, var_0.e, var_0.b)).b, var_0.e)).b.b);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    global2 = 91469i >= arg_2.a;
    var var_0 = arg_0.d;
    global1 = ~_wgslsmith_div_vec3_u32(var_0.a.xxz, max(var_0.a.wxx, arg_0.e.b.a.wzw));
    var var_1 = 2147483647i;
    global2 = true;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-314f, _wgslsmith_f_op_f32(-1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-570f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1345f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, -1829f))))))), vec3<f32>(-186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1609f))), _wgslsmith_f_op_f32(func_5(Struct_3(abs(0i), func_1(Struct_3(-8211i, Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<u32>(u_input.d.x, global1.x, 101672u, 1u))), vec2<u32>(u_input.d.x, 4294967295u), Struct_1(vec4<u32>(74858u, global1.x, u_input.d.x, u_input.d.x)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<u32>(0u, u_input.d.x, u_input.d.x, 3278u)))), false, 247f, vec2<bool>(false, false)), ~global1.zx, func_4(vec3<f32>(865f, 2122f, -2333f), global1.x, Struct_4(-1000f, vec3<f32>(-1032f, 680f, -1573f), false, Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<u32>(u_input.d.x, 1u, 3453u, 506u))), Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<u32>(u_input.d.x, global1.x, 0u, u_input.d.x))))).d, Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<u32>(u_input.d.x, global1.x, 0u, global1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -121f) > _wgslsmith_f_op_f32(round(1468f)), Struct_3(global0[_wgslsmith_index_u32(3102u, 15u)] ^ global0[_wgslsmith_index_u32(global1.x, 15u)], func_4(vec3<f32>(-384f, -1000f, 1002f), 7736u, Struct_4(255f, vec3<f32>(455f, 1479f, 857f), true, Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<u32>(u_input.d.x, 23854u, global1.x, 0u))), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<u32>(u_input.d.x, 89676u, global1.x, global1.x))))).b, global1.zy, func_2(-376f).b, func_4(vec3<f32>(-1757f, 815f, -180f), u_input.d.x, Struct_4(-1014f, vec3<f32>(846f, 607f, 290f), false, Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<u32>(global1.x, global1.x, global1.x, u_input.d.x))), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, 111662u, u_input.d.x))))).e), vec4<bool>(true, true, true, true)))), !(func_3(true, Struct_4(519f, vec3<f32>(-1226f, -508f, 349f), true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<u32>(20395u, u_input.d.x, 1u, global1.x))), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<u32>(u_input.d.x, global1.x, u_input.d.x, u_input.d.x)))), u_input.d << (vec3<u32>(u_input.d.x, u_input.d.x, global1.x) % vec3<u32>(32u))) & true), func_1(Struct_3(min(1i, -22571i), func_2(_wgslsmith_f_op_f32(f32(-1f) * -495f)), vec2<u32>(u_input.d.x, ~0u), Struct_1(~vec4<u32>(49218u, 9464u, 4294967295u, u_input.d.x)), func_2(_wgslsmith_f_op_f32(-789f + -832f))), any(vec2<bool>(true, true)), _wgslsmith_div_f32(-286f, -346f), vec2<bool>(true, true)), Struct_2(!vec3<bool>(u_input.d.x >= global1.x, all(vec4<bool>(true, false, true, false)), true), Struct_1(~vec4<u32>(3659u, 9134u, 4294967295u, 60122u))));
    global1 = select(vec3<u32>(u_input.d.x, 1u, ~10585u >> (var_0.e.b.a.x % 32u)), reverseBits(_wgslsmith_sub_vec3_u32(func_4(_wgslsmith_f_op_vec3_f32(round(var_0.b)), ~u_input.d.x, var_0).e.b.a.zzw, ~vec3<u32>(22998u, var_0.e.b.a.x, u_input.d.x) << (u_input.d % vec3<u32>(32u)))), var_0.d.a);
    var var_1 = vec2<i32>(-17501i, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.c, ~1i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, 0u), 15u)], u_input.b)), -u_input.c));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f - var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(func_5(Struct_3(1i, Struct_2(!var_0.d.a, var_0.d.b), ~func_4(vec3<f32>(370f, -1000f, -215f), var_0.d.b.a.x, Struct_4(-335f, vec3<f32>(var_0.b.x, 565f, 1546f), true, var_0.e, var_0.d)).b.b.a.ww, var_0.d.b, var_0.e), 0i <= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), var_0.d.b.a.zxz >> (var_0.d.b.a.xxz % vec3<u32>(32u))), 15u)], func_4(vec3<f32>(_wgslsmith_f_op_f32(425f + 368f), _wgslsmith_div_f32(-1667f, 1027f), -492f), u_input.d.x, Struct_4(var_0.a, var_0.b, any(var_0.e.a), var_0.e, Struct_2(vec3<bool>(var_0.e.a.x, true, var_0.c), var_0.e.b))), !select(!vec4<bool>(true, false, false, var_0.e.a.x), vec4<bool>(var_0.e.a.x, var_0.e.a.x, true, var_0.d.a.x), var_0.e.a.x))), -201f);
    let var_3 = var_0.d.b.a;
    var_1 = firstTrailingBit(reverseBits(reverseBits(firstTrailingBit(vec2<i32>(-1i, -2147483647i) >> (u_input.d.xy % vec2<u32>(32u))))));
    let var_4 = func_2(var_0.a);
    let var_5 = func_4(_wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-428f, var_0.b.x, -3461f))))), ~var_3.x, var_0);
    let x = u_input.a;
    s_output = StorageBuffer((select(var_3.wx, var_5.e.b.a.zx, !vec2<bool>(var_4.a.x, var_5.b.a.x)) ^ global1.zy) | select(min(u_input.d.zy, var_0.e.b.a.wy), var_0.e.b.a.wz, var_4.a.zx));
}

