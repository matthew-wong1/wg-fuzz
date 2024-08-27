struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 55178i), -vec2<i32>(u_input.b, -55769i))), -abs(_wgslsmith_mod_i32(u_input.b, -11022i))), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), select(vec4<i32>(-2147483647i, 0i, 0i, -44324i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(true, true, false, true))), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec2<bool>(true, true), ~_wgslsmith_sub_i32(-7962i, u_input.b) >> (u_input.a.x % 32u)));
    global1 = array<Struct_4, 16>();
    let var_1 = var_0.b;
    global1 = array<Struct_4, 16>();
    global0 = ~0u;
    return var_0.b.a.zzz;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = u_input.a.x;
    global1 = array<Struct_4, 16>();
    let var_0 = Struct_2(u_input.b, Struct_1(vec4<i32>(min(~2147483647i, _wgslsmith_sub_i32(-22583i, u_input.b)), countOneBits(~u_input.b), -(u_input.b ^ -16550i), ~firstLeadingBit(42740i)), vec2<bool>(false, -30483i > abs(u_input.b)), _wgslsmith_sub_i32(countOneBits(~(-1i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.b, -7664i), func_3(22661u)))));
    var var_1 = vec4<bool>(false, var_0.b.b.x, true, any(select(!(!vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, true)), !select(vec4<bool>(false, var_0.b.b.x, false, var_0.b.b.x), vec4<bool>(false, var_0.b.b.x, false, false), var_0.b.b.x), !var_0.b.b.x)));
    let var_2 = abs(-vec4<i32>(var_0.b.a.x, -28724i, ~2147483647i, -abs(u_input.b)));
    return var_0;
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    global1 = array<Struct_4, 16>();
    let var_0 = _wgslsmith_sub_vec3_i32(select(~arg_0.b.a.xzy, vec3<i32>(-1i, _wgslsmith_mod_i32(28675i, -1i), -2147483647i) << (u_input.a.xzz % vec3<u32>(32u)), arg_0.b.b.x), vec3<i32>(-1i) * -vec3<i32>(arg_0.a, firstLeadingBit(u_input.b), _wgslsmith_add_i32(u_input.b, arg_0.b.c)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, _wgslsmith_f_op_f32(sign(-867f)), _wgslsmith_f_op_f32(abs(826f)), _wgslsmith_f_op_f32(f32(-1f) * -473f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(751f, -628f, 1434f, -434f), _wgslsmith_div_vec4_f32(vec4<f32>(903f, -650f, -182f, -1788f), vec4<f32>(-581f, 1033f, -1348f, -1052f)))))));
    return Struct_5(u_input.b, u_input.a);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5, arg_3: vec3<bool>) -> bool {
    var var_0 = u_input.b;
    var var_1 = max(select(~(-vec4<i32>(u_input.b, arg_2.a, -244i, u_input.b)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-501i, arg_2.a, arg_2.a, arg_2.a), vec4<i32>(u_input.b, 2147483647i, arg_2.a, -2147483647i) & firstTrailingBit(vec4<i32>(arg_2.a, 2147483647i, -1i, u_input.b))), select(!(!vec4<bool>(arg_0.b.x, arg_3.x, true, false)), vec4<bool>(true, true, all(vec4<bool>(false, arg_3.x, arg_0.b.x, false)), arg_3.x && arg_3.x), select(!vec4<bool>(true, false, arg_0.a, false), vec4<bool>(arg_3.x, true, arg_0.a, arg_0.b.x), arg_3.x || arg_3.x))), vec4<i32>(-21958i, u_input.b, _wgslsmith_mod_i32(arg_2.a, i32(-1i) * -22429i), ~1i) & vec4<i32>(1i, -2621i, ~(-1i), 2147483647i));
    var_1 = select(~(~firstTrailingBit(vec4<i32>(arg_2.a, arg_2.a, var_1.x, var_1.x))), ~countOneBits(~vec4<i32>(1i, var_1.x, var_1.x, -1i)), false);
    var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_2(countOneBits(~arg_2.b)).b.a.x, var_1.x, -arg_2.a, -arg_2.a), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a, firstLeadingBit(func_3(arg_2.b.x).x), -(~u_input.b), -44141i), countOneBits(vec4<i32>(2147483647i, abs(var_1.x), u_input.b, firstLeadingBit(-2147483647i)))));
    let var_2 = !vec2<bool>(func_2(arg_2.b).b.b.x, all(!vec4<bool>(arg_0.a, arg_0.a, true, arg_3.x)));
    return true;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> vec4<bool> {
    global1 = array<Struct_4, 16>();
    let var_0 = (false || func_5(Struct_3(true, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(536f - 894f))), func_4(func_2(u_input.a)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)))) || !(!(_wgslsmith_f_op_f32(-505f * arg_1) <= _wgslsmith_f_op_f32(abs(arg_1))));
    global1 = array<Struct_4, 16>();
    let var_1 = Struct_2(~u_input.b, Struct_1(~max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 31576i)), firstTrailingBit(vec4<i32>(u_input.b, -24062i, u_input.b, 0i))), vec2<bool>(var_0, true), -1i));
    global1 = array<Struct_4, 16>();
    return vec4<bool>(select(!any(vec3<bool>(var_0, false, false)), any(!vec4<bool>(true, var_1.b.b.x, var_1.b.b.x, false)) | any(vec3<bool>(var_1.b.b.x, false, var_0)), var_1.b.b.x), var_0, firstLeadingBit(~u_input.a.x) != ~(~_wgslsmith_mod_u32(0u, 40231u)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a.x;
    let var_0 = select(vec4<bool>(firstTrailingBit(56612u) == 19678u, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true), select(!(!func_1(1u, -947f, u_input.a.zz)), select(vec4<bool>(true, true, true, true), func_1(5869u, _wgslsmith_f_op_f32(abs(2046f)), u_input.a.zx), _wgslsmith_f_op_f32(-1584f * -628f) <= _wgslsmith_f_op_f32(sign(716f))), true), vec4<bool>(false, true, false || func_1(_wgslsmith_dot_vec3_u32(u_input.a.yzw, vec3<u32>(1u, 4294967295u, u_input.a.x)), _wgslsmith_f_op_f32(trunc(386f)), _wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 1u))).x, false));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(326f, 437f))))) * vec2<f32>(_wgslsmith_div_f32(-310f, -104f), 1081f)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-727f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) - -536f), false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-463f, -302f), _wgslsmith_f_op_f32(-517f - -541f))), _wgslsmith_f_op_f32(-1f)))));
    let var_2 = !(!var_0.x);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + 1665f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 463f)))), var_0.xy)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(-1422f, var_1.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x))), vec2<f32>(1276f, var_1.x))) + vec2<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(reverseBits(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), -34924i, abs(vec4<i32>(u_input.b, abs(-u_input.b), u_input.b, u_input.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))));
}

