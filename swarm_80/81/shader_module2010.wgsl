struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: i32 = -76994i;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(52232u, 0u), vec2<u32>(21348u, 22470u), vec2<u32>(4294967295u, 4972u), vec2<u32>(1u, 13973u), vec2<u32>(7116u, 1u), vec2<u32>(19686u, 3243u), vec2<u32>(1991u, 36389u), vec2<u32>(4294967295u, 35639u), vec2<u32>(24621u, 65079u), vec2<u32>(1u, 9317u), vec2<u32>(4294967295u, 41603u), vec2<u32>(0u, 14233u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 45820u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(32453u, 3398u), vec2<u32>(39128u, 0u), vec2<u32>(1u, 17961u), vec2<u32>(4294967295u, 1u), vec2<u32>(33161u, 51971u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(59478u, 10955u), vec2<u32>(41914u, 4294967295u), vec2<u32>(1u, 30513u));

var<private> global2: u32;

var<private> global3: vec4<i32> = vec4<i32>(-7680i, 1i, -90453i, 2147483647i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec4<f32>(777f, 1669f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2204f, 321f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-255f)) + _wgslsmith_f_op_f32(1194f * 1000f)))));
    var var_1 = min(((min(global3.zyw, global3.zyy) | countOneBits(vec3<i32>(global3.x, -12396i, global3.x))) >> (vec3<u32>(4294967295u, u_input.a, max(u_input.a, u_input.a)) % vec3<u32>(32u))) | global3.zyy, vec3<i32>(-(select(u_input.c, global3.x, true) | 21447i), -1i, -2132i));
    let var_2 = Struct_4(var_0.yyz);
    global0 = 0i;
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(min(firstLeadingBit(u_input.d), 4294967295u))), 26u)], 0i, 2147483647i, 1163f, u_input.a);
    return abs(global3.x);
}

fn func_2() -> Struct_3 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(countOneBits(global3.wyw), _wgslsmith_mult_vec3_i32(vec3<i32>(228i, _wgslsmith_sub_i32(global3.x, global3.x), _wgslsmith_div_i32(0i, global3.x)), ~select(global3.wyz, global3.zxy, true))));
    global3 = vec4<i32>(global3.x, _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.b, _wgslsmith_div_i32(var_0.x, global3.x)), min(global3.x | u_input.c, 0i) | func_3(all(vec4<bool>(true, false, false, false)), vec3<bool>(true, true, true))), global3.x, _wgslsmith_mult_i32(-u_input.c, ~u_input.b));
    global1 = array<vec2<u32>, 26>();
    let var_1 = vec3<i32>(-1i) * -firstTrailingBit(~vec3<i32>(-1i, u_input.c, global3.x));
    let var_2 = select(vec3<bool>(true, true, true), !vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, false))), !vec3<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, false, true)), false));
    return Struct_3(firstLeadingBit(select(_wgslsmith_mod_i32(min(-17161i, 21394i), global3.x >> (u_input.a % 32u)), -28070i, var_2.x)));
}

fn func_1() -> Struct_4 {
    global3 = vec4<i32>(abs(~(-global3.x) & 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~(-20589i), i32(-1i) * -9995i), _wgslsmith_div_vec2_i32(-global3.zz, global3.yx)), firstLeadingBit(global3.zz)), 11491i, 0i);
    global0 = -(~firstTrailingBit(~1i));
    let var_0 = func_2();
    let var_1 = global1[_wgslsmith_index_u32(24136u, 26u)];
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, _wgslsmith_f_op_f32(-436f + _wgslsmith_f_op_f32(select(805f, 1199f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1354f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.d;
    let var_0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.d), firstTrailingBit(_wgslsmith_mod_u32(max(u_input.a, 0u), u_input.a))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d << (u_input.d % 32u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), ~71579u, 27088u), firstLeadingBit(vec4<u32>(u_input.d, 71673u, u_input.d, 4294967295u))));
    let var_1 = func_1();
    global2 = ~_wgslsmith_mult_u32(u_input.a, ~(~countOneBits(u_input.d)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x * -108f), _wgslsmith_f_op_f32(-var_1.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, var_1.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-960f, 550f, -532f, -1195f) + vec4<f32>(-249f, var_1.a.x, var_1.a.x, var_1.a.x))))))));
    var var_3 = u_input.d ^ 88870u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_0, var_0));
}

