struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = -1167f;
    let var_1 = select(_wgslsmith_div_vec2_i32(~(-vec2<i32>(u_input.c, u_input.c) << (firstTrailingBit(global1.a) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b) & -vec2<i32>(-73393i, -34490i), vec2<i32>(~(-14750i), 0i))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.c, u_input.d, u_input.c), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-12127i, 29902i, u_input.b), vec3<i32>(-36214i, u_input.c, 23167i)), vec3<i32>(u_input.c, u_input.b, u_input.b))), _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(u_input.c, 0i, u_input.b, u_input.d)), select(vec4<i32>(u_input.c, 1i, 48599i, u_input.c), vec4<i32>(1i, u_input.c, -51712i, u_input.b), true), !global0.b.x), vec4<i32>(u_input.c, _wgslsmith_div_i32(2147483647i, u_input.b), u_input.b, _wgslsmith_div_i32(2147483647i, u_input.d)))), global0.b.xx);
    return global0.c.zy;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_4(reverseBits(arg_0 << (~(~vec2<u32>(0u, 23754u)) % vec2<u32>(32u))));
    global1 = Struct_4(_wgslsmith_mult_vec2_u32(func_3(), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, global1.a.x)), firstTrailingBit(vec2<u32>(arg_0.x, global1.a.x)) & _wgslsmith_add_vec2_u32(global0.c.wy, var_0.a))));
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    var var_2 = global0.b.zzw;
    global1 = Struct_4(countOneBits(vec2<u32>(38505u, global0.c.x)));
    return global0.c.yx;
}

fn func_1() -> i32 {
    let var_0 = Struct_4(_wgslsmith_sub_vec2_u32(global0.c.zw, firstLeadingBit(vec2<u32>(4294967295u, u_input.a))) | _wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, u_input.a), global1.a)), func_2(vec2<u32>(global0.c.x, global1.a.x), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-986f * -1493f), _wgslsmith_f_op_vec4_f32(vec4<f32>(745f, -1643f, -1000f, 137f) * vec4<f32>(329f, -980f, -287f, -902f)))));
    global0 = Struct_1(true, select(vec4<bool>(false, true, any(vec3<bool>(global0.a, global0.b.x, false)), any(select(vec4<bool>(global0.d, false, global0.a, true), global0.b, vec4<bool>(global0.a, true, true, true)))), vec4<bool>(global0.d, true, any(select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, global0.b.x, global0.a), vec3<bool>(global0.b.x, false, global0.b.x))), global0.a), vec4<bool>(global0.b.x, global0.a, 1u >= var_0.a.x, global0.d)), reverseBits(global0.c), global0.a);
    var var_1 = false;
    global1 = Struct_4(global1.a);
    var_1 = false;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, func_1(), 28485i), reverseBits(select(~vec3<i32>(u_input.c, u_input.c, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b) & vec3<i32>(-1i, -1i, u_input.c), vec3<i32>(u_input.c, 20207i, u_input.c) << (global0.c.xww % vec3<u32>(32u))), !(!vec3<bool>(global0.b.x, global0.b.x, global0.d)))));
    global0 = Struct_1(global0.b.x, global0.b, ~(~_wgslsmith_clamp_vec4_u32(global0.c, vec4<u32>(405u, 0u, global0.c.x, u_input.a), vec4<u32>(22715u, 31466u, 23693u, 20744u)) << (abs(vec4<u32>(0u, u_input.a, global0.c.x, global0.c.x)) % vec4<u32>(32u))), any(vec2<bool>(global0.b.x, all(vec2<bool>(false, true)))));
    global0 = Struct_1(1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(0i, abs(u_input.c)), ~select(vec2<i32>(51299i, var_0), vec2<i32>(-1i, 4454i), global0.d)), vec4<bool>(global0.d, global0.a && !(!global0.a), !global0.d, select(true, true, true)), ~vec4<u32>(0u, firstTrailingBit(global1.a.x), global1.a.x, ~21094u), global0.d && true);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(396f, 686f), _wgslsmith_f_op_f32(f32(-1f) * -522f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, -419f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2132f, 1453f), vec2<f32>(-851f, -1067f), false))))));
    global0 = Struct_1(!(!any(global0.b.wxy)), select(!(!select(vec4<bool>(global0.a, global0.a, true, false), vec4<bool>(global0.b.x, global0.d, global0.b.x, global0.d), true)), vec4<bool>(true, false, false, (u_input.a & 47468u) > ~u_input.a), true), ~firstLeadingBit(vec4<u32>(global1.a.x, global0.c.x, 1u, 41618u)) ^ select(max(vec4<u32>(4294967295u, global1.a.x, global1.a.x, global0.c.x), vec4<u32>(4294967295u, global0.c.x, global1.a.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, global0.c.x, 0u, 4294967295u) & global0.c, global0.c), vec4<bool>(u_input.a > 4294967295u, var_0 < var_0, global0.b.x, global0.a)), !(!any(select(vec3<bool>(global0.b.x, true, true), global0.b.wwy, true))));
    let var_2 = u_input.c;
    global1 = Struct_4(~(~vec2<u32>(_wgslsmith_clamp_u32(1u, 2469u, u_input.a), firstTrailingBit(global1.a.x))));
    var var_3 = !select(vec2<bool>(select(var_1.x >= var_1.x, true, all(global0.b)), !global0.b.x), !(!select(vec2<bool>(true, false), global0.b.ww, vec2<bool>(global0.a, global0.a))), global0.b.x);
    var var_4 = 1013f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -978f), _wgslsmith_f_op_f32(ceil(-105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.x))))) + _wgslsmith_div_f32(-2283f, _wgslsmith_f_op_f32(f32(-1f) * -694f))), -_wgslsmith_mod_vec2_i32(vec2<i32>(abs(var_0), -2147483647i), vec2<i32>(_wgslsmith_div_i32(-24621i, 58339i), max(62110i, -6810i))), global0.c);
}

