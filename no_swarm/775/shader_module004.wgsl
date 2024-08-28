struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, vec2<i32>(i32(-2147483648), 2147483647i), 121f);

var<private> global1: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2658f, 1751f, _wgslsmith_f_op_f32(f32(-1f) * -587f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, global0.c, global0.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, global0.c, global0.c)), vec3<f32>(global0.c, 2704f, -624f))))));
    var var_1 = firstTrailingBit(vec4<i32>(abs(-1i), _wgslsmith_mod_i32(-15615i, global1.b.a.x), i32(-1i) * -_wgslsmith_dot_vec3_i32(global1.c.b.a.zzy, vec3<i32>(global1.c.b.a.x, 0i, -2147483647i)), -37950i));
    let var_2 = global1.c;
    global0 = Struct_4(var_1.x, var_2.b.a.zz, 1336f);
    var var_3 = ~vec2<u32>(abs(1u), 7189u) << (vec2<u32>(~global1.c.b.b, 0u) % vec2<u32>(32u));
    return vec2<u32>(26582u, ~(~1u));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_4(global1.c.c.a.x, -(global0.b << ((u_input.a.xx >> (vec2<u32>(48939u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))) << (func_3(~u_input.a >> (_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(global1.b.b, global1.b.b, global1.b.b)) % vec3<u32>(32u)), vec2<u32>(u_input.a.x, ~u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_div_f32(global0.c, 734f));
    let var_0 = vec3<u32>(select(~u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.c.c.b, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(global1.b.b, 113733u)), 0u), !(18787i < global1.a)) & global1.b.b, global1.c.b.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(56295u, global1.b.b, 1u, 4294967295u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, global1.c.c.b), vec4<bool>(false, true, true, true)), _wgslsmith_div_vec4_u32(min(vec4<u32>(64320u, u_input.a.x, global1.c.b.b, 9027u), vec4<u32>(23412u, u_input.a.x, 0u, 0u)), vec4<u32>(global1.b.b, u_input.a.x, u_input.a.x, 4294967295u))), global1.b.b));
    let var_1 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), any(vec2<bool>(true, false))), select(vec3<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(false, false)))), false);
    var var_2 = Struct_1(global1.c.d.a, 0u);
    global1 = Struct_3(global1.c.a, global1.c.d, global1.c);
    return vec4<bool>(false, var_1.x, var_1.x, true);
}

fn func_1() -> u32 {
    let var_0 = global1.b.a.zzw;
    var var_1 = _wgslsmith_mult_vec4_i32(firstTrailingBit(global1.b.a), abs(-(global1.b.a >> (vec4<u32>(21649u, global1.b.b, global1.b.b, 0u) % vec4<u32>(32u))) | select(select(global1.c.c.a, vec4<i32>(2147483647i, -17372i, -18279i, -20648i), false), vec4<i32>(4369i, -1i, var_0.x, 25003i), func_2())));
    var var_2 = min(global1.b.b | (_wgslsmith_mult_u32(global1.c.d.b, u_input.a.x) << (65669u % 32u)), global1.c.b.b);
    var var_3 = global1.c;
    var var_4 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~1u, u_input.a.x), ~vec2<u32>(0u, u_input.a.x)), vec2<u32>(~min(var_3.c.b, 13392u), 4294967295u)), select(u_input.a.zx, _wgslsmith_clamp_vec2_u32(u_input.a.zz, firstTrailingBit(vec2<u32>(var_3.d.b, 4294967295u)), u_input.a.zx), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)))));
    return global1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c.c.a;
    let var_1 = vec2<f32>(global0.c, 930f);
    let var_2 = 1u;
    var var_3 = vec2<f32>(var_1.x, -1876f);
    var_0 = global1.b.a;
    let var_4 = _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(func_1(), var_2)), vec2<u32>(var_2, _wgslsmith_mult_u32(4294967295u, func_1())) ^ select(~(~vec2<u32>(4294967295u, u_input.a.x)), vec2<u32>(70751u, 4294967295u) << (u_input.a.zx % vec2<u32>(32u)), select(vec2<bool>(true, true), func_2().zx, true)));
    var var_5 = global1.c.c.a;
    var var_6 = Struct_4(var_5.x ^ firstLeadingBit(~(~var_5.x)), vec2<i32>(_wgslsmith_clamp_i32(global1.c.b.a.x ^ -var_0.x, _wgslsmith_div_i32(firstLeadingBit(1i), _wgslsmith_mult_i32(1i, global1.a)), global0.a), abs(abs(-2442i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(min(1524f, var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-274f, -124f))) * _wgslsmith_f_op_f32(f32(-1f) * -1825f)), _wgslsmith_f_op_f32(-var_6.c)), ~vec3<u32>(~(var_4 << (0u % 32u)), _wgslsmith_sub_u32(16733u >> (global1.c.b.b % 32u), ~var_2), ~1u), var_6.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.c, global0.c)), _wgslsmith_div_f32(1000f, var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(max(var_3.x, -488f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_6.c, -237f, 392f, global0.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(949f, 1000f, var_3.x, -658f))), vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_1.x, -143f, -775f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, var_1)) * var_1) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_6.c))))));
}

