struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -148f;

var<private> global1: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = arg_0;
    global1 = ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 4294967295u ^ u_input.b));
    global1 = countOneBits(13150u);
    var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1572f, -1583f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.x, 156f)))), -418f), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-828f)))), _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x)));
    return abs(1u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, arg_0.b.x), arg_0.b.ww);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2);
    var var_2 = arg_0.c.x;
    var var_3 = Struct_5(arg_0, ~u_input.a.ww, Struct_1(countOneBits(_wgslsmith_mult_u32(~u_input.b, ~var_0.x)), abs(vec4<u32>(33762u, ~4294967295u, 1u, _wgslsmith_sub_u32(93590u, 1u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -403f, -1194f)) + vec3<f32>(arg_2.x, 818f, arg_0.d)))), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(var_1.x, -235f))));
    let var_4 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(-9218i <= u_input.a.x, any(vec4<bool>(true, false, true, true)), true, false), true));
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(firstLeadingBit(arg_3 ^ vec2<i32>(arg_3.x, u_input.a.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-25985i, u_input.a.x), u_input.a.xz)), arg_3.x);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    global1 = u_input.b;
    global0 = -343f;
    global1 = 4294967295u;
    global1 = _wgslsmith_sub_u32(select(min(~33088u ^ select(1u, u_input.b, false), _wgslsmith_mult_u32(37177u, ~u_input.b)), 1u, _wgslsmith_mod_i32(u_input.a.x, func_3(Struct_1(75037u, vec4<u32>(3175u, 1u, 0u, 43956u), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), 541f), vec2<u32>(u_input.b, 6543u), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec2<i32>(-5868i, 1i))) != 1i), max(33199u, _wgslsmith_clamp_u32(~(~54155u), u_input.b, ~(u_input.b >> (4294967295u % 32u)))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1308f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1021f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)) + arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(874f, -175f)))))), arg_0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, _wgslsmith_mult_u32(0u, u_input.b) | 27569u, 51860u, ~u_input.b)), ~(vec4<u32>(15131u, u_input.b ^ u_input.b, ~u_input.b, func_1(vec4<f32>(1204f, -499f, -371f, -698f), u_input.a.x)) << (~(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, 114719u, 29441u)) % vec4<u32>(32u))));
    var var_0 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(func_2(vec3<f32>(-640f, -1996f, 588f)), true)), vec2<bool>(u_input.a.x > _wgslsmith_mult_i32(1i, 23548i), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, _wgslsmith_div_f32(191f, -143f)))))));
    let var_2 = Struct_2(Struct_1(min(u_input.b, 34646u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 18324u) & (vec4<u32>(0u, 5696u, 1u, 22682u) & vec4<u32>(22063u, u_input.b, 4294967295u, u_input.b)), vec4<u32>(29334u << (u_input.b % 32u), ~0u, u_input.b, 0u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1000f, var_1.x), vec3<f32>(var_1.x, 666f, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1723f, var_1.x, -601f))), any(vec3<bool>(false, false, false)))))), _wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = Struct_3(var_2);
    global1 = 4294967295u;
    var_0 = !(!vec2<bool>(select(true, var_0.x, all(vec2<bool>(true, var_0.x))), var_0.x));
    var var_4 = 4294967295u;
    let var_5 = _wgslsmith_f_op_vec3_f32(-var_2.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) + 175f));
}

