struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(-max(1i, reverseBits(u_input.b.x)), ~(~1i));
    global0 = arg_0.x;
    var var_1 = Struct_3(abs(u_input.b), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a >> (u_input.a % 32u), u_input.c | 0u), vec2<u32>(~8032u, abs(u_input.c)), vec2<bool>(!arg_0.x, any(vec3<bool>(false, false, arg_0.x)))), _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(20594u, 28721u)), ~firstTrailingBit(vec2<u32>(16179u, u_input.a)))), Struct_2(!arg_0, arg_0.yz, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -226f)), -((u_input.b.xz << (vec2<u32>(19714u, u_input.c) % vec2<u32>(32u))) ^ -vec2<i32>(u_input.b.x, 39960i)), Struct_1(1f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.e.a, _wgslsmith_f_op_f32(222f + -698f)) - _wgslsmith_f_op_f32(-296f + var_1.c.e.a)));
    global0 = true;
    return vec4<bool>(-max(-3477i, _wgslsmith_add_i32(16684i, 1i)) > (max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, u_input.b.x, -9145i), u_input.b), u_input.b.x) << (countOneBits(_wgslsmith_div_u32(17017u, 20228u)) % 32u)), var_1.c.a.x, !(1u != var_1.b), false);
}

fn func_2() -> vec2<u32> {
    let var_0 = vec2<i32>(u_input.b.x >> (_wgslsmith_add_u32(max(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.c, 103211u))) % 32u), _wgslsmith_div_i32(abs(firstLeadingBit(~15842i)), u_input.b.x | u_input.b.x));
    let var_1 = Struct_5(vec3<i32>(u_input.b.x, 4005i, var_0.x));
    global0 = ~u_input.a < ~u_input.a;
    global0 = all(func_3(vec4<bool>(true, true, true, true)));
    global0 = false;
    return ~vec2<u32>(u_input.a, ~1u);
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global0 = !(!any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)));
    var var_0 = true;
    var_0 = true;
    var_0 = !(!(!all(vec4<bool>(false, true, true, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-422f + 1068f), _wgslsmith_f_op_f32(-1895f - -1446f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-872f, -661f), vec2<f32>(-669f, 469f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 258f), vec2<f32>(387f, 461f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(853f, 1538f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(516f, -512f) - vec2<f32>(-220f, 556f)), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1027f, 485f), vec2<f32>(1159f, -164f), vec2<bool>(true, true)))))));
    return Struct_1(_wgslsmith_f_op_f32(-2203f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1742f - 900f), 881f, true))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = -1i < ~abs(2147483647i ^ -u_input.b.x);
    let var_0 = _wgslsmith_div_f32(-503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1513f - _wgslsmith_f_op_f32(f32(-1f) * -1379f)))) - -526f));
    return func_4(min(arg_0.yy, firstLeadingBit(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(u_input.b.yy), vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(38763i, -52112i, u_input.b.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b.x, -40451i), vec2<i32>(2147483647i, -47353i), true), vec2<i32>(1i, u_input.b.x)))), vec2<i32>(25019i, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, 0i), u_input.b.x)));
    let var_1 = Struct_4(-29727i, func_1(reverseBits(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.c), firstTrailingBit(u_input.a), u_input.a))));
    var var_2 = ~firstLeadingBit(vec3<u32>(~u_input.c, ~_wgslsmith_mult_u32(u_input.a, 67864u), 4294967295u));
    global0 = any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_3(vec4<bool>(false, false, false, false)), true), false), !vec4<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, false))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))));
    let var_3 = any(func_3(vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-var_1.b.a) <= var_1.b.a, _wgslsmith_mod_u32(4294967295u, u_input.a) < _wgslsmith_clamp_u32(4294967295u, 32353u, var_2.x), any(func_3(vec4<bool>(false, true, false, false)).yw))).yxy);
    var var_4 = var_1;
    let var_5 = select(min(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(37315u, 22151u), var_2.yy)), var_2.xz), var_2.xy, 2147483647i == var_4.a);
    var var_6 = -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(-2147483647i), ~_wgslsmith_dot_vec3_i32(~u_input.b, u_input.b | vec3<i32>(var_4.a, 2147483647i, var_6.x)), true), ~u_input.b, var_4.b.a);
}

