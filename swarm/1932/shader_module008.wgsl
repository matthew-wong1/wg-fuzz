struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(false, true, true, false));

var<private> global1: Struct_1 = Struct_1(0i);

var<private> global2: vec3<i32>;

var<private> global3: u32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = 4294967295u;
    global2 = ~_wgslsmith_div_vec3_i32(~(vec3<i32>(-1i, global1.a, arg_3.a.b.x) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, arg_0.a), arg_0.c.xyy)), vec3<i32>(34678i, _wgslsmith_sub_i32(arg_0.c.x, u_input.a), arg_3.a.b.x));
    let var_1 = ~8621u;
    global0 = Struct_4(select(vec4<bool>(any(select(global0.a, global0.a, global0.a)), true, any(global0.a.xx) && true, !arg_3.b.x), !(!global0.a), !any(vec2<bool>(true, arg_1.b.x))));
    global3 = ~(var_1 >> (var_0 % 32u));
    return var_1 ^ firstTrailingBit(var_0);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: bool) -> vec3<i32> {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(countOneBits(~(~99016u)), countOneBits(1u), firstTrailingBit(~_wgslsmith_mod_u32(1u, 7749u))), ~func_3(Struct_5(~2147483647i, -1i > global2.x, arg_0.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d.x, arg_0.d.x, 1114f), vec3<f32>(-1169f, 598f, -1981f), vec3<bool>(global0.a.x, arg_0.b, global0.a.x))), Struct_1(2147483647i)), Struct_3(Struct_2(vec4<f32>(-184f, -1328f, arg_0.d.x, -1190f), vec2<i32>(17075i, -37109i)), global0.a.xxy), 1000f, Struct_3(Struct_2(vec4<f32>(281f, arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_1), vec3<bool>(global0.a.x, true, global0.a.x))));
    global1 = Struct_1(_wgslsmith_clamp_i32(13664i, _wgslsmith_dot_vec3_i32(arg_0.c.xxy, max(arg_0.c.yzx, vec3<i32>(-2147483647i, global1.a, 2147483647i))), -_wgslsmith_mod_i32(arg_0.a, 0i)) | arg_1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 771f, -2236f, arg_0.d.x) * vec4<f32>(arg_0.d.x, arg_0.d.x, 851f, arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(479f, -675f, 904f, 246f) - vec4<f32>(1665f, 348f, 1667f, arg_0.d.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x) - vec4<f32>(1075f, 549f, arg_0.d.x, arg_0.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-866f, -648f, 455f, 165f), vec4<f32>(670f, -397f, arg_0.d.x, 1107f)))))), arg_0.c.zx);
    let var_2 = Struct_1(1i);
    var var_3 = vec2<i32>(~(-64935i), ~_wgslsmith_sub_i32(min(10535i, var_1.b.x), -max(-39853i, var_1.b.x)));
    return vec3<i32>(_wgslsmith_clamp_i32(2147483647i, global1.a, _wgslsmith_sub_i32(1i, arg_0.e.a | arg_1.x)), 0i, var_1.b.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    global2 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(23098i, u_input.a, 1i) ^ vec3<i32>(u_input.a, -1873i, global2.x)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-81066i, global2.x, 0i), vec3<i32>(-2147483647i, global2.x, global2.x)))), func_2(Struct_5(u_input.a, u_input.a != global1.a, select(vec4<i32>(-2499i, global1.a, global1.a, 70796i), vec4<i32>(-1i, global1.a, global1.a, global1.a), global0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 194f, arg_2.x) + arg_0.ywx), Struct_1(global2.x)), ~global2.zy, global0.a.x)) >> (vec3<u32>(_wgslsmith_add_u32(1u, 1u), 4294967295u, ~0u) % vec3<u32>(32u));
    let var_0 = !(!select(select(select(global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.a), select(global0.a, global0.a, global0.a), !global0.a), global0.a, global0.a));
    let var_1 = u_input.a;
    var var_2 = ~vec4<i32>(0i, _wgslsmith_mult_i32(28887i, -global2.x), var_1, -2147483647i);
    var var_3 = _wgslsmith_f_op_f32(ceil(arg_1));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0))), -var_2.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(vec4<f32>(201f, 1f, _wgslsmith_f_op_f32(-1106f - _wgslsmith_f_op_f32(f32(-1f) * -1893f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f * 1415f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f - -1208f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1098f, -1695f)) + vec2<f32>(-1027f, 550f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1429f)), _wgslsmith_f_op_f32(floor(-1351f))))), vec3<bool>(global0.a.x, true, global0.a.x));
    let var_1 = global0.a;
    global3 = 1u;
    let var_2 = abs(global1.a);
    global2 = -(~(~_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, global1.a, var_2), vec3<i32>(global2.x, 2147483647i, u_input.a))));
    var var_3 = Struct_4(vec4<bool>(any(vec4<bool>(true, var_1.x, var_0.b.x, global0.a.x)) | var_0.b.x, false, (global0.a.x != true) != (false & var_1.x), var_1.x));
    let var_4 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~max(var_2, -3157i), ~func_1(var_0.a.a, -1222f, vec2<f32>(var_0.a.a.x, -330f)).b.x, 0i, var_0.a.b.x), vec4<i32>(abs(_wgslsmith_sub_i32(2147483647i, 2147483647i)), -var_2 ^ 0i, var_2 ^ -1i, 18142i));
    let var_5 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), -359f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(865f, -324f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_0.a.a.x)))), vec3<bool>(true, true, var_1.x));
    global2 = var_4.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-19988i), -_wgslsmith_sub_i32(-7117i, var_5.a.b.x), var_2, abs(var_4.x)), -1821f);
}

