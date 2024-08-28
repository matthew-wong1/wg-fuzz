struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec3<u32> = vec3<u32>(52888u, 1u, 1u);

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global2 = global3.x;
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global0.x, firstTrailingBit(1u)), countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 4294967295u, 23788u), vec3<u32>(810u, 12502u, 1u))) << (~(min(vec3<u32>(89298u, 94039u, 0u), vec3<u32>(14586u, global0.x, 1u)) ^ vec3<u32>(arg_0, arg_0, global0.x)) % vec3<u32>(32u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f - global3.x));
    var var_1 = Struct_1(879f, 74314u, true);
    var var_2 = -107f;
    return abs(vec3<u32>(abs(1u), global0.x, arg_0));
}

fn func_3() -> i32 {
    var var_0 = u_input.a.wz;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-896f, -2121f, true))), -291f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) - global3.x)))));
    var var_1 = -74133i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -954f))), global3.x, -459f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, global3.x, global3.x)));
    var_1 = 2147483647i;
    return _wgslsmith_add_i32(59i, var_0.x);
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.yyw, (_wgslsmith_sub_vec3_i32(vec3<i32>(-24236i, -21819i, -3785i), u_input.a.xyz) ^ vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)) >> ((abs(vec3<u32>(0u, 46318u, global0.x)) | ~vec3<u32>(38031u, global0.x, 1u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(func_3(), i32(-1i) * -15859i), u_input.a.x, func_3()), u_input.a.yxz));
    let var_1 = Struct_2(true, Struct_1(-912f, select(~global0.x, global0.x, all(vec4<bool>(false, true, true, true)) | true), any(vec2<bool>(true, true))));
    var var_2 = global3.x;
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, countOneBits(_wgslsmith_add_i32(-u_input.a.x, 1i))), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xwx, _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), abs(vec3<i32>(-2147483647i, u_input.a.x, 20174i)), u_input.a.xzw)), -(~17200i)));
    global1 = all(vec3<bool>(!((var_1.b.c | false) && var_1.a), !all(select(vec3<bool>(true, true, var_1.a), vec3<bool>(var_1.a, var_1.b.c, false), vec3<bool>(true, var_1.b.c, var_1.b.c))), all(vec2<bool>(var_1.b.c, true))));
    return !select(vec3<bool>(!var_1.a, !(var_1.b.b != 0u), var_1.a), !select(vec3<bool>(true, var_1.b.c, true), vec3<bool>(false, false, false), any(vec4<bool>(true, false, var_1.b.c, var_1.b.c))), !(!(!vec3<bool>(true, false, var_1.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    var var_0 = vec3<bool>(any(!vec4<bool>(select(true, arg_3.x, arg_3.x), select(arg_3.x, true, false), arg_3.x, false)), _wgslsmith_div_f32(-986f, _wgslsmith_div_f32(global3.x, 184f)) != arg_2, true);
    var var_1 = all(select(!(!select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(arg_3.x, true, var_0.x, var_0.x), arg_3.x)), select(!select(vec4<bool>(arg_3.x, false, false, var_0.x), vec4<bool>(arg_3.x, arg_3.x, var_0.x, var_0.x), true), vec4<bool>(arg_3.x, true, false, all(vec3<bool>(arg_3.x, false, var_0.x))), !(!vec4<bool>(arg_3.x, arg_3.x, true, var_0.x))), !vec4<bool>(arg_3.x, any(var_0.xx), true, false)));
    let var_2 = Struct_2(!all(func_2()), Struct_1(arg_2, func_1(_wgslsmith_div_u32(global0.x, 78102u)).x, any(arg_3.yy)));
    global1 = var_2.a;
    var var_3 = vec3<f32>(1283f, _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x))));
    return 48193u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_1(~abs(4294967295u));
    global0 = max(vec3<u32>(func_4(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-35573i, -2147483647i, -1i), vec3<i32>(u_input.a.x, 1i, -10508i)), ~vec3<i32>(u_input.a.x, u_input.a.x, 14063i), true), vec2<i32>(~u_input.a.x, -u_input.a.x), 1000f, select(func_2(), func_2(), vec3<bool>(true, true, true))), 40457u, 48251u), min(vec3<u32>(~0u, 11806u, firstLeadingBit(countOneBits(66143u))), select(_wgslsmith_sub_vec3_u32(vec3<u32>(21555u, global0.x, global0.x), vec3<u32>(11319u, 29674u, 0u)) >> (vec3<u32>(global0.x, 1u, global0.x) % vec3<u32>(32u)), vec3<u32>(~global0.x, global0.x, func_1(global0.x).x), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))));
    let var_0 = Struct_2(all(!vec4<bool>(select(true, false, false), true, true, any(vec2<bool>(true, false)))), Struct_1(-261f, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 4354u, global0.x), ~vec4<u32>(100065u, global0.x, global0.x, global0.x))), !(!all(vec3<bool>(false, false, true)))));
    let var_1 = var_0.b.b;
    var var_2 = var_0.b;
    global1 = !func_2().x;
    var var_3 = vec4<u32>(24643u, var_0.b.b, var_0.b.b ^ 104340u, firstLeadingBit(_wgslsmith_mult_u32(var_0.b.b >> (76382u % 32u), reverseBits(firstLeadingBit(0u)))));
    let var_4 = vec3<u32>(global0.x, ~global0.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_vec4_i32(u_input.a, select(vec4<i32>(-2147483647i, -68136i, u_input.a.x, 32629i), u_input.a, vec4<bool>(var_0.b.c, true, var_0.b.c, false))) | ~(~u_input.a)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 4860u, var_2.b, var_0.b.b) & (vec4<u32>(var_3.x, var_1, global0.x, global0.x) << (vec4<u32>(47269u, 4294967295u, 4294967295u, var_4.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(17075u, var_1, global0.x, global0.x), vec4<u32>(var_4.x, 31680u, 1u, var_3.x)), ~vec4<u32>(global0.x, 88403u, 38970u, var_0.b.b)), ~abs(vec4<u32>(79827u, var_0.b.b, var_4.x, global0.x))) % vec4<u32>(32u)));
}

