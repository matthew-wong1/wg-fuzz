struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(~29705u, u_input.c, u_input.a, u_input.c)), ~select(vec4<u32>(u_input.a, u_input.e, 1024u, 2774u) ^ vec4<u32>(33776u, 1u, 4294967295u, 4294967295u), vec4<u32>(60320u, 66541u, u_input.e, 15895u), true)));
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -354f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) - 1000f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-516f + 2083f), -1898f)))));
    var var_2 = ~firstLeadingBit(~(-_wgslsmith_mult_vec4_i32(u_input.b, u_input.b)));
    return Struct_1(vec3<bool>(select(all(vec4<bool>(true, true, true, true)), select(true, select(true, true, false), true), false), !all(vec2<bool>(false, true)), true), vec4<u32>(reverseBits(var_0.x), _wgslsmith_mult_u32(u_input.c, u_input.c), var_0.x, 4294967295u), countOneBits(-22556i));
}

fn func_3() -> bool {
    let var_0 = ~29479u;
    var var_1 = all(select(vec4<bool>(true | select(true, false, true), true, ~1i >= _wgslsmith_sub_i32(-1i, u_input.b.x), true), !vec4<bool>(true, true, false, all(vec4<bool>(true, false, true, true))), !(all(vec3<bool>(true, true, true)) && true)));
    let var_2 = false;
    let var_3 = Struct_4(_wgslsmith_div_f32(1245f, _wgslsmith_f_op_f32(min(-1963f, -448f))));
    var_1 = _wgslsmith_f_op_f32(var_3.a * var_3.a) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + var_3.a))), 1704f);
    return min(u_input.b.x, -11820i) == -8907i;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = Struct_2(func_3(), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~(~4294967295u)), _wgslsmith_sub_vec2_u32(var_0.b.xw, vec2<u32>(1u, u_input.c))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.b.x, _wgslsmith_sub_i32(0i, 52285i), u_input.b.x, ~var_0.c), -vec4<i32>(2147483647i, u_input.b.x, 18001i, var_0.c) >> (vec4<u32>(54854u, 0u, 86924u, 0u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, ~u_input.b), u_input.b, ~u_input.b), u_input.b), 497f);
    var_1 = Struct_2(true, 4294967295u, (~u_input.b & (_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -52548i, var_1.c.x, var_0.c), vec4<i32>(-18041i, var_0.c, var_1.c.x, var_0.c), vec4<i32>(var_0.c, u_input.b.x, 2147483647i, -5481i)) ^ ~var_1.c)) ^ ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.c.x, -2147483647i), var_1.c.wwy), -38433i, -var_1.c.x, 28795i), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(sign(630f))));
    var var_2 = _wgslsmith_div_i32(select(max(17179i, _wgslsmith_mod_i32(-16918i, var_1.c.x)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, var_1.c.x), u_input.b.zz)), !any(var_0.a)), _wgslsmith_sub_i32(var_1.c.x, var_1.c.x));
    let var_3 = var_1.c.yy;
    return var_0.b.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) + _wgslsmith_f_op_f32(f32(-1f) * -2089f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 32u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(915f, -680f, var_1.a) - global0[_wgslsmith_index_u32(31u, 32u)])))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1000f, _wgslsmith_f_op_f32(var_1.a + -1071f)))));
    let var_3 = select(~(~min(~vec2<u32>(0u, u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 88173u), vec2<u32>(4294967295u, u_input.e)))), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec2<bool>(func_3() && (true && any(vec2<bool>(false, true))), true));
    global0 = array<vec3<f32>, 32>();
    let var_4 = all(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, (~u_input.b.x >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, var_3.x), vec3<u32>(var_3.x, var_3.x, var_3.x)), 1u) % 32u)) & -30868i, vec2<u32>(~u_input.d, 18575u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), var_1.a)), var_1.a), var_2);
}

