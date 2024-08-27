struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 14> = array<u32, 14>(31368u, 4294967295u, 51452u, 1u, 4294967295u, 5639u, 1u, 24298u, 5889u, 12377u, 4294967295u, 42346u, 4294967295u, 39560u);

var<private> global2: i32 = 16037i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<bool> {
    global0 = 10432i;
    global1 = array<u32, 14>();
    var var_0 = Struct_1(-16726i, u_input.b, -(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(36588i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 21837i)), 68593i, u_input.a & u_input.a) ^ _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, -13866i)), vec3<i32>(-1i, -13454i, u_input.a))), all(vec2<bool>(true, true)));
    global1 = array<u32, 14>();
    var var_1 = _wgslsmith_sub_vec2_u32(var_0.b, u_input.b) << (~abs(u_input.b) % vec2<u32>(32u));
    return select(vec4<bool>(var_0.d, false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2059f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f - 2037f) - 159f)), !vec4<bool>(false, !(!var_0.d), true, var_0.d), _wgslsmith_div_u32(~0u, global1[_wgslsmith_index_u32(0u, 14u)]) <= abs(_wgslsmith_mod_u32(14754u, reverseBits(61968u))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = 673f;
    global1 = array<u32, 14>();
    global2 = arg_0;
    global0 = select(~1605i, u_input.a, any(vec4<bool>(any(func_3()), select(false, true, true) && false, false, false)));
    let var_1 = all(select(vec3<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) || false;
    return Struct_1(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~arg_0, 2147483647i | arg_0), arg_0)), firstTrailingBit(~u_input.b), firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, u_input.a), vec3<i32>(2147483647i, -15681i, u_input.a)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(1415u, u_input.b.x, 1u), vec3<u32>(4294967295u, 4294967295u, 1u)) % vec3<u32>(32u))), var_1);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> i32 {
    return -1i & min(~(~countOneBits(6913i)), arg_1.c.x);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 23463u), u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(13949u, global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec2<u32>(1u, 0u))), u_input.b.x, 0u), 1u) == 1u;
    global2 = ~(-(-30977i | (~0i | -u_input.a)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(func_4(4294967295u, func_2(u_input.a)), 0i) | u_input.a, select(~u_input.b, u_input.b, all(!(!vec4<bool>(var_0, true, true, false)))), max(select(abs(~vec3<i32>(-24851i, u_input.a, u_input.a)), -vec3<i32>(-44222i, u_input.a, 1i), true), vec3<i32>(~_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(0i, u_input.a), 1i)), var_0);
    var var_2 = var_1;
    var var_3 = !vec3<bool>(true, true, var_2.d);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-159f, -1089f)))))) > _wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(f32(-1f) * -456f));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1541f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1116f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f + -1025f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(989f, 1607f)))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, -1000f, arg_0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_0, vec3<bool>(true, true, false))))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_5(false, arg_1.d, Struct_1(-10407i, vec2<u32>(arg_1.b.x, 46595u), arg_1.c, arg_1.d))).x, _wgslsmith_f_op_f32(arg_0.x - -252f), arg_2)), arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(791f + -771f), arg_2))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0)))));
    var var_1 = func_2(arg_1.a);
    var var_2 = _wgslsmith_mult_vec2_i32(arg_1.c.yz, var_1.c.yx);
    var var_3 = Struct_1(~_wgslsmith_dot_vec3_i32(-var_1.c, vec3<i32>(u_input.a, u_input.a, -4447i)) >> (arg_1.b.x % 32u), reverseBits(~firstLeadingBit(var_1.b ^ vec2<u32>(global1[_wgslsmith_index_u32(0u, 14u)], u_input.b.x))), ~var_1.c, all(select(vec2<bool>(true, all(vec3<bool>(false, arg_1.d, var_1.d))), vec2<bool>(true, arg_1.c.x >= var_2.x), vec2<bool>(true, true))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(), true, Struct_1(_wgslsmith_div_i32(u_input.a, 4279i), ~u_input.b, ~vec3<i32>(-41252i, u_input.a, -7459i), true)))), func_2((func_2(15938i).a << (global1[_wgslsmith_index_u32(~39652u, 14u)] % 32u)) | u_input.a), func_1());
    global1 = array<u32, 14>();
    var var_1 = Struct_1(reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.c.xx, var_0.c.xy), -27486i)) | -(~_wgslsmith_dot_vec3_i32(var_0.c, var_0.c)), abs(~abs(~var_0.b)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-946f * 1259f) - _wgslsmith_f_op_f32(-1057f * -1062f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(var_0.d, var_0.d, Struct_1(0i, vec2<u32>(53056u, global1[_wgslsmith_index_u32(var_0.b.x, 14u)]), var_0.c, var_0.d))).x * -108f)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(584f - -2006f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-231f)))))));
    var_0 = Struct_1(func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(175f, 1382f, 1000f) + vec3<f32>(-506f, -598f, 877f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, -585f, -1000f)), vec3<bool>(var_0.d, var_1.d, var_1.d))), func_2(-u_input.a), var_1.d).a << (var_1.b.x % 32u), var_1.b, var_1.c, func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-964f, 365f, 1228f), vec3<f32>(-1510f, -391f, 475f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(900f, -447f, -126f) + vec3<f32>(-216f, 475f, 588f))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 0i, u_input.a), var_0.c)), var_1.d).d | var_1.d);
    global0 = -(-(~(~(-92751i))) & var_0.a);
    let var_2 = 58621i;
    global1 = array<u32, 14>();
    var var_3 = ~(~13819i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xy, countOneBits(select(~vec4<u32>(5794u, var_1.b.x, global1[_wgslsmith_index_u32(var_0.b.x, 14u)], 1u), vec4<u32>(u_input.b.x, ~1u, var_1.b.x, abs(var_1.b.x)), !select(vec4<bool>(var_0.d, true, var_0.d, false), vec4<bool>(var_0.d, var_0.d, false, true), vec4<bool>(var_1.d, var_1.d, true, true)))), _wgslsmith_f_op_f32(-746f * _wgslsmith_div_f32(-1238f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1137f)))))));
}

