struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_5, 3>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-42357i, 1i), vec2<i32>(-9593i, 12694i), vec2<i32>(21045i, i32(-2147483648)), vec2<i32>(-30375i, 14072i), vec2<i32>(27371i, 0i), vec2<i32>(0i, -8914i), vec2<i32>(1277i, -18088i), vec2<i32>(23564i, 0i), vec2<i32>(-13582i, -16621i), vec2<i32>(-57921i, -18625i), vec2<i32>(-4214i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 38714i), vec2<i32>(61139i, -12439i), vec2<i32>(41602i, 1i), vec2<i32>(2976i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, 13838i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -15152i), vec2<i32>(16696i, -19051i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global3 = array<vec2<i32>, 22>();
    let var_0 = global0.b.x;
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, _wgslsmith_f_op_f32(f32(-1f) * -582f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(985f, 579f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-107f))))), select(!(!global0.b.xz), vec2<bool>(all(global0.b.yw), arg_1), !global0.b.x)))));
    var var_1 = abs(1i);
    global3 = array<vec2<i32>, 22>();
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_5) -> i32 {
    var var_0 = Struct_2(global0.c.a, abs(~9050i));
    var var_1 = Struct_5(-_wgslsmith_clamp_vec3_i32(abs(arg_2.a), _wgslsmith_div_vec3_i32(arg_2.a, arg_2.a), vec3<i32>(var_0.a.a, 26540i, -14507i)) >> (max(global0.d.xxy, reverseBits(~vec3<u32>(4294967295u, global0.d.x, arg_2.b))) % vec3<u32>(32u)), global0.c.c.x, -(_wgslsmith_mult_i32(var_0.a.a, firstTrailingBit(arg_2.c)) ^ (var_0.b << (arg_2.b % 32u))), Struct_1(var_0.a.a), !vec2<bool>(!(-25592i <= var_0.a.a), true));
    let var_2 = _wgslsmith_mod_i32(func_3(abs(select(abs(global0.d), vec4<u32>(4294967295u, global0.c.c.x, 4294967295u, global0.d.x), !global0.b)), true), i32(-1i) * -53581i);
    let var_3 = _wgslsmith_clamp_u32(global0.c.c.x, var_1.b, 103592u);
    let var_4 = Struct_2(var_1.d, ~(-41878i));
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec2<f32>) -> vec4<bool> {
    return global0.b;
}

fn func_1() -> vec4<bool> {
    let var_0 = 14391i;
    var var_1 = func_4(-1i, vec4<i32>(_wgslsmith_mult_i32(-12879i, ~(~var_0)), (_wgslsmith_sub_i32(var_0, global0.e.a) & -1i) ^ global0.c.a.a, -1182i, func_2(_wgslsmith_f_op_f32(1119f + -1256f), _wgslsmith_f_op_f32(-global0.a), global1[_wgslsmith_index_u32(37121u, 3u)])), Struct_5(vec3<i32>(~var_0, -36664i, u_input.a.x) | vec3<i32>(-global0.e.a, u_input.a.x, -u_input.a.x), select(53221u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.c.x, global0.c.c.x, global0.d.x), global0.d.xyz), !global0.b.x), global0.c.a.a & var_0, Struct_1(~_wgslsmith_div_i32(0i, global0.c.b)), global0.b.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, global0.a), vec2<f32>(248f, 1177f), global0.b.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 378f)), vec2<f32>(711f, 1f))));
    let var_2 = ~global0.d.x;
    var var_3 = 4294967295u;
    let var_4 = Struct_4(global0.a, global0.b, Struct_3(global0.c.a, i32(-1i) * -u_input.a.x, firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.c.x, global0.c.c.x), global0.c.c), global0.c.c))), global0.d, global0.c.a);
    return select(func_4(var_0, _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_4.e.a, var_4.e.a, var_4.c.a.a, -48509i)), firstTrailingBit(vec4<i32>(-2147483647i, var_4.c.a.a, -1i, var_0) >> (var_4.d % vec4<u32>(32u))), vec4<i32>(abs(var_4.e.a), -var_4.c.b, -var_4.c.b, firstTrailingBit(-82338i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global0.d.xwz, global0.d.xxx) >> (abs(~1u) % 32u), 3u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.a), global0.a))), var_4.b, global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.e, -u_input.a.x, global0.c.c);
    let var_1 = _wgslsmith_add_i32(~min(var_0.a.a, i32(-1i) * -82145i), var_0.b) > var_0.b;
    global0 = Struct_4(-300f, func_1(), Struct_3(Struct_1(-30541i), -53533i, firstLeadingBit(~abs(vec2<u32>(global0.d.x, var_0.c.x)))), global0.d, Struct_1(firstLeadingBit(-21766i)));
    var_0 = Struct_3(global0.e, -2147483647i, select(_wgslsmith_sub_vec2_u32(firstLeadingBit(global0.d.yx) << ((var_0.c ^ vec2<u32>(var_0.c.x, var_0.c.x)) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, global0.c.c.x)), global0.d.yx, true));
    var_0 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~countOneBits(-40391i), -1i, var_0.b, 0i), vec2<u32>(_wgslsmith_add_u32(1u, 32928u), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.c.x ^ 4294967295u, select(4294967295u, 40746u, global0.b.x)), ~global0.d.x)));
}

