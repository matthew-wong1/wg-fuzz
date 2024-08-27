struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 29> = array<bool, 29>(true, false, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, false, true, true, false, true, false, true, true, false, true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec4<i32> {
    return -(~(select(vec4<i32>(1i, u_input.a, -17885i, u_input.a), vec4<i32>(u_input.a, -1i, 6999i, u_input.a), false) & vec4<i32>(u_input.a, -1i, u_input.a, 1i))) << (abs(abs(select(vec4<u32>(arg_1, global0.x, arg_0, 0u), vec4<u32>(global0.x, u_input.b.x, arg_1, 1u), false)) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0, u_input.b.x), vec4<u32>(0u, global0.x, arg_0, 0u))) % vec4<u32>(32u));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(u_input.b.yy, vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(max(-vec4<i32>(-2147483647i, -26104i, -8562i, 47335i), vec4<i32>(-55297i, -1i, -10375i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), func_3(15555u, 1u))), 0i));
    let var_1 = abs(min(firstTrailingBit(~var_0.b), -vec3<i32>(var_0.b.x, var_0.b.x, u_input.a) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 105286u, var_0.a.x), u_input.b, u_input.b) % vec3<u32>(32u))) | max(abs(var_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 0i, u_input.a) ^ vec3<i32>(var_0.b.x, u_input.a, var_0.b.x), var_0.b)));
    let var_2 = -594f;
    global1 = array<bool, 29>();
    global0 = var_0.a;
    return ~_wgslsmith_add_u32(4294967295u, 0u);
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global1 = array<bool, 29>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1066f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1728f + -714f), 1332f, -1741f, _wgslsmith_f_op_f32(sign(-293f))) * vec4<f32>(_wgslsmith_f_op_f32(1581f + -814f), _wgslsmith_f_op_f32(-1890f + 625f), -1589f, -695f)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2246f, -1000f)), _wgslsmith_f_op_f32(step(-1016f, 482f)))), _wgslsmith_f_op_f32(-1376f + -648f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-183f, 1736f) + _wgslsmith_f_op_f32(f32(-1f) * -448f)), 1f)))));
    var var_3 = func_2();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~firstLeadingBit(min(arg_0.x, 12739u))), ~(~vec2<u32>(_wgslsmith_mod_u32(global0.x, global0.x), _wgslsmith_mult_u32(0u, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) * 366f)), _wgslsmith_f_op_f32(-1000f + 1f))));
    let var_1 = vec4<u32>(~_wgslsmith_clamp_u32(global0.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xy), 0u), global0.x, 4294967295u, ~_wgslsmith_mult_u32(func_1(vec4<u32>(4294967295u, u_input.b.x, global0.x, 1u)), u_input.b.x));
    let var_2 = !(!(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.wwx, ~u_input.b), 29u)]));
    var var_3 = Struct_1(-2147483647i, global1[_wgslsmith_index_u32(global0.x, 29u)]);
    global1 = array<bool, 29>();
    let var_4 = Struct_1(-57843i, !(true != (_wgslsmith_add_i32(1i, u_input.a) <= _wgslsmith_mult_i32(var_3.a, u_input.a))));
    var var_5 = Struct_2(_wgslsmith_clamp_vec2_u32(~u_input.b.zz, ~vec2<u32>(1u, 0u >> (1u % 32u)), var_1.ww), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_3.a), vec2<i32>(u_input.a, -1i)) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, var_4.a)), vec2<i32>(~(-2147483647i), var_4.a)), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, var_4.a), -32629i), ~select(reverseBits(2147483647i), var_3.a, !var_3.b)));
    var var_6 = _wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1291f, var_0.x) + _wgslsmith_f_op_vec2_f32(-var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(func_3(0u, 28369u).wwy, _wgslsmith_div_vec3_i32(vec3<i32>(var_4.a, -2147483647i, var_3.a), vec3<i32>(-40357i, var_5.b.x, 0i))), var_5.b), vec3<i32>(-1i) * -max(var_5.b, var_5.b)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), 1022f))), vec3<u32>(_wgslsmith_mult_u32(~(4294967295u & var_1.x), 27742u >> (reverseBits(var_1.x) % 32u)), 4294967295u, ~_wgslsmith_div_u32(22619u & u_input.b.x, ~global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_6.x))));
}

