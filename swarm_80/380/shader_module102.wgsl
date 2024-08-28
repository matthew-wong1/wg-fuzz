struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<bool> {
    let var_0 = -_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-4133i, -22925i), vec2<i32>(23792i, 0i)), max(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -1i)))), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(2147483647i, 4906i), vec2<i32>(-29965i, 56441i), false))));
    global1 = vec4<bool>(true, ~u_input.a.x == max(4294967295u, 1u), true, true);
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, 21369u)), ~u_input.a, firstTrailingBit(vec2<u32>(14323u, 10573u))), vec2<u32>(_wgslsmith_mod_u32(1u, 27712u), u_input.a.x)), Struct_1(firstLeadingBit(-var_0), 407u, -854f, select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(22525u, 11253u, u_input.a.x, 15321u)), vec4<u32>(u_input.a.x, 0u, 50432u, 10020u), global1.x))));
    var var_2 = global1.xzy;
    global1 = vec4<bool>(all(global1.yww), !(!(!global1.x)) || global1.x, all(!select(select(vec3<bool>(true, var_2.x, true), global1.wzx, vec3<bool>(global1.x, false, global1.x)), vec3<bool>(global1.x, var_2.x, global1.x), true)), true);
    return !select(select(vec4<bool>(true, true || var_2.x, true, global1.x), !vec4<bool>(false, global1.x, false, var_2.x), var_2.x), select(vec4<bool>(all(vec3<bool>(false, false, true)), true, global1.x || var_2.x, global1.x && var_2.x), !vec4<bool>(true, true, false, var_2.x), all(global1.zzx)), false);
}

fn func_2() -> bool {
    global1 = select(func_3(), vec4<bool>(true, !all(select(global1.yyy, global1.xyy, false)), true, true), !(!func_3()));
    global0 = _wgslsmith_mult_u32(~(firstLeadingBit(69700u) >> (max(u_input.a.x, _wgslsmith_div_u32(1u, 74711u)) % 32u)), ~select(~1u, u_input.a.x, !global1.x));
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 16663u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 28283u, 4507u, u_input.a.x)), ~vec4<u32>(24028u, 0u, 78390u, u_input.a.x)), firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 0u, 9988u) ^ vec4<u32>(4294967295u, u_input.a.x, 1u, 57421u)) | abs(~vec4<u32>(14442u, 4294967295u, u_input.a.x, 0u))), abs(vec4<u32>(1u, max(u_input.a.x | 54969u, u_input.a.x), u_input.a.x, u_input.a.x)));
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, -919f, 736f, 914f) - vec4<f32>(1f, 1f, 1f, 1f))))));
    return u_input.a.x > 1u;
}

fn func_1() -> f32 {
    global1 = vec4<bool>(false, global1.x, func_2() | false, func_3().x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(409f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.a.x, ~u_input.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), firstTrailingBit(vec3<u32>(4294967295u, 0u, u_input.a.x)) | vec3<u32>(u_input.a.x, 21498u, u_input.a.x)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 7987u), vec3<u32>(32233u, u_input.a.x, 1u)), ~vec3<u32>(u_input.a.x, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, 1u, 1u)), ~(~vec3<u32>(95988u, u_input.a.x, u_input.a.x)))));
    global1 = vec4<bool>(func_2(), true, any(!(!(!vec4<bool>(false, global1.x, global1.x, global1.x)))), global1.x);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1523f, 245f))));
    global1 = func_3();
    global1 = !func_3();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(~vec3<u32>(12382u, 1u, 24731u))) & vec3<u32>(~_wgslsmith_mult_u32(0u, 0u), ~u_input.a.x, ~0u | (1u ^ u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, firstTrailingBit(-24385i >> (1u % 32u)), 4563i, 10682i), select(-vec4<i32>(-1i, 44646i, -80107i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 12484i, 0i, 7882i), vec4<i32>(-2147483647i, 13684i, 18678i, 5836i)), global1.x) >> (~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))), _wgslsmith_sub_i32(1i, -1i), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(249f * 965f), _wgslsmith_f_op_f32(f32(-1f) * -596f)))));
}

