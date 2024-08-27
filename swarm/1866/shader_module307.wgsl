struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), i32(-2147483648), vec2<i32>(-7509i, 0i), 767f);

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    let var_0 = Struct_1(!vec4<bool>(true, false | global1.a.x, false, true), 1i, _wgslsmith_mult_vec2_i32(arg_0.yz, ~vec2<i32>(global1.b, -u_input.d.x)), global1.d);
    return max(abs(_wgslsmith_div_i32(u_input.d.x << ((u_input.a & 1u) % 32u), _wgslsmith_dot_vec4_i32(u_input.d, abs(u_input.d)))), 0i);
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(vec4<bool>(false, global1.a.x, !(global1.a.x & global1.a.x), global1.a.x), func_3(abs(u_input.d.wzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(387f, arg_0, global1.a.x)) + arg_0)), -(~_wgslsmith_div_vec2_i32(global1.c, u_input.d.zw)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-448f, arg_0), vec2<f32>(arg_0, global1.d), global1.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1547f, arg_0))))))));
    var var_1 = Struct_4(_wgslsmith_div_i32(-8825i, -14607i), ~u_input.b.yx, -_wgslsmith_sub_i32(var_0.a.b, 1i), var_0.a);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(~u_input.d.wyw, max(u_input.d.wzy, vec3<i32>(global1.b, global1.b, -1i))), 1i, -42995i, -(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x) ^ ~19842i)), vec4<i32>(var_0.a.b, -31918i, _wgslsmith_sub_i32(var_1.a, _wgslsmith_add_i32(0i, -u_input.d.x)), 1i));
    global2 = _wgslsmith_mod_i32(-65437i, max((min(1i, 1i) ^ ~global1.b) | global1.b, 1i));
    global2 = _wgslsmith_dot_vec2_i32(var_1.d.c, vec2<i32>(-2147483647i & global1.b, firstLeadingBit(2147483647i)) & -(vec2<i32>(-1i) * -vec2<i32>(var_1.c, 15748i)));
    return Struct_4(43021i, vec2<u32>(0u, ~u_input.a), global1.b, Struct_1(vec4<bool>(!global1.a.x & global1.a.x, any(!var_0.a.a.zzz), any(!vec3<bool>(true, global1.a.x, global1.a.x)), true), -31840i, abs(select(vec2<i32>(var_0.a.c.x, -1i), var_1.d.c, global1.a.x) >> ((vec2<u32>(var_1.b.x, 1u) ^ vec2<u32>(var_1.b.x, var_1.b.x)) % vec2<u32>(32u))), 1f));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_2(!arg_0, !global1.a.xzx);
    global0 = _wgslsmith_div_u32(97618u, ~(u_input.a ^ 1u)) << (~4758u % 32u);
    global2 = global1.c.x;
    global0 = abs(~(~(~u_input.a)));
    var var_1 = global1.a.x;
    return func_2(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.d, _wgslsmith_div_f32(525f, global1.d))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> bool {
    var var_0 = _wgslsmith_add_u32(~firstTrailingBit(u_input.a), ~arg_0.x);
    var var_1 = vec3<u32>(4294967295u, arg_1.b.x, 1u);
    let var_2 = vec2<u32>(~72384u, firstLeadingBit(arg_0.x));
    var var_3 = Struct_2(global1.a, arg_1.d.a.www);
    global1 = Struct_1(global1.a, 20298i, -vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.d.x, -4924i)), _wgslsmith_f_op_f32(-2928f * func_1(arg_1.d.a, countOneBits(_wgslsmith_clamp_vec3_i32(u_input.d.www, vec3<i32>(-65956i, -2147483647i, 2147483647i), vec3<i32>(1i, -23312i, u_input.d.x)))).d.d));
    return select(true, !(!(!any(global1.a.zz))), arg_1.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~(-1i));
    let var_0 = !(!global1.a.zxw);
    let var_1 = Struct_2(global1.a, vec3<bool>(all(!select(vec4<bool>(var_0.x, global1.a.x, global1.a.x, false), global1.a, global1.a.x)), all(global1.a.xwz), !func_4(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.a, 0u, u_input.a, 1u)), func_1(global1.a, vec3<i32>(u_input.d.x, global1.c.x, u_input.d.x)))));
    var var_2 = !vec4<bool>(any(select(!vec2<bool>(var_0.x, false), vec2<bool>(false, false), func_2(global1.d).d.a.zz)), any(!(!var_1.a.yz)), global1.a.x, !(u_input.c >= u_input.b.x));
    var var_3 = (~1u | firstTrailingBit(_wgslsmith_sub_u32(8714u, countOneBits(1u)))) << (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1848f, global1.d, -2261f), vec3<f32>(global1.d, -241f, global1.d)) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global1.d, -1785f), vec3<f32>(3044f, -325f, -370f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 832f, -418f))))), false)), vec3<f32>(_wgslsmith_f_op_f32(max(1473f, 1000f)), global1.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_2.x)), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.d, global1.d, global1.d))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1317f)), 647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)), _wgslsmith_f_op_f32(round(-197f))), global1.a)));
}

