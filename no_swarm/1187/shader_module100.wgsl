struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 611f, -1063f, -1009f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2716f))))), _wgslsmith_div_f32(-2382f, var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    var var_1 = false;
    let var_2 = _wgslsmith_mod_vec2_u32(~(vec2<u32>(countOneBits(4294967295u), firstTrailingBit(4294967295u)) ^ vec2<u32>(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(13019u, u_input.b))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(min(27286u, u_input.b), 11656u ^ u_input.b), 30527u), _wgslsmith_div_u32(~u_input.b, u_input.b) << (u_input.b % 32u)));
    var var_3 = true;
    return -max(~vec2<i32>(global0.x, -1i) | _wgslsmith_div_vec2_i32(vec2<i32>(36639i, -47734i) | vec2<i32>(arg_0.a, global0.x), -vec2<i32>(-1i, 0i)), abs(~reverseBits(vec2<i32>(global0.x, 35588i))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    global0 = _wgslsmith_mod_vec2_i32(abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -31335i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 17262i), vec2<i32>(global0.x, global0.x)), select(vec2<i32>(global0.x, global0.x), vec2<i32>(3874i, 2147483647i), false))), vec2<i32>((global0.x & -53778i) & _wgslsmith_dot_vec3_i32(~vec3<i32>(-11260i, 22331i, 45236i), vec3<i32>(global0.x, -2147483647i, 31405i)), global0.x));
    global0 = ~func_3(Struct_3(global0.x));
    let var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(0u, 24203u)), vec2<u32>(0u, countOneBits(0u))) >> (0u % 32u);
    let var_1 = 46917u != u_input.b;
    let var_2 = -2756f;
    return var_0;
}

fn func_1() -> vec2<i32> {
    var var_0 = vec2<u32>(~u_input.b, u_input.b);
    global1 = _wgslsmith_f_op_f32(max(-1000f, 1047f));
    let var_1 = Struct_3(2147483647i);
    global0 = abs(vec2<i32>(-1i, _wgslsmith_div_i32(-2147483647i ^ (-40983i ^ global0.x), var_1.a)));
    var var_2 = Struct_1(countOneBits(~(~u_input.a ^ (var_0.x & var_0.x))), true, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, ~_wgslsmith_mult_u32(var_0.x, u_input.b), func_2(vec4<f32>(-783f, 2154f, 390f, -910f), countOneBits(vec2<u32>(1921u, 4294967295u))), firstTrailingBit(~u_input.b)), ~firstTrailingBit(vec4<u32>(u_input.a, 5626u, 11934u, var_0.x))), firstTrailingBit(~(vec4<i32>(-1i) * -vec4<i32>(global0.x, -27020i, 22842i, 89919i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-398f, -110f, false)) - -141f))));
    return firstTrailingBit(firstLeadingBit(countOneBits(var_2.d.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(max(~global0.x, global0.x));
    global0 = func_1();
    var var_1 = select(vec2<i32>(-2147483647i, firstTrailingBit(global0.x)), -select(~vec2<i32>(-16468i, global0.x), ~vec2<i32>(var_0.a, -1i), true), vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(47012i, var_0.a), vec2<i32>(0i, -2147483647i)) < 2147483647i)) >> (vec2<u32>(abs(10536u & u_input.a) | u_input.b, u_input.a) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, 302f, 1104f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(939f, -755f, 791f) - vec3<f32>(562f, -349f, 842f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))))));
    let var_3 = 133f;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_2.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-356f, 1124f) + var_2.xz), true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, var_3)))), false)))));
    let var_5 = Struct_3(abs(var_0.a));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.x, -1128f, var_3))))), vec3<f32>(349f, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-var_2.x))), vec3<f32>(var_2.x, var_4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(trunc(var_3)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * -1549f), -523f))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_clamp_vec3_u32(firstLeadingBit(~(vec3<u32>(0u, u_input.a, 118830u) >> (vec3<u32>(2536u, u_input.b, 1u) % vec3<u32>(32u)))), vec3<u32>(u_input.a, u_input.a, u_input.b), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 6413u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)))), -select(_wgslsmith_sub_i32(-var_0.a, var_1.x << (u_input.a % 32u)), var_5.a << (42040u % 32u), true != all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, -634f, var_3, var_4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, var_4.x, -1537f, 1123f)))))), _wgslsmith_mod_i32(firstTrailingBit(~max(global0.x, var_1.x)), -28968i));
}

